"""
Created on Wed Jul  8 15:09:55 2020

@author: enola sengeissen
"""
__author__ = '3liz'
__date__ = '2019-02-15'
__copyright__ = '(C) 2019 by 3liz'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'

from qgis.core import (
    Qgis,
    QgsExpressionContextUtils,
    QgsProcessingOutputNumber,
    QgsProcessingOutputString,
    QgsProcessingParameterString,
)

if Qgis.QGIS_VERSION_INT >= 31400:
    from qgis.core import (
        QgsProcessingParameterDatabaseSchema,
        QgsProcessingParameterProviderConnection,
    )

from ...qgis_plugin_tools.tools.algorithm_processing import (
    BaseProcessingAlgorithm,
)
from ...qgis_plugin_tools.tools.i18n import tr


class ConfigurePlugin(BaseProcessingAlgorithm):

    CONNECTION_NAME = 'CONNECTION_NAME'
    SCHEMA = 'SCHEMA'

    OUTPUT_STATUS = 'OUTPUT_STATUS'
    OUTPUT_STRING = 'OUTPUT_STRING'

    def name(self):
        return 'configure_plugin'

    def displayName(self):
        return 'Configurer l\'extension Véloroutes et voies vertes'

    def group(self):
        return 'Configuration'

    def groupId(self):
        return 'veloroutes_configuration'

    def shortHelpString(self) -> str:
        return 'Ajoute la variable "veloroutes_connection_name" à QGIS.'

    def initAlgorithm(self, config):
        # Database connection parameters
        label = tr("Connexion PostgreSQL vers la base de données")
        tooltip = "Base de données de destination"
        default = QgsExpressionContextUtils.globalScope().variable('veloroutes_connection_name')
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterProviderConnection(
                self.CONNECTION_NAME,
                label,
                "postgres",
                optional=False,
                defaultValue=default
            )
        else:
            param = QgsProcessingParameterString(self.CONNECTION_NAME, label, defaultValue=default)
            param.setMetadata(
                {
                    "widget_wrapper": {
                        "class": "processing.gui.wrappers_postgis.ConnectionWidgetWrapper"
                    }
                }
            )
        if Qgis.QGIS_VERSION_INT >= 31600:
            param.setHelp(tooltip)
        else:
            param.tooltip_3liz = tooltip
        self.addParameter(param)

        label = tr("Schéma")
        tooltip = 'Nom du schéma des données véloroutes et voies vertes'
        default = 'veloroutes'
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterDatabaseSchema(
                self.SCHEMA,
                label,
                self.CONNECTION_NAME,
                defaultValue=default,
                optional=False,
            )
        else:
            param = QgsProcessingParameterString(self.SCHEMA, label, default, False, True)
            param.setMetadata(
                {
                    "widget_wrapper": {
                        "class": "processing.gui.wrappers_postgis.SchemaWidgetWrapper",
                        "connection_param": self.CONNECTION_NAME,
                    }
                }
            )
        if Qgis.QGIS_VERSION_INT >= 31600:
            param.setHelp(tooltip)
        else:
            param.tooltip_3liz = tooltip
        self.addParameter(param)

        # OUTPUTS
        # Add output for status (integer)
        output = QgsProcessingOutputNumber(self.OUTPUT_STATUS, 'Statut de sortie')
        output.tooltip_3liz = output.description()
        self.addOutput(output)

        # Add output for message
        output = QgsProcessingOutputString(self.OUTPUT_STRING, 'Message de sortie')
        output.tooltip_3liz = output.description()
        self.addOutput(output)

    def processAlgorithm(self, parameters, context, feedback):
        if Qgis.QGIS_VERSION_INT >= 31400:
            connection_name = self.parameterAsConnectionName(parameters, self.CONNECTION_NAME, context)
            schema = self.parameterAsSchema(parameters, self.SCHEMA, context)
        else:
            connection_name = self.parameterAsString(parameters, self.CONNECTION_NAME, context)
            schema = self.parameterAsString(parameters, self.SCHEMA, context)

        # Set global variable
        # noinspection PyCallByClass,PyArgumentList
        QgsExpressionContextUtils.setProjectVariable(
            context.project(), 'veloroutes_connection_name', connection_name
        )
        feedback.pushInfo('Connection PostgreSQL à la base vvv "{}"'.format(connection_name))

        QgsExpressionContextUtils.setProjectVariable(
            context.project(), 'veloroutes_schema', schema
        )
        feedback.pushInfo('Schema PostgreSQL de la base vvv "{}"'.format(schema))

        msg = 'La configuration a été faite'
        feedback.pushInfo(msg)
        status = 1

        return {
            self.OUTPUT_STATUS: status,
            self.OUTPUT_STRING: msg
        }
