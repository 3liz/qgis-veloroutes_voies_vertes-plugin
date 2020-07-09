"""
Created on Wed Jul  8 16:57:23 2020

@author: enola sengeissen
"""

"""
Created on Fri Jun  5 12:06:30 2020

@author: enolasengeissen
"""

from veloroutes_voies_vertes.test.base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestActions(DatabaseTestCase):
    def test_trigger_split_segment(self):
        """ Test the function that splits a segment in two new segments"""

        # Counts how many segment are in the db
        # before split
        self.cursor.execute("SELECT COUNT(*) FROM veloroutes.segment")
        nbseg = self.cursor.fetchone()

        # Coordinates of a click on a segment that is also part of a portion
        id_seg=17980
        xnode=898898
        ynode=6799452

        # Counts how many elements are related to This portion
        # before split
        portion = """
                SELECT COUNT(*)
                FROM veloroutes.element e
                WHERE e.id_portion =
                (SELECT el.id_portion
                FROM veloroutes.element as el
                WHERE el.id_segment = {})
        """.format(id_seg)
        self.cursor.execute(portion)
        nbelem = self.cursor.fetchone()

        # Call split function
        sql="""SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
        self.cursor.execute(sql)

        # Counts how many segment are in the db after the split
        self.cursor.execute("SELECT COUNT(*) FROM veloroutes.segment")
        new_nbseg = self.cursor.fetchone()

        # Counts how many elements are related to This portion
        # after split
        portion = """
                SELECT COUNT(*)
                FROM veloroutes.element e
                WHERE e.id_portion =
                (SELECT el.id_portion
                FROM veloroutes.element as el
                WHERE el.id_segment = {})
        """.format(id_seg)
        self.cursor.execute(portion)
        new_nbelem = self.cursor.fetchone()

        # Check that one segment is added in segment
        self.assertEqual(new_nbseg[0], nbseg[0]+1)

        # Check that one element is added
        self.assertEqual(new_nbelem[0], nbelem[0]+1)
