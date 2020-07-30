"""
Created on Wed Jul 15 12:30:40 2020

@author: enola sengeissen
"""
from qgis.core import (
    QgsProcessing,
    QgsProcessingParameterVectorLayer,
    QgsProcessingOutputString,
    QgsProcessingParameterMatrix,
    QgsProcessingParameterFeatureSink,
    QgsProviderRegistry,
    QgsProcessingParameterString,
    QgsVectorLayer,
    Qgis,
    QgsMessageLog
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm
from ...qgis_plugin_tools.tools.i18n import tr
from processing.tools.postgis import uri_from_name

import processing


class ImportCovadis(BaseProcessingAlgorithm):
    """
    Import des données conformément au standard COVADIS
    """

    INPUT="INPUT"
    TABLE="TABLE"
    OUTPUT="OUTPUT"  # à retirer plus tard
    OUTPUT_MSG="OUTPUT MSG"
    SCHEMA="veloroutes"
    DATABASE="vvv"

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
            defaultValue='/Users/enolasengeissen/Documents/Stage_3Liz/data/cd66-3V/Export_PC_Pour_3Liz/Tables/segments.gpkg'
        )
        self.addParameter(couche)

        # Liste des champs de la couche à importer --> fonctionne
        # field_or = QgsProcessingParameterField(
        #        'or_field',
        #        'Champs d\'origine',
        #        '',
        #        self.INPUT)
        # self.addParameter(field_or)

        # Liste des champs de destination --> fonctionne pas
        # field_dest = QgsProcessingParameterField(
        #        'dest_field',
        #        'Champs de destination',
        #        '',
        #        self.TABLE)
        # self.addParameter(field_dest)

        # Paramètre pour le mapping de champs
        table = QgsProcessingParameterMatrix(
                'matrix',
                'matrix',
                headers=['Champs source', 'Champs destination'],
                defaultValue=
                    ["NUM_LOCAL", "id_local", "ID_ON3V", "id_on3v",
                    "STATUT_COVADIS", "statut", "AVENCEMENT_COVADIS",
                    "avancement", "REVETEMENT_COVADIS", "revetement",
                    "MAITRE_OUVRAGE", "proprietaire", "GESTIONNAIRE",
                    "gestionnaire", "PRECISION_COVADIS", "precision",
                    "SOURCE", "src_geom", "SENS", "sens_unique",
                    "DATE_MODIF", "date_saisie", "fid", "id_import"]
        )
        self.addParameter(table)
#        # Autre jeu de donnée segment test
    #    ["id_local", "id_local",#--ok
    #     "annee_ouverture","annee_ouverture",
    #     "date_saisie","date_saisie",
    #     "src_geom", "src_geom", #--ok
    #     "src_annee", "src_annee",#--ok
    #     "avancement", "avancement",#--ok
    #     "revetement", "revetement",#--ok
    #     "statut", "statut",#--ok
    #     "gestionnaire", "gestionnaire",
    #     "proprietaire", "proprietaire",
    #     "precision", "precision",#--ok
    #     "sens_unique", "sens_unique",
    #     "geometrie_fictive","geometrie_fictive"]
        # ["ID_LOCAL","id_local","ID_ON3V", "id_on3v","STATUT", "statut","AVENCEMENT",
        # "avancement", "REVETEMENT", "revetement","GESTION",
        # "gestionnaire", "PROPRIETE", "proprietaire","DATE_SAISIE", "date_saisie",
        # "FICTIF", "geometrie_fictive","PRECISION", "precision","SRC_GEOM", "src_geom",
        # "SRC_ANNEE", "src_annee"]
#        # segment
    #    ["NUM_LOCAL", "id_local", "ID_ON3V", "id_on3v",
    #     "STATUT_COVADIS", "statut", "AVENCEMENT_COVADIS",
    #     "avancement", "REVETEMENT_COVADIS", "revetement",
    #     "MAITRE_OUVRAGE", "proprietaire", "GESTIONNAIRE",
    #     "gestionnaire", "PRECISION_COVADIS", "precision",
    #     "SOURCE", "src_geom", "SENS", "sens_unique",
    #     "DATE_MODIF", "date_saisie", "fid", "id_import"]
#
#        # itineraires
    #    ["SITE_WEB", "site_web", "NUMERO_ITIN", "numero", "NOM_USAGE",
    #     "nom_usage", "NOM_ITIN", "nom_officiel","NIV_INSCRIPTION", "niveau_schema",
    #     "EST_INSCRIT", "est_inscrit", "DEPART", "depart", "ARRIVEE", "arrivee",
    #     "ANNEE_INSCRIPTION", "annee_inscription", "fid", "id_import",
    #     "ANNE_SUBVENTION_ITIN", "annee_subv", "MONTANT_SUBVENTION_ITIN", "mont_subv"]
#
#        # portions
#        ["TYPE_PORTION_COVADIS", "type_portion", "MONTANT_SUBVENTION",
#         "mont_subv", "ANNE_SUBVENTION", "annee_subv", "fid", "id_import",
#         "LIEN_ITIN", "lien_itin", "LIEN_CYCLO", "lien_segm"]
        # Autre jeu de test portion
        # ["TYPE", "type_portion", "NOM", "nom",
        # "ID_ITI", "lien_itin", "ORDRE_ETAP", "etape",
        # "DESCRIPT", "description",
        # "ID_LOCAL", "id_local","ID_ON3V", "id_on3v"]

        outparam = QgsProcessingParameterFeatureSink(
                self.OUTPUT,
                '[temporaire]',
                type=QgsProcessing.TypeVectorAnyGeometry,
                createByDefault=True,
                defaultValue=None
        )
        self.addParameter(outparam)

        # OUTPUTS
        self.addOutput(
            QgsProcessingOutputString(self.OUTPUT_MSG, tr("Message de sortie"))
        )

    def toPostgres(self, db, table, refact, context, feedback):
        """
        Fonction qui refactorise les champs
        et importe les fichiers dans un schema imports
        """

        table_name = 'import_'+table

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

    def toVeloroutes(self, connection, table):
        """
        Fonction qui adapte les données si besoin
        et insère la table dans le schéma veloroutes
        """
        try:
            sql = "SELECT veloroutes.insert_veloroutes_{}()".format(table)
            connection.executeSql(sql)
        except Exception as e:
            msg = e.args[0]
            QgsMessageLog.logMessage(msg, 'VéloroutesPlugin', Qgis.Critical)

    def processAlgorithm(self, parameters, context, feedback):
        _ = parameters
        msg = ""
        results = {}
        outputs = {}

        connection = self.parameterAsString(parameters, self.DATABASE, context)
        metadata = QgsProviderRegistry.instance().providerMetadata('postgres')
        conn = metadata.findConnection(connection)

        geom = None
        geomlayer=["repere", "poi_tourisme", "poi_service", "liaison", "segment"]
        if parameters[self.TABLE] in geomlayer:
            geom = "geom"

        uri = uri_from_name(connection)
        uri.setDataSource(parameters[self.SCHEMA], parameters[self.TABLE], geom, "")
        layer = QgsVectorLayer(uri.uri(), parameters[self.TABLE], "postgres")
        table=layer.name()

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
            # Champs fournis par l'utilisateur
            name=field.displayName()
            if name in matrix[1::2]:
                i = len(matrix) - 1 - matrix[::-1].index(name)
                c = champs
                c['expression'] = matrix[i-1]
                c['name']=name
                c['precision']= field.precision()
                c['length']=field.length()
                # c['type']=field.type()
                ccopy= c.copy()
                field_map.append(ccopy)
            else:
                # Champs éventuellement non fournis par l'utilisateur
                c = champs
                c['expression'] = ""
                c['name']=name
                c['precision']= field.precision()
                c['length']=field.length()
                ccopy= c.copy()
                field_map.append(ccopy)

        if table=='portion':
            k = matrix.index('lien_itin')
            c_lien_itin = {
                'expression': matrix[k-1],  # champs d'entrée
                'length': 0,  # longueur de destinaion
                'name': 'lien_itin',  # champs de destination
                'precision': 0,  # precision de destinaton
                'type': 2  # type de destination
            }
            field_map.append(c_lien_itin)
            if 'lien_segm' in matrix:
                m = matrix.index('lien_segm')
                c_lien_segm = {
                    'expression': matrix[m-1],  # champs d'entrée
                    'length': 0,  # longueur de destinaion
                    'name': 'lien_segm',  # champs de destination
                    'precision': 0,  # precision de destinaton
                    'type': 2  # type de destination
                }
                field_map.append(c_lien_segm)

        if table in ['itineraire','portion','segment']:
            if 'id_import' in matrix:
                n = matrix.index('id_import')
                c_id_import = {
                    'expression': matrix[n-1],  # champs d'entrée
                    'length': 0,  # longueur de destinaion
                    'name': 'id_import',  # champs de destination
                    'precision': 0,  # precision de destinaton
                    'type': 2  # type de destination
                    }
                field_map.append(c_id_import)
            

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

        # Exporter dans PostgreSQL
        self.toPostgres(
                parameters[self.DATABASE],
                table,
                outputs['RefactoriserLesChamps']['OUTPUT'],
                context, feedback)

        # Importer la table dans veloroutes
        self.toVeloroutes(conn, table)

        return {self.OUTPUT_MSG: msg, self.OUTPUT: results}
