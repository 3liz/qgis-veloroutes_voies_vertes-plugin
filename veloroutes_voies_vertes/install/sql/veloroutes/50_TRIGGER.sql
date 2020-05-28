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

-- repere numserie
CREATE TRIGGER numserie BEFORE INSERT OR UPDATE ON veloroutes.repere FOR EACH ROW EXECUTE PROCEDURE veloroutes.numserie();


-- segment revetement
CREATE TRIGGER revetement BEFORE INSERT OR UPDATE ON veloroutes.segment FOR EACH ROW EXECUTE PROCEDURE veloroutes.revet();


--
-- PostgreSQL database dump complete
--

