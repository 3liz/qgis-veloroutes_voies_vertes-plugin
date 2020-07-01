r"""
Created on Wed Jul  1 12:24:18 2020

@author: enola sengeissen
"""


from qgis.core import (
    QgsApplication,
    QgsProcessingException,
    QgsProject,
    QgsLayerTreeUtils
)

import processing

from qgis.testing import unittest

from ..processing.provider import VeloroutesProvider as ProcessingProvider
from ..qgis_plugin_tools.tools.logger_processing import LoggerProcessingFeedBack


class TestLayers(unittest.TestCase):

    def xtest_loaded_layers(self):
        provider = ProcessingProvider()
        QgsApplication.processingRegistry().addProvider(provider)

        feedback = LoggerProcessingFeedBack()
        params = {
            "DATABASE": "vvv"
        }
        alg = "{}:load_layers".format(provider.id())
        try:
            processing.run(alg, params, feedback=feedback)
        except QgsProcessingException as e:
            self.assertTrue(False, e)
        processing.run(alg, params, feedback=feedback)

        layers = ["repere", "poi_tourisme", "poi_service", "liaison",
                  "segment", "portion", "itineraire", "osm"]
        project = QgsProject.instance()
        count=0

        for x in layers:
            layer = project.mapLayersByName(x)
            count += QgsLayerTreeUtils.countMapLayerInTree(project.layerTreeRoot(), layer)
        self.assertEqual(count, 8)
