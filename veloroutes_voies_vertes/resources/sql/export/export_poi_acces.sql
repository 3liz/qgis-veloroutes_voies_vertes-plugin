WITH poi_portion as (
SELECT
	poi.id_poi,
	vp.id_portion
FROM veloroutes.v_portion as vp, veloroutes.poi_service as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
UNION
SELECT
	poi.id_poi,
	vp.id_portion
FROM veloroutes.v_portion as vp, veloroutes.poi_acces as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
Union
SELECT
	poi.id_poi,
	vp.id_portion
FROM veloroutes.v_portion as vp, veloroutes.poi_tourisme as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
)
SELECT
	poi.id_poi,
	poi.id_local as "ID_LOCAL",
 	poi.id_on3V AS "ID_ON3V",
 	(SELECT av.libelle FROM veloroutes.poi_acces_val AS av WHERE av.code = type) AS "TYPE",
 	description AS "DESCRIPT",
 	CASE
 		WHEN EXISTS (SELECT 1 FROM poi_portion AS pp WHERE pp.id_poi = poi.id_poi)
 		THEN (SELECT etp.etape
			  FROM veloroutes.etape as etp
			  JOIN poi_portion as pp ON pp.id_portion = etp.id_portion
			  WHERE pp.id_poi = poi.id_poi
			  )
 		ELSE NULL
 	END AS "ID_ETAPE",
 	geom
FROM veloroutes.poi_acces as poi
