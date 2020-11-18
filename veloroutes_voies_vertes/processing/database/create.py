__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import os

from qgis.core import (
    Qgis,
    QgsExpressionContextUtils,
    QgsProcessingException,
    QgsProcessingOutputString,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterString,
    QgsProviderConnectionException,
    QgsProviderRegistry,
)

if Qgis.QGIS_VERSION_INT >= 31400:
    from qgis.core import QgsProcessingParameterProviderConnection

from veloroutes_voies_vertes.processing.database.base import (
    BaseDatabaseAlgorithm,
)

from ...qgis_plugin_tools.tools.database import available_migrations
from ...qgis_plugin_tools.tools.i18n import tr
from ...qgis_plugin_tools.tools.resources import (
    plugin_path,
    plugin_test_data_path,
)
from ...qgis_plugin_tools.tools.version import version

SCHEMA = "veloroutes"


class CreateDatabaseStructure(BaseDatabaseAlgorithm):
    """
    Creation of the database structure from scratch.
    """

    CONNECTION_NAME = "CONNECTION_NAME"
    OVERRIDE = "OVERRIDE"
    ADD_TEST_DATA = "ADD_TEST_DATA"
    DATABASE_VERSION = "DATABASE_VERSION"

    def name(self):
        return "create_database_structure"

    def displayName(self):
        return tr("Installation de la structure sur la base de données")

    def shortHelpString(self):
        return tr(
            "Création de la structure de la base données. "
            "Vous pouvez aussi charger des données de tests."
        )

    def initAlgorithm(self, config):
        connection_name = QgsExpressionContextUtils.globalScope().variable(
            "veloroutes_connection_name"
        )
        label = tr("Connexion PostgreSQL vers la base de données")
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterProviderConnection(
                self.CONNECTION_NAME,
                label,
                "postgres",
                defaultValue=connection_name,
                optional=False,
            )
        else:
            param = QgsProcessingParameterString(
                self.CONNECTION_NAME,
                label,
                defaultValue=connection_name,
                optional=False,
            )
            param.setMetadata(
                {
                    "widget_wrapper": {
                        "class": "processing.gui.wrappers_postgis.ConnectionWidgetWrapper"
                    }
                }
            )
        self.addParameter(param)

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

        self.addOutput(
            QgsProcessingOutputString(self.DATABASE_VERSION, "Version de la base de données")
        )

    def checkParameterValues(self, parameters, context):
        if Qgis.QGIS_VERSION_INT >= 31400:
            connection_name = self.parameterAsConnectionName(
                parameters, self.CONNECTION_NAME, context)
        else:
            connection_name = self.parameterAsString(
                parameters, self.CONNECTION_NAME, context)

        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        connection = metadata.findConnection(connection_name)
        if not connection:
            raise QgsProcessingException(tr("La connexion {} n'existe pas").format(connection_name))

        if SCHEMA in connection.schemas():
            override = self.parameterAsBool(parameters, self.OVERRIDE, context)
            if not override:
                msg = tr(
                    "Le schéma {} existe déjà dans la base de données {} ! "
                    "Si vous voulez VRAIMENT supprimer et recréer le schéma "
                    "(et supprimer les données) cocher la case **Écraser**").format(SCHEMA, connection_name)
                return False, msg

        return super().checkParameterValues(parameters, context)

    def processAlgorithm(self, parameters, context, feedback):
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')

        if Qgis.QGIS_VERSION_INT >= 31400:
            connection_name = self.parameterAsConnectionName(
                parameters, self.CONNECTION_NAME, context)
        else:
            connection_name = self.parameterAsString(
                parameters, self.CONNECTION_NAME, context)

        connection = metadata.findConnection(connection_name)
        if not connection:
            raise QgsProcessingException(tr("La connexion {} n'existe pas.").format(connection_name))

        # Drop schema if needed
        override = self.parameterAsBool(parameters, self.OVERRIDE, context)
        if override and SCHEMA in connection.schemas():
            feedback.pushInfo(tr("Suppression du schéma {}…").format(SCHEMA))
            try:
                connection.dropSchema(SCHEMA, True)
            except QgsProviderConnectionException as e:
                raise QgsProcessingException(str(e))

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
            "{}/90_GLOSSARY.sql".format(SCHEMA),
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
            "TEST_DATABASE_INSTALL_{}".format(SCHEMA.upper())
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

            try:
                connection.executeSql(sql)
            except QgsProviderConnectionException as e:
                raise QgsProcessingException(str(e))
            feedback.pushInfo("  Success !")

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

        try:
            connection.executeSql(sql)
        except QgsProviderConnectionException as e:
            raise QgsProcessingException(str(e))

        feedback.pushInfo("Version de la base de données '{}'.".format(metadata_version))

        if run_migration:
            feedback.reportError("You need to run migrations, old version installed !")

        results = {
            self.DATABASE_VERSION: metadata_version,
        }
        return results
