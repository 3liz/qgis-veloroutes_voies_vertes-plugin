"""
Created on Mon May 18 15:38:08 2020

@author: enolasengeissen
"""
__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


from qgis.core import QgsApplication, QgsMessageLog, Qgis
from qgis.PyQt.QtWidgets import QMessageBox

from .actions import actions

from .processing.provider import VeloroutesProvider


class VeloroutesPlugin:
    def __init__(self, iface):
        self.iface = iface
        self.provider = None

    def initProcessing(self):
        self.provider = VeloroutesProvider()
        QgsApplication.processingRegistry().addProvider(self.provider)

    def initGui(self):
        self.initProcessing()

    def unload(self):
        if self.provider:
            QgsApplication.processingRegistry().removeProvider(self.provider)

    @staticmethod
    def run_action(name, *args):
        """Run a specific action.

        Do not rename this function, it's part of the public API of the plugin.

        These lines are included in the QGIS project.

        from qgis.utils import plugins
        plugins['veloroutes_voies_vertes'].run_action('action_name', params)
        """
        if name not in actions:
            QMessageBox.critical(
                None, 'Action non trouvée', 'L\'action n\'a pas été trouvée.')
            return

        if actions[name][0] != len(args):
            QMessageBox.critical(
                None, 'Mauvais nombre d\'arguments', 'Mauvais nombre d\'arguments pour l\'action.')
            return

        params = list(args)
        msg = 'Appel de l\'action {} avec les arguments: {}'
        QgsMessageLog.logMessage(
            msg.format(name, ', '.join(['{}'.format(i) for i in params])),
            'VéloroutesPlugin', Qgis.Info)
        actions[name][1](*params)
