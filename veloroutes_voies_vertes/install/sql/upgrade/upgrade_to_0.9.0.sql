BEGIN;

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
        est_inscrit
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
        NEW.est_inscrit
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
        est_inscrit = NEW.est_inscrit
    WHERE id_itineraire = OLD.id_itineraire;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_itineraire_update() IS 'Effectue les mises à jour dans la table itineraire lors de la saisie dans la vue v_itineraire';


-- VIEW v_itineraire
DROP VIEW veloroutes.v_itineraire;
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
    ST_Length(v_itin_geom.collect_geom) AS longueur
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_itineraire)));

COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent';


-- v_itineraire delete_v_itineraire
CREATE TRIGGER delete_v_itineraire INSTEAD OF DELETE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_delete();


-- TRIGGER delete_v_itineraire ON v_itineraire
COMMENT ON TRIGGER delete_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_delete()';


-- v_itineraire insert_v_itineraire
CREATE TRIGGER insert_v_itineraire INSTEAD OF INSERT ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_insert();


-- TRIGGER insert_v_itineraire ON v_itineraire
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';


-- v_itineraire update_v_itineraire
CREATE TRIGGER update_v_itineraire INSTEAD OF UPDATE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_update();


-- TRIGGER update_v_itineraire ON v_itineraire
COMMENT ON TRIGGER update_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_update()';


-- itineraire
ALTER TABLE veloroutes.itineraire
    DROP COLUMN type_pluriannuel,
    DROP COLUMN annee_subv,
    DROP COLUMN mont_subv;

COMMIT;
