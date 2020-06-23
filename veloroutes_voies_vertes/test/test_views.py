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

        sql = """
            INSERT INTO veloroutes.v_portion(nom,description,type_portion)
            VALUES ('nom portion','sa description','ETP');
        """
        self.cursor.execute(sql)

        # Check that the corresponding portion was added in portion
        self.cursor.execute(" SELECT * FROM veloroutes.portion")
        last_port = self.cursor.fetchall()
        self.assertTupleEqual((last_port[-1][1],
                               last_port[-1][2],
                               last_port[-1][3]), ('nom portion', 'sa description', 'ETP'))

        # Check that the row was inserted in v_portion --> DOES NOT WORK YET
#        vport = """
#            SELECT veloroutes.v_portion.nom,
#            veloroutes.v_portion.description,
#            veloroutes.v_portion.type_portion
#            FROM veloroutes.v_portion
#        """
#        self.cursor.execute(vport)
#        last_vport = self.cursor.fetchall()
#        self.assertTupleEqual(last_vport[-1],('nom portion','sa description','ETP'))

        # Check that new rows are addes in element --> DOES NOT WORK YET
#        elem = """
#            SELECT veloroutes.element.v_portion,
#            veloroutes.element.v_segment,
#            FROM veloroutes.element
#            WHERE veloroutes.element.v_portion= '{}'
#        """.format(last_port[-1].id_local)
#        self.cursor.execute(elem)
#        last_elem = self.cursor.fetchall()
#        self.assertTupleEqual(last_port[-1],('nom portion','sa description','ETP'))
