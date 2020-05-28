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

SET default_tablespace = '';

SET default_with_oids = false;

-- element
CREATE TABLE veloroutes.element (
    id integer NOT NULL,
    id_portion integer,
    id_segment integer
);


-- element
COMMENT ON TABLE veloroutes.element IS 'Table de liaison entre portion et segment. Une portion cyclable est une collection de segments cyclables continus. Un segment cyclable est un élément d’une ou plusieurs portions cyclables.';


-- element_id_seq
CREATE SEQUENCE veloroutes.element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- element_id_seq
ALTER SEQUENCE veloroutes.element_id_seq OWNED BY veloroutes.element.id;


-- etape
CREATE TABLE veloroutes.etape (
    id_portion integer,
    id_itineraire integer,
    id integer NOT NULL,
    etape integer
);


-- etape
COMMENT ON TABLE veloroutes.etape IS 'Table de liaison entre itinéraire et portion. Un itinéraire correspond à un agrégat continu et ordonné d’étapes cyclables. Une étape est une portion d’un itinéraire cyclable. Une étape peut
appartenir à plusieurs itinéraires. ';


-- etape_id_seq
CREATE SEQUENCE veloroutes.etape_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- etape_id_seq
ALTER SEQUENCE veloroutes.etape_id_seq OWNED BY veloroutes.etape.id;


-- etat_avancement_val
CREATE TABLE veloroutes.etat_avancement_val (
    code integer NOT NULL,
    libelle text,
    id integer NOT NULL
);


-- etat_avancement_val
COMMENT ON TABLE veloroutes.etat_avancement_val IS 'Nomenclature pour l’état de réalisation d’un segment cyclable';


-- etat_avancement_val_id_seq
CREATE SEQUENCE veloroutes.etat_avancement_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- etat_avancement_val_id_seq
ALTER SEQUENCE veloroutes.etat_avancement_val_id_seq OWNED BY veloroutes.etat_avancement_val.id;


-- frequentation
CREATE TABLE veloroutes.frequentation (
    comptage integer,
    period date[],
    id_portion integer,
    id_repere integer,
    CONSTRAINT comptage CHECK ((comptage >= 0))
);


-- itineraire
CREATE TABLE veloroutes.itineraire (
    numero text NOT NULL,
    nom_officiel text,
    nom_usage text,
    depart text,
    arrivee text,
    id_local integer NOT NULL,
    annee_inscription date,
    site_web text,
    annee_ouverture date,
    niveau_schema text,
    est_inscrit text
);


-- itineraire_id_local_seq
CREATE SEQUENCE veloroutes.itineraire_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- itineraire_id_local_seq
ALTER SEQUENCE veloroutes.itineraire_id_local_seq OWNED BY veloroutes.itineraire.id_local;


-- liaison
CREATE TABLE veloroutes.liaison (
    "precision" text,
    src_geom text,
    src_annee text,
    id_local integer NOT NULL,
    id_repere integer,
    id_poi integer
);


-- liaison_id_local_seq
CREATE SEQUENCE veloroutes.liaison_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- liaison_id_local_seq
ALTER SEQUENCE veloroutes.liaison_id_local_seq OWNED BY veloroutes.liaison.id_local;


-- niveau_administratif_val
CREATE TABLE veloroutes.niveau_administratif_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- niveau_administratif_val_id_seq
CREATE SEQUENCE veloroutes.niveau_administratif_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- niveau_administratif_val_id_seq
ALTER SEQUENCE veloroutes.niveau_administratif_val_id_seq OWNED BY veloroutes.niveau_administratif_val.id;


-- poi
CREATE TABLE veloroutes.poi (
    description text,
    type text,
    id_portion integer,
    id_local integer NOT NULL,
    geom public.geometry(Point,2154)
);


-- poi_acces
CREATE TABLE veloroutes.poi_acces (
)
INHERITS (veloroutes.poi);


-- poi_acces_val
CREATE TABLE veloroutes.poi_acces_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- poi_acces_val_id_seq
CREATE SEQUENCE veloroutes.poi_acces_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_acces_val_id_seq
ALTER SEQUENCE veloroutes.poi_acces_val_id_seq OWNED BY veloroutes.poi_acces_val.id;


-- poi_id_local_seq
CREATE SEQUENCE veloroutes.poi_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_id_local_seq
ALTER SEQUENCE veloroutes.poi_id_local_seq OWNED BY veloroutes.poi.id_local;


-- poi_service
CREATE TABLE veloroutes.poi_service (
    description text,
    type text,
    id_portion integer,
    id_local integer
)
INHERITS (veloroutes.poi);


-- poi_service_id_local_seq
CREATE SEQUENCE veloroutes.poi_service_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_service_id_local_seq
ALTER SEQUENCE veloroutes.poi_service_id_local_seq OWNED BY veloroutes.poi_service.id_local;


-- poi_service_val
CREATE TABLE veloroutes.poi_service_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- poi_service_val_id_seq
CREATE SEQUENCE veloroutes.poi_service_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_service_val_id_seq
ALTER SEQUENCE veloroutes.poi_service_val_id_seq OWNED BY veloroutes.poi_service_val.id;


-- poi_tourisme
CREATE TABLE veloroutes.poi_tourisme (
    description text,
    type text,
    id_portion integer,
    id_local integer
)
INHERITS (veloroutes.poi);


-- poi_tourisme_id_local_seq
CREATE SEQUENCE veloroutes.poi_tourisme_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_tourisme_id_local_seq
ALTER SEQUENCE veloroutes.poi_tourisme_id_local_seq OWNED BY veloroutes.poi_tourisme.id_local;


-- poi_tourisme_val
CREATE TABLE veloroutes.poi_tourisme_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- poi_tourisme_val_id_seq
CREATE SEQUENCE veloroutes.poi_tourisme_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- poi_tourisme_val_id_seq
ALTER SEQUENCE veloroutes.poi_tourisme_val_id_seq OWNED BY veloroutes.poi_tourisme_val.id;


-- portion
CREATE TABLE veloroutes.portion (
    id_local integer NOT NULL,
    nom text,
    description text,
    type_portion text NOT NULL
);


-- portion_id_local_seq
CREATE SEQUENCE veloroutes.portion_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- portion_id_local_seq
ALTER SEQUENCE veloroutes.portion_id_local_seq OWNED BY veloroutes.portion.id_local;


-- portion_val
CREATE TABLE veloroutes.portion_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- portion_val_id_seq
CREATE SEQUENCE veloroutes.portion_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- portion_val_id_seq
ALTER SEQUENCE veloroutes.portion_val_id_seq OWNED BY veloroutes.portion_val.id;


-- repere
CREATE TABLE veloroutes.repere (
    libelle text,
    numero_serie text,
    id_local integer NOT NULL,
    type_noeud text NOT NULL,
    geom public.geometry(Point,2154)
);


-- repere_id_local_seq
CREATE SEQUENCE veloroutes.repere_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- repere_id_local_seq
ALTER SEQUENCE veloroutes.repere_id_local_seq OWNED BY veloroutes.repere.id_local;


-- repere_val
CREATE TABLE veloroutes.repere_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- repere_val_id_seq
CREATE SEQUENCE veloroutes.repere_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- repere_val_id_seq
ALTER SEQUENCE veloroutes.repere_val_id_seq OWNED BY veloroutes.repere_val.id;


-- revetement_val
CREATE TABLE veloroutes.revetement_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- revetement_val_id_seq
CREATE SEQUENCE veloroutes.revetement_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- revetement_val_id_seq
ALTER SEQUENCE veloroutes.revetement_val_id_seq OWNED BY veloroutes.revetement_val.id;


-- segment
CREATE TABLE veloroutes.segment (
    id_local integer NOT NULL,
    annee_ouverture date,
    date_saisie date,
    src_geom text,
    src_annee text,
    avancement integer NOT NULL,
    revetement text,
    statut text NOT NULL,
    gestionnaire text,
    proprietaire text,
    geom public.geometry(LineString,2154),
    "precision" text,
    sens_unique text,
    geometrie_fictive text
);


-- segment_id_local_seq
CREATE SEQUENCE veloroutes.segment_id_local_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- segment_id_local_seq
ALTER SEQUENCE veloroutes.segment_id_local_seq OWNED BY veloroutes.segment.id_local;


-- statut_segment_val
CREATE TABLE veloroutes.statut_segment_val (
    id integer NOT NULL,
    code text NOT NULL,
    libelle text
);


-- statut_segment_val_id_seq
CREATE SEQUENCE veloroutes.statut_segment_val_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- statut_segment_val_id_seq
ALTER SEQUENCE veloroutes.statut_segment_val_id_seq OWNED BY veloroutes.statut_segment_val.id;


-- element id
ALTER TABLE ONLY veloroutes.element ALTER COLUMN id SET DEFAULT nextval('veloroutes.element_id_seq'::regclass);


-- etape id
ALTER TABLE ONLY veloroutes.etape ALTER COLUMN id SET DEFAULT nextval('veloroutes.etape_id_seq'::regclass);


-- etat_avancement_val id
ALTER TABLE ONLY veloroutes.etat_avancement_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.etat_avancement_val_id_seq'::regclass);


-- itineraire id_local
ALTER TABLE ONLY veloroutes.itineraire ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.itineraire_id_local_seq'::regclass);


-- liaison id_local
ALTER TABLE ONLY veloroutes.liaison ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.liaison_id_local_seq'::regclass);


-- niveau_administratif_val id
ALTER TABLE ONLY veloroutes.niveau_administratif_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.niveau_administratif_val_id_seq'::regclass);


-- poi id_local
ALTER TABLE ONLY veloroutes.poi ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.poi_id_local_seq'::regclass);


-- poi_acces id_local
ALTER TABLE ONLY veloroutes.poi_acces ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.poi_id_local_seq'::regclass);


-- poi_acces_val id
ALTER TABLE ONLY veloroutes.poi_acces_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.poi_acces_val_id_seq'::regclass);


-- poi_service id_local
ALTER TABLE ONLY veloroutes.poi_service ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.poi_service_id_local_seq'::regclass);


-- poi_service_val id
ALTER TABLE ONLY veloroutes.poi_service_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.poi_service_val_id_seq'::regclass);


-- poi_tourisme id_local
ALTER TABLE ONLY veloroutes.poi_tourisme ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.poi_tourisme_id_local_seq'::regclass);


-- poi_tourisme_val id
ALTER TABLE ONLY veloroutes.poi_tourisme_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.poi_tourisme_val_id_seq'::regclass);


-- portion id_local
ALTER TABLE ONLY veloroutes.portion ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.portion_id_local_seq'::regclass);


-- portion_val id
ALTER TABLE ONLY veloroutes.portion_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.portion_val_id_seq'::regclass);


-- repere id_local
ALTER TABLE ONLY veloroutes.repere ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.repere_id_local_seq'::regclass);


-- repere_val id
ALTER TABLE ONLY veloroutes.repere_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.repere_val_id_seq'::regclass);


-- revetement_val id
ALTER TABLE ONLY veloroutes.revetement_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.revetement_val_id_seq'::regclass);


-- segment id_local
ALTER TABLE ONLY veloroutes.segment ALTER COLUMN id_local SET DEFAULT nextval('veloroutes.segment_id_local_seq'::regclass);


-- statut_segment_val id
ALTER TABLE ONLY veloroutes.statut_segment_val ALTER COLUMN id SET DEFAULT nextval('veloroutes.statut_segment_val_id_seq'::regclass);


--
-- PostgreSQL database dump complete
--

