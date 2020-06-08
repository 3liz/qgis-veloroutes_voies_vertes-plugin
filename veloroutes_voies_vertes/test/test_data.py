"""
Created on Fri Jun  5 12:06:30 2020

@author: enolasengeissen
"""

from .base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestSqlFunctions(DatabaseTestCase):

    def test_trigger_repere_numero_serie(self):
        """ Test the trigger on repere(numero_serie)"""
        # Contrainte sur le champs repere(numero_serie) avec la fonction numserie()
        with self.assertRaisesRegex(Exception, 'numero_serie ne peut être NULL si type_noeud vaut CPT'):
            self.cursor.execute(
                "INSERT INTO veloroutes.repere(type_noeud) VALUES ('CPT')")

    def test_trigger_segment_projet_revetement(self):
        """ Test the trigger on segment(revetement) case project"""
        # Contraintes sur le champs segment(revetement) avec la fonction revet()
        with self.assertRaisesRegex(
                Exception, 'revetement ne peut pas prendre de valeur si avancement vaut 1'):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(avancement, revetement, statut) VALUES (1,'LIS','VV')")

    def test_trigger_segment_fictif_revetement(self):
        """ Test the trigger on segment(revetement) case fictive geometry"""
        with self.assertRaisesRegex(
                Exception, 'revetement ne peut pas prendre de valeur si la geom est fictive'):
            self.cursor.execute(
                "INSERT INTO veloroutes.segment(geometrie_fictive, revetement, statut)"
                " VALUES ('T','LIS','VV')")
