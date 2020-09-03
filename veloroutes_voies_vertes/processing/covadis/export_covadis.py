__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProviderRegistry,
    QgsProcessingParameterString,
    QgsVectorLayer,
    QgsProcessingContext,
    QgsProcessingException,
    QgsProcessingOutputVectorLayer,
    QgsWkbTypes,
    QgsProviderConnectionException,
    QgsProcessingParameterEnum,
    QgsVectorFileWriter,
    QgsProcessingParameterFolderDestination,
    QgsProcessingParameterBoolean
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr
from processing.tools.postgis import uri_from_name


class ExportCovadis(BaseProcessingAlgorithm):
    """
    Export des données dans le format d’échange shape d’ESRI
    conformement au standard Covadis
    """

    DATABASE = "DATABASE"
    SCHEMA = "SCHEMA"
    TABLE = "TABLE"
    DPT = "DPT"
    OUTPUT = "OUTPUT"
    OUTPUT_MSG = "OUTPUT MSG"
    EXPORTABLES = [
        "itineraire", "portion", "element",
        "segment", "repere", "liaison", "poi_portion",
        "poi_acces", "poi_service", "poi_tourisme",
        "etat_avancement_val", "revetement_val", "statut_segment_val",
        "portion_val", "repere_val"]
    PROJECTS_FOLDER = "FOLDER"
    CHARGER = "CHARGER"

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
        table_param = QgsProcessingParameterEnum(
            self.TABLE,
            tr("Donnée à exporter"),
            options=self.EXPORTABLES,
            defaultValue="",
        )
        self.addParameter(table_param)

        # Nom du département pour le fichier d'export
        depparam = QgsProcessingParameterString(
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

        self.addParameter(
            QgsProcessingParameterBoolean(
                self.CHARGER,
                tr("Charger la couche correspondante dans le projet"),
                defaultValue=False,
                optional=False,
            )
        )

        self.addOutput(
            QgsProcessingOutputVectorLayer(self.OUTPUT, tr("Couches de sortie"))
        )

    @staticmethod
    def createExportTable(table, connection):
        if "val" in table:
            sql = "SELECT veloroutes.export_table('{}')".format(table)
        else:
            sql = "SELECT veloroutes.export_{}()".format(table)
        try:
            connection.executeSql(sql)
        except QgsProviderConnectionException as e:
            msg = e.args[0]
            raise QgsProcessingException(msg)

    def to_shapefile(self, context, table, dpt, dirname, uri, geom, charger):
        uri.setDataSource('exports', table, geom, "")
        layer = QgsVectorLayer(uri.uri(), table, "postgres")
        if not layer.isValid():
            return False

        # Construction filename
        prefixe = "N_3V_"
        suffixe = "_" + dpt
        tablename = table.upper()
        if table == 'element':
            tablename = 'R_' + tablename + '_PORTION'
        if 'poi' in table and 'portion' not in table:
            tablename = tablename[4:]
        if "val" in table:
            prefixe = "3V_"
            suffixe = ""
            if "avancement" in table:
                tablename = "AVANCEMENT_VAL"
            if "statut" in table:
                tablename = "STATUT_VAL"
            if "portion" in table or "repere" in table:
                tablename = "TYPE" + tablename
        geomtype = {
            QgsWkbTypes.LineGeometry: '_L',
            QgsWkbTypes.PointGeometry: '_P',
            QgsWkbTypes.NullGeometry: ''
        }
        geomcode = geomtype[layer.geometryType()]
        filename = prefixe + tablename + geomcode + suffixe

        transformContext = context.project().transformContext()
        options = QgsVectorFileWriter.SaveVectorOptions()
        options.driverName = "ESRI ShapeFile"
        options.fileEncoding = "utf-8"

        # Enregistrement du fichier shape
        error = QgsVectorFileWriter.writeAsVectorFormatV2(
            layer=layer,
            fileName=dirname + '/' + filename + ".shp",
            transformContext=transformContext,
            options=options
        )

        # Vérification du retour de l'enregistrement et des erreurs potentiels
        if error[0] == QgsVectorFileWriter.ErrCreateLayer:
            raise QgsProcessingException(
                "Erreur lors de l'écriture du fichier :\n"
                "Vérifiez que le chemin de destination est valide")
        if error[0] != QgsVectorFileWriter.NoError:
            raise QgsProcessingException("Erreur lors de l'écriture du fichier :" + error[1])

        # Chargement de la couche corrrespondante dans le projet
        if charger:
            context.temporaryLayerStore().addMapLayer(layer)
            context.addLayerToLoadOnCompletion(
                layer.id(),
                QgsProcessingContext.LayerDetails(filename, context.project(), self.OUTPUT)
            )
        return layer

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        feedback.pushInfo("## CONNEXION A LA BASE DE DONNEES ##")
        connection = self.parameterAsString(parameters, self.DATABASE, context)
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        conn = metadata.findConnection(connection)
        table_int = self.parameterAsEnum(parameters, self.TABLE, context)
        table_name = self.EXPORTABLES[table_int]

        uri = uri_from_name(connection)
        uri.setDataSource(
            self.parameterAsString(parameters, self.SCHEMA, context),
            table_name,
            "geom", "")
        layer = QgsVectorLayer(uri.uri(), table_name, "postgres")
        layer_name = layer.name()

        dpt = self.parameterAsString(parameters, self.DPT, context)
        dirname = self.parameterAsString(parameters, self.PROJECTS_FOLDER, context)
        charger = self.parameterAsBool(parameters, self.CHARGER, context)

        feedback.pushInfo("")
        feedback.pushInfo("## CHARGEMENT DE LA COUCHE ##")

        self.createExportTable(layer_name, conn)
        if layer_name in ['itineraire', 'element', 'poi_portion'] or "val" in table_name:
            geom = None
        else:
            geom = "geom"
        result = self.to_shapefile(context, layer_name, dpt, dirname, uri, geom, charger)
        output_layer = result.id()

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layer}
