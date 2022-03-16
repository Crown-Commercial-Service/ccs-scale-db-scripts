/*
Tenders DB Update script: v8 (Document uploads table)
*/

CREATE TABLE IF NOT EXISTS document_uploads (
    document_upload_id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL,
    tenders_s3_object_key VARCHAR(1024) NOT NULL,
    external_document_id VARCHAR(256) NULL, -- Document upload service ID
    external_status VARCHAR(64) NOT NULL, -- Document upload service state
    audience VARCHAR(64) NOT NULL,
    document_description VARCHAR(1024) NULL,
    created_by VARCHAR(2000) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_by VARCHAR(2000),
    updated_at TIMESTAMP,

    -- Constraints
    CONSTRAINT procurement_events_fk FOREIGN KEY(event_id) REFERENCES procurement_events(event_id),
    CONSTRAINT check_external_status CHECK (external_status IN ('PROCESSING', 'SAFE', 'UNSAFE')),
    CONSTRAINT check_audience CHECK (audience IN ('BUYER', 'SUPPLIER')));
