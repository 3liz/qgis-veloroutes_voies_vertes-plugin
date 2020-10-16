__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import QgsProcessingProvider
from qgis.PyQt.QtGui import QIcon
from .structure.create_database_structure import CreateDatabaseStructure
from .structure.upgrade_database_structure import UpgradeDatabaseStructure
from .chargement.load_layers import LoadLayersAlgorithm
from .chargement.load_styles import LoadStylesAlgorithm
from ..qgis_plugin_tools.tools.resources import resources_path
from .config.configure import ConfigurePlugin
from .config.save_style_database import SaveStyleDatabase
from .covadis.import_covadis import ImportCovadis
from .covadis.export_covadis import ExportCovadis
from .covadis.export_all import ExportCovadisAll


class VeloroutesProvider(QgsProcessingProvider):
    def loadAlgorithms(self):
        self.addAlgorithm(ConfigurePlugin())
        self.addAlgorithm(CreateDatabaseStructure())
        self.addAlgorithm(UpgradeDatabaseStructure())
        self.addAlgorithm(LoadLayersAlgorithm())
        self.addAlgorithm(LoadStylesAlgorithm())
        self.addAlgorithm(ImportCovadis())
        self.addAlgorithm(ExportCovadis())
        self.addAlgorithm(ExportCovadisAll())
        self.addAlgorithm(SaveStyleDatabase())

    def id(self):
        return "veloroutes_vv"

    def icon(self):
        return QIcon(resources_path("icons", "icon.png"))

    def name(self):
        return "Véloroutes et voies vertes COVADIS"

    def longName(self):
        return self.name()
