SELECT
	poi.id_poi AS "ID_POI",
	vp.id_portion AS "ID_PORTION"
FROM veloroutes.v_portion as vp, veloroutes.poi_service as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
UNION
SELECT
	poi.id_poi AS "ID_POI",
	vp.id_portion AS "ID_PORTION"
FROM veloroutes.v_portion as vp, veloroutes.poi_acces as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
Union
SELECT
	poi.id_poi AS "ID_POI",
	vp.id_portion AS "ID_PORTION"
FROM veloroutes.v_portion as vp, veloroutes.poi_tourisme as poi
WHERE ST_Distance(poi.geom, vp.geom)< 100
