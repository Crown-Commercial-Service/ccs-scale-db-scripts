/*
Tenders DB Update script: v5: Add supplier_selections table
*/

CREATE TABLE IF NOT EXISTS supplier_selections (
    supplier_selection_id       SERIAL PRIMARY KEY,
    event_id                    INTEGER NOT NULL,
    organisation_mapping_id     INTEGER NOT NULL,
    created_by                  VARCHAR(2000) NOT NULL,
    created_at                  TIMESTAMP NOT NULL);

ALTER TABLE supplier_selections
ADD CONSTRAINT supplier_selections_procurement_events_fk FOREIGN KEY (event_id)
    REFERENCES procurement_events (event_id);

ALTER TABLE supplier_selections
ADD CONSTRAINT supplier_selections_organisation_mapping_fk FOREIGN KEY (organisation_mapping_id)
    REFERENCES organisation_mapping (organisation_mapping_id);
