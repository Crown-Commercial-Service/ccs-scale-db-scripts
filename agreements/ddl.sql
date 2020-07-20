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

CREATE TABLE organisations (
  organisation_id          SERIAL         NOT NULL PRIMARY KEY,
  legal_name               VARCHAR(255)   NOT NULL UNIQUE,
  business_type            INTEGER        NOT NULL,
  organisation_uri         VARCHAR(2000),
  incorporation_date       DATE           NOT NULL,
  country_of_incorporation VARCHAR(2)    NOT NULL,
  parent_org_id            INTEGER,
  ultimate_org_id          INTEGER,
  organisation_status      INTEGER
);

CREATE INDEX ORGANISATIONS_IDX1 ON ORGANISATIONS (parent_org_id);
CREATE INDEX ORGANISATIONS_IDX2 ON ORGANISATIONS (ultimate_org_id);
            
CREATE TABLE people (
person_id       SERIAL       NOT NULL PRIMARY KEY,
organisation_id INTEGER      NOT NULL,	
first_name      VARCHAR(100) NOT NULL ,
last_name       VARCHAR(100) NOT NULL ,
title           VARCHAR(50)  NOT NULL
);	


CREATE TABLE lot_suppliers (
  lot_id                          INTEGER   NOT NULL,
  responsible_organisation_id     INTEGER   NOT NULL,
  responsible_person_id           INTEGER   NOT NULL,	
  start_date                      TIMESTAMP NOT NULL,
  end_date                        TIMESTAMP,
  PRIMARY KEY (lot_id, responsible_organisation_id)
);

CREATE TABLE commercial_agreement_suppliers (
  commercial_agreement_id INTEGER   NOT NULL,
  organisation_id         INTEGER   NOT NULL,
  start_date              TIMESTAMP NOT NULL,
  end_date                TIMESTAMP,
  PRIMARY KEY (commercial_agreement_id, organisation_id)
);

CREATE TABLE trading_organisation_types (
  trading_organisation_type_id          INTEGER PRIMARY KEY,
  trading_organisation_type_name        VARCHAR(100) UNIQUE NOT NULL,
  trading_organisation_type_description VARCHAR(1000));
  
CREATE TABLE trading_organisations (
  trading_organisation_id         INTEGER PRIMARY KEY,
  trading_organisation_type_id    INTEGER NOT NULL,
  organisation_id                 INTEGER NOT NULL,
  trading_organisation_name       VARCHAR(255) NOT NULL); 
  
CREATE INDEX TRADING_ORGANISATIONS_IDX1 ON TRADING_ORGANISATIONS(trading_organisation_name); 
  
CREATE TABLE contact_method_types (
  contact_method_type_id          INTEGER PRIMARY KEY,
  contact_method_type_name        VARCHAR(20) NOT NULL,
  contact_method_type_description VARCHAR(1000));
  
CREATE INDEX CONTACT_METHOD_TYPES_IDX1 ON CONTACT_METHOD_TYPES (contact_method_type_name); 

CREATE TABLE contact_point_reasons (
  contact_point_reason_id          INTEGER PRIMARY KEY,
  contact_point_reason_name        VARCHAR(100) NOT NULL,
  contact_point_reason_description VARCHAR(1000),
  source_application_system        VARCHAR(100));
  
CREATE INDEX CONTACT_POINT_REASONS_IDX1 ON CONTACT_POINT_REASONS (contact_point_reason_name); 
  
CREATE TABLE contact_methods (
  contact_method_id      BIGSERIAL PRIMARY KEY,
  contact_method_type_id INTEGER NOT NULL,
  effective_from         TIMESTAMP NOT NULL,
  effective_to           TIMESTAMP,
  virtual_address_value  VARCHAR(500),
  street_address         VARCHAR(100),
  locality               VARCHAR(100),
  region                 VARCHAR(100),
  postal_code            VARCHAR(20),
  country_code           VARCHAR(2),
  uprn                   INTEGER);
  
CREATE INDEX CONTACT_METHODS_IDX1 ON CONTACT_METHODS (effective_from);
  
CREATE TABLE contact_points(
  contact_point_id BIGSERIAL PRIMARY KEY,
  contact_method_id INTEGER NOT NULL,
  contact_point_reason_id INTEGER NOT NULL,
  party_id                INTEGER NOT NULL,
  party_table_name        VARCHAR(100) NOT NULL,	
  effective_from          TIMESTAMP NOT NULL,
  effecive_to             TIMESTAMP,
  primary_ind             BOOLEAN,
  source_application_system        VARCHAR(100));
  
CREATE INDEX CONTACT_POINTS_IDX1 ON CONTACT_POINTS (party_id, effective_from);

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
    
ALTER TABLE organisations
ADD CONSTRAINT organisations_organisations_fk1 FOREIGN KEY (parent_org_id) 
    REFERENCES organisations (organisation_id);  
    
ALTER TABLE organisations
ADD CONSTRAINT organisations_organisations_fk2 FOREIGN KEY (ultimate_org_id) 
    REFERENCES organisations (organisation_id);
    
ALTER TABLE lot_suppliers
ADD CONSTRAINT lots_suppliers_organisations_fk FOREIGN KEY (responsible_organisation_id) 
    REFERENCES organisations (organisation_id);  
    
ALTER TABLE lot_suppliers
ADD CONSTRAINT lot_suppliers_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
    
ALTER TABLE commercial_agreement_suppliers
ADD CONSTRAINT commercial_agreement_organisations_fk FOREIGN KEY (organisation_id) 
    REFERENCES organisations (organisation_id);      
    
ALTER TABLE commercial_agreement_suppliers 
ADD CONSTRAINT commercial_agreement_suppliers_commercial_agreements_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);    

ALTER TABLE trading_organisations 
ADD CONSTRAINT trading_organisations_trading_organisation_types_fk FOREIGN KEY (trading_organisation_type_id ) 
    REFERENCES trading_organisation_types (trading_organisation_type_id );
	
ALTER TABLE contact_methods 
ADD CONSTRAINT contact_methods_contact_method_types_fk FOREIGN KEY (contact_method_type_id) 
    REFERENCES contact_method_types (contact_method_type_id);
	
ALTER TABLE contact_points
ADD CONSTRAINT contact_points_contact_methods_fk FOREIGN KEY(contact_method_id)
    REFERENCES contact_methods (contact_method_id);

ALTER TABLE contact_points
ADD CONSTRAINT contact_points_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE lot_suppliers 
ADD CONSTRAINT lot_suppliers_people_fk FOREIGN KEY (responsible_person_id)
    REFERENCES people (person_id);					   

ALTER TABLE people 
ADD CONSTRAINT people_organisations_fk FOREIGN KEY (organisation_id)
    REFERENCES organisations (organisation_id);					   


  
