/*
Tenders DB Update script: v2 (Document templates and sources)
*/
CREATE TABLE IF NOT EXISTS document_templates (
    document_template_id  SERIAL PRIMARY KEY,
    template_url          VARCHAR(2048)  NOT NULL,
    event_type            VARCHAR(32) NOT NULL);

CREATE TABLE IF NOT EXISTS document_template_sources (
    document_template_source_id   SERIAL PRIMARY KEY,
    document_template_id          INTEGER NOT NULL,
    field_placeholder             VARCHAR(512) NOT NULL,
    source_type                   VARCHAR(32) NOT NULL,
    source_path                   VARCHAR(2048) NOT NULL,
    target_type                   VARCHAR(32) NOT NULL,

    -- Constraints
    CONSTRAINT document_templates_fk FOREIGN KEY(document_template_id) REFERENCES document_templates(document_template_id),
    CONSTRAINT check_source_type CHECK (source_type IN ('JSON', 'JAVA', 'SQL')),
    CONSTRAINT check_target_type CHECK (target_type IN ('SIMPLE', 'LIST', 'TABLE', 'DATETIME')));
