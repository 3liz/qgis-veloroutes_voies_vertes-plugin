SELECT
	vp.id_portion,
	vp.id_local AS "ID_LOCAL",
	vp.id_on3v AS "ID_ON3V",
	vp.nom AS "NOM",
	(SELECT pv.libelle FROM veloroutes.portion_val AS pv WHERE pv.code = vp.type_portion) AS "TYPE",
	vp.description AS "DESCRIPTION",
 	CASE
 		WHEN EXISTS (SELECT 1 FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
 		THEN (SELECT etp.id_itineraire FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
 		ELSE NULL
 	END AS "ID_ITI",
	CASE
 		WHEN EXISTS (SELECT 1 FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
 		THEN (SELECT etp.etape FROM veloroutes.etape AS etp WHERE etp.id_portion = vp.id_portion)
 		ELSE NULL
 	END AS "ORDRE_ETAP",
	vp.geom
FROM veloroutes.v_portion as vp
