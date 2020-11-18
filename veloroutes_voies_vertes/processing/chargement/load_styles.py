__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import os

from qgis.core import (
    Qgis,
    QgsDataSourceUri,
    QgsMapLayerDependency,
    QgsMapLayerType,
    QgsProcessingOutputMultipleLayers,
    QgsProcessingOutputString,
    QgsProcessingParameterString,
    QgsProviderRegistry,
    QgsRelation,
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
from ...qgis_plugin_tools.tools.resources import resources_path


class LoadStylesAlgorithm(BaseProcessingAlgorithm):
    """
    Chargement des couches adresse depuis la base de données
    """

    DATABASE = "DATABASE"
    SCHEMA = "SCHEMA"
    OUTPUT = "OUTPUT"
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
        label = tr("Connexion PostgreSQL vers la base de données")
        tooltip = tr("Base de données de destination")
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterProviderConnection(
                self.DATABASE,
                label,
                "postgres",
                optional=False,
            )
        else:
            param = QgsProcessingParameterString(self.DATABASE, label)
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
        tooltip = 'Nom du schéma pour chercher les couches'
        default = 'veloroutes'
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterDatabaseSchema(
                self.SCHEMA,
                label,
                self.DATABASE,
                defaultValue=default,
                optional=False,
            )
        else:
            param = QgsProcessingParameterString(self.SCHEMA, label, default, False, True)
            param.setMetadata(
                {
                    "widget_wrapper": {
                        "class": "processing.gui.wrappers_postgis.SchemaWidgetWrapper",
                        "connection_param": self.DATABASE,
                    }
                }
            )
        if Qgis.QGIS_VERSION_INT >= 31600:
            param.setHelp(tooltip)
        else:
            param.tooltip_3liz = tooltip
        self.addParameter(param)

        # OUTPUTS
        output = QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        output.tooltip_3liz = output.description()
        self.addOutput(output)

        output = QgsProcessingOutputMultipleLayers(self.OUTPUT, tr("Couches dont le style a été modifié"))
        output.tooltip_3liz = 'Les différentes couches de l\'extention véloroutes et voies vertes'
        self.addOutput(output)

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
        if Qgis.QGIS_VERSION_INT >= 31400:
            connection = self.parameterAsConnectionName(parameters, self.DATABASE, context)
            schema = self.parameterAsSchema(parameters, self.SCHEMA, context)
        else:
            connection = self.parameterAsString(parameters, self.DATABASE, context)
            schema = self.parameterAsString(parameters, self.SCHEMA, context)

        # Get connection info
        feedback.pushInfo("## CONNEXION A LA BASE DE DONNEES ##")
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        connection = metadata.findConnection(connection)
        uri = QgsDataSourceUri(connection.uri())
        connection_info = uri.connectionInfo()

        is_host = uri.host() != ""
        if is_host:
            feedback.pushInfo("Connexion établie via l'hote")
        else:
            feedback.pushInfo("Connexion établie via le service")

        tables_name = [
            "repere", "poi_tourisme", "poi_service", "portion", "itineraire",
            "liaison", "segment", "v_portion", "v_itineraire", "etape", "element",
            "statut_segment_val", "amenagement_segment_val", "amenagement_type_segment_val"
        ]

        # Get available layers
        self.available_layers = {}
        feedback.pushInfo("")
        feedback.pushInfo("## LISTE DES COUCHES A METTRE A JOUR ##")
        for layer in context.project().mapLayers().values():
            if layer.type() == QgsMapLayerType.VectorLayer and \
               layer.dataProvider().name() == 'postgres':
                l_uri = layer.dataProvider().uri()
                table_name = l_uri.table()
                if l_uri.connectionInfo() == connection_info and \
                   l_uri.schema() == schema and \
                   table_name in tables_name:
                    self.available_layers[table_name] = layer.id()
                    feedback.pushInfo("// {}".format(layer.name()))

        return {self.OUTPUT_MSG: '', self.OUTPUT: list(self.available_layers.values())}

    def postProcessAlgorithm(self, context, feedback):
        feedback.pushInfo("postProcessAlgorithm")
        msg = ''

        # Get vector layers
        vector_layers = {}
        for table_name, l_id in self.available_layers.items():
            vector_layers[table_name] = context.project().mapLayer(l_id)

        # Discover relations
        feedback.pushInfo("")
        feedback.pushInfo("## DECOUVERTE DES RELATIONS ##")
        manager = context.project().relationManager()
        manager.setRelations(manager.discoverRelations([], list(vector_layers.values())))

        # Add relations for views
        feedback.pushInfo("")
        feedback.pushInfo("## AJOUT DES RELATIONS AVEC LES VUES ##")
        vportion = vector_layers.get('v_portion')
        vitineraire = vector_layers.get('v_itineraire')
        segment = vector_layers.get('segment')
        etape = vector_layers.get('etape')
        element = vector_layers.get('element')

        if vportion and etape:
            rel1 = self.createRelation(
                vportion.id(), etape.id(), "id_portion", "id_portion",
                "vportion_etape", "etape_7d2f_id_portion_v_portion__id_portion")
            manager.addRelation(rel1)
            feedback.pushInfo("// Relation entre {} et {}".format(vportion.name(), etape.name()))
        if vportion and element:
            rel2 = self.createRelation(
                vportion.id(), element.id(), "id_portion", "id_portion",
                "vportion_element", "element_87_id_portion_v_portion__id_portion")
            manager.addRelation(rel2)
            feedback.pushInfo("// Relation entre {} et {}".format(vportion.name(), element.name()))
        if vitineraire and etape:
            rel3 = self.createRelation(
                vitineraire.id(), etape.id(), "id_itineraire", "id_itineraire",
                "vitineraire_etape", "etape_7d2f_id_itineraire_v_itinerai_id_itineraire")
            manager.addRelation(rel3)
            feedback.pushInfo("// Relation entre {} et {}".format(vitineraire.name(), etape.name()))
        if segment and element:
            rel4 = self.createRelation(
                segment.id(), element.id(), "id_segment", "id_segment",
                "segment_element", "element_34_id_segment_segment__id_segment")
            manager.addRelation(rel4)
            feedback.pushInfo("// Relation entre {} et {}".format(segment.name(), element.name()))

        # Add Dependencies
        feedback.pushInfo("")
        feedback.pushInfo("## AJOUT DES DEPENDANCES ##")
        if vportion and segment:
            vportion.setDependencies([QgsMapLayerDependency(segment.id())])
        if vitineraire and segment:
            vitineraire.setDependencies([QgsMapLayerDependency(segment.id())])

        # Load layer styles
        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DES STYLES ##")
        msg = ''
        for table_name, layer in vector_layers.items():
            feedback.pushInfo("Recherche du style pour {} ({})".format(layer.name(), table_name))
            style_path = resources_path("qml", table_name + ".qml")
            if os.path.exists(style_path):
                layer.loadNamedStyle(style_path)
                feedback.pushInfo("Chargement du style pour {} ({})".format(layer.name(), table_name))
                msg += " // Style de {} ({}) chargé".format(layer.name(), table_name)
                layer.triggerRepaint()
        # Apply to OpenStreetMap
        osm_name = 'OpenStreetMap'
        osm_layers = context.project().mapLayersByName(osm_name)
        if osm_layers:
            for layer in osm_layers:
                feedback.pushInfo("Recherche du style pour {} ({})".format(layer.name(), osm_name))
                style_path = resources_path("qml", osm_name + ".qml")
                if os.path.exists(style_path):
                    layer.loadNamedStyle(style_path)
                    feedback.pushInfo("Chargement du style pour {} ({})".format(layer.name(), osm_name))
                    msg += " // Style de {} ({}) chargé".format(layer.name(), osm_name)
                    layer.triggerRepaint()

        return {self.OUTPUT_MSG: msg, self.OUTPUT: list(self.available_layers.values())}
