/*
Title       Database creation script for Agreements database design
Date        May 26th 2020
Author      Trevor Cummings
Description This file is a script to create the tables for the Agreements database. The data model for Agreements will be 
            deployed in a postgreSQL database.
            
Version No Version Description
---------- -------------------
V0.0.1       Initial Release
*/

CREATE TABLE commercial_agreements (
  commercial_agreement_id           SERIAL PRIMARY KEY,
  commercial_agreement_number       VARCHAR(20) NOT NULL,
  commercial_agreement_name         VARCHAR(200) NOT NULL,
  commercial_agreement_owner        VARCHAR(200) NOT NULL,
  commercial_agreement_description  VARCHAR(2000) NOT NULL, -- perhaps this needs to be a different type
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL,
  agreement_url                     VARCHAR(2000) NOT NULL
);

CREATE INDEX COAG_IDX1 on COMMERCIAL_AGREEMENTS  (commercial_agreement_number);
CREATE INDEX COAG_IDX2 on COMMERCIAL_AGREEMENTS (commercial_agreement_name);
CREATE INDEX COAG_IDX3 on COMMERCIAL_AGREEMENTS  (commercial_agreement_owner);

CREATE TABLE lots (
  lot_id                            SERIAL PRIMARY KEY,
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
  sector_description                VARCHAR(2000) NOT NULL
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
  PRIMARY KEY (lot_id,route_to_market_name)          
);

CREATE TABLE commercial_agreement_contacts (
  commercial_agreement_contact_id   SERIAL PRIMARY KEY,
  contact_id                        SERIAL NOT NULL, -- Have made this serial as conclave does not exist to hold contacts.
  commercial_agreement_id           INTEGER NOT NULL,          
  contact_type                      VARCHAR(100) NOT NULL,
  email_address                     VARCHAR(254) NOT NULL
);
  
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX1 on COMMERCIAL_AGREEMENT_CONTACTS (contact_id);
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX2 on COMMERCIAL_AGREEMENT_CONTACTS (contact_type);
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX3 on COMMERCIAL_AGREEMENT_CONTACTS (contact_type);


CREATE TABLE lot_rules (
  lot_rule_id                       INTEGER PRIMARY KEY,
  lot_id                            INTEGER NOT NULL,
  lot_rule_name                     VARCHAR(50)   NOT NULL UNIQUE,
  lot_rule_description              VARCHAR(2000) NOT NULL,
  evaluation_type                   VARCHAR(100),
  related_application_system_name   VARCHAR(100)
);

CREATE INDEX LOT_RULES_IDX1 on LOT_RULES (lot_rule_name);
CREATE INDEX LOT_RULES_IDX2 on LOT_RULES (lot_rule_name);

CREATE TABLE lot_rule_transaction_objects (
  lot_rule_id                       INTEGER NOT NULL, 
  object_name                       VARCHAR(200) NOT NULL,
  object_reference                  VARCHAR(200) NOT NULL,
  PRIMARY KEY (lot_rule_id,object_name)
);            

CREATE INDEX LOT_RULE_TRANSACTION_OBJECTS_IDX1 on LOT_RULE_TRANSACTION_OBJECTS (lot_rule_id,object_name);
CREATE INDEX LOT_RULE_TRANSACTION_OBJECTS_IDX2 on LOT_RULE_TRANSACTION_OBJECTS (object_name);             

CREATE TABLE lot_rule_attributes (
  lot_rule_id                       INTEGER NOT NULL, 
  attribute_name                    VARCHAR(200),
  attribute_data_type               VARCHAR(20),
  value_number                      NUMERIC,
  value_text                        VARCHAR(200),
  value_date                        DATE,          
  PRIMARY KEY (lot_rule_id,attribute_name)
);

CREATE INDEX LOT_RULE_ATTRIBUTES_IDX1 on LOT_RULE_ATTRIBUTES (attribute_name);
CREATE INDEX LOT_RULE_ATTRIBUTES_IDX2 on LOT_RULE_ATTRIBUTES (attribute_data_type);             

CREATE TABLE lot_related_lots (
  lot_id                            INTEGER NOT NULL,
  lot_rule_id                       INTEGER NOT NULL, 
  relationship_description          VARCHAR(2000) NOT NULL,          
  PRIMARY KEY (lot_id,lot_rule_id)
);     
            
CREATE INDEX LOT_RELATED_LOTS_IDX1 on LOT_RELATED_LOTS (lot_rule_id);         

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
     
ALTER TABLE commercial_agreement_contacts
ADD CONSTRAINT commercial_agreement_contacts_commercial_agreements_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);
    
-- No FK to contacts as that entitry doesn't exist in our model.

ALTER TABLE lot_rules 
ADD CONSTRAINT lot_rules_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);

ALTER TABLE lot_related_lots 
ADD CONSTRAINT lot_related_lots_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
    
ALTER TABLE lot_related_lots 
ADD CONSTRAINT lot_related_lots_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);    
    
ALTER TABLE lot_rule_attributes 
ADD CONSTRAINT lot_rule_attributes_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);    
    
ALTER TABLE lot_rule_transaction_objects
ADD CONSTRAINT lot_rule_transaction_objects_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);        
    
