__copyright__ = 'Copyright 2020, 3Liz'
__license__ = 'GPL version 3'
__email__ = 'info@3liz.org'

from veloroutes_voies_vertes.qgis_plugin_tools.tools.algorithm_processing import (
    BaseProcessingAlgorithm,
)


class BaseDatabaseAlgorithm(BaseProcessingAlgorithm):

    def group(self):
        return 'Base de données'

    def groupId(self):
        return 'database'
