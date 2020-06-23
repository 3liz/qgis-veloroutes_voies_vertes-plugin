"""
Created on Fri Jun  5 12:06:30 2020

@author: enolasengeissen
"""
import psycopg2

from veloroutes_voies_vertes.test.base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestSqlFunctions(DatabaseTestCase):

    def test_trigger_repere_numero_serie(self):
        """ Test the trigger on repere(numero_serie)"""
        # Contrainte sur le champs repere(numero_serie) avec la fonction numserie()
        msg = 'numero_serie ne peut être NULL si type_noeud vaut CPT'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(
                "INSERT INTO veloroutes.repere(type_noeud) VALUES ('CPT')")

    def test_insertok_numero_serie(self):
        """Test that we can insert a row in repere with good items"""
        self.cursor.execute("TRUNCATE TABLE veloroutes.repere CASCADE")
        sql = """
            INSERT INTO veloroutes.repere(libelle,numero_serie,type_noeud,geom)
            VALUES ('libellé test', 'num_serie_test', 'DFE',
                    ST_GeomFromText('POINT(0 0)',2154))
        """
        self.cursor.execute(sql)
        res = """
            SELECT veloroutes.repere.libelle FROM veloroutes.repere
            WHERE veloroutes.repere.numero_serie='num_serie_test'
        """
        self.cursor.execute(res)
        record = self.cursor.fetchall()
        self.assertEqual('libellé test', record[0][0])

    def test_trigger_segment_projet_revetement(self):
        """ Test the trigger on segment(revetement) case project"""
        # Contraintes sur le champs segment(revetement) avec la fonction revet()
        msg = 'revêtement ne peut pas prendre de valeur si avancement vaut 1'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(avancement, revetement, statut) VALUES (1,'LIS','VV')")

    def test_trigger_segment_fictif_revetement(self):
        """ Test the trigger on segment(revetement) case fictive geometry"""
        msg = 'revêtement ne peut pas prendre de valeur si la geom est fictive'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(geometrie_fictive, revetement, statut)"
                "VALUES ('T','LIS','VV')")

    def test_insertok_revetement(self):
        """Test that we can insert a row in segment with good items"""
        self.cursor.execute("TRUNCATE TABLE veloroutes.segment CASCADE")

        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,statut,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010',4,'LIS', 'ASP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        self.cursor.execute(sql)
        res = """
            SELECT veloroutes.segment.src_geom
            FROM veloroutes.segment
            WHERE veloroutes.segment.gestionnaire='gestion_test';
        """
        self.cursor.execute(res)
        record = self.cursor.fetchall()
        self.assertEqual('src_geom_test', record[0][0])
