/*
Title       Database creation script for tenders-api database design
Date        Apr 29th 2021
Author      Trevor Cummings
Description This file is a script to create the tables for the tenders-api database. 
            
Version No Version Description
---------- -------------------
V0.0.1       Initial Release
*/

CREATE TABLE procurement_projects (project_id                  UUID PRIMARY KEY,
                                   commercial_agreement_number VARCHAR(20)   NOT NULL,
                                   lot_number                  VARCHAR(20)   NOT NULL,
                                   internal_jaggaer_id         VARCHAR(2000) NOT NULL,
                                   project_name                VARCHAR(2000),
                                   created_by                  VARCHAR(2000) NOT NULL,
                                   created_at                  TIMESTAMP,
                                   updated_by                  VARCHAR(2000) NOT NULL,
                                   updated_at                  TIMESTAMP);
