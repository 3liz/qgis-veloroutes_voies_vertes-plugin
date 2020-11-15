BEGIN;

DROP TRIGGER IF EXISTS revetement ON veloroutes.segment;

ALTER TABLE veloroutes.segment ALTER COLUMN annee_ouverture TYPE text USING substring(annee_ouverture::text from 1 for 4);

ALTER TABLE veloroutes.segment DROP CONSTRAINT avancement;

ALTER TABLE veloroutes.etat_avancement_val DROP CONSTRAINT code9;
ALTER TABLE veloroutes.etat_avancement_val ALTER COLUMN code TYPE text USING lpad(code::text, 2, '0');
ALTER TABLE veloroutes.etat_avancement_val ADD CONSTRAINT code9 UNIQUE (code);

ALTER TABLE veloroutes.segment ALTER COLUMN avancement TYPE text USING lpad(avancement::text, 2, '0');

ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT avancement FOREIGN KEY (avancement) REFERENCES veloroutes.etat_avancement_val(code);

DROP TRIGGER insert_v_portion ON veloroutes.v_portion;
DROP VIEW veloroutes.v_portion;

ALTER TABLE veloroutes.portion ALTER COLUMN annee_subv TYPE text USING annee_subv::text;


CREATE OR REPLACE VIEW veloroutes.v_portion AS
 SELECT st_setsrid(st_geomfromtext('LINESTRING(0 0, 0 0)'), 2154) AS geom,
        0 AS id_portion, '' AS nom, '' AS description, 'ETP' AS type_portion,
        '' AS id_on3v, '' AS id_local, 0.0 AS mont_subv, '' AS annee_subv
 WHERE (SELECT COUNT(*) FROM veloroutes.v_port_geom) = 0
 UNION ALL
 SELECT v_port_geom.collect_geom AS geom,
    portion.id_portion,
    portion.nom,
    portion.description,
    portion.type_portion,
    portion.id_on3v,
    portion.id_local,
    portion.mont_subv,
    portion.annee_subv
   FROM veloroutes.portion
     JOIN veloroutes.v_port_geom ON portion.id_portion = v_port_geom.id_portion;

COMMENT ON VIEW veloroutes.v_portion IS 'Vue qui joint les portions aux collections de géométries des segments qui les composent';

CREATE TRIGGER insert_v_portion
  INSTEAD OF INSERT
  ON veloroutes.v_portion
  FOR EACH ROW
  EXECUTE PROCEDURE veloroutes.v_portion_insert();
COMMENT ON TRIGGER insert_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_insert()';

DROP TRIGGER insert_v_itineraire ON veloroutes.v_itineraire;
DROP VIEW veloroutes.v_itineraire;

ALTER TABLE veloroutes.itineraire ALTER COLUMN annee_inscription TYPE text USING substring(annee_inscription::text from 1 for 4);
ALTER TABLE veloroutes.itineraire ALTER COLUMN annee_ouverture TYPE text USING substring(annee_ouverture::text from 1 for 4);
ALTER TABLE veloroutes.itineraire ALTER COLUMN annee_subv TYPE text USING annee_subv::text;

CREATE OR REPLACE VIEW veloroutes.v_itineraire AS
 SELECT st_setsrid(st_geomfromtext('LINESTRING(0 0, 0 0)'), 2154) AS geom,
        0 AS id_itineraire, '' AS numero, '' AS nom_officiel, '' AS nom_usage,
        '' AS depart, '' AS arrivee, '' AS annee_inscription, '' AS site_web,
        '' AS annee_ouverture, 'DEP' AS niveau_schema, 'F' AS est_inscrit,
        0.0 AS mont_subv, '' AS annee_subv
 WHERE (SELECT COUNT(*) FROM veloroutes.v_itin_geom) = 0
 UNION ALL
 SELECT v_itin_geom.collect_geom AS geom,
    itineraire.id_itineraire,
    itineraire.numero,
    itineraire.nom_officiel,
    itineraire.nom_usage,
    itineraire.depart,
    itineraire.arrivee,
    itineraire.annee_inscription,
    itineraire.site_web,
    itineraire.annee_ouverture,
    itineraire.niveau_schema,
    itineraire.est_inscrit,
    itineraire.mont_subv,
    itineraire.annee_subv
   FROM veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON v_itin_geom.id_itineraire = itineraire.id_itineraire;

COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent';

CREATE TRIGGER insert_v_itineraire
  INSTEAD OF INSERT
  ON veloroutes.v_itineraire
  FOR EACH ROW
  EXECUTE PROCEDURE veloroutes.v_itineraire_insert();
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';

CREATE OR REPLACE FUNCTION veloroutes.insert_import_veloroutes_segment(idimport integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$DECLARE id_veloroutes integer; seg record;
BEGIN
    INSERT INTO veloroutes.segment(
        geom,
        id_local,
        id_on3v,
        statut,
        avancement,
        revetement,
        proprietaire,
        gestionnaire,
        precision,
        src_geom,
        sens_unique,
        date_saisie,
        src_annee,
        geometrie_fictive,
        annee_ouverture)
    SELECT
        CASE
            WHEN ST_SRID(geom) != 2154 THEN ST_Transform(ST_SetSRID(geom,2154),2154)
            ELSE geom
        END AS geom,
        id_local,
        id_on3v,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(code) = UPPER(statut))
            THEN statut
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(libelle) = UPPER(statut))
            THEN (SELECT code FROM veloroutes.statut_segment_val as v WHERE UPPER(v.libelle) = UPPER(statut) LIMIT 1)
        END AS statut,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE UPPER(code) = UPPER(avancement))
            THEN avancement
            WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE UPPER(libelle) = UPPER(avancement))
            THEN (SELECT code FROM veloroutes.etat_avancement_val as v WHERE UPPER(v.libelle) = UPPER(avancement) LIMIT 1)
        END AS avancement,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE UPPER(code) = UPPER(revetement))
            THEN revetement
            WHEN EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE UPPER(libelle) = UPPER(revetement))
            THEN (SELECT code FROM veloroutes.revetement_val as v WHERE UPPER(v.libelle) = UPPER(revetement) LIMIT 1)
            ELSE revetement
        END AS revetement,
        proprietaire,
        gestionnaire,
        precision,
        src_geom,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(sens_unique))
            THEN sens_unique
            WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle) = UPPER(sens_unique))
            THEN (SELECT code FROM veloroutes.booleen_val as v WHERE UPPER(v.libelle) = UPPER(sens_unique) LIMIT 1)
            --WHEN sens_unique = 'bidirectionnelle' THEN 'F'
            --WHEN sens_unique = 'monodirectionnelle' THEN 'T'
            ELSE sens_unique
        END AS sens_unique,
        CASE
            WHEN substring(date_saisie from 1 for 10) LIKE '__-__-____' THEN to_date(substring(date_saisie from 1 for 10),'DD-MM-YYYY')
            WHEN substring(date_saisie from 1 for 10) LIKE '__/__/____' THEN to_date(substring(date_saisie from 1 for 10),'DD-MM-YYYY')
        END AS date_saisie,
        src_annee,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(geometrie_fictive))
            THEN geometrie_fictive
            WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle) = UPPER(geometrie_fictive))
            THEN (SELECT code FROM veloroutes.booleen_val as v WHERE UPPER(v.libelle) = UPPER(geometrie_fictive) LIMIT 1)
            ELSE geometrie_fictive
        END AS geometrie_fictive,
        CASE
            WHEN substring(annee_ouverture from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
            WHEN substring(annee_ouverture from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
        END AS annee_ouverture
    FROM imports.import_segment as iis
    WHERE iis.id_import = idimport
    RETURNING id_segment into id_veloroutes;

    RETURN id_veloroutes;
END;
    $$;

COMMIT;
