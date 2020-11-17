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
        # contraintes désactivées
        return
        msg = 'revêtement ne peut pas prendre de valeur si avancement vaut 1'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(avancement, revetement, statut) VALUES ('01','LIS','VV')")

    def test_trigger_segment_fictif_revetement(self):
        """ Test the trigger on segment(revetement) case fictive geometry"""
        msg = 'revêtement ne peut pas prendre de valeur si la geom est fictive'
        # Contraintes sur le champs segment(revetement) avec la fonction revet()
        # contraintes désactivées
        return
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(geometrie_fictive, avancement, revetement, statut)"
                "VALUES ('T', '02','LIS','VV')")

    def test_insertok_revetement(self):
        """Test that we can insert a row in segment with good items"""
        self.cursor.execute("TRUNCATE TABLE veloroutes.segment CASCADE")

        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,statut,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive,
                                           desserte_college, amenagement,
                                           amenagement_type)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'ASP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F',
                    'F', 'SP', 'ASP')
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

    def test_trigger_segment_statut_amenagment_type_with_statut(self):
        """Test trigger segment statut_amenagement_type with defined statut"""
        self.cursor.execute("TRUNCATE TABLE veloroutes.segment CASCADE")

        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,statut,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'ASP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        self.cursor.execute(sql)
        res = """
            SELECT veloroutes.segment.src_geom, veloroutes.segment.statut,
            veloroutes.segment.amenagement, veloroutes.segment.amenagement_type
            FROM veloroutes.segment
            WHERE veloroutes.segment.gestionnaire='gestion_test';
        """
        self.cursor.execute(res)
        record = self.cursor.fetchall()
        self.assertEqual('src_geom_test', record[0][0])
        self.assertEqual('ASP', record[0][1])
        self.assertEqual('SP', record[0][2])
        self.assertEqual('ASP', record[0][3])

        # Invalid statut
        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,statut,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'SP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        msg = 'statut doit être un code de statut_segment_val'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(sql)

    def test_trigger_segment_statut_amenagment_type_with_at(self):
        """Test trigger segment statut_amenagement_type with defined amenagement_type"""
        self.cursor.execute("TRUNCATE TABLE veloroutes.segment CASCADE")

        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,amenagement_type,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'ASP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        self.cursor.execute(sql)
        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,amenagement_type,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'BCR', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        self.cursor.execute(sql)
        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,amenagement_type,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'BSP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        self.cursor.execute(sql)
        res = """
            SELECT veloroutes.segment.src_geom, veloroutes.segment.statut,
            veloroutes.segment.amenagement, veloroutes.segment.amenagement_type
            FROM veloroutes.segment
            WHERE veloroutes.segment.gestionnaire='gestion_test';
        """
        self.cursor.execute(res)
        record = self.cursor.fetchall()
        self.assertEqual('src_geom_test', record[0][0])
        self.assertEqual('ASP', record[0][1])
        self.assertEqual('SP', record[0][2])
        self.assertEqual('ASP', record[0][3])
        self.assertEqual('RTE', record[1][1])
        self.assertEqual('RTE', record[1][2])
        self.assertEqual('BCR', record[1][3])
        self.assertEqual('ASP', record[2][1])
        self.assertEqual('SP', record[2][2])
        self.assertEqual('BSP', record[2][3])

        # Invalid amenagement_type
        sql = """
            INSERT INTO veloroutes.segment(annee_ouverture,date_saisie,
                                           src_geom,src_annee,avancement,
                                           revetement,amenagement_type,gestionnaire,
                                           proprietaire,geom,precision,
                                           sens_unique,geometrie_fictive)
            VALUES ('2010-01-01', '2013-09-09', 'src_geom_test',
                    '2010','04','LIS', 'SP', 'gestion_test', 'GOLBEY',
                    ST_GeomFromText('LINESTRING(0 0,1 1)',2154), 'DC', 'F', 'F')
        """
        msg = 'amenagement_type doit être un code de amenagement_type_segment_val'
        with self.assertRaises(psycopg2.InternalError, msg=msg):
            self.cursor.execute(sql)
