CREATE OR REPLACE FUNCTION veloroutes.revet() RETURNS trigger AS
$BODY$
    BEGIN
        IF NEW.avancement = 1 THEN
			IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si avancement vaut 1';
			END IF;
        END IF;
        IF NEW.geometrie_fictive ='T' THEN
            IF NEW.revetement IS NOT NULL THEN
            	RAISE EXCEPTION 'revetement ne peut pas prendre de valeur si la geom est fictive';
			END IF;
        END IF;
        RETURN NEW;
    END;
$BODY$ LANGUAGE plpgsql;


-- split(integer, real, real)
CREATE FUNCTION veloroutes.split(id_seg integer, xnode real, ynode real) RETURNS boolean
    LANGUAGE plpgsql
    AS $$DECLARE
       seg record;
       cut geometry;
    geom_init geometry;
    geom_term geometry;
       id_new_seg integer;

BEGIN

       -- Récupération du point cliqué
       SELECT ST_GeomFromText('POINT(' || xnode || ' ' || ynode || ')',2154) INTO cut;

       -- Récupération du segment cliqué
       SELECT *
       FROM veloroutes.segment
       WHERE veloroutes.segment.id_segment=id_seg
       INTO seg;

       -- Vérification que le clique ne se situe pas trop loin d'un segment
       IF ST_Distance(cut, seg.geom)> 5 THEN
               RAISE EXCEPTION 'Aucun segment trouvé à proximité du clic : Distance > 5m ';
       END IF;

       -- Création des nouvelles géométries
       geom_init := ST_LineSubstring(seg.geom, 0, ST_LineLocatePoint(seg.geom, cut));
    geom_term := ST_LineSubstring(seg.geom, ST_LineLocatePoint(seg.geom, cut), 1);

       -- Vérification que le point de coupure est à plus d'un mètre des extrémités du segment
       IF ST_length(geom_init)<1 OR ST_length(geom_term)<1 THEN
               RAISE EXCEPTION 'Impossible de couper : point trop proche de l''extrémité';
       END IF;

       -- Modification du segment :
       -- OA----------(O)----------OB devient  OA----------(O)
       UPDATE veloroutes.segment s
       SET
               geom = geom_init
       WHERE id_segment = seg.id_segment;

        -- Création d'un nouveau segment :
        -- (O)----------OB
        -- On récupère les valeurs issues du segment d'origine
        INSERT INTO veloroutes.segment(annee_ouverture, date_saisie, src_geom, src_annee,avancement, revetement, statut, gestionnaire, proprietaire, precision, sens_unique, geometrie_fictive,geom)
        VALUES(seg.annee_ouverture, seg.date_saisie, seg.src_geom, seg.src_annee, seg.avancement, seg.revetement, seg.statut, seg.gestionnaire, seg.proprietaire, seg.precision, seg.sens_unique, seg.geometrie_fictive, geom_term)
        RETURNING id_segment into id_new_seg;

        -- Création des nouveaux elements de portion si besoin
        INSERT INTO veloroutes.element(id_portion,id_segment)
        SELECT veloroutes.element.id_portion, id_new_seg
        FROM veloroutes.element
        WHERE veloroutes.element.id_segment = id_seg;

        -- Return 1
        RETURN 1;

END;$$;

-- v_itineraire_insert()
CREATE FUNCTION veloroutes.v_itineraire_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE iti_id int; ids text;

BEGIN

       --INSERT a new row in itineraire
    INSERT INTO veloroutes.itineraire(numero, nom_officiel, nom_usage, depart, arrivee, annee_inscription, site_web, annee_ouverture, niveau_schema, est_inscrit)
    VALUES(NEW.numero, NEW.nom_officiel, NEW.nom_usage, NEW.depart, NEW.arrivee, NEW.annee_inscription, NEW.site_web, NEW.annee_ouverture, NEW.niveau_schema, NEW.est_inscrit)
    RETURNING id_iti into iti_id;

       --INSERT stages of the itineray in etape
       INSERT INTO veloroutes.etape(id_itineraire,id_portion)
    SELECT iti_id, vp.id_portion
       FROM veloroutes.v_portion vp
       --segments must be around the new geometry
       WHERE ST_DWithin(NEW.geom, vp.geom,0.01)
       --segments that share just one vertex with the new geom are eliminated
       AND ST_Within(vp.geom,ST_Buffer(NEW.geom,1));

       --Warning for the user if the selection includes a piece of portion
       --The selection should only be composed by full portions
       FOR ids IN
               SELECT veloroutes.v_portion.id_portion
               FROM veloroutes.v_portion
               --Optional
               WHERE ST_DWithin(veloroutes.v_portion.geom, NEW.geom, 0.01)
               --Portions whose geometry is only partially included in the selection
               AND ST_Overlaps(veloroutes.v_portion.geom,NEW.geom)
       LOOP
      RAISE NOTICE 'La portion (%) ne peut pas être partiellement séléctionnée',ids;
       END LOOP;
       RETURN NEW;

END;
$$;

-- FUNCTION v_itineraire_insert()
COMMENT ON FUNCTION veloroutes.v_itineraire_insert() IS 'Effectue les insertions dans les tables itineraire et etape lors de la saisie dans la vue v_itineraire';


-- v_portion_insert()
CREATE FUNCTION veloroutes.v_portion_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$DECLARE pid int; geo geometry;ids text;

BEGIN
	--INSERT a new portion
    INSERT INTO veloroutes.portion(nom, description,type_portion)
    VALUES(NEW.nom, NEW.description, NEW.type_portion)
    RETURNING id_portion into pid;

	--INSERT in element elements of the new portion
	INSERT INTO veloroutes.element(id_portion,id_segment)
    SELECT pid, veloroutes.segment.id_segment
	FROM veloroutes.segment
	--segments must be around the new geometry
	WHERE ST_DWithin(veloroutes.segment.geom,NEW.geom, 0.01)
	--segments that share just one vertex with the new geom are eliminated
	AND ST_Within(veloroutes.segment.geom,ST_Buffer(NEW.geom,1));

	--Warning for the user if the selection includes a piece of segment
	--The selection should only be composed by full segments
	FOR ids IN
		SELECT veloroutes.segment.id_segment
		FROM veloroutes.segment
		--Optional
		WHERE ST_DWithin(veloroutes.segment.geom,NEW.geom, 0.01)
		--Segments whose geometry is only partially included in the selection
		AND ST_Overlaps(veloroutes.segment.geom,NEW.geom)
	LOOP
      RAISE NOTICE 'Le segment (%) ne peut pas être partiellement séléctionné',ids;
   	END LOOP;

 	RETURN NEW;

END;$$;

-- FUNCTION v_portion_insert()
COMMENT ON FUNCTION veloroutes.v_portion_insert() IS 'Effectue les insertions dans les tables portion et element lors de la saisie dans la vue v_portion';

ALTER TABLE veloroutes.itineraire RENAME COLUMN id_local TO id_iti;
ALTER TABLE veloroutes.itineraire ADD COLUMN mont_subv real;
ALTER TABLE veloroutes.itineraire ADD COLUMN annee_subv date;

ALTER SEQUENCE veloroutes.itineraire_id_local_seq RENAME TO veloroutes.itineraire_id_iti_seq;
ALTER SEQUENCE veloroutes.itineraire_id_iti_seq OWNED BY veloroutes.itineraire.id_iti;

ALTER TABLE veloroutes.liaison ADD COLUMN geom public.geometry(MultiLineString,2154);

ALTER TABLE veloroutes.portion RENAME COLUMN id_local TO id_portion;
ALTER TABLE veloroutes.portion ADD COLUMN id_on3v text;
ALTER TABLE veloroutes.portion ADD COLUMN id_local text;
ALTER TABLE veloroutes.portion ADD COLUMN mont_subv real;
ALTER TABLE veloroutes.portion ADD COLUMN annee_subv date;

ALTER SEQUENCE veloroutes.portion_id_local_seq RENAME TO veloroutes.portion_id_portion_seq;
ALTER SEQUENCE veloroutes.portion_id_portion_seq OWNED BY veloroutes.portion.id_portion;

ALTER TABLE veloroutes.repere ADD COLUMN x double precision;
ALTER TABLE veloroutes.repere ADD COLUMN y double precision;

ALTER TABLE veloroutes.segment RENAME COLUMN id_local TO id_segment;
ALTER TABLE veloroutes.segment ADD COLUMN id_on3v text;
ALTER TABLE veloroutes.segment ADD COLUMN id_local text;

ALTER SEQUENCE veloroutes.segment_id_local_seq RENAME TO veloroutes.segment_id_segment_seq;
ALTER SEQUENCE veloroutes.segment_id_segment_seq OWNED BY veloroutes.segment.id_segment;

ALTER TABLE veloroutes.itineraire ALTER COLUMN id_local DROP DEFAULT;
ALTER TABLE ONLY veloroutes.itineraire ALTER COLUMN id_iti SET DEFAULT nextval('veloroutes.itineraire_id_iti_seq'::regclass);

ALTER TABLE veloroutes.portion ALTER COLUMN id_local DROP DEFAULT;
ALTER TABLE ONLY veloroutes.portion ALTER COLUMN id_portion SET DEFAULT nextval('veloroutes.portion_id_portion_seq'::regclass);

ALTER TABLE veloroutes.segment ALTER COLUMN id_local DROP DEFAULT;
ALTER TABLE ONLY veloroutes.segment ALTER COLUMN id_segment SET DEFAULT nextval('veloroutes.segment_id_segment_seq'::regclass);

-- v_itin_geom
CREATE VIEW veloroutes.v_itin_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    etape.id_itineraire
   FROM ((((veloroutes.etape
     JOIN veloroutes.portion ON ((portion.id_portion = etape.id_portion)))
     JOIN veloroutes.element ON ((element.id_portion = portion.id_portion)))
     JOIN veloroutes.segment ON ((segment.id_segment = element.id_segment)))
     JOIN veloroutes.itineraire ON ((etape.id_itineraire = itineraire.id_iti)))
  GROUP BY etape.id_itineraire;


-- VIEW v_itin_geom
COMMENT ON VIEW veloroutes.v_itin_geom IS 'Vue intermédiaire qui joint les itinéraires aux collections de géométries des segments qui les composent
';


-- v_itineraire
CREATE VIEW veloroutes.v_itineraire AS
 SELECT v_itin_geom.collect_geom AS geom,
    itineraire.id_iti,
    itineraire.numero,
    itineraire.nom_officiel,
    itineraire.nom_usage,
    itineraire.depart,
    itineraire.arrivee,
    itineraire.annee_inscription,
    itineraire.site_web,
    itineraire.annee_ouverture,
    itineraire.niveau_schema,
    itineraire.est_inscrit,
    itineraire.mont_subv,
    itineraire.annee_subv
   FROM (veloroutes.itineraire
     JOIN veloroutes.v_itin_geom ON ((v_itin_geom.id_itineraire = itineraire.id_iti)));


-- VIEW v_itineraire
COMMENT ON VIEW veloroutes.v_itineraire IS 'Vue qui joint les itinéraires aux collections de géométries des segments qui les composent
';


-- v_port_geom
CREATE VIEW veloroutes.v_port_geom AS
 SELECT public.st_collect(segment.geom) AS collect_geom,
    element.id_portion
   FROM ((veloroutes.element
     JOIN veloroutes.segment ON ((segment.id_segment = element.id_segment)))
     JOIN veloroutes.portion ON ((portion.id_portion = element.id_portion)))
  GROUP BY element.id_portion;


-- VIEW v_port_geom
COMMENT ON VIEW veloroutes.v_port_geom IS 'Vue intermédiaire qui joint les portions aux collections de géométries des segments qui les composent
';


-- v_portion
CREATE VIEW veloroutes.v_portion AS
 SELECT v_port_geom.collect_geom AS geom,
    portion.id_portion,
    portion.nom,
    portion.description,
    portion.type_portion,
    portion.id_on3v,
    portion.id_local,
    portion.mont_subv,
    portion.annee_subv
   FROM (veloroutes.portion
     JOIN veloroutes.v_port_geom ON ((portion.id_portion = v_port_geom.id_portion)));


-- VIEW v_portion
COMMENT ON VIEW veloroutes.v_portion IS 'Vue qui joint les portions aux collections de géométries des segments qui les composent';

-- v_itineraire insert_v_itineraire
CREATE TRIGGER insert_v_itineraire INSTEAD OF INSERT ON veloroutes.v_itineraire FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_itineraire_insert();


-- TRIGGER insert_v_itineraire ON v_itineraire
COMMENT ON TRIGGER insert_v_itineraire ON veloroutes.v_itineraire IS 'Rend la vue éditable avec la fonction v_itineraire_insert()';


-- v_portion insert_v_portion
CREATE TRIGGER insert_v_portion INSTEAD OF INSERT ON veloroutes.v_portion FOR EACH ROW EXECUTE PROCEDURE veloroutes.v_portion_insert();


-- TRIGGER insert_v_portion ON v_portion
COMMENT ON TRIGGER insert_v_portion ON veloroutes.v_portion IS 'Rend la vue éditable avec la fonction v_portion_insert()';


ALTER TABLE veloroutes.niveau_administratif_val RENAME CONSTRAINT "FKcode" TO code1;

ALTER TABLE veloroutes.veloroutes.statut_segment_val DROP CONSTRAINT code8;
ALTER TABLE ONLY veloroutes.statut_segment_val ADD CONSTRAINT code8 UNIQUE (code);

ALTER TABLE veloroutes.etat_avancement_val RENAME CONSTRAINT "codeFK" TO code9;

ALTER TABLE ONLY veloroutes.portion ADD CONSTRAINT portion_id_local UNIQUE (id_local);

ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT segment_id_local UNIQUE (id_local);

ALTER TABLE ONLY veloroutes.portion ADD CONSTRAINT portion_id_on3v UNIQUE (id_on3v);

ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT segment_id_on3v UNIQUE (id_on3v);

ALTER TABLE ONLY veloroutes.itineraire DROP CONSTRAINT itineraire_pkey;
ALTER TABLE ONLY veloroutes.itineraire ADD CONSTRAINT itineraire_pkey PRIMARY KEY (id_iti);

ALTER TABLE ONLY veloroutes.metadata ADD CONSTRAINT metadata_me_version_key UNIQUE (me_version);
ALTER TABLE ONLY veloroutes.metadata ADD CONSTRAINT metadata_pkey PRIMARY KEY (id);

ALTER TABLE ONLY veloroutes.portion DROP CONSTRAINT portion_pkey;
ALTER TABLE ONLY veloroutes.portion ADD CONSTRAINT portion_pkey PRIMARY KEY (id_portion);

ALTER TABLE ONLY veloroutes.segment DROP CONSTRAINT segment_pkey;
ALTER TABLE ONLY veloroutes.segment ADD CONSTRAINT segment_pkey PRIMARY KEY (id_segment);

ALTER TABLE ONLY veloroutes.statut_segment_val ADD CONSTRAINT statut_segment_val_pkey PRIMARY KEY (id);

ALTER TABLE ONLY veloroutes.element DROP CONSTRAINT portion;
ALTER TABLE ONLY veloroutes.element DROP CONSTRAINT segment;
ALTER TABLE ONLY veloroutes.element ADD CONSTRAINT element_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion);
ALTER TABLE ONLY veloroutes.element ADD CONSTRAINT element_segment FOREIGN KEY (id_segment) REFERENCES veloroutes.segment(id_segment);

ALTER TABLE ONLY veloroutes.etape DROP CONSTRAINT order_etape;
ALTER TABLE ONLY veloroutes.etape DROP CONSTRAINT portion;
ALTER TABLE ONLY veloroutes.etape DROP CONSTRAINT itineraire;
ALTER TABLE ONLY veloroutes.etape ADD CONSTRAINT etape_itineraire_portion FOREIGN KEY (id_itineraire) REFERENCES veloroutes.itineraire(id_iti);
ALTER TABLE ONLY veloroutes.etape ADD CONSTRAINT etape_portion_segment FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion);

ALTER TABLE veloroutes.frequentation DROP CONSTRAINT portion;
ALTER TABLE ONLY veloroutes.frequentation ADD CONSTRAINT portion FOREIGN KEY (id_portion) REFERENCES veloroutes.portion(id_portion) NOT VALID;
