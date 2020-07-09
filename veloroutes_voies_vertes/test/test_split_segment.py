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
    def xtest_trigger_split_segment(self):
        """ Test the function that splits a segment in two new segments"""

        # Counts how many segment are in the db
        # before split
        self.cursor.execute("SELECT COUNT(*) FROM veloroutes.segment")
        nbseg = self.cursor.fetchone()

        # Test that the db contains 2505 rows at the begining
        self.assertEqual(nbseg[0], 2505)

        # Coordinates of a click on a segment that is also part of a portion
        id_seg=17980
        xnode=898898
        ynode=6799452
        id_portion=7

        # Counts how many elements are related to This portion
        # before split
        portion = """
                SELECT COUNT(*)
                FROM veloroutes.element e
                WHERE e.id_portion = {}
        """.format(id_portion)
        self.cursor.execute(portion)
        nbelem = self.cursor.fetchone()

        # Test that the number of element for portion 7 is correct
        self.assertEqual(nbelem[0], 5)

        # Call split function
        sql="""SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
        self.cursor.execute(sql)

        # Counts how many segment are in the db after the split
        self.cursor.execute("SELECT COUNT(*) FROM veloroutes.segment")
        new_nbseg = self.cursor.fetchone()

        # Check that one segment is added in segment
        self.assertEqual(new_nbseg[0], nbseg[0]+1)

        # Counts how many elements are related to This portion
        # after split
        portion = """
                SELECT COUNT(*)
                FROM veloroutes.element e
                WHERE e.id_portion = {}
        """.format(id_portion)
        self.cursor.execute(portion)
        new_nbelem = self.cursor.fetchone()

        # Check that one element is added
        self.assertEqual(new_nbelem[0], nbelem[0]+1)

    def test_split_duplicate_segment(self):

        # Get the last id given in segment
        curr_id="""SELECT max(veloroutes.segment.id_local) FROM veloroutes.segment"""
        self.cursor.execute(curr_id)
        # Id expected for the next insert in segment
        last_id = self.cursor.fetchone()[0]+1

        # Coordinates of a click on a segment
        id_seg=17980
        xnode=898898
        ynode=6799452

        # Collect information about this segment
        seg="""
            SELECT *
            FROM veloroutes.segment s
            WHERE s.id_local={}
        """.format(id_seg)
        self.cursor.execute(seg)
        info=self.cursor.fetchall()

        # Call split function
        sql="""SELECT veloroutes.split({},{},{})""".format(id_seg, xnode, ynode)
        self.cursor.execute(sql)

        # Collect information about the new segment
        new="""
            SELECT *
            FROM veloroutes.segment s
            WHERE s.id_local={}
        """.format(last_id)
        self.cursor.execute(new)
        new_info=self.cursor.fetchall()

        # Check that the new row has the same attributes
        # (except id_local) than the chosen segment
        self.assertEqual(info[1:],new_info[1:])
