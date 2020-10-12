__author__ = '3liz'
__date__ = '2019-02-15'
__copyright__ = '(C) 2019 by 3liz'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'

from qgis.core import (
    QgsProcessingParameterString,
    QgsProcessingOutputString,
    QgsProcessingOutputNumber,
    QgsExpressionContextUtils
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm


class ConfigurePlugin(BaseProcessingAlgorithm):

    CONFIRM_SAVE = 'CONFIRM_SAVE'

    def name(self):
        return 'save_style_database'

    def displayName(self):
        return 'Sauvegerder les styles en base de données'

    def group(self):
        return 'Configuration'

    def groupId(self):
        return 'veloroutes_configuration'

    def shortHelpString(self) -> str:
        return 'Sauvegarde les styles en base de données'

    def initAlgorithm(self, config):
        """
        Here we define the inputs and output of the algorithm, along
        with some other properties.
        """
        # INPUTS

        #Boolean to confirm save

        # OUTPUTS

        # Add output for message
        output = QgsProcessingOutputString(self.OUTPUT_STRING, 'Message de sortie')
        output.tooltip_3liz = output.description()
        self.addOutput(output)

    def processAlgorithm(self, parameters, context, feedback):
        """
        Here is where the processing itself takes place.
        """