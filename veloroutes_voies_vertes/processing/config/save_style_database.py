__author__ = '3liz'
__date__ = '2019-02-15'
__copyright__ = '(C) 2019 by 3liz'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = '$Format:%H$'

from qgis.core import (
    QgsProcessingParameterBoolean,
    QgsProcessingOutputString,
)

from ...qgis_plugin_tools.tools.algorithm_processing import BaseProcessingAlgorithm


class SaveStyleDatabase(BaseProcessingAlgorithm):

    CONFIRM_SAVE = 'CONFIRM_SAVE'
    OUTPUT_STRING = 'OUTPUT_STRING'

    def name(self):
        return 'save_style_database'

    def displayName(self):
        return 'Sauvegarder les styles en base de données'

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

        # Boolean to confirm save
        input_bool = QgsProcessingParameterBoolean(self.CONFIRM_SAVE, 'Confirmez la sauvegarde des styles')
        self.addParameter(input_bool)

        # OUTPUTS

        # Add output for message
        output = QgsProcessingOutputString(self.OUTPUT_STRING, 'Message de sortie')
        output.tooltip_3liz = output.description()
        self.addOutput(output)

    def processAlgorithm(self, parameters, context, feedback):
        """
        Here is where the processing itself takes place.
        """
        confirm = self.parameterAsBool(parameters, self.CONFIRM_SAVE, context)

        if not confirm:
            return {
                self.OUTPUT_STRING: 'les styles n\'ont pas été sauvegardés'
            }

        layers_required = [
            "repere", "poi_tourisme", "poi_service", "OpenStreetMap",
            "portion", "itineraire", "liaison", "segment", "v_portion",
            "v_itineraire", "etape", "element"
        ]

        layers = context.project().mapLayers()
        if len(layers) < 1:
            return {
                self.OUTPUT_STRING: 'Aucune couche n\'a été trouvée'
            }
        for lay in layers:
            if lay in layers_required:
                layer = layers[lay]
                layer.saveStyleToDatabase(layer.name(), 'default description', True, '')

        return {
                self.OUTPUT_STRING: 'les styles ont été sauvegardés'
        }
