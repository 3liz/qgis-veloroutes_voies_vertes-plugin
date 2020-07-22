"""
Created on Wed Jul 15 12:30:40 2020

@author: enola sengeissen
"""
from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterVectorLayer,
    QgsProcessingOutputString,
    QgsProcessingParameterMatrix,
    # QgsProcessingParameterField,
    QgsProcessingParameterFeatureSink,
    QgsExpressionContextUtils,
    QgsProviderRegistry,
    QgsProcessingParameterString,
    QgsVectorLayer
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
    TABLE = "TABLE"
    OUTPUT="OUTPUT"  # à retirer plus tard
    OUTPUT_MSG = "OUTPUT MSG"
    SCHEMA = "veloroutes"
    DATABASE = "vvv"

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

        # Table de destination
        table_param = QgsProcessingParameterString(
            self.TABLE,
            tr("Table de destination"),
            'segment',
            optional=True

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
            defaultValue=('/Users/enolasengeissen/Documents/Stage_3Liz/'
                          'data/cd66-3V/Export_PC_Pour_3Liz/Tables/segments.gpkg')
        )
        self.addParameter(couche)

        # Liste des champs de la couche à importer --> fonctionne
#        field_or = QgsProcessingParameterField(
#                'or_field',
#                'Champs d\'origine',
#                '',
#                self.INPUT)
#        self.addParameter(field_or)

#        # Liste des champs de destination --> fonctionne pas
#        field_dest = QgsProcessingParameterField(
#                'dest_field',
#                'Champs de destination',
#                '',
#                self.TABLE)
#        self.addParameter(field_dest)

        # Paramètre pour le mapping de champs
        table = QgsProcessingParameterMatrix(
                'matrix',
                'matrix',
                headers=['Champs source', 'Champs destination'],
                defaultValue=[
                    "TYPE_PORTION_COVADIS", "type_portion", "MONTANT_SUBVENTION",
                    "mont_subv", "ANNE_SUBVENTION", "annee_subv"]
        )
#        # segment
#        ["NUM_LOCAL", "id_local", "ID_ON3V", "id_on3v",
#         "STATUT_COVADIS", "statut", "AVENCEMENT_COVADIS",
#         "avancement", "REVETEMENT_COVADIS", "revetement",
#         "MAITRE_OUVRAGE", "proprietaire", "GESTIONNAIRE",
#         "gestionnaire", "PRECISION_COVADIS", "precision",
#         "SOURCE", "src_geom", "SENS", "sens_unique",
#         "DATE_MODIF", "date_saisie"]
#
#        # itineraires
#        ["SITE_WEB", "site_web", "NUMERO_ITIN", "numero", "NOM_USAGE",
#         "nom_usage", "NOM_ITIN", "nom_officiel","NIV_INSCRIPTION", "niveau_schema",
#         "EST_INSCRIT", "est_inscrit", "DEPART", "depart", "ARRIVEE", "arrivee",
#         "ANNEE_INSCRIPTION", "annee_inscription",
#         "ANNE_SUBVENTION_ITIN", "annee_subv", "MONTANT_SUBVENTION_ITIN", "mont_subv"]
#
#        # portions
#        ["TYPE_PORTION_COVADIS", "type_portion", "MONTANT_SUBVENTION",
#         "mont_subv", "ANNE_SUBVENTION", "annee_subv"]
        self.addParameter(table)

        outparam = QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                '[temporaire]',
                type=QgsProcessing.TypeVectorAnyGeometry,
                createByDefault=True,
                defaultValue=None
        )
        self.addParameter(outparam)

#        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        )

    def toPostgres(self, conn, table, refact, context, feedback):
        """
        Fonction qui refactorise les champs
        et importe les fichiers dans un schema imports
        """

        table_name = 'import_'+table

        export_params = {
            'CREATEINDEX': True,
            'DATABASE': conn,
            'DROP_STRING_LENGTH': True,
            'ENCODING': 'UTF-8',
            'FORCE_SINGLEPART': True,
            'GEOMETRY_COLUMN': "geom",
            'INPUT': refact,
            'LOWERCASE_NAMES': True,
            'OVERWRITE': True,
            'PRIMARY_KEY': None,
            'SCHEMA': 'imports',
            'TABLENAME': table_name
        }
        processing.run(
                'qgis:importintopostgis',
                export_params,
                context=context, feedback=feedback, is_child_algorithm=True
        )

    def toVeloroutes(self, connection, table):
        """
        Fonction qui adapte les données si besoin
        et insère la table dans le schéma veloroutes
        """

        sql = "SELECT veloroutes.insert_in_veloroutes('{}')".format(table)
        connection.executeSql(sql)

    def processAlgorithm(self, parameters, context, feedback):
        _ = parameters
        msg = ""
        project = context.project()
        connection_name = QgsExpressionContextUtils.projectScope(project).variable(
            "veloroutes_connection_name"
        )
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        connection = metadata.findConnection(connection_name)

        results = {}
        outputs = {}

        geom = None
        geomlayer=["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        if parameters[self.TABLE] in geomlayer:
            geom = "geom"

        uri = uri_from_name(connection_name)
        uri.setDataSource(parameters[self.SCHEMA], parameters[self.TABLE], geom, "")
        layer = QgsVectorLayer(uri.uri(), parameters[self.TABLE], "postgres")

        # Création du dictionnaire de correspondance des champs

        # Format générique d'une correspondance entre champs
        champs= {
            'expression': '',  # champs d'entrée
            'length': 0,  # longueur de destinaion
            'name': '',  # champs de destination
            'precision': 0,  # precision de destinaton
            'type': 10  # type de destination
        }
        matrix = parameters['matrix']
        field_map=[]

        # Création du mapping de champs
        for field in layer.fields():
            print(field)
            print("hello")
            name=field.displayName()
            if name in matrix:
                i = matrix.index(name)
                c = champs
                c['expression'] = matrix[i-1]
                c['name']=name
                c['precision']= field.precision()
#                c['type']=field.type()  # issues for date type where input data don't fits
                c['length']=field.length()
                ccopy= c.copy()
                field_map.append(ccopy)

        # Refactorisation des champs
        refact_params = {
            'FIELDS_MAPPING': field_map,
            'INPUT': parameters[self.INPUT],
            'OUTPUT': parameters[self.OUTPUT]
        }

        outputs['RefactoriserLesChamps'] = processing.run(  # à retirer plus tard
            'qgis:refactorfields',
            refact_params,
            context=context,
            feedback=feedback,
            is_child_algorithm=True)

        results['couchecov'] = outputs['RefactoriserLesChamps']['OUTPUT']
        table=layer.name()

        # Exporter dans PostgreSQL
        self.toPostgres(
                connection_name,
                table,
                outputs['RefactoriserLesChamps']['OUTPUT'],
                context, feedback)

        # Importer la table dans veloroutes
        self.toVeloroutes(connection, table)

        return {self.OUTPUT_MSG: msg, self.OUTPUT: results}
