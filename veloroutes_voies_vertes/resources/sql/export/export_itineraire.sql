SELECT
	id_iti,
	numero AS "NUMERO",
	nom_officiel AS "NOM_OFF",
	nom_usage AS "NOM_USAGE",
	depart AS "DEPART",
	arrivee AS "ARRIVEE",
	est_inscrit AS "EST_INSCRIT",
	niveau_schema AS "NIV_INSCRI",
	annee_inscription AS "AN_INSCRI",
	site_web AS "SITE_WEB",
	annee_ouverture AS "AN_OUVERT"
FROM veloroutes.itineraire
