"""
Created on Wed Jul 15 12:30:40 2020

@author: enola sengeissen
"""
from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterVectorLayer,
    QgsProcessingOutputString,
    QgsProcessingParameterMatrix,
    QgsProviderConnectionException,
    QgsProviderRegistry,
    QgsProcessingParameterString,
    QgsVectorLayer,
    QgsProcessingException
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr
from processing.tools.postgis import uri_from_name

import processing


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
        # INPUTS
        # Base de destination
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

        # Schema de destination
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

        # Table de destination
        table_param = QgsProcessingParameterString(
            self.TABLE,
            tr("Table de destination"),
            'portion',
            False
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

        # Couche à importer
        couche = QgsProcessingParameterVectorLayer(
            self.INPUT,
            'Couche à importer',
            types=[QgsProcessing.TypeVector],
            defaultValue=(
                '/Users/enolasengeissen/Documents/Stage_3Liz/data/'
                'cd66-3V/Export_PC_Pour_3Liz/Tables/portions.gpkg')
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
        try:
            if 'poi' in table:
                sql = "SELECT veloroutes.import_veloroutes_poi({})".format(table)
            else:
                sql = "SELECT veloroutes.import_veloroutes_{}()".format(table)
            connection.executeSql(sql)
            feedback.pushInfo(tr("Insertion des données dans le schéma veloroutes fait"))
        except QgsProviderConnectionException as e:
            msg = e.args[0]
            raise QgsProcessingException(msg)

    def processAlgorithm(self, parameters, context, feedback):
        msg = ""

        connection = self.parameterAsString(parameters, self.DATABASE, context)
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        conn = metadata.findConnection(connection)
        schema = self.parameterAsString(parameters, self.SCHEMA, context)
        table = self.parameterAsString(parameters, self.TABLE, context)
        input_layer = self.parameterAsVectorLayer(parameters, self.INPUT, context)

        geom = None
        geomlayer = ["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        if table in geomlayer:
            geom = "geom"

        uri = uri_from_name(connection)
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
                'length': 0,  # longueur de destinaion
                'name': 'lien_itin',  # champs de destination
                'precision': 0,  # precision de destinaton
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
