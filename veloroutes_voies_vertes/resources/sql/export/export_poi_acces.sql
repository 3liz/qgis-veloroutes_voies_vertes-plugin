SELECT
	id_poi,
	id_local as "ID_LOCAL",
 	id_on3V AS "ID_ON3V",
 	(SELECT av.libelle FROM veloroutes.poi_acces_val AS av WHERE av.code = type) AS "TYPE",
 	description AS "DESCRIPT",
 	CASE
 		WHEN EXISTS (SELECT 1 FROM exports.poi_portion AS pp WHERE pp.id_poi = poi.id_poi)
 		THEN (SELECT etp.etape
			  FROM veloroutes.etape as etp
			  JOIN exports.poi_portion as pp ON pp.id_portion = etp.id_portion
			  WHERE pp.id_poi = poi.id_poi
			  )
 		ELSE NULL
 	END AS "ID_ETAPE",
 	geom
FROM veloroutes.poi_acces as poi
