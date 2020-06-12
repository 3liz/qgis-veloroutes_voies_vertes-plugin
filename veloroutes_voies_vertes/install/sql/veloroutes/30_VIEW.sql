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

-- v_itin
CREATE VIEW veloroutes.v_itin_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    etape.id_itineraire
   FROM ((((veloroutes.itineraire
     JOIN veloroutes.etape ON ((etape.id_itineraire = itineraire.id_local)))
     JOIN veloroutes.portion ON ((portion.id_local = etape.id_portion)))
     JOIN veloroutes.element ON ((element.id_portion = portion.id_local)))
     JOIN veloroutes.segment ON ((segment.id_local = element.id_segment)))
  GROUP BY etape.id_itineraire;


-- v_itineraire
CREATE VIEW veloroutes.v_itineraire AS
 SELECT v_itin.collect_geom AS geom,
    itineraire.numero,
    itineraire.nom_officiel,
    itineraire.nom_usage,
    itineraire.depart,
    itineraire.arrivee,
    itineraire.id_local,
    itineraire.annee_inscription,
    itineraire.site_web,
    itineraire.annee_ouverture,
    itineraire.niveau_schema,
    itineraire.est_inscrit
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_local)));


-- v_port
CREATE VIEW veloroutes.v_port_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    element.id_portion
   FROM ((veloroutes.element
     JOIN veloroutes.segment ON ((segment.id_local = element.id_segment)))
     JOIN veloroutes.portion ON ((portion.id_local = element.id_portion)))
  GROUP BY element.id_portion;


-- v_portion
CREATE VIEW veloroutes.v_portion AS
 SELECT v_port.collect_geom AS geom,
    portion.id_local,
    portion.nom,
    portion.description,
    portion.type_portion
   FROM (veloroutes.portion
     JOIN veloroutes.v_port_geom ON ((portion.id_local = v_port_geom.id_portion)));


-- VIEW v_portion
COMMENT ON VIEW veloroutes.v_portion IS 'vue qui joint les portions aux collections de géométries des segments qui les composent';


--
-- PostgreSQL database dump complete
--
