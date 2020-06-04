BEGIN;


ALTER TABLE veloroutes.statut_segment_val DROP CONSTRAINT code8 CASCADE;
ALTER TABLE veloroutes.statut_segment_val ADD CONSTRAINT code8 UNIQUE (code);

ALTER TABLE veloroutes.statut_segment_val ADD PRIMARY KEY (id);

ALTER TABLE veloroutes.segment ADD FOREIGN KEY (statut) REFERENCES veloroutes.statut_segment_val (code);

ALTER TABLE veloroutes.etat_avancement_val RENAME CONSTRAINT "codeFK" TO code9;
ALTER TABLE veloroutes.niveau_administratif_val RENAME CONSTRAINT "FKcode" TO code1;
ALTER TABLE veloroutes.segment RENAME CONSTRAINT "segment_statut_fkey" TO statut;

COMMIT;
