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

-- element
COMMENT ON TABLE veloroutes.element IS 'Table de liaison entre portion et segment. Une portion cyclable est une collection de segments cyclables continus. Un segment cyclable est un élément d’une ou plusieurs portions cyclables.';


-- element.id
COMMENT ON COLUMN veloroutes.element.id IS 'identifiant';


-- element.id_portion
COMMENT ON COLUMN veloroutes.element.id_portion IS 'identifiant de la portion cyclable à laquelle appartient l''élément. FK';


-- element.id_segment
COMMENT ON COLUMN veloroutes.element.id_segment IS 'identifiant du segment cyclable auquel appartient l''élément. FK';


-- etape
COMMENT ON TABLE veloroutes.etape IS 'Table de liaison entre itinéraire et portion. Un itinéraire correspond à un agrégat continu et ordonné d’étapes cyclables. Une étape est une portion d’un itinéraire cyclable. Une étape peut
appartenir à plusieurs itinéraires. ';


-- etape.id_portion
COMMENT ON COLUMN veloroutes.etape.id_portion IS 'Identifiant de la portion cyclable à laquelle appartient l''étape. FK';


-- etape.id_itineraire
COMMENT ON COLUMN veloroutes.etape.id_itineraire IS 'Identifiant de l''itinéraire cyclable auquel appartient l''étape. FK';


-- etape.id
COMMENT ON COLUMN veloroutes.etape.id IS 'identifiant de l''étape';


-- etape.etape
COMMENT ON COLUMN veloroutes.etape.etape IS 'Numéro de l''étape. Un itinéraire est un agrégat continu et ordonné d''étapes.';


--
-- PostgreSQL database dump complete
--

