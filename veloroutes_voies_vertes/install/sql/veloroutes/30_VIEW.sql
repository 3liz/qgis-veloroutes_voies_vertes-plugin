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

-- v_port
CREATE VIEW veloroutes.v_port AS
 SELECT public.st_collect(segment.geom) AS st_collect,
    element.id_portion
   FROM ((veloroutes.element
     JOIN veloroutes.segment ON ((segment.id_local = element.id_segment)))
     JOIN veloroutes.portion ON ((portion.id_local = element.id_portion)))
  GROUP BY element.id_portion;


-- v_portion
CREATE VIEW veloroutes.v_portion AS
 SELECT v_port.st_collect AS geom,
    portion.id_local,
    portion.nom,
    portion.description,
    portion.type_portion
   FROM (veloroutes.v_port
     JOIN veloroutes.portion ON ((portion.id_local = v_port.id_portion)));


-- VIEW v_portion
COMMENT ON VIEW veloroutes.v_portion IS 'vue qui joint les portions aux collections de géométries des segments qui les composent';


-- v_itin
CREATE VIEW veloroutes.v_itin AS
 SELECT public.st_collect(v_portion.geom) AS st_collect,
    etape.id_itineraire
   FROM ((veloroutes.etape
     JOIN veloroutes.v_portion ON ((v_portion.id_local = etape.id_portion)))
     JOIN veloroutes.itineraire ON ((itineraire.id_local = etape.id_itineraire)))
  GROUP BY etape.id_itineraire;


-- v_itineraire
CREATE VIEW veloroutes.v_itineraire AS
 SELECT v_itin.st_collect AS geom,
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
   FROM (veloroutes.v_itin
     JOIN veloroutes.itineraire ON ((itineraire.id_local = v_itin.id_itineraire)));


-- VIEW v_itineraire
COMMENT ON VIEW veloroutes.v_itineraire IS 'vue qui joint les itinéraires aux collections de géométries des portions qui les composent';


--
-- PostgreSQL database dump complete
--

