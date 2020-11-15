BEGIN;

-- DROP foreign key constraint pour etape et element
ALTER TABLE ONLY veloroutes.etape
    DROP CONSTRAINT etape_portion_segment;
ALTER TABLE ONLY veloroutes.etape
    DROP CONSTRAINT etape_itineraire_portion;
ALTER TABLE ONLY veloroutes.element
    DROP CONSTRAINT element_segment;
ALTER TABLE ONLY veloroutes.element
    DROP CONSTRAINT element_portion_segment;

-- Ajout des contraintes foreign key pour etape et element avec ON DELETE CASCADE
ALTER TABLE ONLY veloroutes.element
    ADD CONSTRAINT element_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) ON DELETE CASCADE;

ALTER TABLE ONLY veloroutes.element
    ADD CONSTRAINT element_segment FOREIGN KEY (id_segment) REFERENCES veloroutes.segment(id_segment) ON DELETE CASCADE;

ALTER TABLE ONLY veloroutes.etape
    ADD CONSTRAINT etape_itineraire_portion FOREIGN KEY (id_itineraire) REFERENCES veloroutes.itineraire(id_itineraire) ON DELETE CASCADE;

ALTER TABLE ONLY veloroutes.etape
    ADD CONSTRAINT etape_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) ON DELETE CASCADE;


-- Fonction de mise à jour de portion à partir de la vue v_portion
CREATE FUNCTION veloroutes.v_portion_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    UPDATE veloroutes.portion SET
        nom = NEW.nom,
        description = NEW.description,
        type_portion = NEW.type_portion,
        id_on3v = NEW.id_on3v,
        id_local = NEW.id_local,
        mont_subv = NEW.mont_subv,
        annee_subv = NEW.annee_subv
    WHERE id_portion = OLD.id_portion;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_portion_update() IS 'Effectue les mises à jour dans la table portion lors de la saisie dans la vue v_portion';

-- Trigger de mise à jour de portion à partir de la vue v_portion
CREATE TRIGGER update_v_portion INSTEAD OF UPDATE ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_update();

COMMENT ON TRIGGER update_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_update()';

-- Fonction de suppression de portion à partir de la vue v_portion
CREATE FUNCTION veloroutes.v_portion_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    DELETE FROM veloroutes.etape WHERE id_portion=OLD.id_portion;
    DELETE FROM veloroutes.element WHERE id_portion=OLD.id_portion;
    DELETE FROM veloroutes.portion WHERE id_portion=OLD.id_portion;

    RETURN OLD;

END;$$;

COMMENT ON FUNCTION veloroutes.v_portion_delete() IS 'Effectue la suppression dans les tables element, etapes et portion lors de la suppression dans la vue v_portion';

-- Trigger de suppression de portion à partir de la vue v_portion
CREATE TRIGGER delete_v_portion INSTEAD OF DELETE ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_delete();

COMMENT ON TRIGGER delete_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_delete()';


-- Fonction de mise à jour de itineraire à partir de la vue v_itineraire
CREATE FUNCTION veloroutes.v_itineraire_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    UPDATE veloroutes.itineraire SET
        numero = NEW.numero,
        nom_officiel = NEW.nom_officiel,
        nom_usage = NEW.nom_usage,
        depart = NEW.depart,
        arrivee = NEW.arrivee,
        annee_inscription = NEW.annee_inscription,
        site_web = NEW.site_web,
        annee_ouverture = NEW.annee_ouverture,
        niveau_schema = NEW.niveau_schema,
        est_inscrit = NEW.est_inscrit,
        mont_subv = NEW.mont_subv,
        annee_subv = NEW.annee_subv
    WHERE id_itineraire = OLD.id_itineraire;

    RETURN NEW;

END;$$;

COMMENT ON FUNCTION veloroutes.v_itineraire_update() IS 'Effectue les mises à jour dans la table itineraire lors de la saisie dans la vue v_itineraire';

-- Trigger de mise à jour de itineraire à partir de la vue v_itineraire
CREATE TRIGGER update_v_itineraire INSTEAD OF UPDATE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_update();

COMMENT ON TRIGGER update_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_update()';

-- Fonction de suppression de portion à partir de la vue v_portion
CREATE FUNCTION veloroutes.v_itineraire_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

BEGIN
    DELETE FROM veloroutes.etape WHERE id_itineraire=OLD.id_itineraire;
    DELETE FROM veloroutes.itineraire WHERE id_itineraire=OLD.id_itineraire;

    RETURN OLD;

END;$$;

COMMENT ON FUNCTION veloroutes.v_itineraire_delete() IS 'Effectue la suppression dans les tables etape et itineraire lors de la suppression dans la vue v_itineraire';

-- Trigger de suppression de portion à partir de la vue v_itineraire
CREATE TRIGGER delete_v_itineraire INSTEAD OF DELETE ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_delete();

COMMENT ON TRIGGER delete_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_delete()';

COMMIT;
