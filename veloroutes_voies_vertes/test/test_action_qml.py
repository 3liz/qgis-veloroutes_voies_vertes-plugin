__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"

import os
import unittest
import re

from qgis.PyQt.QtXml import QDomDocument

from qgis_plugin_tools.tools.resources import resources_path

from veloroutes_voies_vertes import actions

PLUGIN_NAME = 'veloroutes_voies_vertes'
REGEX = r"^from qgis\.utils import plugins\nplugins\['(\w*)'\].run_action\('(\w*)', (.*)\)$"


class TestQmlAction(unittest.TestCase):

    @staticmethod
    def qml_files():
        list_files = []
        for root, _, files in os.walk(resources_path('qml')):
            for file in files:
                if file.lower().endswith('.qml'):
                    file_path = os.path.join(root, file)
                    list_files.append(file_path)
        return list_files

    def test_qml_action(self):
        """Test that actions in QML exists in Python code. """

        for qml in self.qml_files():
            with open(qml, 'r') as qml_file:
                content = qml_file.read()

            dom = QDomDocument()
            dom.setContent(content)
            nodelist = dom.elementsByTagName("actionsetting")

            for i in range(nodelist.count()):
                node = nodelist.at(i).attributes()
                python_action = node.namedItem('action').nodeValue()

                matches = re.search(REGEX, python_action)
                self.assertIsNotNone(matches, 'The action must match the regexp')

                groups = matches.groups()

                # The plugin name in the action must match
                self.assertEqual(PLUGIN_NAME, groups[0], 'The plugin name must be {}'.format(PLUGIN_NAME))

                # The name of the function must be correct
                self.assertIn(
                    groups[1],
                    list(actions.actions.keys()),
                    'The action {} is not defined in the plugin.'.format(groups[1]))

                # Check number of arguments
                self.assertEqual(
                    actions.actions[groups[1]][0],
                    len(groups[2].split(',')),
                    'The number of parameters is not correct compare to the definition.')
