SELECT
	id_poi,
	id_local as "ID_LOCAL",
 	id_on3V AS "ID_ON3V",
 	(SELECT tv.libelle FROM veloroutes.poi_tourisme_val AS tv WHERE tv.code = type) AS "TYPE",
 	description AS "DESCRIPT",
 	geom
FROM veloroutes.poi_tourisme
