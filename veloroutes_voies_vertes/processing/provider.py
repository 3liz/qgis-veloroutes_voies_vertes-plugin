__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import Qgis, QgsProcessingProvider
from qgis.PyQt.QtGui import QIcon

from ..qgis_plugin_tools.tools.resources import resources_path
from .chargement.load_layers import LoadLayersAlgorithm

if Qgis.QGIS_VERSION_INT < 31400:
    from .database.upgrade import UpgradeDatabaseStructure

from .chargement.load_styles import LoadStylesAlgorithm
from .config.configure import ConfigurePlugin
from .covadis.export_all import ExportCovadisAll
from .covadis.export_covadis import ExportCovadis
from .covadis.import_covadis import ImportCovadis
from .database.create import CreateDatabaseStructure


class VeloroutesProvider(QgsProcessingProvider):
    def loadAlgorithms(self):
        self.addAlgorithm(ConfigurePlugin())
        self.addAlgorithm(CreateDatabaseStructure())
        if Qgis.QGIS_VERSION_INT < 31400:
            self.addAlgorithm(UpgradeDatabaseStructure())
        self.addAlgorithm(LoadLayersAlgorithm())
        self.addAlgorithm(LoadStylesAlgorithm())
        self.addAlgorithm(ImportCovadis())
        self.addAlgorithm(ExportCovadis())
        self.addAlgorithm(ExportCovadisAll())

    def id(self):  # NOQA: A003
        return "veloroutes_vv"

    def icon(self):
        return QIcon(resources_path("icons", "icon.png"))

    def name(self):
        return "Véloroutes et voies vertes COVADIS"

    def longName(self):
        return self.name()
