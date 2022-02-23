
/*
Tenders DB Update script: v6 (project_user_mapping table)
*/
CREATE TABLE IF NOT EXISTS project_user_mapping (
    project_user_mapping_id      SERIAL PRIMARY KEY,
    event_id                     INTEGER NOT NULL,
    user_id                      VARCHAR(20) NOT NULL,
    created_by                   VARCHAR(50) NOT NULL,
    created_at                   TIMESTAMP   NOT NULL,
    updated_by                   VARCHAR(50) ,
    updated_at                   TIMESTAMP );

ALTER TABLE project_user_mapping
ADD CONSTRAINT project_user_mapping_event_fk FOREIGN KEY (event_id)
    REFERENCES procurement_events(event_id);