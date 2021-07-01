"""
Created on Mon May 18 15:38:08 2020

@author: enolasengeissen
"""
__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


from qgis.core import Qgis, QgsApplication, QgsMessageLog
from qgis.PyQt.QtCore import QUrl
from qgis.PyQt.QtGui import QDesktopServices, QIcon
from qgis.PyQt.QtWidgets import QAction, QMessageBox

from .actions import actions
from .processing.provider import VeloroutesProvider
from .qgis_plugin_tools.tools.resources import resources_path


class VeloroutesPlugin:
    def __init__(self, iface):
        self.iface = iface
        self.provider = None
        self.help_action = None

    def initProcessing(self):
        self.provider = VeloroutesProvider()
        QgsApplication.processingRegistry().addProvider(self.provider)

    def initGui(self):
        self.initProcessing()

        # Open the online help
        self.help_action = QAction(
            QIcon(resources_path('icons', 'icon.png')),
            'Véloroutes',
            self.iface.mainWindow())
        self.iface.pluginHelpMenu().addAction(self.help_action)
        self.help_action.triggered.connect(self.open_help)

    def unload(self):
        if self.provider:
            QgsApplication.processingRegistry().removeProvider(self.provider)

        if self.help_action:
            self.iface.pluginHelpMenu().removeAction(self.help_action)
            del self.help_action

    @staticmethod
    def open_help():
        """ Open the online help. """
        QDesktopServices.openUrl(QUrl('https://docs.3liz.org/qgis-veloroutes_voies_vertes-plugin/'))

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
