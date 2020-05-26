__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import os

from qgis.core import (
    QgsProcessingParameterString,
    QgsProcessingParameterBoolean,
    QgsProcessingOutputNumber,
    QgsProcessingOutputString,
    QgsExpressionContextUtils,
    QgsProcessingException,
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.database import (
    available_migrations,
    fetch_data_from_sql_query,
)
from ...qgis_plugin_tools.tools.i18n import tr
from ...qgis_plugin_tools.tools.resources import plugin_test_data_path, plugin_path
from ...qgis_plugin_tools.tools.version import version

SCHEMA = "veloroutes"


class CreateDatabaseStructure(BaseProcessingAlgorithm):
    """
    Creation of the database structure from scratch.
    """

    CONNECTION_NAME = "CONNECTION_NAME"
    OVERRIDE = "OVERRIDE"
    ADD_TEST_DATA = "ADD_TEST_DATA"
    OUTPUT_STATUS = "OUTPUT_STATUS"
    OUTPUT_STRING = "OUTPUT_STRING"

    def name(self):
        return "create_database_structure"

    def displayName(self):
        return tr("Installation de la structure sur la base de données")

    def group(self):
        return tr("Structure")

    def groupId(self):
        return "veloroutes_structure"

    def shortHelpString(self):
        return tr(
            "Création de la structure de la base données. "
            "Vous pouvez aussi charger des données de tests."
        )

    def initAlgorithm(self, config):
        connection_name = QgsExpressionContextUtils.globalScope().variable(
            "veloroutes_connection_name"
        )
        print(connection_name)
        db_param_a = QgsProcessingParameterString(
            self.CONNECTION_NAME,
            tr("Connexion PostgreSQL vers la base de données"),
            defaultValue=connection_name,
            optional=False,
        )
        db_param_a.setMetadata(
            {
                "widget_wrapper": {
                    "class": "processing.gui.wrappers_postgis.ConnectionWidgetWrapper"
                }
            }
        )
        self.addParameter(db_param_a)

        self.addParameter(
            QgsProcessingParameterBoolean(
                self.OVERRIDE,
                tr(
                    "Écraser le schéma {} ? ** ATTENTION ** "
                    "Cela supprimera toutes les données !"
                ).format(SCHEMA),
                defaultValue=False,
                optional=False,
            )
        )
        self.addParameter(
            QgsProcessingParameterBoolean(
                self.ADD_TEST_DATA,
                tr("Ajouter des données de test ?"),
                defaultValue=False,
                optional=False,
            )
        )

        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputNumber(self.OUTPUT_STATUS, tr("Output status"))
        )
        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_STRING, tr("Output message"))
        )

    def checkParameterValues(self, parameters, context):
        ok, msg = self.checkSchema(parameters, context)
        if not ok:
            return False, msg

        return super().checkParameterValues(parameters, context)

    def checkSchema(self, parameters, context):
        _ = context
        connection_name = self.parameterAsString(
            parameters, self.CONNECTION_NAME, context
        )
        sql = """
            SELECT schema_name
            FROM information_schema.schemata
            WHERE schema_name = '{}';
        """.format(
            SCHEMA
        )
        _, data, _, ok, error_message = fetch_data_from_sql_query(connection_name, sql)
        if not ok:
            return ok, error_message

        override = self.parameterAsBool(parameters, self.OVERRIDE, context)
        msg = tr("Le schéma {} n'existe pas. On poursuit…").format(SCHEMA)
        for a in data:
            schema = a[0]
            if schema == SCHEMA and not override:
                ok = False
                msg = tr(
                    "Le schéma existe déjà dans la base de données ! "
                    "Si vous voulez VRAIMENT supprimer et recréer le schéma "
                    "(et supprimer les données) cocher la case **Écraser**"
                )
        return ok, msg

    def processAlgorithm(self, parameters, context, feedback):
        connection_name = self.parameterAsString(
            parameters, self.CONNECTION_NAME, context
        )

        # Drop schema if needed
        override = self.parameterAsBool(parameters, self.OVERRIDE, context)
        if override:
            feedback.pushInfo(tr("Essai de suppression du schéma {}…").format(SCHEMA))
            sql = "DROP SCHEMA IF EXISTS {} CASCADE;".format(SCHEMA)

            _, _, _, ok, error_message = fetch_data_from_sql_query(connection_name, sql)
            if ok:
                feedback.pushInfo(tr("Le schéma {} a été supprimé.").format(SCHEMA))
            else:
                raise QgsProcessingException(error_message)

        # Create full structure
        sql_files = [
            "00_initialize_database.sql",
            "{}/10_FUNCTION.sql".format(SCHEMA),
            "{}/20_TABLE_SEQUENCE_DEFAULT.sql".format(SCHEMA),
            "{}/30_VIEW.sql".format(SCHEMA),
            "{}/40_INDEX.sql".format(SCHEMA),
            "{}/50_TRIGGER.sql".format(SCHEMA),
            "{}/60_CONSTRAINT.sql".format(SCHEMA),
            "{}/70_COMMENT.sql".format(SCHEMA),
            # "{}/90_GLOSSARY.sql".format(SCHEMA),
            "99_finalize_database.sql",
        ]
        # Add test data
        add_test_data = self.parameterAsBool(parameters, self.ADD_TEST_DATA, context)
        if add_test_data:
            sql_files.append("99_test_data.sql")

        plugin_dir = plugin_path()
        plugin_version = version()
        dev_version = False
        run_migration = os.environ.get(
            "TEST_DATABASE_INSTALL_{}".format(SCHEMA.capitalize())
        )
        if plugin_version in ["master", "dev"] and not run_migration:
            feedback.reportError(
                "Be careful, running the install on a development branch!"
            )
            dev_version = True

        if run_migration:
            plugin_dir = plugin_test_data_path()
            feedback.reportError(
                "Be careful, running migrations on an empty database using {} "
                "instead of {}".format(run_migration, plugin_version)
            )
            plugin_version = run_migration

        # Loop sql files and run SQL code
        for sf in sql_files:
            feedback.pushInfo(sf)
            sql_file = os.path.join(plugin_dir, "install/sql/{}".format(sf))
            with open(sql_file, "r") as f:
                sql = f.read()
                if len(sql.strip()) == 0:
                    feedback.pushInfo("  Skipped (empty file)")
                    continue

                _, _, _, ok, error_message = fetch_data_from_sql_query(
                    connection_name, sql
                )
                if ok:
                    feedback.pushInfo("  Success !")
                else:
                    raise QgsProcessingException(error_message)

        # Add version
        if run_migration or not dev_version:
            metadata_version = plugin_version
        else:
            migrations = available_migrations(000000)
            last_migration = migrations[-1]
            metadata_version = (
                last_migration.replace("upgrade_to_", "").replace(".sql", "").strip()
            )
            feedback.reportError("Latest migration is {}".format(metadata_version))

        sql = """
            INSERT INTO {}.metadata
            (me_version, me_version_date, me_status)
            VALUES (
                '{}', now()::timestamp(0), 1
            )""".format(
            SCHEMA, metadata_version
        )

        fetch_data_from_sql_query(connection_name, sql)
        feedback.pushInfo(
            "Version de la base de données '{}'.".format(metadata_version)
        )

        return {
            self.OUTPUT_STATUS: 1,
            self.OUTPUT_STRING: tr(
                "*** LA STRUCTURE {} A BIEN ÉTÉ CRÉÉE '{}'***".format(
                    SCHEMA, metadata_version
                )
            ),
        }
