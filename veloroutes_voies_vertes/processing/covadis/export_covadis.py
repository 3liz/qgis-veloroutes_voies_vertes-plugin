__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProcessingParameterFeatureSink,
    QgsProviderRegistry,
    QgsProcessingParameterString,
    QgsVectorLayer,
    QgsMessageLog,
    Qgis,
    QgsProcessingContext,
    QgsProcessing
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr
from processing.tools.postgis import uri_from_name


class ExportCovadis(BaseProcessingAlgorithm):
    """
    Export des données dans le format d’échage shape d’ESRI
    conformement au standard Covadis
    """

    DATABASE = "DATABASE"
    SCHEMA = "SCHEMA"
    TABLE = "TABLE"
    OUTPUT = "OUTPUT"
    OUTPUT_MSG = "OUTPUT MSG"

    def name(self):
        return "export_covadis"

    def displayName(self):
        return tr("Export des données")

    def groupId(self):
        return "covadis"

    def group(self):
        return tr("Covadis")

    def shortHelpString(self):
        return tr("Exporter un fichier au format shape d'ESRI")

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
                    "connection_param": self.DATABASE,
                }
            }
        )
        self.addParameter(schema_param)

        # Table à exporter
        table_param = QgsProcessingParameterString(
            self.TABLE,
            tr("Donnée à exporter"),
            'segment',
            optional=False
        )
        table_param.setMetadata(
            {
                "widget_wrapper": {
                    "class": "processing.gui.wrappers_postgis.TableWidgetWrapper",
                    "schema_param": self.SCHEMA
                }
            }
        )
        self.addParameter(table_param)

        # Chemin de destination
        outparam = QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                'Chemin de destination',
                type=QgsProcessing.TypeVectorAnyGeometry,
                createByDefault=True,
                defaultValue=None
        )
        self.addParameter(outparam)

    def createExportTable(self, table, connection):

        try:
            sql = "SELECT veloroutes.export_table('{}')".format(table)
            connection.executeSql(sql)
        except Exception as e:
            msg = e.args[0]
            QgsMessageLog.logMessage(msg, 'VéloroutesPlugin', Qgis.Critical)

    def toSHP(self, context, table, uri, schema, geom, sql, pkey=None):
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
        print("call toSHP")

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        output_layers = []

        feedback.pushInfo("## CONNEXION A LA BASE DE DONNEES ##")
        connection = self.parameterAsString(parameters, self.DATABASE, context)
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        conn = metadata.findConnection(connection)

        uri = uri_from_name(connection)
        uri.setDataSource(parameters[self.SCHEMA], parameters[self.TABLE], "geom", "")
        layer = QgsVectorLayer(uri.uri(), parameters[self.TABLE], "postgres")
        table=layer.name()

        schema = self.parameterAsString(parameters, self.SCHEMA, context)
        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DE LA COUCHE ##")

        self.createExportTable(table, conn)

        self.toSHP(context, table, uri, schema, 'geom', "", pkey=None)
        # for x in layers_name:
        #     if not context.project().mapLayersByName(x):
        #         result = self.initLayer(context, uri, schema, x, "geom", "")
        #         if not result:
        #             feedback.pushInfo("La couche " + x + " ne peut pas être chargée")
        #         else:
        #             output_layers.append(result.id())
        # # add views
        # for x in layers_v_name:
        #     if x == "v_portion":
        #         pkey= "id_portion"
        #     if x == "v_itineraire":
        #         pkey = "id_iti"
        #     if not context.project().mapLayersByName(x):
        #         result= self.initLayer(
        #                 context, uri, schema, x, "geom", "", None, pkey
        #         )
        #         if not result:
        #             feedback.pushInfo("La couche " + x + " ne peut pas être chargée")
        # # add raster
        # raster = self.parameterAsBool(parameters, self.RASTER, context)
        # if raster:
        #     if not context.project().mapLayersByName("OpenStreetMap"):
        #         urlWithParams = ('type=xyz&url=http://tile.openstreetmap.org/%7Bz%7D/%7Bx%7D/'
        #                          '%7By%7D.png&zmax=19&zmin=0&crs=EPSG3857')
        #         result= self.XYZ(context, urlWithParams, 'OpenStreetMap')
        #         output_layers.append(result.id())

        # # add attribute tables
        # for x in tables_name:
        #     if not context.project().mapLayersByName(x):
        #         result = self.initLayer(context, uri, schema, x, None, "")
        #         if not result:
        #             feedback.pushInfo("La couche " + x + " ne peut pas être chargée")
        #         else:
        #             output_layers.append(result.id())

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
