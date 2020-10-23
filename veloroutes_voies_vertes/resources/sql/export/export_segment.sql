SELECT
	id_segment,
	id_local AS "ID_LOCAL",
	id_on3V AS "ID_ON3V",
	(SELECT ss.libelle FROM veloroutes.statut_segment_val AS ss WHERE ss.code = statut) AS "STATUT",
	(SELECT av.libelle FROM veloroutes.etat_avancement_val AS av WHERE av.code = avancement) AS "AVANCEMENT",
 	annee_ouverture AS "AN_OUVERT",
 	sens_unique AS "SENSUNIQUE",
 	(SELECT rvt.libelle FROM veloroutes.revetement_val AS rvt WHERE rvt.code = revetement) AS "REVETEMENT",
 	gestionnaire AS "GESTION",
 	proprietaire AS "PROPRIETE",
 	date_saisie AS "DATESAISIE",
 	geometrie_fictive AS "FICTIF",
 	precision AS "PRECISION",
 	src_geom AS "SRC_GEOM",
 	src_annee AS "SRC_ANNEE",
	geom
FROM veloroutes.segment
