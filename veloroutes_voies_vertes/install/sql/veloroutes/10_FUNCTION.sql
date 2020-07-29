--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 10.6 (Debian 10.6-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

-- insert_veloroutes_itineraire()
CREATE FUNCTION veloroutes.insert_veloroutes_itineraire() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	INSERT INTO veloroutes.itineraire(
		site_web,
		numero,
		nom_usage,
		nom_officiel,
		niveau_schema,
		est_inscrit,
		depart,
		arrivee,
		annee_inscription,
		annee_subv,
		mont_subv,
		annee_ouverture)
	SELECT
		site_web,
		numero,
		nom_usage,
		nom_officiel,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE code = niveau_schema)
			THEN niveau_schema
			WHEN EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE libelle = niveau_schema)
			THEN (SELECT code FROM veloroutes.niveau_administratif_val as v WHERE v.libelle = niveau_schema LIMIT 1)
			ELSE niveau_schema
		END AS niveau_schema,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = est_inscrit)
			THEN est_inscrit
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = est_inscrit)
			THEN (SELECT code FROM veloroutes.booleen_val as v WHERE v.libelle = est_inscrit LIMIT 1)
			--WHEN est_inscrit = 'non' THEN 'F'
			--WHEN est_inscrit = 'oui' THEN 'T'
			ELSE est_inscrit
		END AS est_inscrit,
		depart,
		arrivee,
		CASE
			WHEN substring(annee_inscription from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_inscription from 1 for 10),'DD-MM-YYYY')
			WHEN substring(annee_inscription from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_inscription from 1 for 10),'DD-MM-YYYY')
		END AS annee_inscription,
		CASE
			WHEN substring(annee_subv from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_subv from 1 for 10),'DD-MM-YYYY')
			WHEN substring(annee_subv from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_subv from 1 for 10),'DD-MM-YYYY')
		END AS annee_subv,
		CAST (mont_subv AS real),
		CASE
			WHEN substring(annee_ouverture from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
			WHEN substring(annee_ouverture from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
		END AS annee_ouverture
	FROM imports.import_itineraire
	WHERE numero IS NOT NULL
	AND (EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE code = niveau_schema)
		OR EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE libelle = niveau_schema)
		OR niveau_schema IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = est_inscrit)
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = est_inscrit)
		 OR est_inscrit IS NULL);

	RAISE NOTICE 'Les lignes correctes de itineraire ont été importées dans veloroutes';
    RETURN 1;
END$$;


-- insert_veloroutes_portion()
CREATE FUNCTION veloroutes.insert_veloroutes_portion() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	--creation des tables element et etape
    -- import_element
    CREATE TABLE imports.import_element(
		id serial,
        id_portion integer,
        id_segment integer);
     -- import_etape
    CREATE TABLE imports.import_etape(
		id serial,
        id_portion integer,
        id_itineraire integer);

     -- remplissage de import_etape
	INSERT INTO imports.import_etape(
        id_portion,
        id_itineraire)
    SELECT
		id_import,
        lien_itin
    FROM imports.import_portion
    WHERE imports.import_portion.lien_itin IS NOT NULL;

     -- remplissage de element_import
    INSERT INTO imports.import_element(
		id_portion,
        id_segment)
	SELECT
        id_import,
		lien_segm
    FROM imports.import_portion
    WHERE imports.import_portion.lien_segm IS NOT NULL;

    -- adaptation et insertion des portions dans véloroutes
	INSERT INTO veloroutes.portion(
		type_portion,
		mont_subv,
		annee_subv,
		id_local,
		id_on3v,
		nom,
		description
		)
	SELECT
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE code = type_portion)
			THEN type_portion
			WHEN EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE libelle = type_portion)
			THEN (SELECT code FROM veloroutes.portion_val as v WHERE v.libelle = type_portion LIMIT 1)
		END AS type_portion,
		CAST (mont_subv AS real),
		CASE
			WHEN substring(annee_subv from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_subv from 1 for 10),'DD-MM-YYYY')
			WHEN substring(annee_subv from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_subv from 1 for 10),'DD-MM-YYYY')
		END AS annee_subv,
		id_local,
		id_on3v,
		nom,
		description
	FROM imports.import_portion
	WHERE type_portion IS NOT NULL
	AND (EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE code = type_portion)
		OR EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE libelle = type_portion));

	RAISE NOTICE 'Les lignes correctes de portion ont été importées dans veloroutes';
	RETURN 1;
END$$;


-- insert_veloroutes_segment()
CREATE FUNCTION veloroutes.insert_veloroutes_segment() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE code = statut)
			THEN statut
			WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE libelle = statut)
			THEN (SELECT code FROM veloroutes.statut_segment_val as v WHERE v.libelle = statut LIMIT 1)
		END AS statut,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE code = CAST (avancement AS INTEGER))
			THEN CAST (avancement AS INTEGER)
			WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE libelle = avancement)
			THEN (SELECT code FROM veloroutes.etat_avancement_val as v WHERE v.libelle = avancement LIMIT 1)
		END AS avancement,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE code = revetement)
			THEN revetement
			WHEN EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE libelle = revetement)
			THEN (SELECT code FROM veloroutes.revetement_val as v WHERE v.libelle = revetement LIMIT 1)
			ELSE revetement
		END AS revetement,
		proprietaire,
		gestionnaire,
		precision,
		src_geom,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = sens_unique)
			THEN sens_unique
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = sens_unique)
			THEN (SELECT code FROM veloroutes.booleen_val as v WHERE v.libelle = sens_unique LIMIT 1)
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = geometrie_fictive)
			THEN geometrie_fictive
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = geometrie_fictive)
			THEN (SELECT code FROM veloroutes.booleen_val as v WHERE v.libelle = geometrie_fictive LIMIT 1)
			ELSE geometrie_fictive
		END AS geometrie_fictive,
		CASE
			WHEN substring(annee_ouverture from 1 for 10) LIKE '__-__-____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
			WHEN substring(annee_ouverture from 1 for 10) LIKE '__/__/____' THEN to_date(substring(annee_ouverture from 1 for 10),'DD-MM-YYYY')
		END AS annee_ouverture
	FROM imports.import_segment
	WHERE avancement IS NOT null
	AND statut IS NOT null
	-- check that enumerate types are correct
	AND (EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE code = CAST (avancement AS INTEGER))
		 OR EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE libelle = avancement))
	AND (EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE code = statut)
		 OR EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE libelle = statut))
	AND (EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE code = revetement)
		 OR EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE libelle = revetement)
		 OR revetement IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = sens_unique)
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = sens_unique)
		 OR sens_unique IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = geometrie_fictive)
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = geometrie_fictive)
		 OR geometrie_fictive IS NULL);

	RAISE NOTICE 'Les lignes correctes de segment ont été importées dans veloroutes';
	RETURN 1;
END$$;


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
	INSERT INTO veloroutes.segment(annee_ouverture, date_saisie, src_geom, src_annee,avancement, revetement, statut, gestionnaire, proprietaire, precision, sens_unique, geometrie_fictive,geom)
	VALUES(seg.annee_ouverture, seg.date_saisie, seg.src_geom, seg.src_annee, seg.avancement, seg.revetement, seg.statut, seg.gestionnaire, seg.proprietaire, seg.precision, seg.sens_unique, seg.geometrie_fictive, geom_term)
	RETURNING id_segment into id_new_seg;

	-- Création des nouveaux elements de portion si besoin
	INSERT INTO veloroutes.element(id_portion,id_segment)
    SELECT veloroutes.element.id_portion, id_new_seg
	FROM veloroutes.element
	WHERE veloroutes.element.id_segment = id_seg;

	-- Return 1
    RETURN 1;

END;$$;


-- v_itineraire_insert()
CREATE FUNCTION veloroutes.v_itineraire_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE iti_id int; ids text;

BEGIN

	--INSERT a new row in itineraire
    INSERT INTO veloroutes.itineraire(numero, nom_officiel, nom_usage, depart, arrivee, annee_inscription, site_web, annee_ouverture, niveau_schema, est_inscrit)
    VALUES(NEW.numero, NEW.nom_officiel, NEW.nom_usage, NEW.depart, NEW.arrivee, NEW.annee_inscription, NEW.site_web, NEW.annee_ouverture, NEW.niveau_schema, NEW.est_inscrit)
    RETURNING id_iti into iti_id;

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


-- FUNCTION v_itineraire_insert()
COMMENT ON FUNCTION veloroutes.v_itineraire_insert() IS 'Effectue les insertions dans les tables itineraire et etape lors de la saisie dans la vue v_itineraire';


-- v_portion_insert()
CREATE FUNCTION veloroutes.v_portion_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE pid int; geo geometry;ids text;

BEGIN
	--INSERT a new portion
    INSERT INTO veloroutes.portion(nom, description,type_portion)
    VALUES(NEW.nom, NEW.description, NEW.type_portion)
    RETURNING id_portion into pid;

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


-- FUNCTION v_portion_insert()
COMMENT ON FUNCTION veloroutes.v_portion_insert() IS 'Effectue les insertions dans les tables portion et element lors de la saisie dans la vue v_portion';


--
-- PostgreSQL database dump complete
--

