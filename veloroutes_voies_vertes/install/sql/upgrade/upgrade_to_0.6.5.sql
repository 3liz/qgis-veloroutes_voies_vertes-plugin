BEGIN;

ALTER TABLE veloroutes.segment ALTER COLUMN sens_unique SET DEFAULT NULL;
ALTER TABLE veloroutes.segment ALTER COLUMN geometrie_fictive SET DEFAULT NULL;

-- segment desserte_college
ALTER TABLE veloroutes.segment ADD COLUMN desserte_college text DEFAULT NULL;
COMMENT ON COLUMN veloroutes.segment.desserte_college IS 'Indique si le segment est une desserte de collège';
-- segment desserte_college_booleen
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT desserte_college_booleen FOREIGN KEY (desserte_college) REFERENCES veloroutes.booleen_val(code);

-- segment amenagement
ALTER TABLE veloroutes.segment ADD COLUMN amenagement text;
UPDATE veloroutes.segment SET amenagement = CASE
    WHEN statut IN ('VV', 'PCY', 'ASP') THEN 'SP'
    ELSE 'RTE' END;
ALTER TABLE veloroutes.segment ALTER COLUMN amenagement SET NOT NULL;
COMMENT ON COLUMN veloroutes.segment.amenagement IS 'Indique l''aménagement du segment';
-- segment amenagement_type
ALTER TABLE veloroutes.segment ADD COLUMN amenagement_type text;
UPDATE veloroutes.segment SET amenagement_type = statut;
ALTER TABLE veloroutes.segment ALTER COLUMN amenagement_type SET NOT NULL;
COMMENT ON COLUMN veloroutes.segment.amenagement_type IS 'Indique le type d''aménagement du segment';

-- amenagement_segment_val
CREATE TABLE veloroutes.amenagement_segment_val (
    id serial PRIMARY KEY,
    code text NOT NULL UNIQUE,
    libelle text
);

-- amenagement_segment_val
COMMENT ON TABLE veloroutes.amenagement_segment_val IS 'Nomenclature pour les aménagements de segment cyclable';

--
-- Data for Name: amenagement_segment_val
--
INSERT INTO veloroutes.amenagement_segment_val (code, libelle) VALUES ('SP', 'Site propre');
INSERT INTO veloroutes.amenagement_segment_val (code, libelle) VALUES ('RTE', 'Partage de route');

-- amenagement_type_segment_val
CREATE TABLE veloroutes.amenagement_type_segment_val (
    id serial PRIMARY KEY,
    code text NOT NULL UNIQUE,
    libelle text,
    amenagement text NOT NULL
);

-- amenagement_type_segment_val
COMMENT ON TABLE veloroutes.amenagement_type_segment_val IS 'Nomenclature pour les types d''aménagement de segment cyclable';

--
-- Data for Name: amenagement_type_segment_val
--
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('VV', 'Voie verte', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('PCY', 'Piste cyclable', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('BSP', 'Boucle cyclable', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('ASP', 'Autre site propre', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('RTE', 'Jalonnement', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('BCY', 'Bande cyclable', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('BCR', 'Boucle cyclable', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (code, libelle, amenagement) VALUES ('ICA', 'Apaisée', 'RTE');

-- amenagement_type_segment_val amenagement_type_amenagement
ALTER TABLE ONLY veloroutes.amenagement_type_segment_val
    ADD CONSTRAINT amenagement_type_amenagement FOREIGN KEY (amenagement) REFERENCES veloroutes.amenagement_segment_val(code);

-- segment amenagement
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT amenagement FOREIGN KEY (amenagement) REFERENCES veloroutes.amenagement_segment_val(code);
-- segment amenagement_type
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT amenagement_type FOREIGN KEY (amenagement_type) REFERENCES veloroutes.amenagement_type_segment_val(code);


-- statut_amenagment_type()
CREATE FUNCTION veloroutes.statut_amenagment_type() RETURNS trigger
    LANGUAGE plpgsql
    AS $$    BEGIN
        IF NEW.amenagement_type IS NULL AND
           NEW.statut IS NOT NULL
           THEN
                IF (SELECT COUNT(*) = 0 FROM veloroutes.statut_segment_val WHERE code = NEW.statut) THEN
                    RAISE EXCEPTION 'statut doit être un code de statut_segment_val';
                END IF;
                NEW.amenagement := (SELECT amenagement FROM veloroutes.amenagement_type_segment_val WHERE code = NEW.statut);
                NEW.amenagement_type := NEW.statut;
        END IF;
        IF NEW.statut IS NULL AND
           NEW.amenagement_type IS NOT NULL
           THEN
                IF (SELECT COUNT(*) = 0 FROM veloroutes.amenagement_type_segment_val WHERE code = NEW.amenagement_type) THEN
                    RAISE EXCEPTION 'amenagement_type doit être un code de amenagement_type_segment_val';
                END IF;
                NEW.amenagement := (SELECT amenagement FROM veloroutes.amenagement_type_segment_val WHERE code = NEW.amenagement_type);
                NEW.statut := CASE WHEN NEW.amenagement_type = 'BCR' THEN 'RTE'
                                   WHEN NEW.amenagement_type = 'BSP' THEN 'ASP'
                                   ELSE NEW.amenagement_type END;
        END IF;
        RETURN NEW;
    END;
$$;

-- segment statut_amenagment_type
CREATE TRIGGER statut_amenagment_type BEFORE INSERT OR UPDATE ON veloroutes.segment FOR EACH ROW EXECUTE PROCEDURE veloroutes.statut_amenagment_type();

-- split(integer, real, real)
CREATE OR REPLACE FUNCTION veloroutes.split(id_seg integer, xnode real, ynode real) RETURNS boolean
    LANGUAGE plpgsql
    AS $$DECLARE
    seg record;
    cut geometry;
    geom_init geometry;
    geom_term geometry;
    id_new_seg integer;

BEGIN

    -- Récupération du point cliqué
    SELECT ST_GeomFromText('POINT(' || xnode || ' ' || ynode || ')',2154) INTO cut;

    -- Récupération du segment cliqué
    SELECT *
    FROM veloroutes.segment
    WHERE veloroutes.segment.id_segment=id_seg
    INTO seg;

    -- Vérification que le clique ne se situe pas trop loin d'un segment
    IF ST_Distance(cut, seg.geom)> 5 THEN
        RAISE EXCEPTION 'Aucun segment trouvé à proximité du clic : Distance > 5m ';
    END IF;

    -- Création des nouvelles géométries
    geom_init := ST_LineSubstring(seg.geom, 0, ST_LineLocatePoint(seg.geom, cut));
    geom_term := ST_LineSubstring(seg.geom, ST_LineLocatePoint(seg.geom, cut), 1);

    -- Vérification que le point de coupure est à plus d'un mètre des extrémités du segment
    IF ST_length(geom_init)<1 OR ST_length(geom_term)<1 THEN
        RAISE EXCEPTION 'Impossible de couper : point trop proche de l''extrémité';
    END IF;

    -- Modification du segment :
    -- OA----------(O)----------OB devient  OA----------(O)
    UPDATE veloroutes.segment s
    SET
        geom = geom_init
    WHERE id_segment = seg.id_segment;

    -- Création d'un nouveau segment :
    -- (O)----------OB
    -- On récupère les valeurs issues du segment d'origine
    INSERT INTO veloroutes.segment(
        annee_ouverture, date_saisie, src_geom, src_annee, avancement, revetement,
        statut, gestionnaire, proprietaire, precision, sens_unique, geometrie_fictive,
        desserte_college, amenagement, amenagement_type,
        geom
    )
    VALUES(
        seg.annee_ouverture, seg.date_saisie, seg.src_geom, seg.src_annee, seg.avancement, seg.revetement,
        seg.statut, seg.gestionnaire, seg.proprietaire, seg.precision, seg.sens_unique, seg.geometrie_fictive,
        seg.desserte_college, seg.amenagement, seg.amenagement_type,
        geom_term
    )
    RETURNING id_segment into id_new_seg;

    -- Création des nouveaux elements de portion si besoin
    INSERT INTO veloroutes.element(id_portion,id_segment)
    SELECT veloroutes.element.id_portion, id_new_seg
    FROM veloroutes.element
    WHERE veloroutes.element.id_segment = id_seg;

    -- Return 1
    RETURN 1;

END;$$;

-- insert_import_veloroutes_segment(integer)
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
        annee_ouverture,
        desserte_college,
        amenagement,
        amenagement_type)
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
        END AS annee_ouverture,
        'F' AS desserte_college,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(code) = UPPER(statut))
            THEN (SELECT v.amenagement FROM veloroutes.amenagement_type_segment_val as v WHERE UPPER(v.code) = UPPER(statut) LIMIT 1)
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(libelle) = UPPER(statut))
            THEN (SELECT v.amenagement FROM veloroutes.amenagement_type_segment_val as v WHERE UPPER(v.libelle) = UPPER(statut) LIMIT 1)
        END AS amenagement,
        CASE
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(code) = UPPER(statut))
            THEN (SELECT v.code FROM veloroutes.amenagement_type_segment_val as v WHERE UPPER(v.code) = UPPER(statut) LIMIT 1)
            WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(libelle) = UPPER(statut))
            THEN (SELECT v.code FROM veloroutes.amenagement_type_segment_val as v WHERE UPPER(v.libelle) = UPPER(statut) LIMIT 1)
        END AS amenagement_type
    FROM imports.import_segment as iis
    WHERE iis.id_import = idimport
    RETURNING id_segment into id_veloroutes;

    RETURN id_veloroutes;
END;
    $$;

COMMIT;
