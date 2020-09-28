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

SET default_tablespace = '';

-- liaison_geom_idx
CREATE INDEX liaison_geom_idx ON veloroutes.liaison USING gist (geom);


-- poi_acces_geom_idx
CREATE INDEX poi_acces_geom_idx ON veloroutes.poi_acces USING gist (geom);


-- poi_geom_idx
CREATE INDEX poi_geom_idx ON veloroutes.poi USING gist (geom);


-- poi_service_geom_idx
CREATE INDEX poi_service_geom_idx ON veloroutes.poi_service USING gist (geom);


-- poi_tourisme_geom_idx
CREATE INDEX poi_tourisme_geom_idx ON veloroutes.poi_tourisme USING gist (geom);


-- repere_geom_idx
CREATE INDEX repere_geom_idx ON veloroutes.repere USING gist (geom);


-- revetement
CREATE INDEX revetement ON veloroutes.segment USING btree (revetement);


-- segment_geom_idx
CREATE INDEX segment_geom_idx ON veloroutes.segment USING gist (geom);


--
-- PostgreSQL database dump complete
--

