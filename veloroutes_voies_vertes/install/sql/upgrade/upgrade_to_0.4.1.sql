BEGIN;

DROP SCHEMA IF EXISTS exports CASCADE;

DROP VIEW IF EXISTS veloroutes.v_itineraire;
DROP VIEW IF EXISTS veloroutes.v_itin_geom;

-- Alter Table
ALTER TABLE veloroutes.itineraire
  RENAME COLUMN id_iti TO id_itineraire;

-- Alter Sequence
ALTER SEQUENCE veloroutes.itineraire_id_iti_seq RENAME TO itineraire_id_itineraire_seq;
ALTER SEQUENCE veloroutes.itineraire_id_itineraire_seq OWNED BY veloroutes.itineraire.id_itineraire;

-- itineraire id_iti
ALTER TABLE ONLY veloroutes.itineraire ALTER COLUMN id_itineraire SET DEFAULT nextval('veloroutes.itineraire_id_itineraire_seq'::regclass);

-- itineraire.id_iti
COMMENT ON COLUMN veloroutes.itineraire.id_itineraire IS 'Identifiant de l''itinéraire cyclable';

-- v_itin_geom
CREATE VIEW veloroutes.v_itin_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    etape.id_itineraire
   FROM ((((veloroutes.etape
     JOIN veloroutes.portion ON ((portion.id_portion = etape.id_portion)))
     JOIN veloroutes.element ON ((element.id_portion = portion.id_portion)))
     JOIN veloroutes.segment ON ((segment.id_segment = element.id_segment)))
     JOIN veloroutes.itineraire ON ((etape.id_itineraire = itineraire.id_itineraire)))
  GROUP BY etape.id_itineraire;

-- VIEW v_itin_geom
COMMENT ON VIEW veloroutes.v_itin_geom IS 'Vue intermédiaire qui joint les itinéraires aux collections de géométries des segments qui les composent
';

-- v_itineraire
CREATE VIEW veloroutes.v_itineraire AS
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
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_itineraire)));


-- VIEW v_itineraire
COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent
';

-- v_itineraire insert_v_itineraire
CREATE TRIGGER insert_v_itineraire INSTEAD OF INSERT ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_insert();

-- TRIGGER insert_v_itineraire ON v_itineraire
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';

-- v_itineraire_insert()
CREATE OR REPLACE FUNCTION veloroutes.v_itineraire_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE iti_id int; ids text;

BEGIN

	--INSERT a new row in itineraire
    INSERT INTO veloroutes.itineraire(numero, nom_officiel, nom_usage, depart, arrivee, annee_inscription, site_web, annee_ouverture, niveau_schema, est_inscrit)
    VALUES(NEW.numero, NEW.nom_officiel, NEW.nom_usage, NEW.depart, NEW.arrivee, NEW.annee_inscription, NEW.site_web, NEW.annee_ouverture, NEW.niveau_schema, NEW.est_inscrit)
    RETURNING id_itineraire into iti_id;

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

COMMIT;
