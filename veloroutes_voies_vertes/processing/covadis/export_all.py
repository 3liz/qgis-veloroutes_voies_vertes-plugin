__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProcessingParameterString,
    QgsProcessingOutputMultipleLayers,
    QgsProcessingParameterFolderDestination,
)

import processing
from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr


class ExportCovadisAll(BaseProcessingAlgorithm):
    """
    Export des données dans le format d’échange shape d’ESRI
    conformement au standard Covadis
    """

    DATABASE = "DATABASE2"
    SCHEMA = "SCHEMA"
    TABLE = "TABLE"
    DPT = "DPT"
    OUTPUT = "OUTPUT"
    OUTPUT_MSG = "OUTPUT MSG"
    PROJECTS_FOLDER="FOLDER"

    def name(self):
        return "export_all_covadis"

    def displayName(self):
        return tr("Export de tous les fichiers")

    def groupId(self):
        return "covadis"

    def group(self):
        return tr("Covadis")

    def shortHelpString(self):
        return tr("Exporter tous les fichiers au format shape d'ESRI")

    def initAlgorithm(self, config):

        # Base contenant la table
        db_param = QgsProcessingParameterString(
            self.DATABASE, tr("Connexion à la base de données")
        )
        db_param.setMetadata(
            {
                "widget_wrapper": {
                    "class": "processing.gui.wrappers_postgis.ConnectionWidgetWrapper"
                }
            }
        )
        self.addParameter(db_param)

        # Schema contenant la table
        schema_param = QgsProcessingParameterString(
            self.SCHEMA, tr("Schéma"), "veloroutes", False, False
        )
        schema_param.setMetadata(
            {
                "widget_wrapper": {
                    "class": "processing.gui.wrappers_postgis.SchemaWidgetWrapper",
                    "connection_param": self.DATABASE
                }
            }
        )
        self.addParameter(schema_param)

        # Nom du département pour le fichier d'export
        depparam= QgsProcessingParameterString(
            self.DPT,
            tr("Département au format XXX"),
            '066',
            optional=False
        )
        self.addParameter(depparam)

        # Chemin du dossier de destination
        outparam = QgsProcessingParameterFolderDestination(
            self.PROJECTS_FOLDER,
            tr("Chemin de destination"),
            '',
            False,
            False
        )
        self.addParameter(outparam)

        self.addOutput(
            QgsProcessingOutputMultipleLayers(self.OUTPUT, tr("Couches de sortie"))
        )

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        output_layers=[]

        for i in range(15):
            params = {
                "DATABASE": self.parameterAsString(parameters, self.DATABASE, context),
                "SCHEMA": self.parameterAsString(parameters, self.SCHEMA, context),
                "TABLE": i,
                "DPT": self.parameterAsString(parameters, self.DPT, context),
                "FOLDER": self.parameterAsString(parameters, self.PROJECTS_FOLDER, context),
                "CHARGER": False  # Qgis plante si on charge toutes les couches dans le projet
            }
            alg = "{}:export_covadis".format(self.provider().id())
            layer = processing.run(alg, params, feedback=feedback)
            output_layers.append(layer["OUTPUT"])

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
