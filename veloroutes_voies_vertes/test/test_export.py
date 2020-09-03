from veloroutes_voies_vertes.test.base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

from qgis.core import (
    QgsProject,
    QgsProcessingContext,
)
import processing
import os.path
# from os import listdir
from ..qgis_plugin_tools.tools.logger_processing import LoggerProcessingFeedBack
from ..processing.provider import VeloroutesProvider as ProcessingProvider
from ..qgis_plugin_tools.tools.resources import plugin_test_data_path


class TestExport(DatabaseTestCase):

    def test_export_1file(self):
        provider = ProcessingProvider()
        project = QgsProject()
        context = QgsProcessingContext()
        context.setProject(project)
        feedback = LoggerProcessingFeedBack()

        params = {
            "DATABASE": 'test',
            "SCHEMA": 'veloroutes',
            "TABLE": 1,  # corresponds to portion in enum
            "DPT": '066',
            "FOLDER": plugin_test_data_path(),
            "CHARGER": False
        }
        alg = "{}:export_covadis".format(provider.id())
        processing.run(
            alg, params, context=context, feedback=feedback
        )
        path = plugin_test_data_path('N_3V_PORTION_L_066.shp')
        self.assertTrue(os.path.isfile(path))

    def test_conversion_enumtype(self):
        sql = """
        TRUNCATE TABLE veloroutes.segment CASCADE;
        INSERT INTO veloroutes.segment(avancement, statut)
        VALUES (2,'VV');
        SELECT veloroutes.export_segment();
        SELECT avancement, statut FROM exports.segment;
        """
        self.cursor.execute(sql)
        res = self.cursor.fetchone()
        expected = ('Tracé arrêté', 'Voie verte')
        self.assertTupleEqual(expected, res)

    # def test_export_all(self):
    #     provider = ProcessingProvider()
    #     project = QgsProject()
    #     context = QgsProcessingContext()
    #     context.setProject(project)
    #     feedback = LoggerProcessingFeedBack()

    #     params = {
    #             "DATABASE": 'test',
    #             "SCHEMA": 'veloroutes',
    #             "DPT": '066',
    #             "FOLDER": plugin_test_data_path(),
    #             "CHARGER": False
    #         }
    #     alg = "{}:export_all".format(provider.id())
    #     processing.run(
    #         alg, params, context=context, feedback=feedback
    #     )
    #     print(listdir(plugin_test_data_path()))
    #     files = [
    #         '3V_AVANCEMENT_VAL.dbf','3V_REVETEMENT_VAL.dbf',
    #         '3V_STATUT_VAL.dbf','3V_TYPEPORTION_VAL.dbf',
    #         '3V_TYPEREPERE_VAL.dbf', 'N_3V_ITINERAIRE_066.shp',
    #         'N_3V_PORTION_L_066.shp', 'N_3V_SEGMENT_L_066.shp',
    #         'N_3V_REPERE_P_066.shp', 'N_3V_LIAISON_L_066.shp',
    #         'N_3V_ACCES_INTERMODAL_P_066.shp', 'N_3V_SERVICE_P_066.shp',
    #         'N_3V_TOURISME_P_066.shp']
    #     for f in file:
    #         self.assertTrue(f in listdir(plugin_test_data_path()))
