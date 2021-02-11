--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Debian 10.15-1.pgdg100+1)
-- Dumped by pg_dump version 10.15 (Debian 10.15-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

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
    public.st_length(v_itin_geom.collect_geom) AS longueur
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_itineraire)));


-- VIEW v_itineraire
COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent';


-- v_port_geom
CREATE VIEW veloroutes.v_port_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    element.id_portion
   FROM ((veloroutes.element
     JOIN veloroutes.segment ON ((segment.id_segment = element.id_segment)))
     JOIN veloroutes.portion ON ((portion.id_portion = element.id_portion)))
  GROUP BY element.id_portion;


-- VIEW v_port_geom
COMMENT ON VIEW veloroutes.v_port_geom IS 'Vue intermédiaire qui joint les portions aux collections de géométries des segments qui les composent
';


-- v_portion
CREATE VIEW veloroutes.v_portion AS
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
    public.st_length(v_port_geom.collect_geom) AS longueur
   FROM (veloroutes.portion
     JOIN veloroutes.v_port_geom ON ((portion.id_portion = v_port_geom.id_portion)));


-- VIEW v_portion
COMMENT ON VIEW veloroutes.v_portion IS 'Vue qui joint les portions aux collections de géométries des segments qui les composent';


--
-- PostgreSQL database dump complete
--

