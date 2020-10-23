SELECT
	id_repere,
	id_local as "ID_LOCAL",
 	id_on3V AS "ID_ON3V",
 	libelle AS "LIBELLE",
 	(SELECT r.libelle FROM veloroutes.repere_val AS r WHERE r.code = type_noeud) AS "TYPE_NOEUD",
 	geom
FROM veloroutes.repere
