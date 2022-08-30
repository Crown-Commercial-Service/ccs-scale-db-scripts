/*
Tenders DB Update script: v1 (Organisation mappings table and FK)
*/
CREATE TABLE IF NOT EXISTS organisation_mapping (
    organisation_mapping_id     SERIAL PRIMARY KEY,
    organisation_id             VARCHAR(255)  NOT NULL,
	external_organisation_id    INTEGER       NOT NULL,
	created_by                  VARCHAR(2000) NOT NULL,
    created_at                  TIMESTAMP);

ALTER TABLE procurement_projects ADD COLUMN IF NOT EXISTS organisation_mapping_id INTEGER;

DO $$
BEGIN
  BEGIN
    ALTER TABLE procurement_projects
    ADD CONSTRAINT procurement_projects_organisation_mapping_fk FOREIGN KEY (organisation_mapping_id)
    REFERENCES organisation_mapping(organisation_mapping_id); 
  EXCEPTION
    WHEN duplicate_object THEN RAISE NOTICE 'Table constraint procurement_projects_organisation_mapping_fk already exists, skipping';
  END;

END $$; 