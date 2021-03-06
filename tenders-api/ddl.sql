/*
Title       Database creation script for tenders-api database design
Date        Apr 29th 2021
Author      Trevor Cummings
Description This file is a script to create the tables for the tenders-api database. 
            
Version No Version Description
---------- -------------------
V0.0.1       Initial Release
*/

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


CREATE TABLE procurement_projects (project_id                  SERIAL PRIMARY KEY,
                                   commercial_agreement_number VARCHAR(20)   NOT NULL,
                                   lot_number                  VARCHAR(20)   NOT NULL,
                                   external_project_id         VARCHAR(50)   NOT NULL,
                                   external_reference_id       VARCHAR(50)   NOT NULL,
                                   project_name                VARCHAR(2000),
                                   created_by                  VARCHAR(2000) NOT NULL,
                                   created_at                  TIMESTAMP,
                                   updated_by                  VARCHAR(2000) NOT NULL,
                                   updated_at                  TIMESTAMP);
                                   
CREATE TABLE procurement_events  (event_id              SERIAL PRIMARY KEY, -- This comprises of the OCID as the prfix and an a unique id for the procurement
                                  ocds_authority_name   VARCHAR(20) NOT NULL, -- default will be OCDS and probably never change
                                  ocid_prefix           VARCHAR(50) NOT NULL, -- current value is b5fd17
                                  external_event_id     VARCHAR(50) NOT NULL,
                                  external_reference_id VARCHAR(50) NOT NULL,
                                  project_id            INTEGER     NOT NULL,
                                  event_name            VARCHAR(2000), 
                                  created_by            VARCHAR(2000) NOT NULL,
                                  created_at            TIMESTAMP,
                                  updated_by            VARCHAR(2000) NOT NULL,
                                  updated_at            TIMESTAMP);
                                  
ALTER TABLE procurement_events
ADD CONSTRAINT procurement_event_procurement_project_fk FOREIGN KEY (project_id)
    REFERENCES procurement_projects(project_id);                                  
