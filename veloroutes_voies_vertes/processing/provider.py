__copyright__ = "Copyright 2020, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import QgsProcessingProvider
from qgis.PyQt.QtGui import QIcon
# from .example_processing_algorithm import ExampleProcessingAlgorithm

from .structure.create_database_structure import CreateDatabaseStructure
from .structure.upgrade_database_structure import UpgradeDatabaseStructure
from ..qgis_plugin_tools.tools.resources import resources_path


class VeloroutesProvider(QgsProcessingProvider):
    def loadAlgorithms(self):
        # self.addAlgorithm(ExampleProcessingAlgorithm())
        self.addAlgorithm(CreateDatabaseStructure())
        self.addAlgorithm(UpgradeDatabaseStructure())


    def id(self):
        return "veloroutes_vv"

    def icon(self):
        return QIcon(resources_path("icons", "icon.png"))

    def name(self):
        return "Véloroutes et voies vertes COVADIS"

    def longName(self):
        return self.name()
