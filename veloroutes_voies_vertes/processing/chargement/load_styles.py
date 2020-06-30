__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProcessingParameterString,
    QgsProcessingOutputString,
    QgsProcessingParameterDefinition,
)
from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr
from ...qgis_plugin_tools.tools.resources import resources_path


class LoadStylesAlgorithm(BaseProcessingAlgorithm):
    """
    Chargement des couches adresse depuis la base de données
    """

    INPUT = "INPUT"
    OUTPUT_MSG = "OUTPUT MSG"

    def name(self):
        return "load_styles"

    def displayName(self):
        return tr("Chargement des styles depuis le dossier resources")

    def groupId(self):
        return "adresse_donnees"

    def group(self):
        return tr("Données")

    def shortHelpString(self):
        return tr("Charger les styles pour les différentes couches.")

    def initAlgorithm(self, config):
        # INPUTS
        parameter = QgsProcessingParameterString(
            self.INPUT, "Champ qui ne sert à rien !", optional=True
        )
        parameter.setFlags(
            parameter.flags() | QgsProcessingParameterDefinition.FlagHidden
        )
        self.addParameter(parameter)

        # OUTPUTS

        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        )

    def processAlgorithm(self, parameters, context, feedback):
        _ = parameters
        msg = ""
        layers_name = ["v_itineraire", "repere", "poi_tourisme",
                       "poi_service", "v_portion", "liaison", "segment"]

        for x in layers_name:
            layers = context.project().mapLayersByName(x)
            if layers:
                for layer in layers:
                    feedback.pushInfo(layer.name() + ", qml loaded")
                    layer.loadNamedStyle(resources_path("qml", x + ".qml"))
                    feedback.pushInfo("Style for " + x + " successfully loaded")
                    msg = msg + " // Style for " + x + " successfully loaded"

        return {self.OUTPUT_MSG: msg}
