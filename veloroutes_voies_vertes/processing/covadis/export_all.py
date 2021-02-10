__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import processing

from qgis.core import QgsProcessingOutputMultipleLayers

from ...qgis_plugin_tools.tools.i18n import tr
from .export_covadis import ExportCovadis


class ExportCovadisAll(ExportCovadis):
    """
    Export des données dans le format d’échange shape d’ESRI
    conformement au standard Covadis
    """

    def name(self):
        return "export_all_covadis"

    def displayName(self):
        return tr("Export de tous les fichiers")

    def shortHelpString(self):
        return tr("Exporter tous les fichiers au format shape d'ESRI")

    def initAlgorithm(self, config):
        super().initAlgorithm(config)
        self.removeParameter('TABLE')
        self.removeParameter('OUTPUT')
        self.addOutput(
            QgsProcessingOutputMultipleLayers(
                self.OUTPUT,
                'Couches de sortie'
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        output_layers = []

        for i in range(15):
            params = {
                "DATABASE": self.parameterAsString(parameters, self.DATABASE, context),
                "SCHEMA": self.parameterAsString(parameters, self.SCHEMA, context),
                "TABLE": i,
                "DPT": self.parameterAsString(parameters, self.DPT, context),
                "FOLDER": self.parameterAsString(parameters, self.PROJECTS_FOLDER, context),
                "CHARGER": self.parameterAsBool(parameters, self.CHARGER, context)
            }
            alg = "{}:export_covadis".format(self.provider().id())
            layer = processing.run(
                alg, params, context=context, feedback=feedback, is_child_algorithm=True
            )
            output_layers.append(layer["OUTPUT"])

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
