__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

import os

from qgis.core import (
    Qgis,
    QgsDataSourceUri,
    QgsProcessingContext,
    QgsProcessingException,
    QgsProcessingOutputVectorLayer,
    QgsProcessingParameterBoolean,
    QgsProcessingParameterEnum,
    QgsProcessingParameterFolderDestination,
    QgsProcessingParameterString,
    QgsProviderRegistry,
    QgsVectorFileWriter,
    QgsVectorLayer,
    QgsWkbTypes,
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

        # Schema de destination
        label = tr("Schéma")
        tooltip = 'Nom du schéma où importer les données'
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

        # Table à exporter
        table_param = QgsProcessingParameterEnum(
            self.TABLE,
            tr("Donnée à exporter"),
            options=self.EXPORTABLES,
            defaultValue="",
        )
        table_param.tooltip_3liz = 'Nom de la table à exporter'
        self.addParameter(table_param)

        # Nom du département pour le fichier d'export
        depparam = QgsProcessingParameterString(
            self.DPT,
            tr("Département au format XXX"),
            '066',
            optional=False
        )
        depparam.tooltip_3liz = 'Pour le département de l\'Ain, mettre 001'
        self.addParameter(depparam)

        # Chemin du dossier de destination
        outparam = QgsProcessingParameterFolderDestination(
            self.PROJECTS_FOLDER,
            description=tr("Chemin de destination")
        )
        outparam.tooltip_3liz = 'Chemin de destination pour enregistrer les exports Shapefile'
        self.addParameter(outparam)

        param = QgsProcessingParameterBoolean(
            self.CHARGER,
            tr("Charger le fichier d'export dans le projet"),
            defaultValue=False,
            optional=False,
        )
        param.tooltip_3liz = 'Si le traitement doit charger la couche Shapefile dans le projet'
        self.addParameter(param)

        output = QgsProcessingOutputVectorLayer(self.OUTPUT, tr("Couches de sortie"))
        output.tooltip_3liz = 'Les couches de l\'export'
        self.addOutput(output)

    @staticmethod
    def get_sql_layer(table, geom, pk, uri, feedback):
        sql_file = resources_path('sql', 'export', 'export_{}.sql'.format(table))
        other = False
        if not os.path.exists(sql_file):
            sql_file = resources_path('sql', 'export', 'export_table.sql')
            other = True
            pk = 'id'

        feedback.pushDebugInfo("Lecture du fichier {}".format(sql_file))
        with open(sql_file, "r") as f:
            sql = f.read()
            if len(sql.strip()) == 0:
                feedback.reportError("Fichier SQL vide")
                return None
        sql = str(sql)
        if other:
            sql += table

        uri.setSchema('')
        uri.setTable('(' + sql + ')')
        uri.setGeometryColumn(geom)
        uri.setKeyColumn(pk)

        layer = QgsVectorLayer(uri.uri(False), table, "postgres")
        if not layer.isValid():
            feedback.reportError("Layer {} is not valid.".format(layer.name()))
            return None
        return layer

    def export_layer_to_shape(self, context, sql_layer, dpt, table, dirname, feedback):
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
        geomcode = geomtype[sql_layer.geometryType()]
        filename = prefixe + tablename + geomcode + suffixe

        transform_context = context.project().transformContext()
        options = QgsVectorFileWriter.SaveVectorOptions()
        options.driverName = "ESRI ShapeFile"
        options.fileEncoding = "utf-8"

        # construction du répertoire
        if not os.path.exists(dirname):
            os.mkdir(dirname)
        file_path = os.path.join(dirname, filename + ".shp")

        # Enregistrement du fichier shape
        error = QgsVectorFileWriter.writeAsVectorFormatV2(
            layer=sql_layer,
            fileName=file_path,
            transformContext=transform_context,
            options=options
        )

        # Vérification du retour de l'enregistrement et des erreurs potentiels
        if error[0] == QgsVectorFileWriter.ErrCreateLayer:
            raise QgsProcessingException(
                "Erreur lors de l'écriture du fichier :\n"
                "Vérifiez que le chemin de destination est valide")
        if error[0] != QgsVectorFileWriter.NoError:
            raise QgsProcessingException("Erreur lors de l'écriture du fichier :" + error[1])
        return [file_path, filename]

    def load_shapefile(self, shp_file_path, filename, table, context, feedback):
        # Chargement de la couche corrrespondante dans le projet
        if not os.path.exists(shp_file_path):
            shp_file_path = shp_file_path.replace(".shp", ".dbf")
            if not os.path.exists(shp_file_path):
                feedback.reportError('Fichier introuvable lors du chargement')
                return False
        export_layer = QgsVectorLayer(shp_file_path, "Export COVADIS " + table, 'ogr')
        context.temporaryLayerStore().addMapLayer(export_layer)
        context.addLayerToLoadOnCompletion(
            export_layer.id(),
            QgsProcessingContext.LayerDetails(filename, context.project(), self.OUTPUT)
        )

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""
        table_without_geom = [
            'itineraire',
            'element',
            'poi_portion',
        ]

        if Qgis.QGIS_VERSION_INT >= 31400:
            connection = self.parameterAsConnectionName(parameters, self.DATABASE, context)
            schema = self.parameterAsSchema(parameters, self.SCHEMA, context)
        else:
            connection = self.parameterAsString(parameters, self.DATABASE, context)
            schema = self.parameterAsString(parameters, self.SCHEMA, context)

        table_int = self.parameterAsEnum(parameters, self.TABLE, context)
        table_name = self.EXPORTABLES[table_int]
        if table_name in table_without_geom or "val" in table_name:
            geom = None
        else:
            geom = "geom"
        name = table_name

        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        connection = metadata.findConnection(connection)
        uri = QgsDataSourceUri(connection.uri())

        if table_name == 'portion':
            name = 'v_portion'
            uri.setKeyColumn('id_portion')

        if table_name == 'poi_portion':
            name = 'v_portion'
            uri.setKeyColumn('id_portion')

        uri.setTable(name)
        uri.setSchema(schema)
        uri.setGeometryColumn(geom)
        layer = QgsVectorLayer(uri.uri(), name, "postgres")
        layer_name = layer.name()

        if len(layer.primaryKeyAttributes()) == 0:
            feedback.reportError("Layer {} does not have a primary key.".format(layer_name))
            # Fixme, we shouldn't have this line
            return {self.OUTPUT_MSG: "Layer {} doesn't have a primary key".format(name), self.OUTPUT: None}

        pk = layer.fields().field(layer.primaryKeyAttributes()[0])

        dpt = self.parameterAsString(parameters, self.DPT, context)
        dirname = self.parameterAsString(parameters, self.PROJECTS_FOLDER, context)

        charger = self.parameterAsBool(parameters, self.CHARGER, context)

        feedback.pushInfo("")

        sql_layer = self.get_sql_layer(table_name, geom, pk.name(), uri, feedback)
        if not sql_layer:
            return {self.OUTPUT_MSG: "Layer {} is not valid".format(name), self.OUTPUT: None}

        feedback.pushInfo("## Export de la couche {} en Shapefile".format(sql_layer.name()))
        result = self.export_layer_to_shape(context, sql_layer, dpt, sql_layer.name(), dirname, feedback)
        if charger:
            feedback.pushInfo("## Chargement de la couche {}".format(sql_layer.name()))
            self.load_shapefile(result[0], result[1], sql_layer.name(), context, feedback)

        if not result[0]:
            output_layer = ""
        else:
            output_layer = result[0]

        return {self.OUTPUT_MSG: msg, self.OUTPUT: output_layer}
