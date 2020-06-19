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

-- v_portion insert
CREATE TRIGGER insert INSTEAD OF INSERT ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_insert();


-- repere numserie
CREATE TRIGGER numserie BEFORE INSERT OR UPDATE ON veloroutes.repere FOR EACH ROW EXECUTE PROCEDURE veloroutes.numserie();


-- TRIGGER numserie ON repere
COMMENT ON TRIGGER numserie ON veloroutes.repere IS 'Contrainte sur le champs numero_serie avec la fonction numserie()';


-- segment revetement
CREATE TRIGGER revetement BEFORE INSERT OR UPDATE ON veloroutes.segment FOR EACH ROW EXECUTE PROCEDURE veloroutes.revet();


-- TRIGGER revetement ON segment
COMMENT ON TRIGGER revetement ON veloroutes.segment IS 'Contrainte sur le champs revetement avec la fonction revet()';


--
-- PostgreSQL database dump complete
--

