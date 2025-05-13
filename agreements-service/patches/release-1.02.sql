-- Create audit_log entity for the admin panel --

CREATE TABLE audit_log ( 
    log_id SERIAL PRIMARY KEY, 
    updated_by VARCHAR(255) NOT NULL, 
    form_url VARCHAR(255) NOT NULL, 
    reason TEXT NOT NULL, 
    before_update JSONB, 
    after_update JSONB, 
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    organisation_id INTEGER REFERENCES organisations(organisation_id));