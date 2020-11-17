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

-- v_itineraire delete_v_itineraire
CREATE TRIGGER delete_v_itineraire INSTEAD OF DELETE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_delete();


-- TRIGGER delete_v_itineraire ON v_itineraire
COMMENT ON TRIGGER delete_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_delete()';


-- v_portion delete_v_portion
CREATE TRIGGER delete_v_portion INSTEAD OF DELETE ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_delete();


-- TRIGGER delete_v_portion ON v_portion
COMMENT ON TRIGGER delete_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_delete()';


-- v_itineraire insert_v_itineraire
CREATE TRIGGER insert_v_itineraire INSTEAD OF INSERT ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_insert();


-- TRIGGER insert_v_itineraire ON v_itineraire
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';


-- v_portion insert_v_portion
CREATE TRIGGER insert_v_portion INSTEAD OF INSERT ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_insert();


-- TRIGGER insert_v_portion ON v_portion
COMMENT ON TRIGGER insert_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_insert()';


-- repere numserie
CREATE TRIGGER numserie BEFORE INSERT OR UPDATE ON veloroutes.repere FOR EACH ROW EXECUTE PROCEDURE veloroutes.numserie();


-- TRIGGER numserie ON repere
COMMENT ON TRIGGER numserie ON veloroutes.repere IS 'Contrainte sur le champs numero_serie avec la fonction numserie()';


-- segment statut_amenagment_type
CREATE TRIGGER statut_amenagment_type BEFORE INSERT OR UPDATE ON veloroutes.segment FOR EACH ROW EXECUTE PROCEDURE veloroutes.statut_amenagment_type();


-- v_itineraire update_v_itineraire
CREATE TRIGGER update_v_itineraire INSTEAD OF UPDATE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_update();


-- TRIGGER update_v_itineraire ON v_itineraire
COMMENT ON TRIGGER update_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_update()';


-- v_portion update_v_portion
CREATE TRIGGER update_v_portion INSTEAD OF UPDATE ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_update();


-- TRIGGER update_v_portion ON v_portion
COMMENT ON TRIGGER update_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_update()';


--
-- PostgreSQL database dump complete
--

