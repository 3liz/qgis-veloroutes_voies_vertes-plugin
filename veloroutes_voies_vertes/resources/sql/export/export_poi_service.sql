SELECT
	id_poi,
	id_local as "ID_LOCAL",
 	id_on3V AS "ID_ON3V",
	(SELECT sv.libelle FROM veloroutes.poi_service_val AS sv WHERE sv.code = type) AS "TYPE",
 	description AS "DESCRIPT",
 	geom
FROM veloroutes.poi_service
