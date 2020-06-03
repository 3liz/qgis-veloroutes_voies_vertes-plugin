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

-- numserie()
CREATE FUNCTION veloroutes.numserie() RETURNS trigger
    LANGUAGE plpgsql
    AS $$    BEGIN
        IF NEW.type_noeud = 'CPT' THEN
            IF NEW.numero_serie IS NULL THEN
				RAISE EXCEPTION 'numero_serie ne peut être NULL si type_noeud vaut CPT';
			END IF;
		END IF;
        RETURN NEW;
    END;
$$;


-- FUNCTION numserie()
COMMENT ON FUNCTION veloroutes.numserie() IS 'Empêche que le numéro de série soit NULL si le noeud est un capteur';


-- revet()
CREATE FUNCTION veloroutes.revet() RETURNS trigger
    LANGUAGE plpgsql
    AS $$    BEGIN
        IF NEW.avancement = 1 THEN
            NEW.revetement := NULL;
        END IF;
        IF NEW.geometrie_fictive ='T' THEN
            NEW.revetement := NULL;
        END IF;
        RETURN NEW;
    END;
$$;


-- FUNCTION revet()
COMMENT ON FUNCTION veloroutes.revet() IS 'Force le revêtement à être NULL si le segment est en projet ou fictif';


--
-- PostgreSQL database dump complete
--

