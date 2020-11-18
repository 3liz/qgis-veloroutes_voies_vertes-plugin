"""
Created on Tue May 26 17:13:50 2020

@author: enolasengeissen
"""

__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import os

from qgis.core import (
    QgsExpressionContextUtils,
    QgsProcessingException,
    QgsProcessingOutputNumber,
    QgsProcessingOutputString,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterString,
)

from ...qgis_plugin_tools.tools.algorithm_processing import (
    BaseProcessingAlgorithm,
)
from ...qgis_plugin_tools.tools.database import (
    available_migrations,
    fetch_data_from_sql_query,
)
from ...qgis_plugin_tools.tools.i18n import tr
from ...qgis_plugin_tools.tools.resources import plugin_path
from ...qgis_plugin_tools.tools.version import format_version_integer, version

SCHEMA = "veloroutes"


class UpgradeDatabaseStructure(BaseProcessingAlgorithm):

    CONNECTION_NAME = "CONNECTION_NAME"
    RUN_MIGRATIONS = "RUN_MIGRATIONS"
    OUTPUT_STATUS = "OUTPUT_STATUS"
    OUTPUT_STRING = "OUTPUT_STRING"

    def name(self):
        return "upgrade_database_structure"

    def displayName(self):
        return tr("Mise à jour de la structure de la base")

    def group(self):
        return tr("Structure")

    def groupId(self):
        return "veloroutes_structure"

    def shortHelpString(self):
        return tr(
            "Mise à jour de la base de données suite à une nouvelle version de l'extension."
        )

    def initAlgorithm(self, config):
        # INPUTS
        connection_name = QgsExpressionContextUtils.globalScope().variable(
            "veloroutes_connection_name"
        )
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
                self.RUN_MIGRATIONS,
                tr("Cocher cette option pour lancer la mise-à-jour."),
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
        # Check if run migrations is checked
        run_migrations = self.parameterAsBool(parameters, self.RUN_MIGRATIONS, context)
        if not run_migrations:
            msg = tr("Vous devez cocher cette case pour réaliser la mise à jour !")
            return False, msg

        # Check database content
        ok, msg = self.checkSchema(parameters, context)
        if not ok:
            return False, msg

        return super().checkParameterValues(parameters, context)

    def checkSchema(self, parameters, context):
        _ = context
        sql = """
            SELECT schema_name
            FROM information_schema.schemata
            WHERE schema_name = '{}';
        """.format(
            SCHEMA
        )
        connection_name = self.parameterAsString(
            parameters, self.CONNECTION_NAME, context
        )
        _, data, _, ok, error_message = fetch_data_from_sql_query(connection_name, sql)
        if not ok:
            return ok, error_message

        ok = False
        msg = tr("Le schéma {} n'existe pas dans la base de données !").format(SCHEMA)
        for a in data:
            schema = a[0]
            if schema == SCHEMA:
                ok = True
                msg = ""
        return ok, msg

    def processAlgorithm(self, parameters, context, feedback):
        connection_name = self.parameterAsString(
            parameters, self.CONNECTION_NAME, context
        )

        # Drop schema if needed
        run_migrations = self.parameterAsBool(parameters, self.RUN_MIGRATIONS, context)
        if not run_migrations:
            msg = tr("Vous devez cocher cette case pour réaliser la mise à jour !")
            raise QgsProcessingException(msg)

        # Get database version
        sql = """
            SELECT me_version
            FROM {}.metadata
            WHERE me_status = 1
            ORDER BY me_version_date DESC, me_version DESC
            LIMIT 1;
        """.format(
            SCHEMA
        )
        _, data, _, ok, error_message = fetch_data_from_sql_query(connection_name, sql)
        if not ok:
            raise QgsProcessingException(error_message)

        db_version = None
        for a in data:
            db_version = a[0]
        if not db_version:
            error_message = tr("Aucune version trouvée dans la base de données !")
            raise QgsProcessingException(error_message)

        feedback.pushInfo(
            tr("Version de la base de données") + " = {}".format(db_version)
        )

        # Get plugin version
        plugin_version = version()
        if plugin_version in ["master", "dev"]:
            migrations = available_migrations(000000)
            last_migration = migrations[-1]
            plugin_version = (
                last_migration.replace("upgrade_to_", "").replace(".sql", "").strip()
            )
            feedback.reportError(
                "Be careful, running the migrations on a development branch!"
            )
            feedback.reportError(
                "Latest available migration is {}".format(plugin_version)
            )
        else:
            feedback.pushInfo(tr("Version du plugin") + " = {}".format(plugin_version))

        # Return if nothing to do
        if db_version == plugin_version:
            return {
                self.OUTPUT_STATUS: 1,
                self.OUTPUT_STRING: tr(
                    " La version de la base de données et du plugin sont les mêmes. "
                    "Aucune mise-à-jour n'est nécessaire"
                ),
            }

        db_version_integer = format_version_integer(db_version)
        sql_files = available_migrations(db_version_integer)

        # Loop sql files and run SQL code
        for sf in sql_files:
            sql_file = os.path.join(plugin_path(), "install/sql/upgrade/{}".format(sf))
            with open(sql_file, "r") as f:
                sql = f.read()
                if len(sql.strip()) == 0:
                    feedback.pushInfo("* " + sf + " -- NON TRAITÉ (FICHIER VIDE)")
                    continue

                # Add SQL database version in veloroutes.metadata
                new_db_version = (
                    sf.replace("upgrade_to_", "").replace(".sql", "").strip()
                )
                feedback.pushInfo("* NOUVELLE VERSION BDD " + new_db_version)
                sql += """
                    UPDATE {}.metadata
                    SET (me_version, me_version_date)
                    = ( '{}', now()::timestamp(0) );
                """.format(
                    SCHEMA, new_db_version
                )

                _, _, _, ok, error_message = fetch_data_from_sql_query(
                    connection_name, sql
                )
                if not ok:
                    raise QgsProcessingException(error_message)

                feedback.pushInfo("* " + sf + " -- OK !")

        # Everything is fine, we now update to the plugin version
        sql = """
            UPDATE {}.metadata
            SET (me_version, me_version_date)
            = ( '{}', now()::timestamp(0) );
        """.format(
            SCHEMA, plugin_version
        )

        _, _, _, ok, error_message = fetch_data_from_sql_query(connection_name, sql)
        if not ok:
            raise QgsProcessingException(error_message)

        msg = tr("*** LA STRUCTURE A BIEN ÉTÉ MISE À JOUR SUR LA BASE DE DONNÉES ***")
        feedback.pushInfo(msg)

        return {self.OUTPUT_STATUS: 1, self.OUTPUT_STRING: msg}
