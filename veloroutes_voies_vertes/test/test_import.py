
from veloroutes_voies_vertes.test.base_test_database import DatabaseTestCase

__copyright__ = "Copyright 2019, 3Liz"
__license__ = "GPL version 3"
__email__ = "info@3liz.org"
__revision__ = "$Format:%H$"


class TestImport(DatabaseTestCase):

    imp_seg = """
    TRUNCATE TABLE veloroutes.segment CASCADE;
        DROP TABLE IF EXISTS imports.import_segment;
        CREATE TABLE imports.import_segment(
            geom geometry(LineString,2154),
            id_segment text,
            annee_ouverture text,
            date_saisie text,
            src_geom text,
            src_annee text,
            avancement text,
            revetement text,
            statut text,
            gestionnaire text,
            proprietaire text,
            "precision" text,
            sens_unique text,
            geometrie_fictive text,
            id_on3v text,
            id_local text,
            id_import integer);
    """

    def test_import_correct_layer(self):
        """ Tests that toVeloroutes method imports tables from imports to veloroutes"""
        self.cursor.execute(self.imp_seg)
        insert = """
        INSERT INTO imports.import_segment(
            geom,
            annee_ouverture, date_saisie,
            src_geom, src_annee, avancement,
            revetement, statut, gestionnaire,
            proprietaire, "precision", sens_unique,
            geometrie_fictive, id_on3v, id_local,
            id_import)
        VALUES (
            ST_GeomFromText('LINESTRING(0 0,1 1)',2154),
            '01-01-2010', '01-01-2010', 'src_geom_test', '01-01-2010',
            2, 'LIS', 'VV', 'gestion_test', 'propri_test',
            'DC', 'T', 'F', 222, 333, 5);
        """
        self.cursor.execute(insert)
        self.cursor.execute("SELECT veloroutes.import_veloroutes_segment()")

        veloroutes = """
        SELECT TO_CHAR(annee_ouverture, 'DD-MM-YYYY'), TO_CHAR(date_saisie, 'DD-MM-YYYY'),
            src_geom, src_annee, avancement,
            revetement, statut, gestionnaire,
            proprietaire, "precision", sens_unique,
            geometrie_fictive, id_on3v, id_local
            FROM veloroutes.segment
            LIMIT 1
        """
        self.cursor.execute(veloroutes)
        result = self.cursor.fetchall()
        expected_row=(
            '01-01-2010', '01-01-2010', 'src_geom_test', '01-01-2010',
            2, 'LIS', 'VV', 'gestion_test', 'propri_test',
            'DC', 'T', 'F', '222', '333')
        self.assertTupleEqual(expected_row, result[0])

    def test_convert_date(self):
        """ Tests that toVeloroutes method normalize dates that are correct in input"""
        self.cursor.execute(self.imp_seg)
        insert = """
        INSERT INTO imports.import_segment(
            annee_ouverture, date_saisie, avancement, statut, id_import)
        VALUES (
            '01/01/2010', '2010-01-01',2,'VV',1);
        """
        self.cursor.execute(insert)
        self.cursor.execute("SELECT veloroutes.import_veloroutes_segment()")

        veloroutes = """
        SELECT TO_CHAR(annee_ouverture, 'DD-MM-YYYY'),
            date_saisie
            FROM veloroutes.segment
            LIMIT 1
        """
        self.cursor.execute(veloroutes)
        result = self.cursor.fetchall()
        expected_row=('01-01-2010', None)
        self.assertTupleEqual(expected_row, result[0])

    def test_check_enumtype(self):
        """ Tests that enumtypes that pass are equal to code or libelle
        and converted into code """
        self.cursor.execute(self.imp_seg)
        insert = """
        INSERT INTO imports.import_segment(
            avancement, statut, id_import)
        VALUES (
            'Tracé arrêté','VV', 2);
        """
        self.cursor.execute(insert)
        self.cursor.execute("SELECT veloroutes.import_veloroutes_segment()")
        self.cursor.execute("SELECT avancement FROM veloroutes.segment")
        result = self.cursor.fetchall()
        self.assertEqual(2, result[0][0])

    def test_insert_newid(self):
        """Tests that the id given in veloroutes is inserted in imports"""
        self.cursor.execute(self.imp_seg)
        insert = """
        INSERT INTO imports.import_segment(
            avancement, statut, id_import)
        VALUES (
            'Tracé arrêté','VV', 2);
        """
        self.cursor.execute(insert)
        insert = """
        SELECT veloroutes.import_veloroutes_segment();
        SELECT id_segment FROM veloroutes.segment LIMIT 1;
        """
        self.cursor.execute(insert)
        velo= self.cursor.fetchone()
        imp="""
        SELECT CAST(id_segment as integer) FROM imports.import_segment LIMIT 1;
        """
        self.cursor.execute(imp)
        newid = self.cursor.fetchone()
        self.assertEqual(velo, newid)

    def test_create_elem(self):
        """Tests taht elem table is created with the import of portion
        and updated with import of segment
        """
        imp_por = """
        TRUNCATE TABLE veloroutes.portion CASCADE;
        DROP TABLE IF EXISTS imports.import_portion;
        CREATE TABLE imports.import_portion(
            id serial,
            id_portion text,
            nom text,
            description text,
            type_portion text,
            id_on3v text,
            id_local text,
            mont_subv text,
            annee_subv text,
            lien_itin integer,
            lien_segm integer,
            id_import integer);
        INSERT INTO imports.import_portion(type_portion,lien_segm, id_import)
        VALUES ('ETP', 1, 27);
        SELECT veloroutes.import_veloroutes_portion();
        SELECT CAST(id_segment as integer) FROM imports.import_element LIMIT 1;
        """
        self.cursor.execute(imp_por)
        lienseg= self.cursor.fetchone()
        # Check that former id of segment is inserted in element
        self.assertEqual(1, lienseg[0])

        self.cursor.execute(self.imp_seg)
        inseg = """
        INSERT INTO imports.import_segment(
            avancement, statut, id_import)
        VALUES (2,'VV', 1);
        SELECT veloroutes.import_veloroutes_segment();
        SELECT id_segment FROM veloroutes.element LIMIT 1;
        """
        self.cursor.execute(inseg)
        elem=self.cursor.fetchone()

        newlien="""
        SELECT id_segment FROM veloroutes.segment"""
        self.cursor.execute(newlien)
        seg= self.cursor.fetchone()
        # Check that element was imported with veloroute's segment's id
        self.assertEqual(seg, elem)
