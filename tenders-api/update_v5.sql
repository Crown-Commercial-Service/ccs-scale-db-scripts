
/*
Tenders DB Update script: v5 (project_user_mapping table)
*/
CREATE TABLE IF NOT EXISTS project_user_mapping (
    project_id                   INTEGER     NOT NULL,
    event_id                     INTEGER NOT NULL,
    event_type                   VARCHAR(20) NOT NULL,
    jaggaer_id                   VARCHAR(20) NOT NULL,
    created_at                   TIMESTAMP   NOT NULL,
    updated_at                   TIMESTAMP);
