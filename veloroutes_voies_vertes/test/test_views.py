"""
Created on Tue Jun 23 15:03:36 2020

@author: enola sengeissen
"""

from veloroutes_voies_vertes.test.base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestViews(DatabaseTestCase):

    def test_trigger_vportion_insert(self):
        """ Test if v_portion view is editable"""

        # Get the last id given in v_portion
        curr_id = """SELECT max(veloroutes.v_portion.id_portion) FROM veloroutes.v_portion"""
        self.cursor.execute(curr_id)
        # Id expected for the next insert in v_portion
        last_id = self.cursor.fetchone()[0] + 1

        # New insert in v_portion
        sql = """
            INSERT INTO veloroutes.v_portion(nom, description, type_portion,geom)
            VALUES ('nom portion',
            'sa description',
            'ETP',
            (SELECT vp.geom FROM veloroutes.v_portion as vp WHERE vp.id_portion =5))
        """
        self.cursor.execute(sql)

        # Check that the corresponding portion was added in portion
        self.cursor.execute("SELECT * FROM veloroutes.portion")
        last_port = self.cursor.fetchall()
        expected = (last_id, 'nom portion', 'sa description', 'ETP')
        self.assertTupleEqual(last_port[-1][:4], expected)

        # Check that new row(s) are added in element
        elem = """
            SELECT veloroutes.element.id_portion
            FROM veloroutes.element
            WHERE veloroutes.element.id_portion= '{}'
        """.format(last_id)
        self.cursor.execute(elem)
        last_elem = self.cursor.fetchall()
        self.assertEqual(last_elem[-1][0], last_port[-1][0])

        # Check that the new row was inserted in v_portion
        vport = """
            SELECT veloroutes.v_portion.id_portion,
            veloroutes.v_portion.nom,
            veloroutes.v_portion.description,
            veloroutes.v_portion.type_portion
            FROM veloroutes.v_portion
        """
        self.cursor.execute(vport)
        last_vport = self.cursor.fetchall()
        new = (last_id, 'nom portion', 'sa description', 'ETP')
        self.assertTupleEqual(last_vport[-1], new)

    def test_trigger_vitineraire_insert(self):
        """ Test if v_itineraire view is editable"""

        # Get the last id given in v_itineraire
        curr_id = "SELECT max(veloroutes.v_itineraire.id_itineraire) FROM veloroutes.v_itineraire"
        self.cursor.execute(curr_id)
        # Id expected for the next insert in v_itineraire
        last_itid = self.cursor.fetchone()[0] + 1

        # New insert in v_portion
        sql = """
            INSERT INTO veloroutes.v_itineraire(numero,geom)
            VALUES ('numero test',
            (SELECT i.geom FROM veloroutes.v_itineraire as i WHERE i.id_itineraire =6))
        """
        self.cursor.execute(sql)

        # Check that the corresponding portion was added in itineraire
        iti = """
        SELECT veloroutes.itineraire.id_itineraire,
        veloroutes.itineraire.numero
        FROM veloroutes.itineraire
        """
        self.cursor.execute(iti)
        last_iti = self.cursor.fetchall()
        self.assertTupleEqual(last_iti[-1], (last_itid, 'numero test'))

        # Check that new row(s) are added in etape
        etape = """
        SELECT *
        FROM veloroutes.etape
        WHERE veloroutes.etape.id_itineraire= '{}'
        """.format(last_itid)
        self.cursor.execute(etape)
        last_etape = self.cursor.fetchall()
        self.assertTrue(len(last_etape) > 0)

        # Check that the new row was inserted in v_itineraire
        vitin = """
            SELECT veloroutes.v_itineraire.id_itineraire,
            veloroutes.v_itineraire.numero
            FROM veloroutes.v_itineraire
        """
        self.cursor.execute(vitin)
        last_vitin = self.cursor.fetchall()
        self.assertTupleEqual(last_vitin[-1], (last_itid, 'numero test'))
