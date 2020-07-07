--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- numserie()
CREATE FUNCTION veloroutes.numserie() RETURNS trigger
    LANGUAGE plpgsql
    AS $$    BEGIN
        IF NEW.type_noeud = 'CPT' THEN
            IF NEW.numero_serie IS NULL THEN
				RAISE EXCEPTION 'numero_serie ne peut être NULL si type_noeud vaut CPT';
			END IF;
		END IF;
        RETURN NEW;
    END;
$$;


-- FUNCTION numserie()
COMMENT ON FUNCTION veloroutes.numserie() IS 'Empêche que le numéro de série soit NULL si le noeud est un capteur';


-- revet()
CREATE FUNCTION veloroutes.revet() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    BEGIN
        IF NEW.avancement = 1 THEN
			IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si avancement vaut 1';
			END IF;
        END IF;
        IF NEW.geometrie_fictive ='T' THEN
            IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si la geom est fictive';
			END IF;
        END IF;
        RETURN NEW;
    END;
$$;


-- FUNCTION revet()
COMMENT ON FUNCTION veloroutes.revet() IS 'Force le revêtement à être NULL si le segment est en projet ou fictif';


-- split(integer, real, real)
CREATE FUNCTION veloroutes.split(id_seg integer, xnode real, ynode real) RETURNS boolean
    LANGUAGE plpgsql
    AS $$DECLARE
	cut geometry;
	seg record;
    geom_init geometry;
    geom_term geometry;

BEGIN

	--Récupération du point cliqué 
	SELECT ST_GeomFromText('POINT(' || xnode || ' ' || ynode || ')',2154) INTO cut;
		
	--Récupération du segment cliqué
	SELECT *
	FROM veloroutes.segment 
	WHERE veloroutes.segment.id_local=id_seg
	INTO seg;
	
	geom_init := ST_LineSubstring(seg.geom, 0, ST_LineLocatePoint(seg.geom, cut));
    geom_term := ST_LineSubstring(seg.geom, ST_LineLocatePoint(seg.geom, cut), 1);
	
	-- Modification du segment :
    -- OA----------(O)----------OB devient  OA----------(O)
	UPDATE veloroutes.segment s
	SET
		geom = ST_Snap(geom_init, cut, 0.05)
	WHERE id_local = seg.id_local;
	
	-- Création d'un nouveau segment :
    -- (O)----------OB
    -- On récupère les valeurs issues du segment d'orig
	INSERT INTO veloroutes.segment(annee_ouverture, date_saisie, src_geom, src_annee,avancement, revetement, statut, gestionnaire, proprietaire, precision, sens_unique, geometrie_fictive,geom)
	VALUES(seg.annee_ouverture, seg.date_saisie, seg.src_geom, seg.src_annee, seg.avancement, seg.revetement, seg.statut, seg.gestionnaire, seg.proprietaire, seg.precision, seg.sens_unique, seg.geometrie_fictive, ST_Snap(geom_term, cut, 0.05));

	-- Return 1
    RETURN 1;
	
END;$$;


-- v_itineraire_insert()
CREATE FUNCTION veloroutes.v_itineraire_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE iti_id int;

BEGIN
    INSERT INTO veloroutes.itineraire(numero, nom_officiel, nom_usage, depart, arrivee, annee_inscription, site_web, annee_ouverture, niveau_schema, est_inscrit)
    VALUES(NEW.numero, NEW.nom_officiel, NEW.nom_usage, NEW.depart, NEW.arrivee, NEW.annee_inscription, NEW.site_web, NEW.annee_ouverture, NEW.niveau_schema, NEW.est_inscrit)
    RETURNING id_local into iti_id;

	INSERT INTO veloroutes.etape(id_itineraire,id_portion)
    SELECT iti_id, vp.id_local
	FROM veloroutes.v_portion vp
	WHERE ST_DWithin(NEW.geom, vp.geom,0.01);

 	RETURN NEW;

END;$$;


-- FUNCTION v_itineraire_insert()
COMMENT ON FUNCTION veloroutes.v_itineraire_insert() IS 'Effectue les insertions dans les tables itineraire et etape lors de la saisie dans la vue v_itineraire';


-- v_portion_insert()
CREATE FUNCTION veloroutes.v_portion_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE pid int; geo geometry;

BEGIN

    INSERT INTO veloroutes.portion(nom, description,type_portion)
    VALUES(NEW.nom, NEW.description, NEW.type_portion)
    RETURNING id_local into pid;

	INSERT INTO veloroutes.element(id_portion,id_segment)
    SELECT pid, veloroutes.segment.id_local
	FROM veloroutes.segment
	WHERE ST_DWithin(veloroutes.segment.geom,NEW.geom, 0.01)
	AND ST_Touches(veloroutes.segment.geom, NEW.geom)=FALSE;
 	RETURN NEW;

END;$$;


-- FUNCTION v_portion_insert()
COMMENT ON FUNCTION veloroutes.v_portion_insert() IS 'Effectue les insertions dans les tables portion et element lors de la saisie dans la vue v_portion';


--
-- PostgreSQL database dump complete
--

