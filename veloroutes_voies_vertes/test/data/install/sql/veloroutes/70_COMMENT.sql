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

-- FUNCTION numserie()
COMMENT ON FUNCTION veloroutes.numserie() IS 'Empêche que le numéro de série soit NULL si le noeud est un capteur';


-- FUNCTION revet()
COMMENT ON FUNCTION veloroutes.revet() IS 'Force le revêtement à être NULL si le segment est en projet ou fictif';


-- element
COMMENT ON TABLE veloroutes.element IS 'Table de liaison entre portion et segment. Une portion cyclable est une collection de segments cyclables continus. Un segment cyclable est un élément d’une ou plusieurs portions cyclables.';


-- element.id
COMMENT ON COLUMN veloroutes.element.id IS 'Identifiant';


-- element.id_portion
COMMENT ON COLUMN veloroutes.element.id_portion IS 'Identifiant de la portion cyclable à laquelle appartient l''élément (clé étrangère)';


-- element.id_segment
COMMENT ON COLUMN veloroutes.element.id_segment IS 'Identifiant du segment cyclable auquel appartient l''élément (clé étrangère)';


-- etape
COMMENT ON TABLE veloroutes.etape IS 'Table de liaison entre itinéraire et portion. Un itinéraire correspond à un agrégat continu et ordonné d’étapes cyclables. Une étape est une portion d’un itinéraire cyclable. Une étape peut
appartenir à plusieurs itinéraires. ';


-- etape.id_portion
COMMENT ON COLUMN veloroutes.etape.id_portion IS 'Identifiant de la portion cyclable à laquelle appartient l''étape (clé étrangère)';


-- etape.id_itineraire
COMMENT ON COLUMN veloroutes.etape.id_itineraire IS 'Identifiant de l''itinéraire cyclable auquel appartient l''étape (clé étrangère)';


-- etape.id
COMMENT ON COLUMN veloroutes.etape.id IS 'identifiant de l''étape';


-- etape.etape
COMMENT ON COLUMN veloroutes.etape.etape IS 'Numéro d''ordre de l''étape dans l''itinéraire';


-- etat_avancement_val
COMMENT ON TABLE veloroutes.etat_avancement_val IS 'Nomenclature pour l’état de réalisation d’un segment cyclable';


-- etat_avancement_val.code
COMMENT ON COLUMN veloroutes.etat_avancement_val.code IS 'Code';


-- etat_avancement_val.libelle
COMMENT ON COLUMN veloroutes.etat_avancement_val.libelle IS 'Libellé';


-- etat_avancement_val.id
COMMENT ON COLUMN veloroutes.etat_avancement_val.id IS 'Identifiant';


-- frequentation
COMMENT ON TABLE veloroutes.frequentation IS 'Fréquence de passage, table de lien entre repere et portion';


-- frequentation.comptage
COMMENT ON COLUMN veloroutes.frequentation.comptage IS 'Nombre de passages comptabilisés';


-- frequentation.period
COMMENT ON COLUMN veloroutes.frequentation.period IS 'Période de l’observation caractérisée par une date de début et une date de fin';


-- frequentation.id_portion
COMMENT ON COLUMN veloroutes.frequentation.id_portion IS 'Identifiant de la portion dont la frequentation est mesurée (clé étrangère)';


-- frequentation.id_repere
COMMENT ON COLUMN veloroutes.frequentation.id_repere IS 'Identifiant du point de repère où est placé le capteur (clé étrangère)';


-- itineraire
COMMENT ON TABLE veloroutes.itineraire IS 'Itinéraire cyclable, véloroute.';


-- itineraire.numero
COMMENT ON COLUMN veloroutes.itineraire.numero IS 'Numérotation de l''itinéraire';


-- itineraire.nom_officiel
COMMENT ON COLUMN veloroutes.itineraire.nom_officiel IS 'Nom officiel de l’itinéraire ou celui présent sur les documents de communication et connu du grand public';


-- itineraire.nom_usage
COMMENT ON COLUMN veloroutes.itineraire.nom_usage IS 'Autre nom ou appellation de l’itinéraire en usage    ';


-- itineraire.depart
COMMENT ON COLUMN veloroutes.itineraire.depart IS 'Nom de la localité située au départ de l’itinéraire
';


-- itineraire.arrivee
COMMENT ON COLUMN veloroutes.itineraire.arrivee IS 'Nom de la localité située à l''arrivée de l’itinéraire';


-- itineraire.id_local
COMMENT ON COLUMN veloroutes.itineraire.id_local IS 'Identifiant de l''itinéraire cyclable';


-- itineraire.annee_inscription
COMMENT ON COLUMN veloroutes.itineraire.annee_inscription IS 'Année d’approbation du premier schéma ayant inscrit l’itinéraire
';


-- itineraire.site_web
COMMENT ON COLUMN veloroutes.itineraire.site_web IS 'Référence du site internet faisant la promotion de l''itinéraire';


-- itineraire.annee_ouverture
COMMENT ON COLUMN veloroutes.itineraire.annee_ouverture IS 'Année d''ouverture de l''itinéraire sur sa partie française
';


-- itineraire.niveau_schema
COMMENT ON COLUMN veloroutes.itineraire.niveau_schema IS 'Niveau administratif du schéma dans lequel l’itinéraire est inscrit et numéroté (clé étrangère)
';


-- itineraire.est_inscrit
COMMENT ON COLUMN veloroutes.itineraire.est_inscrit IS 'Vrai si l’itinéraire est inscrit à un schéma de développement des véloroutes';


-- liaison
COMMENT ON TABLE veloroutes.liaison IS 'Liaison cyclable, antenne cyclable';


-- liaison."precision"
COMMENT ON COLUMN veloroutes.liaison."precision" IS 'Ordre de grandeur de la précision de saisie';


-- liaison.src_geom
COMMENT ON COLUMN veloroutes.liaison.src_geom IS 'Type de la source de géoréférencement pour la digitalisation de la géométrie';


-- liaison.src_annee
COMMENT ON COLUMN veloroutes.liaison.src_annee IS 'Année de mise à jour, millésime de la carte ou du référentiel de saisie ayant servi de source géométrique';


-- liaison.id_local
COMMENT ON COLUMN veloroutes.liaison.id_local IS 'Identifiant de la liaison cyclable';


-- liaison.id_repere
COMMENT ON COLUMN veloroutes.liaison.id_repere IS 'Identifiant du point de repère que la liaison connecte à un point d''intérêt (clé étrangère)';


-- liaison.id_poi
COMMENT ON COLUMN veloroutes.liaison.id_poi IS 'Identifiant du point l''intérêt que la liaison dessert (clé étrangère)';


-- niveau_administratif_val
COMMENT ON TABLE veloroutes.niveau_administratif_val IS 'Nomenclature pour le niveau administratif d''un schéma';


-- niveau_administratif_val.id
COMMENT ON COLUMN veloroutes.niveau_administratif_val.id IS 'Identifiant';


-- niveau_administratif_val.code
COMMENT ON COLUMN veloroutes.niveau_administratif_val.code IS 'Code';


-- niveau_administratif_val.libelle
COMMENT ON COLUMN veloroutes.niveau_administratif_val.libelle IS 'Libellé';


-- poi
COMMENT ON TABLE veloroutes.poi IS 'POI, point d’intérêt';


-- poi.description
COMMENT ON COLUMN veloroutes.poi.description IS 'Renseignement ou description complémentaire sur le point d’intérêt';


-- poi.type
COMMENT ON COLUMN veloroutes.poi.type IS 'Nature du point d’intérêt';


-- poi.id_local
COMMENT ON COLUMN veloroutes.poi.id_local IS 'Identifiant du point d''intérêt';


-- poi.geom
COMMENT ON COLUMN veloroutes.poi.geom IS 'Géométrie';


-- poi_acces
COMMENT ON TABLE veloroutes.poi_acces IS 'Points d’intérêt localisant un accès à un centre d’intermodal';


-- poi_acces.description
COMMENT ON COLUMN veloroutes.poi_acces.description IS 'Renseignement ou description complémentaire sur le point d’intérêt';


-- poi_acces.type
COMMENT ON COLUMN veloroutes.poi_acces.type IS 'Nature du point d’intérêt';


-- poi_acces.id_local
COMMENT ON COLUMN veloroutes.poi_acces.id_local IS 'Identifiant du point d''intérêt';


-- poi_acces.geom
COMMENT ON COLUMN veloroutes.poi_acces.geom IS 'Géométrie';


-- poi_acces_val
COMMENT ON TABLE veloroutes.poi_acces_val IS 'Nomenclature pour la nature des points d’accès à un autre réseau de transport';


-- poi_acces_val.id
COMMENT ON COLUMN veloroutes.poi_acces_val.id IS 'Identifiant';


-- poi_acces_val.code
COMMENT ON COLUMN veloroutes.poi_acces_val.code IS 'Code';


-- poi_acces_val.libelle
COMMENT ON COLUMN veloroutes.poi_acces_val.libelle IS 'Libellé';


-- poi_service
COMMENT ON TABLE veloroutes.poi_service IS 'Services présentant un intérêt pour le cyclotourisme';


-- poi_service.description
COMMENT ON COLUMN veloroutes.poi_service.description IS 'Renseignement ou description complémentaire sur le point d’intérêt';


-- poi_service.type
COMMENT ON COLUMN veloroutes.poi_service.type IS 'Nature du point d’intérêt';


-- poi_service.id_local
COMMENT ON COLUMN veloroutes.poi_service.id_local IS 'Identifiant du point d''intérêt';


-- poi_service.geom
COMMENT ON COLUMN veloroutes.poi_service.geom IS 'Géométrie';


-- poi_service_val
COMMENT ON TABLE veloroutes.poi_service_val IS 'Nomenclature pour  la nature des services offerts à un cyclotouriste par un point d’intérêt';


-- poi_service_val.id
COMMENT ON COLUMN veloroutes.poi_service_val.id IS 'Identifiant';


-- poi_service_val.code
COMMENT ON COLUMN veloroutes.poi_service_val.code IS 'Code';


-- poi_service_val.libelle
COMMENT ON COLUMN veloroutes.poi_service_val.libelle IS 'Libellé';


-- poi_tourisme
COMMENT ON TABLE veloroutes.poi_tourisme IS 'Points d’intérêt touristique';


-- poi_tourisme.description
COMMENT ON COLUMN veloroutes.poi_tourisme.description IS 'Renseignement ou description complémentaire sur le point d’intérêt';


-- poi_tourisme.type
COMMENT ON COLUMN veloroutes.poi_tourisme.type IS 'Nature du point d’intérêt';


-- poi_tourisme.id_local
COMMENT ON COLUMN veloroutes.poi_tourisme.id_local IS 'Identifiant du point d''intérêt';


-- poi_tourisme.geom
COMMENT ON COLUMN veloroutes.poi_tourisme.geom IS 'Géométrie';


-- poi_tourisme_val
COMMENT ON TABLE veloroutes.poi_tourisme_val IS 'Nomenclature pour la nature d’un point d’intérêt touristique';


-- poi_tourisme_val.id
COMMENT ON COLUMN veloroutes.poi_tourisme_val.id IS 'Identifiant';


-- poi_tourisme_val.code
COMMENT ON COLUMN veloroutes.poi_tourisme_val.code IS 'Code';


-- poi_tourisme_val.libelle
COMMENT ON COLUMN veloroutes.poi_tourisme_val.libelle IS 'Libellé';


-- portion
COMMENT ON TABLE veloroutes.portion IS 'Portion d’itinéraire cyclable, collection de segments cyclables';


-- portion.id_local
COMMENT ON COLUMN veloroutes.portion.id_local IS 'Identifiant de la portion cyclable';


-- portion.nom
COMMENT ON COLUMN veloroutes.portion.nom IS 'Nom usuel désignant la portion cyclable';


-- portion.description
COMMENT ON COLUMN veloroutes.portion.description IS 'Information donnant des détails sur la portion d’itinéraire';


-- portion.type_portion
COMMENT ON COLUMN veloroutes.portion.type_portion IS 'Rôle que joue la portion par rapport à l’itinéraire principal auquel elle se rapporte (clé étrangère)';


-- portion_val
COMMENT ON TABLE veloroutes.portion_val IS 'Nomenclature pour le type d''une portion cyclable qualifié en fonction du rôle qu’elle joue dans la véloroute';


-- portion_val.id
COMMENT ON COLUMN veloroutes.portion_val.id IS 'Identifiant';


-- portion_val.code
COMMENT ON COLUMN veloroutes.portion_val.code IS 'Code';


-- portion_val.libelle
COMMENT ON COLUMN veloroutes.portion_val.libelle IS 'Libellé';


-- repere
COMMENT ON TABLE veloroutes.repere IS 'Point de repère cyclable, nœud cyclable particulier';


-- repere.libelle
COMMENT ON COLUMN veloroutes.repere.libelle IS 'Numéro, nom ou description utilisé comme désignation du point de repère';


-- repere.numero_serie
COMMENT ON COLUMN veloroutes.repere.numero_serie IS 'Numéro de série du capteur utilisé pour l’identifier sur la plateforme nationale des fréquentations';


-- repere.id_local
COMMENT ON COLUMN veloroutes.repere.id_local IS 'Identifiant du point de repère cyclable';


-- repere.type_noeud
COMMENT ON COLUMN veloroutes.repere.type_noeud IS 'Valeur indiquant le rôle que joue le point de repère dans l’itinéraire cyclable';


-- repere.geom
COMMENT ON COLUMN veloroutes.repere.geom IS 'Géométrie';


-- repere_val
COMMENT ON TABLE veloroutes.repere_val IS 'Nomenclature pour la nature d''un point de repère pour la description et la compréhension de l’itinéraire';


-- repere_val.id
COMMENT ON COLUMN veloroutes.repere_val.id IS 'Identifiant';


-- repere_val.code
COMMENT ON COLUMN veloroutes.repere_val.code IS 'Code';


-- repere_val.libelle
COMMENT ON COLUMN veloroutes.repere_val.libelle IS 'Libellé';


-- revetement_val
COMMENT ON TABLE veloroutes.revetement_val IS 'Nomenclature pour le niveau de qualité du revêtement d’un segment cyclable';


-- revetement_val.id
COMMENT ON COLUMN veloroutes.revetement_val.id IS 'Identifiant';


-- revetement_val.code
COMMENT ON COLUMN veloroutes.revetement_val.code IS 'Code';


-- revetement_val.libelle
COMMENT ON COLUMN veloroutes.revetement_val.libelle IS 'Libellé';


-- segment
COMMENT ON TABLE veloroutes.segment IS 'Segment cyclable';


-- segment.id_local
COMMENT ON COLUMN veloroutes.segment.id_local IS 'Identifiant du segment cyclable';


-- segment.annee_ouverture
COMMENT ON COLUMN veloroutes.segment.annee_ouverture IS 'Année d''ouverture du segment';


-- segment.date_saisie
COMMENT ON COLUMN veloroutes.segment.date_saisie IS 'Date de digitalisation du segment ou de sa dernière mise à jour';


-- segment.src_geom
COMMENT ON COLUMN veloroutes.segment.src_geom IS 'Type de la source de géoréférencement pour la digitalisation de la géométrie';


-- segment.src_annee
COMMENT ON COLUMN veloroutes.segment.src_annee IS 'Année de mise à jour, millésime de la carte ou du référentiel de saisie ayant servi de source géométrique';


-- segment.avancement
COMMENT ON COLUMN veloroutes.segment.avancement IS 'Etat d’avancement de la réalisation du segment (clé étrangère)';


-- segment.revetement
COMMENT ON COLUMN veloroutes.segment.revetement IS 'Qualité du revêtement (clé étrangère)';


-- segment.statut
COMMENT ON COLUMN veloroutes.segment.statut IS 'Statut réglementaire qui caractérise le type d’aménagement qu’emprunte le segment cyclable (clé étrangère)';


-- segment.gestionnaire
COMMENT ON COLUMN veloroutes.segment.gestionnaire IS 'Nom de l''organisme en charge de la gestion du segment';


-- segment.proprietaire
COMMENT ON COLUMN veloroutes.segment.proprietaire IS 'Nom de l’organisme propriétaire du segment';


-- segment.geom
COMMENT ON COLUMN veloroutes.segment.geom IS 'Géométrie';


-- segment."precision"
COMMENT ON COLUMN veloroutes.segment."precision" IS 'Ordre de grandeur de la précision de saisie';


-- segment.sens_unique
COMMENT ON COLUMN veloroutes.segment.sens_unique IS 'Indique si le segment se parcourt dans un seul sens de circulation';


-- segment.geometrie_fictive
COMMENT ON COLUMN veloroutes.segment.geometrie_fictive IS 'Indique si le tracé de la section de véloroute est inconnu ou approximatif';


-- statut_segment_val
COMMENT ON TABLE veloroutes.statut_segment_val IS 'Nomenclature pour le statut réglementaire du segment cyclable';


-- statut_segment_val.id
COMMENT ON COLUMN veloroutes.statut_segment_val.id IS 'Identifiant';


-- statut_segment_val.code
COMMENT ON COLUMN veloroutes.statut_segment_val.code IS 'Code';


-- statut_segment_val.libelle
COMMENT ON COLUMN veloroutes.statut_segment_val.libelle IS 'Libellé';


-- TRIGGER numserie ON repere
COMMENT ON TRIGGER numserie ON veloroutes.repere IS 'Contrainte sur le champs numero_serie avec la fonction numserie()';


-- TRIGGER revetement ON segment
COMMENT ON TRIGGER revetement ON veloroutes.segment IS 'Contrainte sur le champs revetement avec la fonction revet()';


--
-- PostgreSQL database dump complete
--

