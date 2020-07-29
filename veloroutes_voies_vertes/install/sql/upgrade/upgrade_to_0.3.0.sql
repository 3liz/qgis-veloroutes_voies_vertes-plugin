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

CREATE TABLE veloroutes.booleen_val (
    code text,
    libelle text,
    id integer NOT NULL
);


-- booleen_val_id_seq
CREATE SEQUENCE veloroutes.booleen_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- booleen_val_id_seq
ALTER SEQUENCE veloroutes.booleen_val_id_seq OWNED BY veloroutes.booleen_val.id;

ALTER TABLE ONLY veloroutes.booleen_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.booleen_val_id_seq'::regclass);

ALTER TABLE veloroutes.segment ALTER COLUMN sens_unique SET DEFAULT 'F';
ALTER TABLE veloroutes.segment ALTER COLUMN geometrie_fictive SET DEFAULT 'F';

ALTER TABLE ONLY veloroutes.booleen_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.booleen_val_id_seq'::regclass);
ALTER TABLE ONLY veloroutes.booleen_val ADD CONSTRAINT booleen_val_pkey PRIMARY KEY (id);
ALTER TABLE ONLY veloroutes.booleen_val ADD CONSTRAINT code10 UNIQUE (code);

ALTER TABLE ONLY veloroutes.itineraire ADD CONSTRAINT est_inscrit_booleen FOREIGN KEY (est_inscrit) REFERENCES veloroutes.booleen_val(code);
ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT geometrie_fictive_booleen FOREIGN KEY (geometrie_fictive) REFERENCES veloroutes.booleen_val(code);
ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT sens_unique_booleen FOREIGN KEY (sens_unique) REFERENCES veloroutes.booleen_val(code);

INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('N', 'Ne sais pas', 1);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('F', 'False', 2);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('T', 'True', 3);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES (NULL, 'Non renseigné', 4);

SELECT pg_catalog.setval('veloroutes.booleen_val_id_seq', 4, true);

ALTER TABLE veloroutes.portion DROP CONSTRAINT IF EXISTS portion_id_local;
ALTER TABLE veloroutes.portion DROP CONSTRAINT IF EXISTS portion_id_on3v;

ALTER TABLE veloroutes.segment DROP CONSTRAINT IF EXISTS segment_id_local;
ALTER TABLE veloroutes.segment DROP CONSTRAINT IF EXISTS segment_id_on3v;

--

ALTER TABLE veloroutes.liaison DROP CONSTRAINT IF EXISTS id_local CASCADE;
ALTER TABLE veloroutes.liaison ADD COLUMN id_liaison integer NOT NULL;
ALTER TABLE veloroutes.liaison ADD COLUMN id_local text;
ALTER TABLE veloroutes.liaison ADD COLUMN id_on3v text;

DROP SEQUENCE IF EXISTS veloroutes.liaison_id_local_seq CASCADE;
CREATE SEQUENCE veloroutes.liaison_id_liaison_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE veloroutes.liaison_id_liaison_seq OWNED BY veloroutes.liaison.id_liaison;

ALTER TABLE veloroutes.poi DROP CONSTRAINT IF EXISTS id_local CASCADE;
ALTER TABLE veloroutes.poi ADD COLUMN id_poi integer NOT NULL;
ALTER TABLE veloroutes.poi ADD COLUMN id_local text;
ALTER TABLE veloroutes.poi ADD COLUMN id_on3v text;

DROP SEQUENCE IF EXISTS veloroutes.poi_id_local_seq CASCADE;
CREATE SEQUENCE veloroutes.poi_id_poi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE veloroutes.poi_id_poi_seq OWNED BY veloroutes.poi.id_poi;

DROP TABLE IF EXISTS veloroutes.poi_service CASCADE;
CREATE TABLE veloroutes.poi_service (
)
INHERITS (veloroutes.poi);
DROP SEQUENCE IF EXISTS veloroutes.poi_service_id_local_seq CASCADE;

DROP TABLE IF EXISTS veloroutes.poi_tourisme CASCADE;
CREATE TABLE veloroutes.poi_tourisme (
)
INHERITS (veloroutes.poi);
DROP SEQUENCE IF EXISTS veloroutes.poi_tourisme_id_local_seq CASCADE;

ALTER TABLE veloroutes.repere DROP CONSTRAINT IF EXISTS id_local CASCADE;
ALTER TABLE veloroutes.repere DROP CONSTRAINT IF EXISTS x;
ALTER TABLE veloroutes.repere DROP CONSTRAINT IF EXISTS y;
ALTER TABLE veloroutes.repere ADD COLUMN id_repere integer NOT NULL;
ALTER TABLE veloroutes.repere ADD COLUMN id_local text;
ALTER TABLE veloroutes.repere ADD COLUMN id_on3v text;

DROP SEQUENCE IF EXISTS veloroutes.repere_id_local_seq CASCADE;
CREATE SEQUENCE veloroutes.repere_id_repere_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE veloroutes.repere_id_repere_seq OWNED BY veloroutes.repere.id_repere;

ALTER TABLE ONLY veloroutes.liaison ALTER COLUMN id_liaison SET DEFAULT nextval('veloroutes.liaison_id_liaison_seq'::regclass);
ALTER TABLE ONLY veloroutes.poi ALTER COLUMN id_poi SET DEFAULT nextval('veloroutes.poi_id_poi_seq'::regclass);
ALTER TABLE ONLY veloroutes.poi_acces ALTER COLUMN id_poi SET DEFAULT nextval('veloroutes.poi_id_poi_seq'::regclass);
ALTER TABLE ONLY veloroutes.poi_service ALTER COLUMN id_poi SET DEFAULT nextval('veloroutes.poi_id_poi_seq'::regclass);
ALTER TABLE ONLY veloroutes.poi_tourisme ALTER COLUMN id_poi SET DEFAULT nextval('veloroutes.poi_id_poi_seq'::regclass);
ALTER TABLE ONLY veloroutes.repere ALTER COLUMN id_repere SET DEFAULT nextval('veloroutes.repere_id_repere_seq'::regclass);

ALTER TABLE veloroutes.liaison DROP CONSTRAINT IF EXISTS liaison_pkey CASCADE;
ALTER TABLE veloroutes.liaison ADD CONSTRAINT liaison_pkey PRIMARY KEY (id_liaison);

ALTER TABLE ONLY veloroutes.poi_acces ADD CONSTRAINT poi_acces_pkey PRIMARY KEY (id_poi);

ALTER TABLE veloroutes.poi DROP CONSTRAINT IF EXISTS poi_pkey CASCADE;
ALTER TABLE veloroutes.poi ADD CONSTRAINT poi_pkey PRIMARY KEY (id_poi);

ALTER TABLE veloroutes.poi_service DROP CONSTRAINT IF EXISTS poi_service_pkey CASCADE;
ALTER TABLE veloroutes.poi_service ADD CONSTRAINT poi_service_pkey PRIMARY KEY (id_poi);

ALTER TABLE veloroutes.poi_tourisme DROP CONSTRAINT IF EXISTS poi_tourisme_pkey CASCADE;
ALTER TABLE veloroutes.poi_tourisme ADD CONSTRAINT poi_tourisme_pkey PRIMARY KEY (id_poi);

ALTER TABLE veloroutes.repere DROP CONSTRAINT IF EXISTS repere_pkey CASCADE;
ALTER TABLE veloroutes.repere ADD CONSTRAINT repere_pkey PRIMARY KEY (id_repere);

ALTER TABLE ONLY veloroutes.liaison DROP CONSTRAINT IF EXISTS poi CASCADE;
ALTER TABLE ONLY veloroutes.liaison ADD CONSTRAINT poi FOREIGN KEY (id_poi) REFERENCES veloroutes.poi(id_poi);

ALTER TABLE ONLY veloroutes.frequentation DROP CONSTRAINT IF EXISTS repere CASCADE;

ALTER TABLE ONLY veloroutes.liaison DROP CONSTRAINT IF EXISTS repere CASCADE;
ALTER TABLE ONLY veloroutes.liaison ADD CONSTRAINT repere FOREIGN KEY (id_repere) REFERENCES veloroutes.repere(id_repere);


ALTER TABLE ONLY veloroutes.poi_service DROP CONSTRAINT IF EXISTS type CASCADE;
ALTER TABLE ONLY veloroutes.poi_service ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES veloroutes.poi_service_val(code);

ALTER TABLE ONLY veloroutes.poi_tourisme DROP CONSTRAINT IF EXISTS type CASCADE;
ALTER TABLE ONLY veloroutes.poi_tourisme ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES veloroutes.poi_tourisme_val(code);

COMMENT ON COLUMN veloroutes.liaison.id_local IS NULL;
COMMENT ON COLUMN veloroutes.liaison.id_liaison IS 'Clé primaire';

COMMENT ON COLUMN veloroutes.poi.id_local IS 'Identifiant créé et géré par l organisme local';
COMMENT ON COLUMN veloroutes.poi.id_poi IS 'Clé primaire';
COMMENT ON COLUMN veloroutes.poi.id_on3v IS 'Identifiant créé et géré par l ON3V';

COMMENT ON COLUMN veloroutes.poi_acces.id_local IS 'Identifiant du point d''intérêt';

COMMENT ON COLUMN veloroutes.poi_service.id_local IS 'Identifiant du point d''intérêt';

COMMENT ON COLUMN veloroutes.poi_tourisme.id_local IS 'Identifiant du point d''intérêt';

COMMENT ON COLUMN veloroutes.repere.id_local IS NULL;
COMMENT ON COLUMN veloroutes.repere.id_repere IS 'Clé primaire';
