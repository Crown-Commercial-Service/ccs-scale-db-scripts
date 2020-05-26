/*
Title       Database creation script for Agreements database design
Date        May 26th 2020
Author      Trevor Cummings
Description This file is a script to create the tables for the Agreements database. The data model for Agreements will be 
            deployed in a postgreSQL database.
            
            
*/

CREATE TABLE commercial_agreements (
  commercial_agreement_id           INTEGER PRIMARY KEY,
  commercial_agreement_number       VARCHAR(20) NOT NULL,
  commercial_agreement_name         VARCHAR(200) NOT NULL,
  commercial_agreement_owner        VARCHAR(200) NOT NULL,
  description                       VARCHAR(2000) NOT NULL, -- perhaps this needs to be a different type
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL,
  agreement_url                     VARCHAR(2000) NOT NULL,
  authorisation_email               VARCHAR(200)
);

CREATE INDEX COAG_IDX1 on COMMERCIAL_AGREEMENTS  (commercial_agreement_number);
CREATE INDEX COAG_IDX2 on COMMERCIAL_AGREEMENTSS (commercial_agreement_name);
CREATE INDEX COAG_IDX3 on COMMERCIAL_AGREEMENTS  (commercial_agreement_owner);
CREATE INDEX COAG_IDX4 on COMMERCIAL_AGREEMENTS  (authorisation_email);

CREATE TABLE lots (
  lot_id                            INTEGER PRIMARY KEY,
  lot_number                        VARCHAR(20) NOT NULL,
  lot_name                          VARCHAR(200) NOT NULL,
  commercial_agreement_id           INTEGER NOT NULL,
  lot_type                          VARCHAR(25) NOT NULL, -- Valid values Services, Products or Products and Services
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL
);

CREATE INDEX LOTS_IDX1 on LOTS(lot_number);
CREATE INDEX LOTS_IDX2 on LOTS(lot_name);
CREATE INDEX LOTS_IDX3 on LOTS(commercial_agreement_id);

