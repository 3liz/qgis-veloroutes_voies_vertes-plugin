laye__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProcessingParameterString,
    QgsProcessingOutputMultipleLayers,
    QgsProcessingOutputString,
    QgsProcessingContext,
    QgsVectorLayer,
    QgsRasterLayer
)
from processing.tools.postgis import uri_from_name

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr


class LoadLayersAlgorithm(BaseProcessingAlgorithm):
    """
    Chargement des couches adresse depuis la base de données
    """

    DATABASE = "DATABASE"
    SCHEMA = "SCHEMA"
    OUTPUT = "OUTPUT"
    OUTPUT_MSG = "OUTPUT MSG"

    def name(self):
        return "load_layers"

    def displayName(self):
        return tr("Chargement des couches depuis la base")

    def groupId(self):
        return "adresse_donnees"

    def group(self):
        return tr("Données")

    def shortHelpString(self):
        return tr("Charger toutes les couches de la base de données.")

    def initAlgorithm(self, config):
        # INPUTS
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

        schema_param = QgsProcessingParameterString(
            self.SCHEMA, tr("Schéma"), "veloroutes", False, True
        )
        schema_param.setMetadata(
            {
                "widget_wrapper": {
                    "class": "processing.gui.wrappers_postgis.SchemaWidgetWrapper",
                    "connection_param": self.DATABASE,
                }
            }
        )
        self.addParameter(schema_param)

        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputMultipleLayers(self.OUTPUT, tr("Couches de sortie"))
        )

        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        )

    def initLayer(self, context, uri, schema, table, geom, sql, pk=None, pkey=None):
        displayname=table
        uri.setDataSource(schema, table, geom, sql)
        if pkey:
            uri.setDataSource(schema, table, geom, sql, pkey)
            displayname=table[2:]
        layer = QgsVectorLayer(uri.uri(), table, "postgres")
        if not layer.isValid():
            return False
        context.temporaryLayerStore().addMapLayer(layer)
        context.addLayerToLoadOnCompletion(
            layer.id(),
            QgsProcessingContext.LayerDetails(displayname, context.project(), self.OUTPUT)
        )
        return layer

    def XYZ(self, context, url, name):
        rasterLyr = QgsRasterLayer("type=xyz&url=" + url, name, "wms")
        context.temporaryLayerStore().addMapLayer(rasterLyr)
        context.addLayerToLoadOnCompletion(
            rasterLyr.id(),
            QgsProcessingContext.LayerDetails("osm", context.project(), self.OUTPUT)
        )
        return rasterLyr

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        output_layers = []
        layers_name = ["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        layers_v_name= ["v_portion", "v_itineraire"]
        connection = self.parameterAsString(parameters, self.DATABASE, context)

        feedback.pushInfo("## CONNEXION A LA BASE DE DONNEES ##")
        uri = uri_from_name(connection)

        is_host = uri.host() != ""
        if is_host:
            feedback.pushInfo("Connexion établie via l'hote")
        else:
            feedback.pushInfo("Connexion établie via le service")

        schema = self.parameterAsString(parameters, self.SCHEMA, context)
        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DES COUCHES ##")

        for x in layers_name:
            if not context.project().mapLayersByName(x):
                result = self.initLayer(context, uri, schema, x, "geom", "")
                if not result:
                    feedback.pushInfo("La couche " + x + " ne peut pas être chargée")
                else:
                    output_layers.append(result.id())

        for x in layers_v_name:
            if not context.project().mapLayersByName(x[2:]):
                result= self.initLayer(
                        context, uri, schema, x, "geom", "", None, "id_local"
                )
                if not result:
                    feedback.pushInfo("La couche " + x + " ne peut pas être chargée")

        if not context.project().mapLayersByName("osm"):
            urlWithParams = ('type=xyz&url=http://tile.openstreetmap.org/${z}/${x}/${y}'
                             '.png&zmax=19&zmin=0&crs=EPSG2154')
            result= self.XYZ(context, urlWithParams, 'OpenStreetMap')
            output_layers.append(result.id())
        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
