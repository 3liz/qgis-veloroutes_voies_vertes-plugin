--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14 (Debian 10.14-1.pgdg100+1)
-- Dumped by pg_dump version 10.14 (Debian 10.14-1.pgdg100+1)

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
     JOIN veloroutes.itineraire ON ((etape.id_itineraire = itineraire.id_iti)))
  GROUP BY etape.id_itineraire;


-- VIEW v_itin_geom
COMMENT ON VIEW veloroutes.v_itin_geom IS 'Vue intermédiaire qui joint les itinéraires aux collections de géométries des segments qui les composent
';


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


--
-- PostgreSQL database dump complete
--

