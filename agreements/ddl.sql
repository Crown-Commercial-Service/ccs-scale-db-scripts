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
  commercial_agreement_description  VARCHAR(2000) NOT NULL, -- perhaps this needs to be a different type
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL,
  agreement_url                     VARCHAR(2000) NOT NULL,
  authorisation_email               VARCHAR(200)
);

CREATE INDEX COAG_IDX1 on COMMERCIAL_AGREEMENTS  (commercial_agreement_number);
CREATE INDEX COAG_IDX2 on COMMERCIAL_AGREEMENTS (commercial_agreement_name);
CREATE INDEX COAG_IDX3 on COMMERCIAL_AGREEMENTS  (commercial_agreement_owner);
CREATE INDEX COAG_IDX4 on COMMERCIAL_AGREEMENTS  (authorisation_email);

CREATE TABLE lots (
  lot_id                            INTEGER PRIMARY KEY,
  lot_number                        VARCHAR(20) NOT NULL,
  lot_name                          VARCHAR(200) NOT NULL,
  lot_description                   VARCHAR(2000) NOT NULL,          
  commercial_agreement_id           INTEGER NOT NULL, -- FK back to commercial agreements
  lot_type                          VARCHAR(25) NOT NULL, -- Valid values Services, Products or Products and Services
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL
);

CREATE INDEX LOTS_IDX1 on LOTS(lot_number);
CREATE INDEX LOTS_IDX2 on LOTS(lot_name);
CREATE INDEX LOTS_IDX3 on LOTS(commercial_agreement_id);

CREATE TABLE sectors (
  sector_code                       VARCHAR(2) PRIMARY KEY,
  sector_name                       VARCHAR(20) NOT NULL,
  sector_descripton                 VARCHAR(2000) NOT NULL
);

CREATE INDEX SECTORS_IDX1 on SECTORS(sector_code);
CREATE INDEX SECTORS_IDX2 on SECTORS(sector_name);


CREATE TABLE lot_sectors (
  lot_id                            INTEGER ,
  sector_code                       VARCHAR(2) ,
  PRIMARY KEY (lot_id,sector_code)          
);

CREATE INDEX LOT_SECTORS_IDX1 on LOT_SECTORS (lot_id,sector_code);

CREATE TABLE route_to_market (
  route_to_market_name              VARCHAR(50) PRIMARY KEY,
  route_to_market_description       VARCHAR(2000) NOT NULL
);

CREATE TABLE lot_route_to_market (
  lot_id                            INTEGER ,
  route_to_market_name              VARCHAR(50), 
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL,
  location                          VARCHAR(20), -- For example, Regional or National  
  buying_method_url                 VARCHAR(2000),
  lot_minimum_value                 NUMERIC(18,4),
  lot_maximum_value                 NUMERIC(18,4),   
  lot_contract_length_uom           VARCHAR(10),          
  lot_contract_length_minimum_value SMALLINT, 
  lot_contract_length_maximum_value SMALLINT,
  lot_procurement_minimum_quantity  SMALLINT,
  lot_procurement_maximum_quantity  SMALLINT,
  PRIMARY KEY (lot_id,route_to_market_name)          
);
         

ALTER TABLE lots 
ADD CONSTRAINT lots_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);
    
ALTER TABLE lot_sectors 
ADD CONSTRAINT lot_sectors_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);    
    
ALTER TABLE lot_sectors 
ADD CONSTRAINT lot_sectors_sectors_fk FOREIGN KEY (sector_code) 
    REFERENCES sectors (sector_code);        

ALTER TABLE lot_route_to_market
ADD CONSTRAINT lot_route_to_market_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);        

ALTER TABLE lot_route_to_market
ADD CONSTRAINT lot_route_to_market_route_to_market_fk FOREIGN KEY (route_to_market_name) 
    REFERENCES route_to_market (route_to_market_name);     
