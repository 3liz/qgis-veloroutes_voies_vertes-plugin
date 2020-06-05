CREATE OR REPLACE FUNCTION veloroutes.revet() RETURNS trigger AS
$BODY$
    BEGIN
        IF NEW.avancement = 1 THEN
			IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si avancement vaut 1';
			END IF;
        END IF;
        IF NEW.geometrie_fictive ='T' THEN
            IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si la geom est fictive';
			END IF;
        END IF;
        RETURN NEW;
    END;
$BODY$ LANGUAGE plpgsql;
