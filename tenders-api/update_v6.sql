
/*
Tenders DB Update script: v6 (project_user_mapping table)
*/
CREATE TABLE IF NOT EXISTS project_user_mapping (
    project_id                   INTEGER     NOT NULL,
    event_id                     INTEGER NOT NULL,
    event_type                   VARCHAR(20) NOT NULL,
    user_id                   VARCHAR(20) NOT NULL,
    created_at                   TIMESTAMP   NOT NULL,
    updated_at                   TIMESTAMP,
    PRIMARY KEY (project_id,event_id)  );

ALTER TABLE project_user_mapping
ADD CONSTRAINT project_user_mapping_project_fk FOREIGN KEY (project_id)
    REFERENCES procurement_projects(project_id);

ALTER TABLE project_user_mapping
ADD CONSTRAINT project_user_mapping_event_fk FOREIGN KEY (event_id)
    REFERENCES procurement_events(event_id);