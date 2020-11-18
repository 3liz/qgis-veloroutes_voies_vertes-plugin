"""
Created on Wed Jul 15 12:30:40 2020

@author: enola sengeissen
"""
import processing

from qgis.core import (
    Qgis,
    QgsDataSourceUri,
    QgsProcessing,
    QgsProcessingException,
    QgsProcessingOutputString,
    QgsProcessingParameterMatrix,
    QgsProcessingParameterString,
    QgsProcessingParameterVectorLayer,
    QgsProviderConnectionException,
    QgsProviderRegistry,
    QgsVectorLayer,
)

if Qgis.QGIS_VERSION_INT >= 31400:
    from qgis.core import (
        QgsProcessingParameterDatabaseSchema,
        QgsProcessingParameterProviderConnection,
        QgsProcessingParameterDatabaseTable,
    )

from ...qgis_plugin_tools.tools.algorithm_processing import (
    BaseProcessingAlgorithm,
)
from ...qgis_plugin_tools.tools.i18n import tr


class ImportCovadis(BaseProcessingAlgorithm):
    """
    Import des données conformément au standard COVADIS
    """

    INPUT = "INPUT"
    MATRIX = "MATRIX"
    TABLE = "TABLE"
    OUTPUT_MSG = "OUTPUT MSG"
    SCHEMA = "SCHEMA"
    DATABASE = "DATABASE"

    def name(self):
        return "import_covadis"

    def displayName(self):
        return tr("Import des données dans le format COVADIS")

    def groupId(self):
        return "covadis"

    def group(self):
        return tr("Covadis")

    def shortHelpString(self):
        return tr("Charger les données des différentes couches")

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

        # Schéma de destination
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

        # Table de destination
        label = tr("Table de destination")
        tooltip = 'Nom du schéma où importer les données'
        default = 'portion'
        if Qgis.QGIS_VERSION_INT >= 31400:
            param = QgsProcessingParameterDatabaseTable(
                self.TABLE,
                label,
                self.DATABASE,
                self.SCHEMA,
                defaultValue=default,
                optional=False,
            )
        else:
            param = QgsProcessingParameterString(
                self.TABLE,
                label,
                default,
                False
            )
            param.setMetadata(
                {
                    "widget_wrapper": {
                        "class": "processing.gui.wrappers_postgis.TableWidgetWrapper",
                        "schema_param": self.SCHEMA
                    }
                }
            )
        if Qgis.QGIS_VERSION_INT >= 31600:
            param.setHelp(tooltip)
        else:
            param.tooltip_3liz = tooltip
        self.addParameter(param)

        # Couche à importer
        couche = QgsProcessingParameterVectorLayer(
            self.INPUT,
            'Couche à importer',
            types=[QgsProcessing.TypeVector],
        )
        self.addParameter(couche)

        # Paramètre pour le mapping de champs
        table = QgsProcessingParameterMatrix(
            self.MATRIX,
            'matrix',
            headers=['Champs source', 'Champs destination'],
            defaultValue=[
                "TYPE_PORTION_COVADIS", "type_portion", "MONTANT_SUBVENTION",
                "mont_subv", "ANNE_SUBVENTION", "annee_subv", "fid", "id_import",
                "LIEN_ITIN", "lien_itin", "LIEN_CYCLO", "lien_segm"]
        )
        self.addParameter(table)

        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        )

    @staticmethod
    def to_postgresql(db, table, refact, context, feedback):
        """
        Fonction qui refactorise les champs
        et importe les fichiers dans un schema imports
        """

        table_name = 'import_' + table

        export_params = {
            'CREATEINDEX': False,
            'DATABASE': db,
            'DROP_STRING_LENGTH': True,
            'ENCODING': 'UTF-8',
            'FORCE_SINGLEPART': True,
            'GEOMETRY_COLUMN': "geom",
            'INPUT': refact,
            'LOWERCASE_NAMES': True,
            'OVERWRITE': True,
            'PRIMARY_KEY': 'id',
            'SCHEMA': 'imports',
            'TABLENAME': table_name
        }
        processing.run(
            'qgis:importintopostgis',
            export_params,
            context=context, feedback=feedback, is_child_algorithm=True
        )
        feedback.pushInfo(tr("Insertion des données dans la base faite"))

    @staticmethod
    def update_to_veloroutes(connection, table, feedback):
        """
        Fonction qui adapte les données si besoin
        et insère la table dans le schéma veloroutes
        """
        if 'poi' in table:
            sql = "SELECT veloroutes.import_veloroutes_poi({})".format(table)
        else:
            sql = "SELECT veloroutes.import_veloroutes_{}()".format(table)
        try:
            connection.executeSql(sql)
        except QgsProviderConnectionException as e:
            raise QgsProcessingException(str(e))
        feedback.pushInfo(tr("Insertion des données dans le schéma veloroutes fait"))

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""

        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')

        if Qgis.QGIS_VERSION_INT >= 31400:
            connection = self.parameterAsConnectionName(parameters, self.DATABASE, context)
            schema = self.parameterAsSchema(parameters, self.SCHEMA, context)
            table = self.parameterAsDatabaseTableName(parameters, self.TABLE, context)
        else:
            connection = self.parameterAsString(parameters, self.DATABASE, context)
            schema = self.parameterAsString(parameters, self.SCHEMA, context)
            table = self.parameterAsString(parameters, self.TABLE, context)

        conn = metadata.findConnection(connection)
        input_layer = self.parameterAsVectorLayer(parameters, self.INPUT, context)

        geom = None
        geomlayer = ["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        if table in geomlayer:
            geom = "geom"

        uri = QgsDataSourceUri(conn.uri())
        uri.setDataSource(schema, table, geom, "")
        layer = QgsVectorLayer(uri.uri(), table, "postgres")
        layer_name = layer.name()

        # Création du dictionnaire de correspondance des champs
        # Format générique d'une correspondance entre champs
        champs = {
            'expression': '',  # champs d'entrée
            'length': 0,  # longueur de destinaion
            'name': '',  # champs de destination
            'precision': 0,  # precision de destinaton
            'type': 10  # type de destination
        }
        matrix = self.parameterAsMatrix(parameters, self.MATRIX, context)
        field_map = []

        # Création du mapping de champs
        for field in layer.fields():
            # Champs fournis par l'utilisateur
            name = field.displayName()
            if name in matrix[1::2]:
                i = len(matrix) - 1 - matrix[::-1].index(name)
                c = champs
                c['expression'] = matrix[i - 1]
                c['name'] = name
                c['precision'] = field.precision()
                c['length'] = field.length()
                ccopy = c.copy()
                field_map.append(ccopy)
            else:
                # Champs éventuellement non fournis par l'utilisateur
                c = champs
                c['expression'] = ""
                c['name'] = name
                c['precision'] = field.precision()
                c['length'] = field.length()
                ccopy = c.copy()
                field_map.append(ccopy)

        if layer_name == 'portion':
            k = matrix.index('lien_itin')
            c_lien_itin = {
                'expression': matrix[k - 1],  # champs d'entrée
                'length': 0,  # longueur de destination
                'name': 'lien_itin',  # champs de destination
                'precision': 0,  # precision de destination
                'type': 2  # type de destination
            }
            field_map.append(c_lien_itin)
            if 'lien_segm' in matrix:
                m = matrix.index('lien_segm')
                c_lien_segm = {
                    'expression': matrix[m - 1],  # champs d'entrée
                    'length': 0,  # longueur de destinaion
                    'name': 'lien_segm',  # champs de destination
                    'precision': 0,  # precision de destinaton
                    'type': 2  # type de destination
                }
                field_map.append(c_lien_segm)

        if layer_name in ['itineraire', 'portion', 'segment']:
            if 'id_import' in matrix:
                n = matrix.index('id_import')
                c_id_import = {
                    'expression': matrix[n - 1],  # champs d'entrée
                    'length': 0,  # longueur de destinaion
                    'name': 'id_import',  # champs de destination
                    'precision': 0,  # precision de destinaton
                    'type': 2  # type de destination
                }
                field_map.append(c_id_import)

        # Refactorisation des champs
        refact_params = {
            'FIELDS_MAPPING': field_map,
            'INPUT': input_layer,
            'OUTPUT': 'memory:'}

        algresult = processing.run(
            'qgis:refactorfields',
            refact_params,
            context=context,
            feedback=feedback,
            is_child_algorithm=True)

        feedback.pushInfo(tr("Refactoring des champs fait"))

        # Exporter dans PostgreSQL
        self.to_postgresql(
            connection,
            layer_name,
            algresult['OUTPUT'],
            context, feedback)

        # Importer la table dans veloroutes
        self.update_to_veloroutes(conn, layer_name, feedback)

        return {self.OUTPUT_MSG: msg}
