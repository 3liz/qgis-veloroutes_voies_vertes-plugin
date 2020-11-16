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

--
-- Data for Name: amenagement_segment_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.amenagement_segment_val (id, code, libelle) VALUES (1, 'SP', 'Site propre');
INSERT INTO veloroutes.amenagement_segment_val (id, code, libelle) VALUES (2, 'RTE', 'Partage de route');


--
-- Data for Name: amenagement_type_segment_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (1, 'VV', 'Voie verte', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (2, 'PCY', 'Piste cyclable', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (3, 'BSP', 'Boucle cyclable', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (4, 'ASP', 'Autre site propre', 'SP');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (5, 'RTE', 'Jalonnement', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (6, 'BCY', 'Bande cyclable', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (7, 'BCR', 'Boucle cyclable', 'RTE');
INSERT INTO veloroutes.amenagement_type_segment_val (id, code, libelle, amenagement) VALUES (8, 'ICA', 'Apaisée', 'RTE');


--
-- Data for Name: booleen_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('N', 'Ne sais pas', 1);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('F', 'False', 2);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES ('T', 'True', 3);
INSERT INTO veloroutes.booleen_val (code, libelle, id) VALUES (NULL, 'Non renseigné', 4);


--
-- Data for Name: etat_avancement_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.etat_avancement_val (code, libelle, id) VALUES ('01', 'Projet', 1);
INSERT INTO veloroutes.etat_avancement_val (code, libelle, id) VALUES ('02', 'Tracé arrêté', 2);
INSERT INTO veloroutes.etat_avancement_val (code, libelle, id) VALUES ('03', 'Travaux en cours', 3);
INSERT INTO veloroutes.etat_avancement_val (code, libelle, id) VALUES ('04', 'Ouvert', 4);


--
-- Data for Name: niveau_administratif_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.niveau_administratif_val (id, code, libelle) VALUES (1, 'DEP', 'Départemental');
INSERT INTO veloroutes.niveau_administratif_val (id, code, libelle) VALUES (2, 'REG', 'Régional');
INSERT INTO veloroutes.niveau_administratif_val (id, code, libelle) VALUES (3, 'NAT', 'National');
INSERT INTO veloroutes.niveau_administratif_val (id, code, libelle) VALUES (4, 'EUR', 'Européen');


--
-- Data for Name: poi_acces_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (1, 'ARO', 'accès gare routière');
INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (2, 'AFE', 'accès gare ferroviaire');
INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (3, 'AMA', 'accès gare maritime');
INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (4, 'AFL', 'accès gare fluviale');
INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (5, 'AAE', 'accès gare aéroportuaire');
INSERT INTO veloroutes.poi_acces_val (id, code, libelle) VALUES (6, 'ATC', 'accès station de transport');


--
-- Data for Name: poi_service_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (1, 'RST', 'restauration');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (2, 'MAR', 'marché');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (3, 'WC', 'sanitaires');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (4, 'RIS', 'relais info service');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (5, 'RV', 'relais vélo');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (6, 'GFG', 'station de gonflage');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (7, 'RLV', 'réparation, location de vélo');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (8, 'PIC', 'aire de pique-nique');
INSERT INTO veloroutes.poi_service_val (id, code, libelle) VALUES (9, 'H2O', 'point d eau');


--
-- Data for Name: poi_tourisme_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.poi_tourisme_val (id, code, libelle) VALUES (1, 'OT', 'office de tourisme');
INSERT INTO veloroutes.poi_tourisme_val (id, code, libelle) VALUES (2, 'OTL', 'hébergement');
INSERT INTO veloroutes.poi_tourisme_val (id, code, libelle) VALUES (3, 'ST', 'site touristique');


--
-- Data for Name: portion_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.portion_val (id, code, libelle) VALUES (1, 'ETP', 'Etape');
INSERT INTO veloroutes.portion_val (id, code, libelle) VALUES (2, 'VAR', 'Variante');
INSERT INTO veloroutes.portion_val (id, code, libelle) VALUES (3, 'PRV', 'Portion provisoire');
INSERT INTO veloroutes.portion_val (id, code, libelle) VALUES (4, 'OBS', 'Portion observée');


--
-- Data for Name: repere_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (1, 'DFE', 'Début/fin d étape');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (2, 'INT', 'Intersection d itinéraire');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (3, 'BIF', 'Bifurcation');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (4, 'APO', 'Accès POI');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (5, 'CPT', 'Compteur');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (6, 'PDL', 'Passage délicat');
INSERT INTO veloroutes.repere_val (id, code, libelle) VALUES (7, 'PCT', 'Point de connexion transfrontalier');


--
-- Data for Name: revetement_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.revetement_val (id, code, libelle) VALUES (1, 'LIS', 'lisse');
INSERT INTO veloroutes.revetement_val (id, code, libelle) VALUES (2, 'RUG', 'rugueux');
INSERT INTO veloroutes.revetement_val (id, code, libelle) VALUES (3, 'MEU', 'meuble');


--
-- Data for Name: statut_segment_val; Type: TABLE DATA; Schema: veloroutes; Owner: -
--

INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (1, 'VV', 'Voie verte');
INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (2, 'PCY', 'Piste cyclable');
INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (3, 'ASP', 'Autre site propre');
INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (4, 'RTE', 'Route');
INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (5, 'BCY', 'Bande cyclable');
INSERT INTO veloroutes.statut_segment_val (id, code, libelle) VALUES (6, 'ICA', 'Itinéraire à circulation apaisée');


--
-- Name: amenagement_segment_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.amenagement_segment_val_id_seq', 2, true);


--
-- Name: amenagement_type_segment_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.amenagement_type_segment_val_id_seq', 8, true);


--
-- Name: booleen_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.booleen_val_id_seq', 4, true);


--
-- Name: etat_avancement_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.etat_avancement_val_id_seq', 4, true);


--
-- Name: niveau_administratif_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.niveau_administratif_val_id_seq', 4, true);


--
-- Name: poi_acces_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.poi_acces_val_id_seq', 6, true);


--
-- Name: poi_service_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.poi_service_val_id_seq', 9, true);


--
-- Name: poi_tourisme_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.poi_tourisme_val_id_seq', 3, true);


--
-- Name: portion_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.portion_val_id_seq', 4, true);


--
-- Name: repere_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.repere_val_id_seq', 7, true);


--
-- Name: revetement_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.revetement_val_id_seq', 3, true);


--
-- Name: statut_segment_val_id_seq; Type: SEQUENCE SET; Schema: veloroutes; Owner: -
--

SELECT pg_catalog.setval('veloroutes.statut_segment_val_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

