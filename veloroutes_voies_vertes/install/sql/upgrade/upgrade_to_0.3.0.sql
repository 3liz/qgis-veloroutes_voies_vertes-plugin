-- insert_in_veloroutes(text)
CREATE FUNCTION veloroutes.insert_in_veloroutes(table_name text) RETURNS boolean
    LANGUAGE plpgsql
    AS $$BEGIN
	IF table_name = 'segment' THEN

		INSERT INTO veloroutes.segment(
		geom,
		--id_local,
		--id_on3v,
		statut,
		avancement,
		revetement,
		proprietaire,
		gestionnaire,
		precision,
		src_geom,
		sens_unique,
		date_saisie)
		SELECT
		geom,
		--id_local,
		--id_on3v,
		statut,
		CAST (avancement AS INTEGER),
		revetement,
		proprietaire,
		gestionnaire,
		precision,
		src_geom,
		sens_unique,
		CASE
			WHEN substring(date_saisie from 1 for 10) LIKE '__-__-____' THEN to_date(substring(date_saisie from 1 for 10),'DD-MM-YYYY')
			WHEN substring(date_saisie from 1 for 10) LIKE '__/__/____' THEN to_date(substring(date_saisie from 1 for 10),'DD-MM-YYYY')
		END AS date_saisie

		FROM imports.import_segment
		WHERE avancement IS NOT null
		AND statut IS NOT null
		-- check that enumerate types are correct
		AND EXISTS (SELECT 1 FROM veloroutes.etat_avancement_val WHERE code = CAST (avancement AS INTEGER))
		AND EXISTS (SELECT 1 FROM veloroutes.statut_segment_val WHERE code = statut)
		AND EXISTS (SELECT 1 FROM veloroutes.revetement_val WHERE code = revetement);

		RAISE NOTICE 'segment a été importé dans veloroutes';
	END IF;

	IF table_name = 'portion' THEN
		RAISE NOTICE 'Cas portion, aucune importation n est réalisée';
	END IF;

	IF table_name = 'itineraire' THEN
		RAISE NOTICE 'Cas itineraire, aucune importation n est réalisée';
	END IF;

	RETURN TRUE;
END;$$;
