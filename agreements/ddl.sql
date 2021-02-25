/*
Title       Database creation script for Agreements database design
Date        May 26th 2020
Author      Trevor Cummings
Description This file is a script to create the tables for the Agreements database. The data model for Agreements will be 
            deployed in a postgreSQL database.
            
Version No Version Description
---------- -------------------
V0.0.2      Initial Release
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
  attribute_uom                     VARCHAR(20),	
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
  business_type            VARCHAR(20)        NOT NULL,
  organisation_uri         VARCHAR(2000),
  status                   VARCHAR(100),	
  incorporation_date       DATE           NOT NULL,
  country_of_incorporation VARCHAR(3)     NOT NULL,
  parent_org_id            INTEGER,
  ultimate_org_id          INTEGER,
  is_sme		   BOOLEAN,
  is_vcse		   BOOLEAN,
  active                   BOOLEAN		
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


CREATE TABLE lot_organisation_roles (
  lot_organisation_role_id        SERIAL    NOT NULL PRIMARY KEY,	
  lot_id                          INTEGER   NOT NULL,
  organisation_id                 INTEGER   NOT NULL,
  role_type_id	                  INTEGER   NOT NULL,
  trading_organisation_id         INTEGER,           	
  start_date                      DATE NOT NULL,
  end_date                        DATE
);


CREATE TABLE lot_people_roles (
  lot_person_role_id              SERIAL    NOT NULL PRIMARY KEY,	
  lot_id                          INTEGER   NOT NULL,
  person_id                       INTEGER   NOT NULL,
  role_type_id                    INTEGER   NOT NULL,	
  start_date                      DATE NOT NULL,
  end_date                        DATE
);

CREATE TABLE commercial_agreement_organisation_roles (
  commercial_agreement_organisation_role_id SERIAL    NOT NULL PRIMARY KEY,
  commercial_agreement_id                   INTEGER   NOT NULL,
  organisation_id                           INTEGER   NOT NULL,
  role_type_id                              INTEGER   NOT NULL,
  start_date                                DATE      NOT NULL,
  end_date                                  DATE
);

CREATE TABLE lot_people_role_types (
role_type_id             INTEGER PRIMARY KEY,
role_type_name           VARCHAR(100) NOT NULL	
);	
  
CREATE TABLE lot_organisation_role_types (
role_type_id             INTEGER PRIMARY KEY,
role_type_name           VARCHAR(100) NOT NULL	
);

CREATE TABLE commercial_agreement_role_types (
role_type_id             INTEGER PRIMARY KEY,
role_type_name           VARCHAR(100) NOT NULL	
);  

CREATE TABLE trading_organisations (
  trading_organisation_id         INTEGER PRIMARY KEY,
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
  
CREATE TABLE contact_details (
  contact_detail_id      BIGSERIAL PRIMARY KEY,
  contact_method_type_id INTEGER NOT NULL,
  effective_from         DATE NOT NULL,
  effective_to           DATE,
  virtual_address_value  VARCHAR(500),
  street_address         VARCHAR(100),
  locality               VARCHAR(100),
  region                 VARCHAR(100),
  postal_code            VARCHAR(20),
  country_code           VARCHAR(2),
  uprn                   INTEGER);
  
CREATE INDEX CONTACT_DETAILS_IDX1 ON CONTACT_DETAILS (effective_from);
  
CREATE TABLE contact_point_lot_prs(
  contact_point_id BIGSERIAL PRIMARY KEY,
  contact_detail_id INTEGER NOT NULL,
  contact_point_reason_id INTEGER NOT NULL,
  lot_person_role_id      INTEGER NOT NULL, 
  effective_from          DATE NOT NULL,
  effecive_to             DATE,
  primary_ind             BOOLEAN);
  
CREATE INDEX CONTACT_POINT_LOT_PRS_IDX1 ON CONTACT_POINTS (lot_person_role_id, effective_from);
					   
CREATE TABLE contact_point_lot_ors(
  contact_point_id         BIGSERIAL PRIMARY KEY,
  contact_detail_id        INTEGER NOT NULL,
  contact_point_reason_id  INTEGER NOT NULL,
  lot_organisation_role_id INTEGER NOT NULL, 
  effective_from           DATE NOT NULL,
  effecive_to              DATE,
  primary_ind              BOOLEAN);
  
CREATE INDEX CONTACT_POINTS_LOT_ORS_IDX1 ON CONTACT_POINTS (lot_organisation_role_id, effective_from);
					   
CREATE TABLE contact_point_commercial_agreement_ors(
  contact_point_id                              BIGSERIAL PRIMARY KEY,
  contact_detail_id                             INTEGER NOT NULL,
  contact_point_reason_id                       INTEGER NOT NULL,
  lot_commercial_agreement_organisation_role_id INTEGER NOT NULL, 
  effective_from                                DATE NOT NULL,
  effecive_to                                   DATE,
  primary_ind                                   BOOLEAN);
  
CREATE INDEX CONTACT_POINT_COMMERCIAL_AGREEMENT_ORS_IDX1 ON CONTACT_POINTS (lot_commercial_agreement_organisation_role_id, effective_from);
					   
CREATE TABLE commercial_agreement_benefits(
  commercial_agreement_benefit_id INTEGER  PRIMARY KEY,	
  commercial_agreement_id         INTEGER  NOT NULL,
  benefit_name                    VARCHAR(100),
  benefit_description             VARCHAR(2000),
  benefit_url                     VARCHAR(2000));
					  
CREATE INDEX commercial_agreement_benefits_IDX1 ON commercial_agreement_benefits (commercial_agreement_id);
CREATE INDEX commercial_agreement_benefits_IDX2 ON commercial_agreement_benefits (benefit_name);

CREATE TABLE commercial_agreement_updates(
  commercial_agreement_update_id INTEGER  PRIMARY KEY,	
  commercial_agreement_id        INTEGER  NOT NULL,
  update_name                    VARCHAR(100),
  update_description             VARCHAR(2000),
  update_url                     VARCHAR(2000),
  published_date                 TIMESTAMP);
					  
CREATE INDEX commercial_agreement_updates_IDX1 ON commercial_agreement_updates (commercial_agreement_id);
CREATE INDEX commercial_agreement_updates_IDX2 ON commercial_agreement_updates (update_name);

CREATE TABLE commercial_agreement_documents(
  commercial_agreement_document_id SERIAL  PRIMARY KEY,	
  commercial_agreement_id          INTEGER NOT NULL,
  document_name                    VARCHAR(100),
  document_url                     VARCHAR(2000),
  document_type                    VARCHAR(20),
  document_version                 INTEGER,	
  published_date                   TIMESTAMP);
					  
CREATE INDEX commercial_agreement_documents_IDX1 ON commercial_agreement_documents (commercial_agreement_id);
CREATE INDEX commercial_agreement_documents_IDX2 ON commercial_agreement_documents (document_name);

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
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lots_organisation_organisations_fk FOREIGN KEY (organisation_id) 
    REFERENCES organisations (organisation_id);  
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lot_organisation_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lot_organisation_lort_fk FOREIGN KEY (role_type_id) 
    REFERENCES lot_organisation_role_types (role_type_id);
					   
ALTER TABLE commercial_agreement_organisation_roles
ADD CONSTRAINT caor_organisations_fk FOREIGN KEY (organisation_id) 
    REFERENCES organisations (organisation_id);      
    
ALTER TABLE commercial_agreement_organisation_roles 
ADD CONSTRAINT caor_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);    

ALTER TABLE commercial_agreement_organisation_roles 
ADD CONSTRAINT caor_commercial_agreement_roles_fk FOREIGN KEY (role_type_id) 
    REFERENCES commercial_agreement_role_types (role_type_id);    

ALTER TABLE trading_organisations 
ADD CONSTRAINT trading_organisations_organisations_fk FOREIGN KEY (organisation_id ) 
    REFERENCES organisations (organisation_id );
	
ALTER TABLE contact_details 
ADD CONSTRAINT contact_details_contact_method_types_fk FOREIGN KEY (contact_method_type_id) 
    REFERENCES contact_method_types (contact_method_type_id);
	
ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_lot_people_roles_fk FOREIGN KEY (lot_person_role_id)
    REFERENCES lot_people_roles (lot_person_role_id);

ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_lot_people_roles_fk FOREIGN KEY (lot_organisation_role_id)
    REFERENCES lot_orgnisation_roles (lot_organisation_role_id);

ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_lot_people_roles_fk FOREIGN KEY (commercial_agreement_organisation_role_id)
    REFERENCES commercial_agreement_organisation_roles (commercial_agreement_organisation_role_id);
					  
ALTER TABLE lot_people_roles 
ADD CONSTRAINT lot_people_role_people_fk FOREIGN KEY (person_id)
    REFERENCES people (person_id);						   				   

ALTER TABLE lot_people_roles 
ADD CONSTRAINT lot_people_roles_people_fk FOREIGN KEY (role_type_id)
    REFERENCES lot_people_role_types (role_type_id);	
					   
ALTER TABLE people 
ADD CONSTRAINT people_organisations_fk FOREIGN KEY (organisation_id)
    REFERENCES organisations (organisation_id);	
					  
ALTER TABLE commercial_agreement_benefits
ADD CONSTRAINT coab_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id);    
					  
ALTER TABLE commercial_agreement_updates
ADD CONSTRAINT coau_commercial_agreement_fk FOREIGN KEY(commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id);    

ALTER TABLE commercial_agreement_documents
ADD CONSTRAINT coad_commercial_agreement_fk FOREIGN KEY(commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id);    


  
