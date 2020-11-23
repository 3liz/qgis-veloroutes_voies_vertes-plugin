BEGIN;

-- portion.convention
ALTER TABLE veloroutes.portion ADD COLUMN convention text;
COMMENT ON COLUMN veloroutes.portion.convention IS 'Lien vers la convention';

-- portion.type_pluriannuel
ALTER TABLE veloroutes.portion ADD COLUMN type_pluriannuel text;
COMMENT ON COLUMN veloroutes.portion.type_pluriannuel IS 'Type pluriannuel';

-- VIEW v_portion
CREATE OR REPLACE VIEW veloroutes.v_portion AS
 SELECT public.st_setsrid(public.st_geomfromtext('LINESTRING(0 0, 0 0)'::text), 2154) AS geom,
    0 AS id_portion,
    ''::text AS nom,
    ''::text AS description,
    'ETP'::text AS type_portion,
    ''::text AS id_on3v,
    ''::text AS id_local,
    0.0 AS mont_subv,
    ''::text AS annee_subv,
    ''::text AS convention,
    ''::text AS type_pluriannuel,
    0.0 AS longueur
  WHERE (( SELECT count(*) AS count
           FROM veloroutes.v_port_geom) = 0)
UNION ALL
 SELECT v_port_geom.collect_geom AS geom,
    portion.id_portion,
    portion.nom,
    portion.description,
    portion.type_portion,
    portion.id_on3v,
    portion.id_local,
    portion.mont_subv,
    portion.annee_subv,
    portion.convention,
    portion.type_pluriannuel,
    ST_Length(v_port_geom.collect_geom) AS longueur
   FROM (veloroutes.portion
     JOIN veloroutes.v_port_geom ON ((portion.id_portion = v_port_geom.id_portion)));

COMMENT ON VIEW veloroutes.v_portion IS 'Vue qui joint les portions aux collections de géométries des segments qui les composent';


-- FUNCTION v_portion_insert()
CREATE OR REPLACE FUNCTION veloroutes.v_portion_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    DECLARE pid int;
            geo geometry;
            ids text;
BEGIN
    --INSERT a new portion
    INSERT INTO veloroutes.portion(
        nom,
        description,
        type_portion,
        id_on3v,
        id_local,
        mont_subv,
        annee_subv,
        convention,
        type_pluriannuel
    ) VALUES (
        NEW.nom,
        NEW.description,
        NEW.type_portion,
        NEW.id_on3v,
        NEW.id_local,
        NEW.mont_subv,
        NEW.annee_subv,
        NEW.convention,
        NEW.type_pluriannuel
    ) RETURNING id_portion into pid;

    --INSERT in element elements of the new portion
    INSERT INTO veloroutes.element(id_portion,id_segment)
    SELECT pid, veloroutes.segment.id_segment
    FROM veloroutes.segment
    --segments must be around the new geometry
    WHERE ST_DWithin(veloroutes.segment.geom,NEW.geom, 0.01)
    --segments that share just one vertex with the new geom are eliminated
    AND ST_Within(veloroutes.segment.geom,ST_Buffer(NEW.geom,1));

    --Warning for the user if the selection includes a piece of segment
    --The selection should only be composed by full segments
    FOR ids IN
        SELECT veloroutes.segment.id_segment
        FROM veloroutes.segment
        --Optional
        WHERE ST_DWithin(veloroutes.segment.geom,NEW.geom, 0.01)
        --Segments whose geometry is only partially included in the selection
        AND ST_Overlaps(veloroutes.segment.geom,NEW.geom)
    LOOP
      RAISE NOTICE 'Le segment (%) ne peut pas être partiellement séléctionné',ids;
    END LOOP;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_portion_insert() IS 'Effectue les insertions dans les tables portion et element lors de la saisie dans la vue v_portion';


-- FUNCTION v_portion_update()
CREATE OR REPLACE FUNCTION veloroutes.v_portion_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    UPDATE veloroutes.portion SET
        nom = NEW.nom,
        description = NEW.description,
        type_portion = NEW.type_portion,
        id_on3v = NEW.id_on3v,
        id_local = NEW.id_local,
        mont_subv = NEW.mont_subv,
        annee_subv = NEW.annee_subv,
        convention = NEW.convention,
        type_pluriannuel = NEW.type_pluriannuel
    WHERE id_portion = OLD.id_portion;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_portion_update() IS 'Effectue les mises à jour dans la table portion lors de la saisie dans la vue v_portion';


-- itineraire.type_pluriannuel
ALTER TABLE veloroutes.itineraire ADD COLUMN type_pluriannuel text;
COMMENT ON COLUMN veloroutes.itineraire.type_pluriannuel IS 'Type pluriannuel';


-- VIEW v_itineraire
CREATE OR REPLACE VIEW veloroutes.v_itineraire AS
 SELECT public.st_setsrid(public.st_geomfromtext('LINESTRING(0 0, 0 0)'::text), 2154) AS geom,
    0 AS id_itineraire,
    ''::text AS numero,
    ''::text AS nom_officiel,
    ''::text AS nom_usage,
    ''::text AS depart,
    ''::text AS arrivee,
    ''::text AS annee_inscription,
    ''::text AS site_web,
    ''::text AS annee_ouverture,
    'DEP'::text AS niveau_schema,
    'F'::text AS est_inscrit,
    0.0 AS mont_subv,
    ''::text AS annee_subv,
    ''::text AS type_pluriannuel,
    0.0 AS longueur
  WHERE (( SELECT count(*) AS count
           FROM veloroutes.v_itin_geom) = 0)
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
    itineraire.annee_subv,
    itineraire.type_pluriannuel,
    ST_Length(v_itin_geom.collect_geom) AS longueur
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_itineraire)));

COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent';


-- FUNCTION v_itineraire_insert()
CREATE OR REPLACE FUNCTION veloroutes.v_itineraire_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE iti_id int; ids text;

BEGIN

    --INSERT a new row in itineraire
    INSERT INTO veloroutes.itineraire(
        numero,
        nom_officiel,
        nom_usage,
        depart,
        arrivee,
        annee_inscription,
        site_web,
        annee_ouverture,
        niveau_schema,
        est_inscrit,
        mont_subv,
        annee_subv,
        type_pluriannuel
    ) VALUES (
        NEW.numero,
        NEW.nom_officiel,
        NEW.nom_usage,
        NEW.depart,
        NEW.arrivee,
        NEW.annee_inscription,
        NEW.site_web,
        NEW.annee_ouverture,
        NEW.niveau_schema,
        NEW.est_inscrit,
        NEW.mont_subv,
        NEW.annee_subv,
        NEW.type_pluriannuel
    ) RETURNING id_itineraire into iti_id;

    --INSERT stages of the itineray in etape
    INSERT INTO veloroutes.etape(id_itineraire,id_portion)
    SELECT iti_id, vp.id_portion
    FROM veloroutes.v_portion vp
    --segments must be around the new geometry
    WHERE ST_DWithin(NEW.geom, vp.geom,0.01)
    --segments that share just one vertex with the new geom are eliminated
    AND ST_Within(vp.geom,ST_Buffer(NEW.geom,1));

    --Warning for the user if the selection includes a piece of portion
    --The selection should only be composed by full portions
    FOR ids IN
        SELECT veloroutes.v_portion.id_portion
        FROM veloroutes.v_portion
        --Optional
        WHERE ST_DWithin(veloroutes.v_portion.geom, NEW.geom, 0.01)
        --Portions whose geometry is only partially included in the selection
        AND ST_Overlaps(veloroutes.v_portion.geom,NEW.geom)
    LOOP
      RAISE NOTICE 'La portion (%) ne peut pas être partiellement séléctionnée',ids;
    END LOOP;
    RETURN NEW;

END;
$$;

COMMENT ON FUNCTION veloroutes.v_itineraire_insert() IS 'Effectue les insertions dans les tables itineraire et etape lors de la saisie dans la vue v_itineraire';


-- FUNCTION v_itineraire_update()
CREATE OR REPLACE FUNCTION veloroutes.v_itineraire_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    UPDATE veloroutes.itineraire SET
        numero = NEW.numero,
        nom_officiel = NEW.nom_officiel,
        nom_usage = NEW.nom_usage,
        depart = NEW.depart,
        arrivee = NEW.arrivee,
        annee_inscription = NEW.annee_inscription,
        site_web = NEW.site_web,
        annee_ouverture = NEW.annee_ouverture,
        niveau_schema = NEW.niveau_schema,
        est_inscrit = NEW.est_inscrit,
        mont_subv = NEW.mont_subv,
        annee_subv = NEW.annee_subv,
        type_pluriannuel = NEW.type_pluriannuel
    WHERE id_itineraire = OLD.id_itineraire;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_itineraire_update() IS 'Effectue les mises à jour dans la table itineraire lors de la saisie dans la vue v_itineraire';

COMMIT;
