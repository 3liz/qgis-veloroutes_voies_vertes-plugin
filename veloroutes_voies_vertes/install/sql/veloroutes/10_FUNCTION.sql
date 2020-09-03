--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Debian 10.14-1.pgdg100+1)
-- Dumped by pg_dump version 10.14 (Debian 10.14-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- export_element()
CREATE FUNCTION veloroutes.export_element() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.element;
	CREATE TABLE exports.element AS
	(SELECT
	 	--identifiant de veloroutes à retransformer?
		id_portion AS ID_PORTION,
	 	--identifiant de veloroutes à retrasnformer?
	 	id_segment AS ID_SEGMENT
	FROM veloroutes.element);
	RETURN 1;
END;$$;


-- export_itineraire()
CREATE FUNCTION veloroutes.export_itineraire() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.itineraire;
	CREATE TABLE exports.itineraire AS
	SELECT
		--ici c'est l'identifiant de veloroutes
		id_iti AS ID_ITI,
		-- ici on remettrait l'ancien identifiant ?
		--(SELECT id_import FROM imports.import_itineraire WHERE id_iti=id_iti)
		--AS ID_ITI,
		numero AS NUMERO,
		nom_officiel AS NOM_OFF,
		nom_usage AS NOM_USAGE,
		depart AS DEPART,
		arrivee AS ARRIVEE,
		est_inscrit AS EST_INSCRIT,
		niveau_schema AS NIV_INSCRI,
		annee_inscription AS AN_INSCRI,
		site_web AS SITE_WEB,
		annee_ouverture AS AN_OUVERT
	FROM veloroutes.itineraire;
	RETURN 1;
END;$$;


-- export_liaison()
CREATE FUNCTION veloroutes.export_liaison() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.liaison;
	CREATE TABLE exports.liaison AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
	 	precision AS PRECISION,
	 	src_geom AS SRC_GEOM,
	 	src_annee AS SRC_ANNEE,
	 	geom
	FROM veloroutes.liaison);
	RETURN 1;
END;$$;


-- export_poi_acces()
CREATE FUNCTION veloroutes.export_poi_acces() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.poi_acces;
	CREATE TABLE exports.poi_acces AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
	 	(SELECT av.libelle FROM veloroutes.poi_acces_val AS av WHERE av.code = type) AS TYPE,
	 	description AS DESCRIPT,
	 	CASE
	 		WHEN EXISTS (SELECT 1 FROM exports.poi_portion AS pp WHERE pp.id_poi = poi.id_poi)
	 		THEN (SELECT etp.etape
				  FROM veloroutes.etape as etp
				  JOIN exports.poi_portion as pp ON pp.id_portion = etp.id_portion
				  WHERE pp.id_poi = poi.id_poi
				  )
	 		ELSE NULL
	 	END AS ID_ETAPE,
	 	geom
	FROM veloroutes.poi_acces as poi);
	RETURN 1;
END;$$;


-- export_poi_portion()
CREATE FUNCTION veloroutes.export_poi_portion() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	DROP TABLE IF EXISTS exports.poi_portion;
	CREATE TABLE exports.poi_portion (
		id serial,
    	ID_POI integer,
		ID_PORTION integer);

	ALTER TABLE exports.poi_portion
    OWNER to enolasengeissen;

	-- On remplit avec les poi à moins de 100m d'une portion cyclable
	INSERT INTO exports.poi_portion(id_poi, id_portion)
	SELECT
		poi.id_poi AS ID_POI,
		vp.id_portion AS ID_PORTION
	FROM veloroutes.v_portion as vp, veloroutes.poi_service as poi
	WHERE ST_Distance(poi.geom, vp.geom)< 100;

	--Insert FROM poi_acces
	INSERT INTO exports.poi_portion(id_poi, id_portion)
	SELECT
		poi.id_poi AS ID_POI,
		vp.id_portion AS ID_PORTION
	FROM veloroutes.v_portion as vp, veloroutes.poi_acces as poi
	WHERE ST_Distance(poi.geom, vp.geom)< 100;

	--Insert FROM poi_tourisme
	INSERT INTO exports.poi_portion(id_poi, id_portion)
	SELECT
		poi.id_poi AS ID_POI,
		vp.id_portion AS ID_PORTION
	FROM veloroutes.v_portion as vp, veloroutes.poi_tourisme as poi
	WHERE ST_Distance(poi.geom, vp.geom)< 100;

	RETURN 1;
END;$$;


-- export_poi_service()
CREATE FUNCTION veloroutes.export_poi_service() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.poi_service;
	CREATE TABLE exports.poi_service AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
		(SELECT sv.libelle FROM veloroutes.poi_service_val AS sv WHERE sv.code = type) AS TYPE,
	 	description AS DESCRIPT,
	 	geom
	FROM veloroutes.poi_service);
	RETURN 1;
END;$$;


-- export_poi_tourisme()
CREATE FUNCTION veloroutes.export_poi_tourisme() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.poi_tourisme;
	CREATE TABLE exports.poi_tourisme AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
	 	(SELECT tv.libelle FROM veloroutes.poi_tourisme_val AS tv WHERE tv.code = type) AS TYPE,
	 	description AS DESCRIPT,
	 	geom
	FROM veloroutes.poi_tourisme);
	RETURN 1;
END;$$;


-- export_portion()
CREATE FUNCTION veloroutes.export_portion() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.portion;
	CREATE TABLE exports.portion AS
	(SELECT
		vp.id_local AS ID_LOCAL,
		vp.id_on3v AS ID_ON3V,
		vp.nom AS NOM,
		(SELECT pv.libelle FROM veloroutes.portion_val AS pv WHERE pv.code = vp.type_portion) AS TYPE,
		vp.description AS DESCRIPTION,
		--id dans veloroutes
		vp.id_portion AS id,
	 	--id dans veloroutes
	 	CASE
	 		WHEN EXISTS (SELECT 1 FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
	 		THEN (SELECT etp.id_itineraire FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
	 		ELSE NULL
	 	END AS ID_ITI,
		CASE
	 		WHEN EXISTS (SELECT 1 FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
	 		THEN (SELECT etp.etape FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
	 		ELSE NULL
	 	END AS ORDRE_ETAP,
		vp.geom
	FROM veloroutes.v_portion as vp);
	RETURN 1;
END;$$;


-- export_repere()
CREATE FUNCTION veloroutes.export_repere() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.repere;
	CREATE TABLE exports.repere AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
	 	libelle AS LIBELLE,
	 	(SELECT r.libelle FROM veloroutes.repere_val AS r WHERE r.code = type_noeud) AS TYPE_NOEUD,
	 	geom
	FROM veloroutes.repere);
	RETURN 1;
END;$$;


-- export_segment()
CREATE FUNCTION veloroutes.export_segment() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	DROP TABLE IF EXISTS exports.segment;
	CREATE TABLE exports.segment AS
	(SELECT
		id_local as ID_LOCAL,
	 	id_on3V AS ID_ON3V,
	 	(SELECT ss.libelle FROM veloroutes.statut_segment_val AS ss WHERE ss.code = statut) as STATUT,
	 	(SELECT av.libelle FROM veloroutes.etat_avancement_val AS av WHERE av.code = avancement) AS AVANCEMENT,
	 	annee_ouverture AS AN_OUVERT,
	 	sens_unique AS SENSUNIQUE,
	 	(SELECT rvt.libelle FROM veloroutes.revetement_val AS rvt WHERE rvt.code = revetement) AS REVETEMENT,
	 	gestionnaire AS GESTION,
	 	proprietaire AS PROPRIETE,
	 	date_saisie AS DATESAISIE,
	 	geometrie_fictive AS FICTIF,
	 	precision AS PRECISION,
	 	src_geom AS SRC_GEOM,
	 	src_annee AS SRC_ANNEE,
	 	geom
	FROM veloroutes.segment);
	RETURN 1;
END;$$;


-- export_table(text)
CREATE FUNCTION veloroutes.export_table(tablename text) RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	EXECUTE format('
	DROP TABLE IF EXISTS exports.%s;
	CREATE TABLE exports.%s AS
	(SELECT
		libelle AS LIBELLE,
		code AS CODE
	FROM veloroutes.%s)',tablename,tablename,tablename);
	RETURN 1;
END;$$;


-- import_veloroutes_itineraire()
CREATE FUNCTION veloroutes.import_veloroutes_itineraire() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	-- adaptation et insertion des itineraires dans véloroutes
	UPDATE imports.import_itineraire
	SET id_iti = (SELECT veloroutes.insert_import_veloroutes_itineraire(id_import))
	WHERE numero IS NOT NULL
	AND (EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE code = niveau_schema)
		OR EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE libelle = niveau_schema)
		OR niveau_schema IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE code = est_inscrit)
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE libelle = est_inscrit)
		 OR est_inscrit IS NULL);


	RAISE NOTICE 'Les lignes correctes de itineraire ont été importées dans veloroutes';

	--mise à jour de etape avec les id_itineraire de veloroutes
	IF EXISTS (
		SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'imports'
        AND table_name = 'import_etape')
	THEN
	UPDATE imports.import_etape
	SET id_itineraire =(
		SELECT CAST(ii.id_iti AS integer)
		FROM imports.import_itineraire as ii
		WHERE ii.id_import = imports.import_etape.id_itineraire);

	RAISE NOTICE 'La table etape a été mise à jour dans le schéma d import';

	INSERT INTO veloroutes.etape(id_portion, id_itineraire)
	SELECT id_portion, id_itineraire
	FROM imports.import_etape as iet
	WHERE iet.id_portion IS NOT NULL
	AND iet.id_itineraire IS NOT NULL;

	RAISE NOTICE 'La table étape a été importée dans veloroutes';

	END IF;
    RETURN 1;
END$$;


-- import_veloroutes_liaison()
CREATE FUNCTION veloroutes.import_veloroutes_liaison() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	INSERT INTO veloroutes.liaison(
	"precision", src_geom, src_annee, id_local, id_repere, id_poi, geom, id_liaison, id_on3v)
	SELECT
		precision, src_geom, src_annee, id_local, id_repere, id_poi, geom, id_liaison, id_on3v
	FROM imports.import_liaison;

	RAISE NOTICE 'Les lignes correctes de liaison ont été importées dans veloroutes';

	RETURN 1;
END$$;


-- import_veloroutes_poi(text)
CREATE FUNCTION veloroutes.import_veloroutes_poi(poitype text) RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	EXECUTE format('
		INSERT INTO veloroutes.%s(
			description, "type", id_local, geom, id_poi, id_on3v)
		SELECT
			description,
			CASE
				WHEN EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE code = type)
				THEN type
				WHEN EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE libelle = type)
				THEN (SELECT code FROM veloroutes.%s_val as v WHERE v.libelle = type LIMIT 1)
			END AS type,
			id_local,
			geom,
			id_poi,
			id_on3v
		FROM imports.import_%s
		WHERE (EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE code = type)
		OR EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE libelle = type)
		OR type IS NULL)', poitype, poitype, poitype, poitype, poitype, poitype, poitype);

	RAISE NOTICE 'Les lignes correctes de % ont été importées dans veloroutes', poitype;

	RETURN 1;
END$$;


-- import_veloroutes_portion()
CREATE FUNCTION veloroutes.import_veloroutes_portion() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	--creation des tables element et etape
    -- import_element
    DROP TABLE IF EXISTS imports.import_element;
    CREATE TABLE imports.import_element(
		id serial,
        id_portion integer,
        id_segment integer);
     -- import_etape
     DROP TABLE IF EXISTS imports.import_etape;
    CREATE TABLE imports.import_etape(
		id serial,
        id_portion integer,
        id_itineraire integer);

    -- adaptation et insertion des portions dans véloroutes
	UPDATE imports.import_portion
	SET id_portion = (SELECT veloroutes.insert_import_veloroutes_portion(id_import))
	WHERE type_portion IS NOT NULL
	AND (EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE code = type_portion)
		OR EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE libelle = type_portion));

	RAISE NOTICE 'Les lignes correctes de portion ont été importées dans veloroutes';

	-- remplissage de import_etape
	INSERT INTO imports.import_etape(
        id_portion,
        id_itineraire)
    SELECT
		CAST(id_portion AS integer),
        lien_itin
    FROM imports.import_portion
    WHERE imports.import_portion.lien_itin IS NOT NULL
	AND id_portion IS NOT NULL;

     -- remplissage de element_import
    INSERT INTO imports.import_element(
		id_portion,
        id_segment)
	SELECT
        CAST(id_portion AS integer),
		lien_segm
    FROM imports.import_portion
    WHERE imports.import_portion.lien_segm IS NOT NULL
	AND id_portion IS NOT NULL;

	RETURN 1;
END$$;


-- import_veloroutes_repere()
CREATE FUNCTION veloroutes.import_veloroutes_repere() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	INSERT INTO veloroutes.repere(
	libelle, numero_serie, id_local, type_noeud, geom, id_repere, id_on3v)
	SELECT
		libelle,
		numero_serie,
		id_local,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE code = type_noeud)
			THEN type_noeud
			WHEN EXISTS (SELECT 1 FROM veloroutes.reperef_val WHERE libelle = type_noeud)
			THEN (SELECT code FROM veloroutes.repere_val as v WHERE v.libelle = type_noeud LIMIT 1)
		END AS type_noeud,
		geom,
		id_repere,
		id_on3v
	FROM imports.import_repere
	WHERE (EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE code = type_noeud)
		OR EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE libelle = type_noeud));

	RAISE NOTICE 'Les lignes correctes de repere ont été importées dans veloroutes';

	RETURN 1;
END$$;


-- import_veloroutes_segment()
CREATE FUNCTION veloroutes.import_veloroutes_segment() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	UPDATE imports.import_segment
	SET id_segment = (SELECT veloroutes.insert_import_veloroutes_segment(id_import))
	WHERE avancement IS NOT null
	AND statut IS NOT null
	-- check that enumerate types are correct
	AND (EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE CAST (code AS text) = avancement)
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

	--mise à jour de element avec les id_segment de veloroutes
	IF EXISTS (
		SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'imports'
        AND table_name = 'import_element')
	THEN
	UPDATE imports.import_element
	SET id_segment =(
		SELECT CAST(iis.id_segment AS integer)
		FROM imports.import_segment as iis
		WHERE iis.id_import = imports.import_element.id_segment);

	RAISE NOTICE 'La table element a été mise à jour dans le schéma d import';

	INSERT INTO veloroutes.element(id_portion, id_segment)
		SELECT id_portion, id_segment
		FROM imports.import_element as iel
		WHERE iel.id_portion IS NOT NULL
		AND iel.id_segment IS NOT NULL;

	RAISE NOTICE 'La table element a été insérée dans véloroutes';

	END IF;

	RETURN 1;
END$$;


-- insert_import_veloroutes_itineraire(integer)
CREATE FUNCTION veloroutes.insert_import_veloroutes_itineraire(idimport integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$DECLARE id_veloroutes integer;
BEGIN
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
	FROM imports.import_itineraire as ii
	WHERE ii.id_import = idimport
	RETURNING id_iti into id_veloroutes;

	RETURN id_veloroutes;
END;
	$$;


-- insert_import_veloroutes_portion(integer)
CREATE FUNCTION veloroutes.insert_import_veloroutes_portion(idimport integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$DECLARE id_veloroutes integer;
BEGIN
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
	FROM imports.import_portion as ip
	WHERE ip.id_import = idimport
	RETURNING id_portion into id_veloroutes;

	RETURN id_veloroutes;
END;
	$$;


-- insert_import_veloroutes_segment(integer)
CREATE FUNCTION veloroutes.insert_import_veloroutes_segment(idimport integer) RETURNS integer
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE code = statut)
			THEN statut
			WHEN EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE libelle = statut)
			THEN (SELECT code FROM veloroutes.statut_segment_val as v WHERE v.libelle = statut LIMIT 1)
		END AS statut,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE CAST (code AS text) = avancement)
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
	FROM imports.import_segment as iis
	WHERE iis.id_import = idimport
	RETURNING id_segment into id_veloroutes;

	RETURN id_veloroutes;
END;
	$$;


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

