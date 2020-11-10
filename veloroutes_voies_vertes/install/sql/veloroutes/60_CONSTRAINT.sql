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

-- booleen_val booleen_val_pkey
ALTER TABLE ONLY veloroutes.booleen_val
    ADD CONSTRAINT booleen_val_pkey PRIMARY KEY (id);


-- niveau_administratif_val code1
ALTER TABLE ONLY veloroutes.niveau_administratif_val
    ADD CONSTRAINT code1 UNIQUE (code);


-- booleen_val code10
ALTER TABLE ONLY veloroutes.booleen_val
    ADD CONSTRAINT code10 UNIQUE (code);


-- poi_acces_val code2
ALTER TABLE ONLY veloroutes.poi_acces_val
    ADD CONSTRAINT code2 UNIQUE (code);


-- poi_service_val code3
ALTER TABLE ONLY veloroutes.poi_service_val
    ADD CONSTRAINT code3 UNIQUE (code);


-- poi_tourisme_val code4
ALTER TABLE ONLY veloroutes.poi_tourisme_val
    ADD CONSTRAINT code4 UNIQUE (code);


-- portion_val code5
ALTER TABLE ONLY veloroutes.portion_val
    ADD CONSTRAINT code5 UNIQUE (code);


-- repere_val code6
ALTER TABLE ONLY veloroutes.repere_val
    ADD CONSTRAINT code6 UNIQUE (code);


-- revetement_val code7
ALTER TABLE ONLY veloroutes.revetement_val
    ADD CONSTRAINT code7 UNIQUE (code);


-- statut_segment_val code8
ALTER TABLE ONLY veloroutes.statut_segment_val
    ADD CONSTRAINT code8 UNIQUE (code);


-- etat_avancement_val code9
ALTER TABLE ONLY veloroutes.etat_avancement_val
    ADD CONSTRAINT code9 UNIQUE (code);


-- element element_pkey
ALTER TABLE ONLY veloroutes.element
    ADD CONSTRAINT element_pkey PRIMARY KEY (id);


-- etape etape_pkey
ALTER TABLE ONLY veloroutes.etape
    ADD CONSTRAINT etape_pkey PRIMARY KEY (id);


-- etat_avancement_val etat_avancement_val_pkey
ALTER TABLE ONLY veloroutes.etat_avancement_val
    ADD CONSTRAINT etat_avancement_val_pkey PRIMARY KEY (code);


-- frequentation frequentation_pkey
ALTER TABLE ONLY veloroutes.frequentation
    ADD CONSTRAINT frequentation_pkey PRIMARY KEY (id_portion, id_repere);


-- itineraire itineraire_pkey
ALTER TABLE ONLY veloroutes.itineraire
    ADD CONSTRAINT itineraire_pkey PRIMARY KEY (id_itineraire);


-- liaison liaison_pkey
ALTER TABLE ONLY veloroutes.liaison
    ADD CONSTRAINT liaison_pkey PRIMARY KEY (id_liaison);


-- metadata metadata_me_version_key
ALTER TABLE ONLY veloroutes.metadata
    ADD CONSTRAINT metadata_me_version_key UNIQUE (me_version);


-- metadata metadata_pkey
ALTER TABLE ONLY veloroutes.metadata
    ADD CONSTRAINT metadata_pkey PRIMARY KEY (id);


-- niveau_administratif_val niveau_administratif_val_pkey1
ALTER TABLE ONLY veloroutes.niveau_administratif_val
    ADD CONSTRAINT niveau_administratif_val_pkey1 PRIMARY KEY (id);


-- poi_acces poi_acces_pkey
ALTER TABLE ONLY veloroutes.poi_acces
    ADD CONSTRAINT poi_acces_pkey PRIMARY KEY (id_poi);


-- poi_acces_val poi_acces_val_pkey1
ALTER TABLE ONLY veloroutes.poi_acces_val
    ADD CONSTRAINT poi_acces_val_pkey1 PRIMARY KEY (id);


-- poi poi_pkey
ALTER TABLE ONLY veloroutes.poi
    ADD CONSTRAINT poi_pkey PRIMARY KEY (id_poi);


-- poi_service poi_service_pkey
ALTER TABLE ONLY veloroutes.poi_service
    ADD CONSTRAINT poi_service_pkey PRIMARY KEY (id_poi);


-- poi_service_val poi_service_val_pkey1
ALTER TABLE ONLY veloroutes.poi_service_val
    ADD CONSTRAINT poi_service_val_pkey1 PRIMARY KEY (id);


-- poi_tourisme poi_tourisme_pkey
ALTER TABLE ONLY veloroutes.poi_tourisme
    ADD CONSTRAINT poi_tourisme_pkey PRIMARY KEY (id_poi);


-- poi_tourisme_val poi_tourisme_val_pkey1
ALTER TABLE ONLY veloroutes.poi_tourisme_val
    ADD CONSTRAINT poi_tourisme_val_pkey1 PRIMARY KEY (id);


-- portion portion_pkey
ALTER TABLE ONLY veloroutes.portion
    ADD CONSTRAINT portion_pkey PRIMARY KEY (id_portion);


-- portion_val portion_val_pkey1
ALTER TABLE ONLY veloroutes.portion_val
    ADD CONSTRAINT portion_val_pkey1 PRIMARY KEY (id);


-- repere repere_pkey
ALTER TABLE ONLY veloroutes.repere
    ADD CONSTRAINT repere_pkey PRIMARY KEY (id_repere);


-- repere_val repere_val_pkey1
ALTER TABLE ONLY veloroutes.repere_val
    ADD CONSTRAINT repere_val_pkey1 PRIMARY KEY (id);


-- revetement_val revetement_val_pkey1
ALTER TABLE ONLY veloroutes.revetement_val
    ADD CONSTRAINT revetement_val_pkey1 PRIMARY KEY (id);


-- segment segment_pkey
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id_segment);


-- statut_segment_val statut_segment_val_pkey
ALTER TABLE ONLY veloroutes.statut_segment_val
    ADD CONSTRAINT statut_segment_val_pkey PRIMARY KEY (id);


-- segment avancement
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT avancement FOREIGN KEY (avancement) REFERENCES veloroutes.etat_avancement_val(code);


-- element element_portion_segment
ALTER TABLE ONLY veloroutes.element
    ADD CONSTRAINT element_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) ON DELETE CASCADE;


-- element element_segment
ALTER TABLE ONLY veloroutes.element
    ADD CONSTRAINT element_segment FOREIGN KEY (id_segment) REFERENCES veloroutes.segment(id_segment) ON DELETE CASCADE;


-- itineraire est_inscrit_booleen
ALTER TABLE ONLY veloroutes.itineraire
    ADD CONSTRAINT est_inscrit_booleen FOREIGN KEY (est_inscrit) REFERENCES veloroutes.booleen_val(code);


-- etape etape_itineraire_portion
ALTER TABLE ONLY veloroutes.etape
    ADD CONSTRAINT etape_itineraire_portion FOREIGN KEY (id_itineraire) REFERENCES veloroutes.itineraire(id_itineraire) ON DELETE CASCADE;


-- etape etape_portion_segment
ALTER TABLE ONLY veloroutes.etape
    ADD CONSTRAINT etape_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) ON DELETE CASCADE;


-- frequentation frequentation_repere
ALTER TABLE ONLY veloroutes.frequentation
    ADD CONSTRAINT frequentation_repere FOREIGN KEY (id_repere) REFERENCES veloroutes.repere(id_repere);


-- segment geometrie_fictive_booleen
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT geometrie_fictive_booleen FOREIGN KEY (geometrie_fictive) REFERENCES veloroutes.booleen_val(code);


-- itineraire niveau_schema
ALTER TABLE ONLY veloroutes.itineraire
    ADD CONSTRAINT niveau_schema FOREIGN KEY (niveau_schema) REFERENCES veloroutes.niveau_administratif_val(code);


-- repere noeud
ALTER TABLE ONLY veloroutes.repere
    ADD CONSTRAINT noeud FOREIGN KEY (type_noeud) REFERENCES veloroutes.repere_val(code);


-- liaison poi
ALTER TABLE ONLY veloroutes.liaison
    ADD CONSTRAINT poi FOREIGN KEY (id_poi) REFERENCES veloroutes.poi(id_poi);


-- frequentation portion
ALTER TABLE ONLY veloroutes.frequentation
    ADD CONSTRAINT portion FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) NOT VALID;


-- liaison repere
ALTER TABLE ONLY veloroutes.liaison
    ADD CONSTRAINT repere FOREIGN KEY (id_repere) REFERENCES veloroutes.repere(id_repere);


-- segment revetement
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT revetement FOREIGN KEY (revetement) REFERENCES veloroutes.revetement_val(code);


-- segment sens_unique_booleen
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT sens_unique_booleen FOREIGN KEY (sens_unique) REFERENCES veloroutes.booleen_val(code);


-- segment statut
ALTER TABLE ONLY veloroutes.segment
    ADD CONSTRAINT statut FOREIGN KEY (statut) REFERENCES veloroutes.statut_segment_val(code);


-- poi_acces type
ALTER TABLE ONLY veloroutes.poi_acces
    ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES veloroutes.poi_acces_val(code);


-- poi_service type
ALTER TABLE ONLY veloroutes.poi_service
    ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES veloroutes.poi_service_val(code);


-- poi_tourisme type
ALTER TABLE ONLY veloroutes.poi_tourisme
    ADD CONSTRAINT type FOREIGN KEY (type) REFERENCES veloroutes.poi_tourisme_val(code);


-- portion type_portion
ALTER TABLE ONLY veloroutes.portion
    ADD CONSTRAINT type_portion FOREIGN KEY (type_portion) REFERENCES veloroutes.portion_val(code);


--
-- PostgreSQL database dump complete
--

