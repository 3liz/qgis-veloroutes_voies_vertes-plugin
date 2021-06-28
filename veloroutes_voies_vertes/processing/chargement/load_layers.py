__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    Qgis,
    QgsDataSourceUri,
    QgsMapLayerType,
    QgsProcessingContext,
    QgsProcessingOutputMultipleLayers,
    QgsProcessingOutputString,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterString,
    QgsProviderRegistry,
    QgsRasterLayer,
    QgsVectorLayer,
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


class LoadLayersAlgorithm(BaseProcessingAlgorithm):
    """
    Chargement des couches adresse depuis la base de données
    """

    DATABASE = "DATABASE"
    SCHEMA = "SCHEMA"
    RASTER = "RASTER"
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
        return tr(
            "Charger toutes les couches de la base de données.\n"
            "Vous pouvez aussi ajouter un fond raster OpenStreetMap"
        )

    def initAlgorithm(self, config):
        label = tr("Connexion à la base de données")
        tooltip = 'Nom de la connexion dans QGIS pour se connecter à la base de données'
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
        tooltip = 'Nom du schéma des données véloroutes et voies vertes'
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

        self.addParameter(
            QgsProcessingParameterBoolean(
                self.RASTER,
                tr("Ajouter un fond raster OpenStreetMap ?"),
                defaultValue=False,
                optional=False,
            )
        )

        # OUTPUTS
        output = QgsProcessingOutputMultipleLayers(self.OUTPUT, tr("Couches de sortie"))
        output.tooltip_3liz = 'Les différentes couches de l\'extension véloroutes et voies vertes'
        self.addOutput(output)

        output = QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        output.tooltip_3liz = output.description()
        self.addOutput(output)

    def initLayer(self, context, uri, schema, table, geom, sql, pkey=None):

        uri.setDataSource(schema, table, geom, sql)
        if pkey:
            uri.setDataSource(schema, table, geom, sql, pkey)
        layer = QgsVectorLayer(uri.uri(), table, "postgres")
        if not layer.isValid():
            return False
        context.temporaryLayerStore().addMapLayer(layer)
        context.addLayerToLoadOnCompletion(
            layer.id(),
            QgsProcessingContext.LayerDetails(table, context.project(), self.OUTPUT)
        )
        return layer

    def XYZ(self, context, url, name):
        rasterLyr = QgsRasterLayer("type=xyz&url=" + url, name, "wms")
        context.temporaryLayerStore().addMapLayer(rasterLyr)
        context.addLayerToLoadOnCompletion(
            rasterLyr.id(),
            QgsProcessingContext.LayerDetails(name, context.project(), self.OUTPUT)
        )
        return rasterLyr

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        output_layers = []
        layers_name = ["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        layers_v_name = ["v_portion", "v_itineraire"]
        tables_name = ["element", "etape", "portion", "itineraire", "statut_segment_val",
                       "amenagement_segment_val", "amenagement_type_segment_val"]
        layers_to_load = layers_name + layers_v_name + tables_name
        if Qgis.QGIS_VERSION_INT >= 31400:
            connection = self.parameterAsConnectionName(parameters, self.DATABASE, context)
            schema = self.parameterAsSchema(parameters, self.SCHEMA, context)
        else:
            connection = self.parameterAsString(parameters, self.DATABASE, context)
            schema = self.parameterAsString(parameters, self.SCHEMA, context)

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

        feedback.pushInfo("")
        feedback.pushInfo("## LISTE DES COUCHES A CHARGER ##")
        for layer in context.project().mapLayers().values():
            if layer.type() == QgsMapLayerType.VectorLayer and \
               layer.dataProvider().name() == 'postgres':
                l_uri = layer.dataProvider().uri()
                table_name = l_uri.table()
                if l_uri.connectionInfo() == connection_info and \
                   l_uri.schema() == schema and \
                   table_name in layers_to_load:
                    layers_to_load.remove(table_name)

        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DES COUCHES ##")

        # add vector
        for x in layers_to_load:
            if x in layers_name:
                result = self.initLayer(context, uri, schema, x, "geom", "")
            elif x in layers_v_name:
                if x == "v_portion":
                    pkey = "id_portion"
                if x == "v_itineraire":
                    pkey = "id_itineraire"
                result = self.initLayer(
                    context, uri, schema, x, "geom", "", pkey
                )
            elif x in tables_name:
                result = self.initLayer(context, uri, schema, x, None, "")

            if not result:
                feedback.reportError("La couche '" + x + "' ne peut pas être chargée")
            else:
                output_layers.append(result.id())

        # add raster
        raster = self.parameterAsBool(parameters, self.RASTER, context)
        if raster:
            if not context.project().mapLayersByName("OpenStreetMap"):
                url_with_params = (
                    'type=xyz&url=http://tile.openstreetmap.org/%7Bz%7D/%7Bx%7D/%7By%7D.png&'
                    'zmax=19&zmin=0&crs=EPSG3857')
                result = self.XYZ(context, url_with_params, 'OpenStreetMap')
                output_layers.append(result.id())

        output_len = len(output_layers)
        if output_len == 1:
            msg = '{} couche chargée'.format(output_len)
        elif output_len:
            msg = '{} couches chargées'.format(output_len)
        else:
            msg = 'Aucunes couches chargées'

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
