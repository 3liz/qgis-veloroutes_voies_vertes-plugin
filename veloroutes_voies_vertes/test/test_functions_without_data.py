"""
Created on Tue Jun  2 14:56:02 2020

@author: enolasengeissen

Tests for load structure with an empty database.
"""

from .base_test_database import DatabaseWithoutDataTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestSqlFunctions(DatabaseWithoutDataTestCase):

    def test_to_be_removed_later(self):
        """ Test the database is provided without data. """
        # Number of tables
        self.cursor.execute(
            "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'veloroutes';"
        )
        self.assertEqual(27, self.cursor.fetchone()[0])

        # Number of features
        self.cursor.execute(
            "SELECT COUNT(*) FROM veloroutes.segment;"
        )
        self.assertEqual(0, self.cursor.fetchone()[0])
