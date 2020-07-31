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
    QgsProcessing,
    QgsProcessingOutputMultipleLayers
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
    DPT = "DPT"
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
                    "connection_param": self.DATABASE
                }
            }
        )
        self.addParameter(schema_param)

        # Table à exporter
        table_param = QgsProcessingParameterString(
            self.TABLE,
            tr("Donnée à exporter"),
            'portion',
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

        # Non du departement pour le fichier d'export
        depparam= QgsProcessingParameterString(
            self.DPT,
            tr("Departement au format XXX"),
            '066',
            optional=False
        )
        self.addParameter(depparam)

        # Chemin de destination
        outparam = QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                'Chemin de destination',
                type=QgsProcessing.TypeVectorAnyGeometry,
                createByDefault=True,
                defaultValue=None
        )
        self.addParameter(outparam)

        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputMultipleLayers(self.OUTPUT, tr("Couches de sortie"))
        )

    def createExportTable(self, table, connection):

        try:
            sql = "SELECT veloroutes.export_table_{}()".format(table)
            connection.executeSql(sql)
        except Exception as e:
            msg = e.args[0]
            QgsMessageLog.logMessage(msg, 'VéloroutesPlugin', Qgis.Critical)

    def toSHP(self, context, table, dpt, uri, geom, sql, pkey=None):
        uri.setDataSource('exports', table, geom, sql)
        if pkey:
            uri.setDataSource('exports', table, geom, sql, pkey)
        layer = QgsVectorLayer(uri.uri(), table, "postgres")
        print(layer.isValid())
        if not layer.isValid():
            return False
        # if layer.geometryType == LineGeometry:
        #     geomtype="L"
        geomtype =""
        filename="N_3V_"+table.upper()+ "_" + geomtype + "_" + dpt
        context.temporaryLayerStore().addMapLayer(layer)
        context.addLayerToLoadOnCompletion(
            layer.id(),
            QgsProcessingContext.LayerDetails(filename, context.project(), self.OUTPUT)
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

        dpt = self.parameterAsString(parameters, self.DPT, context)

        # schema = self.parameterAsString(parameters, self.SCHEMA, context)
        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DE LA COUCHE ##")

        self.createExportTable(table, conn)
        if table =='itineraire':
            geom = None
        else:
            geom = "geom"
        result = self.toSHP(context, table, dpt, uri, geom, "")
        output_layers.append(result.id())

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layers}
