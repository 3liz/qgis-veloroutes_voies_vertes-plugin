__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsMapLayerType,
    QgsProcessingParameterString,
    QgsProcessingOutputString,
    QgsProcessingParameterDefinition,
    QgsRelation
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

    @staticmethod
    def createRelation(referenced, referencing, fielda, fieldb, name, setid):
        rel = QgsRelation()
        rel.setReferencedLayer(referenced)
        rel.setReferencingLayer(referencing)
        rel.addFieldPair(fielda, fieldb)
        rel.setName(name)
        rel.setId(setid)

        return rel

    def processAlgorithm(self, parameters, context, feedback):
        _ = parameters
        msg = ""

        layers = context.project().mapLayers().values()
        vector_layers = [layer for layer in layers if layer.type() == QgsMapLayerType.VectorLayer]

        manager = context.project().relationManager()
        manager.setRelations(manager.discoverRelations([], vector_layers))

        vportion = context.project().mapLayersByName("v_portion")[0]
        vitineraire = context.project().mapLayersByName("v_itineraire")[0]
        segment = context.project().mapLayersByName("segment")[0]
        etape = context.project().mapLayersByName("etape")[0]
        element = context.project().mapLayersByName("element")[0]

        rel1 = self.createRelation(
            vportion.id(), etape.id(), "id_portion", "id_portion",
            "vportion_etape", "etape_7d2f_id_portion_v_portion__id_portion")
        rel2 = self.createRelation(
            vportion.id(), element.id(), "id_portion", "id_portion",
            "vportion_element", "element_87_id_portion_v_portion__id_portion")
        rel3 = self.createRelation(
            vitineraire.id(), etape.id(), "id_itineraire", "id_iti",
            "vitineraire_etape", "etape_7d2f_id_itineraire_v_itinerai_id_iti")
        rel4 = self.createRelation(
            segment.id(), element.id(), "id_segment", "id_segment",
            "segment_element", "element_34_id_segment_segment__id_segment")

        manager.addRelation(rel1)
        manager.addRelation(rel2)
        manager.addRelation(rel3)
        manager.addRelation(rel4)

        layers_name = [
            "repere", "poi_tourisme", "poi_service", "OpenStreetMap",
            "portion", "itineraire", "liaison", "segment", "v_portion",
            "v_itineraire", "etape", "element"
        ]

        for x in layers_name:
            layers = context.project().mapLayersByName(x)
            if layers:
                for layer in layers:
                    feedback.pushInfo(layer.name() + ", qml loaded")
                    layer.loadNamedStyle(resources_path("qml", x + ".qml"))
                    feedback.pushInfo("Style for " + x + " successfully loaded")
                    msg = msg + " // Style for " + x + " successfully loaded"

        return {self.OUTPUT_MSG: msg}
