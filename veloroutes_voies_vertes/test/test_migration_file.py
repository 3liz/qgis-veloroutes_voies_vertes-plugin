"""Tests for migrations."""

import os
import unittest

from veloroutes_voies_vertes.qgis_plugin_tools.tools.database import (
    available_migrations,
)
from veloroutes_voies_vertes.qgis_plugin_tools.tools.resources import (
    plugin_path,
)

__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"


class TestMigration(unittest.TestCase):

    def test_transactions(self):
        """ Tests migrations must have a transaction. """

        migrations = available_migrations(000000)
        for migration in migrations:

            with self.subTest(test_file=migration):
                sql_file = os.path.join(plugin_path(), "install/sql/upgrade/{}".format(migration))
                with open(sql_file, "r") as f:
                    sql = f.readlines()

                self.assertEqual(
                    'BEGIN;\n',
                    sql[0],
                    'The first line in {} must be a BEGIN; on a single line.'.format(migration)
                )
                self.assertEqual(
                    'COMMIT;\n',
                    sql[-1],
                    'The last line in {} must be a COMMIT; on a single line.'.format(migration)
                )
