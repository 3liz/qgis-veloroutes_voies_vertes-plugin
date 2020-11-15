BEGIN;
-- DROP VIEW
DROP VIEW IF EXISTS veloroutes.v_portion;
DROP VIEW IF EXISTS veloroutes.v_itineraire;

-- Update table veloroutes.itineraire for annee_subv
ALTER TABLE veloroutes.itineraire ALTER COLUMN annee_subv TYPE integer USING EXTRACT(YEAR FROM annee_subv);

-- Update table veloroutes.portion for annee_subv
ALTER TABLE veloroutes.portion ALTER COLUMN annee_subv TYPE integer USING EXTRACT(YEAR FROM annee_subv);

--CREATE VIEW
-- v_itineraire
CREATE VIEW veloroutes.v_itineraire AS
 SELECT v_itin_geom.collect_geom AS geom,
    itineraire.id_iti,
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
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_iti)));

-- VIEW v_itineraire
COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent
';

-- v_portion
CREATE VIEW veloroutes.v_portion AS
 SELECT v_port_geom.collect_geom AS geom,
    portion.id_portion,
    portion.nom,
    portion.description,
    portion.type_portion,
    portion.id_on3v,
    portion.id_local,
    portion.mont_subv,
    portion.annee_subv
   FROM (veloroutes.portion
     JOIN veloroutes.v_port_geom ON ((portion.id_portion = v_port_geom.id_portion)));


-- VIEW v_portion
COMMENT ON VIEW veloroutes.v_portion IS 'Vue qui joint les portions aux collections de géométries des segments qui les composent';

-- v_itineraire insert_v_itineraire
CREATE TRIGGER insert_v_itineraire INSTEAD OF INSERT ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_insert();

-- TRIGGER insert_v_itineraire ON v_itineraire
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';

-- v_portion insert_v_portion
CREATE TRIGGER insert_v_portion INSTEAD OF INSERT ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_insert();

-- TRIGGER insert_v_portion ON v_portion
COMMENT ON TRIGGER insert_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_insert()';

-- import_veloroutes_itineraire()
CREATE OR REPLACE FUNCTION veloroutes.import_veloroutes_itineraire() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	-- adaptation et insertion des itineraires dans véloroutes
	UPDATE imports.import_itineraire
	SET id_iti = (SELECT veloroutes.insert_import_veloroutes_itineraire(id_import))
	WHERE numero IS NOT NULL
	AND (EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE UPPER(code) = UPPER(niveau_schema))
		OR EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE UPPER(libelle) = UPPER(niveau_schema))
		OR niveau_schema IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(est_inscrit))
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle = est_inscrit))
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


-- import_veloroutes_poi(text)
CREATE OR REPLACE FUNCTION veloroutes.import_veloroutes_poi(poitype text) RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	EXECUTE format('
		INSERT INTO veloroutes.%s(
			description, "type", id_local, geom, id_poi, id_on3v)
		SELECT
			description,
			CASE
				WHEN EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE UPPER(code) = UPPER(type))
				THEN type
				WHEN EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE UPPER(libelle) = UPPER(type))
				THEN (SELECT code FROM veloroutes.%s_val as v WHERE UPPER(v.libelle) = UPPER(type) LIMIT 1)
			END AS type,
			id_local,
			geom,
			id_poi,
			id_on3v
		FROM imports.import_%s
		WHERE (EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE UPPER(code) = UPPER(type))
		OR EXISTS (SELECT 1 FROM veloroutes.%s_val WHERE UPPER(libelle) = UPPER(type))
		OR type IS NULL)', poitype, poitype, poitype, poitype, poitype, poitype, poitype);

	RAISE NOTICE 'Les lignes correctes de % ont été importées dans veloroutes', poitype;

	RETURN 1;
END$$;


-- import_veloroutes_portion()
CREATE OR REPLACE FUNCTION veloroutes.import_veloroutes_portion() RETURNS boolean
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
	AND (EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE UPPER(code) = UPPER(type_portion))
		OR EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE UPPER(libelle) = UPPER(type_portion)));

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
CREATE OR REPLACE FUNCTION veloroutes.import_veloroutes_repere() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN

	INSERT INTO veloroutes.repere(
	libelle, numero_serie, id_local, type_noeud, geom, id_repere, id_on3v)
	SELECT
		libelle,
		numero_serie,
		id_local,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE UPPER(code) = UPPER(type_noeud))
			THEN type_noeud
			WHEN EXISTS (SELECT 1 FROM veloroutes.reperef_val WHERE UPPER(libelle) = UPPER(type_noeud))
			THEN (SELECT code FROM veloroutes.repere_val as v WHERE UPPER(v.libelle) = UPPER(type_noeud) LIMIT 1)
		END AS type_noeud,
		geom,
		id_repere,
		id_on3v
	FROM imports.import_repere
	WHERE (EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE UPPER(code) = UPPER(type_noeud))
		OR EXISTS (SELECT 1 FROM veloroutes.repere_val WHERE UPPER(libelle) = UPPER(type_noeud)));

	RAISE NOTICE 'Les lignes correctes de repere ont été importées dans veloroutes';

	RETURN 1;
END$$;


-- import_veloroutes_segment()
CREATE OR REPLACE FUNCTION veloroutes.import_veloroutes_segment() RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	UPDATE imports.import_segment
	SET id_segment = (SELECT veloroutes.insert_import_veloroutes_segment(id_import))
	WHERE avancement IS NOT null
	AND statut IS NOT null
	-- check that enumerate types are correct
	AND (EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE CAST (code AS text) = avancement)
		 OR EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE UPPER(libelle) = UPPER(avancement)))
	AND (EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(code) = UPPER(statut))
		 OR EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE UPPER(libelle) = UPPER(statut)))
	AND (EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE UPPER(code) = UPPER(revetement))
		 OR EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE UPPER(libelle) = UPPER(revetement))
		 OR revetement IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(sens_unique))
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle) = UPPER(sens_unique))
		 OR sens_unique IS NULL)
	AND (EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(geometrie_fictive))
		 OR EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle) = UPPER(geometrie_fictive))
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
CREATE OR REPLACE FUNCTION veloroutes.insert_import_veloroutes_itineraire(idimport integer) RETURNS integer
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE UPPER(code) = UPPER(niveau_schema))
			THEN niveau_schema
			WHEN EXISTS (SELECT 1 FROM veloroutes.niveau_administratif_val WHERE UPPER(libelle) = UPPER(niveau_schema))
			THEN (SELECT code FROM veloroutes.niveau_administratif_val as v WHERE UPPER(v.libelle) = UPPER(niveau_schema) LIMIT 1)
			ELSE niveau_schema
		END AS niveau_schema,
		CASE
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(code) = UPPER(est_inscrit))
			THEN est_inscrit
			WHEN EXISTS (SELECT 1 FROM veloroutes.booleen_val WHERE UPPER(libelle) = UPPER(est_inscrit))
			THEN (SELECT code FROM veloroutes.booleen_val as v WHERE UPPER(v.libelle) = UPPER(est_inscrit) LIMIT 1)
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
		CAST (annee_subv as integer),
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
CREATE OR REPLACE FUNCTION veloroutes.insert_import_veloroutes_portion(idimport integer) RETURNS integer
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE UPPER(code) = UPPER(type_portion))
			THEN type_portion
			WHEN EXISTS (SELECT 1 FROM veloroutes.portion_val WHERE UPPER(libelle) = UPPER(type_portion))
			THEN (SELECT code FROM veloroutes.portion_val as v WHERE UPPER(v.libelle) = UPPER(type_portion) LIMIT 1)
		END AS type_portion,
		CAST (mont_subv AS real),
		CAST (annee_subv as integer),
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
			WHEN EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE CAST (code AS text) = avancement)
			THEN CAST (avancement AS INTEGER)
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


-- DROP FUNCTION EXPORT
DROP FUNCTION IF EXISTS veloroutes.export_element;
DROP FUNCTION IF EXISTS veloroutes.export_itineraire;
DROP FUNCTION IF EXISTS veloroutes.export_liaison;
DROP FUNCTION IF EXISTS veloroutes.export_poi_acces;
DROP FUNCTION IF EXISTS veloroutes.export_poi_portion;
DROP FUNCTION IF EXISTS veloroutes.export_poi_tourisme;
DROP FUNCTION IF EXISTS veloroutes.export_poi_service;
DROP FUNCTION IF EXISTS veloroutes.export_portion;
DROP FUNCTION IF EXISTS veloroutes.export_repere;
DROP FUNCTION IF EXISTS veloroutes.export_segment;
DROP FUNCTION IF EXISTS veloroutes.export_table; 

COMMIT;
