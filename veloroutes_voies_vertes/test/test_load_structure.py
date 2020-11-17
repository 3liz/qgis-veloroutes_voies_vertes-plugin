"""Tests for Processing algorithms."""

import os
import psycopg2
import time

import processing

from qgis.core import (
    QgsApplication,
    QgsProcessingException,
)
from qgis.testing import unittest

from ..processing.provider import VeloroutesProvider as ProcessingProvider
from ..qgis_plugin_tools.tools.database import available_migrations
from ..qgis_plugin_tools.tools.logger_processing import LoggerProcessingFeedBack

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"

SCHEMA = "veloroutes"
VERSION = "0.3.0"


class TestProcessing(unittest.TestCase):

    def setUp(self) -> None:
        self.connection = psycopg2.connect(
            user="docker", password="docker", host="db", port="5432", database="gis"
        )
        self.cursor = self.connection.cursor()

    def tearDown(self) -> None:
        del self.cursor
        del self.connection
        time.sleep(1)

    def test_load_structure_with_migration(self):
        """Test we can load the PostGIS structure with migrations."""
        provider = ProcessingProvider()

        registry = QgsApplication.processingRegistry()
        if not registry.providerById(provider.id()):
            registry.addProvider(provider)

        feedback = LoggerProcessingFeedBack()
        params = {
            "CONNECTION_NAME": "test",
            "OVERRIDE": True,
            "ADD_TEST_DATA": True,
        }
        os.environ["TEST_DATABASE_INSTALL_{}".format(SCHEMA.upper())] = VERSION
        alg = "{}:create_database_structure".format(provider.id())
        results = processing_output = processing.run(alg, params, feedback=feedback)
        del os.environ["TEST_DATABASE_INSTALL_{}".format(SCHEMA.upper())]
        self.assertEqual(VERSION, results["DATABASE_VERSION"])

        self.cursor.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema = '{}'".format(
                SCHEMA
            )
        )
        records = self.cursor.fetchall()
        result = [r[0] for r in records]
        # Expected tables in the specific version written above at the beginning of the test.
        # DO NOT CHANGE HERE, change below at the end of the test.
        expected = [
            "element",
            "etape",
            "etat_avancement_val",
            "frequentation",
            "itineraire",
            "liaison",
            "niveau_administratif_val",
            "poi",
            "poi_acces",
            "poi_acces_val",
            "poi_service",
            "poi_service_val",
            "poi_tourisme",
            "poi_tourisme_val",
            "portion",
            "portion_val",
            "repere",
            "repere_val",
            "revetement_val",
            "segment",
            "statut_segment_val",
            "metadata",
            "v_port_geom",
            "v_portion",
            "v_itin_geom",
            "v_itineraire",
            "booleen_val",
        ]
        self.assertCountEqual(expected, result)
        self.assertEqual(VERSION, processing_output["DATABASE_VERSION"])

        sql = """
            SELECT me_version
            FROM {}.metadata
            WHERE me_status = 1
            ORDER BY me_version_date DESC
            LIMIT 1;
        """.format(
            SCHEMA
        )
        self.cursor.execute(sql)
        record = self.cursor.fetchone()
        self.assertEqual(VERSION, record[0])

        feedback.pushDebugInfo("Update the database")
        params = {"CONNECTION_NAME": "test", "RUN_MIGRATIONS": True}
        alg = "{}:upgrade_database_structure".format(provider.id())
        results = processing.run(alg, params, feedback=feedback)
        self.assertEqual(1, results["OUTPUT_STATUS"], 1)
        self.assertEqual(
            "*** LA STRUCTURE A BIEN ÉTÉ MISE À JOUR SUR LA BASE DE DONNÉES ***",
            results["OUTPUT_STRING"],
        )

        sql = """
            SELECT me_version
            FROM {}.metadata
            WHERE me_status = 1
            ORDER BY me_version_date DESC
            LIMIT 1;
        """.format(
            SCHEMA
        )
        self.cursor.execute(sql)
        record = self.cursor.fetchone()
        migrations = available_migrations(000000)
        last_migration = migrations[-1]
        metadata_version = (
            last_migration.replace("upgrade_to_", "").replace(".sql", "").strip()
        )
        self.assertEqual(metadata_version, record[0])

        self.cursor.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema = '{}'".format(
                SCHEMA
            )
        )
        records = self.cursor.fetchall()
        result = [r[0] for r in records]
        expected = [
            "amenagement_segment_val",
            "amenagement_type_segment_val",
            "booleen_val",
            "element",
            "etape",
            "etat_avancement_val",
            "frequentation",
            "itineraire",
            "liaison",
            "niveau_administratif_val",
            "poi",
            "poi_acces",
            "poi_acces_val",
            "poi_service",
            "poi_service_val",
            "poi_tourisme",
            "poi_tourisme_val",
            "portion",
            "portion_val",
            "repere",
            "repere_val",
            "revetement_val",
            "segment",
            "statut_segment_val",
            "metadata",
            "v_port_geom",
            "v_portion",
            "v_itin_geom",
            "v_itineraire"
        ]
        self.assertCountEqual(expected, result)

    def test_load_structure_without_migrations(self):
        """Test we can load the PostGIS structure without migrations."""
        provider = ProcessingProvider()
        registry = QgsApplication.processingRegistry()
        if not registry.providerById(provider.id()):
            registry.addProvider(provider)

        feedback = LoggerProcessingFeedBack()
        self.cursor.execute("SELECT version();")
        record = self.cursor.fetchone()
        feedback.pushInfo("PostgreSQL version : {}".format(record[0]))

        self.cursor.execute("SELECT PostGIS_Version();")
        record = self.cursor.fetchone()
        feedback.pushInfo("PostGIS version : {}".format(record[0]))

        params = {
            "CONNECTION_NAME": "test",
            "OVERRIDE": True,  # Must be true, for the time in the test.
            "ADD_TEST_DATA": True,
        }

        alg = "{}:create_database_structure".format(provider.id())
        processing.run(alg, params, feedback=feedback)

        self.cursor.execute(
            "SELECT table_name FROM information_schema.tables WHERE table_schema = '{}'".format(
                SCHEMA
            )
        )
        records = self.cursor.fetchall()
        result = [r[0] for r in records]
        expected = [
            "booleen_val",
            "element",
            "etape",
            "etat_avancement_val",
            "frequentation",
            "itineraire",
            "liaison",
            "niveau_administratif_val",
            "poi",
            "poi_acces",
            "poi_acces_val",
            "poi_service",
            "poi_service_val",
            "poi_tourisme",
            "poi_tourisme_val",
            "portion",
            "portion_val",
            "repere",
            "repere_val",
            "revetement_val",
            "segment",
            "statut_segment_val",
            "metadata",
            "v_port_geom",
            "v_portion",
            "v_itin_geom",
            "v_itineraire"
        ]
        self.assertCountEqual(expected, result, result)

        feedback.pushDebugInfo("Relaunch the algorithm without override")
        params = {
            "CONNECTION_NAME": "test",
            "OVERRIDE": False,
        }

        with self.assertRaises(QgsProcessingException):
            processing.run(alg, params, feedback=feedback)

        msg = (
            "Unable to execute algorithm\nLe schéma {} existe déjà dans la base de données {} ! "
            "Si vous voulez VRAIMENT supprimer et recréer le schéma "
            "(et supprimer les données) cocher la case **Écraser**").format(SCHEMA, 'test')
        self.assertEqual(msg, feedback.last)

        feedback.pushDebugInfo("Update the database")
        params = {"CONNECTION_NAME": "test", "RUN_MIGRATIONS": True}
        alg = "{}:upgrade_database_structure".format(provider.id())
        results = processing.run(alg, params, feedback=feedback)
        self.assertEqual(1, results["OUTPUT_STATUS"], 1)
        self.assertEqual(
            " La version de la base de données et du plugin sont les mêmes. Aucune mise-à-jour "
            "n'est nécessaire",
            results["OUTPUT_STRING"],
        )
