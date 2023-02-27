/*
Title       Database creation script for Agreements Service database structure
Date        October 6th 2022
Author      Nathan Topping
Description Database table creation scripts for initial release of Agreements Service

NOTE: Do not amend this file - add changes under the "patches" folder
*/

CREATE SCHEMA IF NOT EXISTS ccs_agreements;

CREATE TYPE DOMAIN_TYPE AS ENUM ('LOT_PEOPLE', 'LOT_ORGANISATION', 'COMMERCIAL_AGREEMENT_ORGANISATION');

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreements (
  commercial_agreement_id           SERIAL PRIMARY KEY NOT NULL,
  commercial_agreement_number       VARCHAR(20) NOT NULL,
  commercial_agreement_name         VARCHAR(200) NOT NULL,
  commercial_agreement_owner        VARCHAR(200),
  commercial_agreement_description  VARCHAR(2000) NOT NULL, -- perhaps this needs to be a different type
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL,
  agreement_url                     VARCHAR(2000) NOT NULL,
  lot_required                      BOOLEAN NOT NULL DEFAULT TRUE,
  lot_assessment_tool_id            INTEGER
);

CREATE INDEX COAG_IDX1 on COMMERCIAL_AGREEMENTS  (commercial_agreement_number);
CREATE INDEX COAG_IDX2 on COMMERCIAL_AGREEMENTS (commercial_agreement_name);
CREATE INDEX COAG_IDX3 on COMMERCIAL_AGREEMENTS  (commercial_agreement_owner);

----------------------------------------------------------------------------------------

CREATE TABLE lots (
  lot_id                            SERIAL PRIMARY KEY NOT NULL,
  lot_number                        VARCHAR(20) NOT NULL,
  lot_name                          VARCHAR(200) NOT NULL,
  lot_description                   VARCHAR(2000) NOT NULL,          
  commercial_agreement_id           INTEGER NOT NULL,
  lot_type                          VARCHAR(25) NOT NULL,
  start_date                        DATE NOT NULL,
  end_date                          DATE NOT NULL
);

CREATE INDEX LOTS_IDX1 on LOTS(lot_number);
CREATE INDEX LOTS_IDX2 on LOTS(lot_name);
CREATE INDEX LOTS_IDX3 on LOTS(commercial_agreement_id);

----------------------------------------------------------------------------------------

CREATE TABLE sectors (
  sector_code                       VARCHAR(2) PRIMARY KEY NOT NULL,
  sector_name                       VARCHAR(20) NOT NULL,
  sector_description                VARCHAR(2000) NOT NULL
);

CREATE INDEX SECTORS_IDX1 on SECTORS(sector_code);
CREATE INDEX SECTORS_IDX2 on SECTORS(sector_name);

----------------------------------------------------------------------------------------

CREATE TABLE lot_sectors (
  lot_id                            INTEGER,
  sector_code                       VARCHAR(2),
  PRIMARY KEY(lot_id,sector_code)
);

CREATE INDEX LOT_SECTORS_IDX1 on LOT_SECTORS (lot_id,sector_code);

----------------------------------------------------------------------------------------

CREATE TABLE route_to_market (
  route_to_market_name              VARCHAR(50) PRIMARY KEY,
  route_to_market_description       VARCHAR(2000)
);

----------------------------------------------------------------------------------------

CREATE TABLE lot_route_to_market (
  lot_id                                INTEGER ,
  route_to_market_name                  VARCHAR(50), 
  start_date                            DATE NOT NULL,
  end_date                              DATE NOT NULL,
  location                              VARCHAR(20), -- For example, Regional or National  
  buying_method_url                     VARCHAR(2000),
  lot_minimum_value                     NUMERIC(18,4),
  lot_maximum_value                     NUMERIC(18,4),   
  lot_contract_length_uom               VARCHAR(10),          
  lot_contract_length_minimum_value     SMALLINT, 
  lot_contract_length_maximum_value     SMALLINT,
  PRIMARY KEY (lot_id,route_to_market_name)
);

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreement_contacts (
  commercial_agreement_contact_id   SERIAL PRIMARY KEY NOT NULL,
  contact_id                        SERIAL NOT NULL, -- Have made this serial as conclave does not exist to hold contacts.
  commercial_agreement_id           INTEGER NOT NULL,          
  contact_type                      VARCHAR(100) NOT NULL,
  email_address                     VARCHAR(254) NOT NULL
);
  
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX1 on COMMERCIAL_AGREEMENT_CONTACTS (contact_id);
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX2 on COMMERCIAL_AGREEMENT_CONTACTS (contact_type);
CREATE INDEX COMMERCIAL_AGREEMENT_CONTACTS_IDX3 on COMMERCIAL_AGREEMENT_CONTACTS (contact_type);

----------------------------------------------------------------------------------------

CREATE TABLE lot_rules (
  lot_rule_id                       INTEGER PRIMARY KEY NOT NULL,
  lot_id                            INTEGER NOT NULL,
  lot_rule_name                     VARCHAR(50) NOT NULL UNIQUE,
  lot_rule_description              VARCHAR(2000) NOT NULL,
  evaluation_type                   VARCHAR(100),
  related_application_system_name   VARCHAR(100)
);

CREATE INDEX LOT_RULES_IDX1 on LOT_RULES (lot_rule_name);
CREATE INDEX LOT_RULES_IDX2 on LOT_RULES (lot_rule_name);

----------------------------------------------------------------------------------------

CREATE TABLE lot_rule_transaction_objects (
  lot_rule_id                       INTEGER NOT NULL, 
  object_name                       VARCHAR(200) NOT NULL,
  object_reference                  VARCHAR(200) NOT NULL,
  PRIMARY KEY (lot_rule_id,object_name)
);            

CREATE INDEX LOT_RULE_TRANSACTION_OBJECTS_IDX1 on LOT_RULE_TRANSACTION_OBJECTS (lot_rule_id,object_name);
CREATE INDEX LOT_RULE_TRANSACTION_OBJECTS_IDX2 on LOT_RULE_TRANSACTION_OBJECTS (object_name);             

----------------------------------------------------------------------------------------

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

----------------------------------------------------------------------------------------

CREATE TABLE lot_related_lots (
  lot_id                            INTEGER NOT NULL,
  lot_rule_id                       INTEGER NOT NULL, 
  relationship_description          VARCHAR(2000) NOT NULL,          
  PRIMARY KEY (lot_id,lot_rule_id)
);     

CREATE INDEX LOT_RELATED_LOTS_IDX1 on LOT_RELATED_LOTS (lot_rule_id);

----------------------------------------------------------------------------------------

CREATE TABLE organisations (
  organisation_id                                 SERIAL PRIMARY KEY NOT NULL,
  entity_id                                       VARCHAR(255),
  registry_code                                   VARCHAR(20), 	
  legal_name                                      VARCHAR(255) NOT NULL UNIQUE,
  business_type                                   VARCHAR(20),
  organisation_uri                                VARCHAR(2000),
  status                                          VARCHAR(100),
  incorporation_date                              DATE NOT NULL,
  country_of_incorporation                        VARCHAR(3) NOT NULL,
  country_name                                    VARCHAR(100),
  parent_org_id                                   INTEGER,
  ultimate_org_id                                 INTEGER,
  is_sme		                                      BOOLEAN,
  is_vcse		                                      BOOLEAN,
  active                                          BOOLEAN,
  CONSTRAINT organisations_entitycode_uq          UNIQUE (entity_id,registry_code)
);

CREATE INDEX ORGANISATIONS_IDX1 ON ORGANISATIONS (parent_org_id);
CREATE INDEX ORGANISATIONS_IDX2 ON ORGANISATIONS (ultimate_org_id);
CREATE INDEX ORGANISATIONS_IDX3 ON ORGANISATIONS (entity_id);

----------------------------------------------------------------------------------------

CREATE TABLE people (
person_id                           SERIAL PRIMARY KEY NOT NULL,
organisation_id                     INTEGER NOT NULL,	
first_name                          VARCHAR(100) NOT NULL,
last_name                           VARCHAR(100) NOT NULL,
title                               VARCHAR(50)  NOT NULL
);

----------------------------------------------------------------------------------------

CREATE TABLE role_types (
  role_type_id                      INTEGER NOT NULL,
  role_domain                       DOMAIN_TYPE  NOT NULL,	
  role_type_name                    VARCHAR(100) NOT NULL,
  PRIMARY KEY (role_type_id)
);

----------------------------------------------------------------------------------------

CREATE TABLE lot_organisation_roles (
  lot_organisation_role_id          SERIAL PRIMARY KEY NOT NULL,	
  lot_id                            INTEGER NOT NULL,
  organisation_id                   INTEGER NOT NULL,
  role_type_id	                    INTEGER NOT NULL,
  trading_organisation_id           INTEGER,           	
  start_date                        DATE NOT NULL,
  end_date                          DATE,
  organisation_status               CHAR(1) NOT NULL DEFAULT 'A',
  created_by                        VARCHAR(2000),
  created_at                        TIMESTAMP,
  updated_by                        VARCHAR(2000),
  updated_at                        TIMESTAMP
);

----------------------------------------------------------------------------------------

CREATE TABLE lot_people_roles (
  lot_person_role_id                SERIAL PRIMARY KEY NOT NULL,	
  lot_id                            INTEGER NOT NULL,
  person_id                         INTEGER NOT NULL,
  role_type_id                      INTEGER NOT NULL,	
  start_date                        DATE NOT NULL,
  end_date                          DATE
);

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreement_organisation_roles (
  commercial_agreement_organisation SERIAL PRIMARY KEY NOT NULL,
  commercial_agreement_id           INTEGER NOT NULL,
  organisation_id                   INTEGER NOT NULL,
  role_type_id                      INTEGER NOT NULL,
  start_date                        DATE NOT NULL,
  end_date                          DATE
);

----------------------------------------------------------------------------------------

CREATE TABLE trading_organisations (
  trading_organisation_id           INTEGER PRIMARY KEY,
  organisation_id                   INTEGER NOT NULL,
  trading_organisation_name         VARCHAR(255) NOT NULL,
  CONSTRAINT org_trading_name_uq    UNIQUE (organisation_id,trading_organisation_name)
); 

CREATE INDEX TRADING_ORGANISATIONS_IDX1 ON TRADING_ORGANISATIONS(trading_organisation_name); 

----------------------------------------------------------------------------------------

CREATE TABLE contact_point_reasons (
  contact_point_reason_id          INTEGER PRIMARY KEY NOT NULL,
  contact_point_reason_name        VARCHAR(100) NOT NULL,
  contact_point_reason_description VARCHAR(1000),
  source_application_system        VARCHAR(100)
);
  
CREATE INDEX CONTACT_POINT_REASONS_IDX1 ON CONTACT_POINT_REASONS (contact_point_reason_name); 

----------------------------------------------------------------------------------------

CREATE TABLE contact_details (
  contact_detail_id                SERIAL PRIMARY KEY NOT NULL,
  effective_from                   DATE NOT NULL,
  effective_to                     DATE,
  street_address                   VARCHAR(500),
  locality                         VARCHAR(100),
  region                           VARCHAR(100),
  postal_code                      VARCHAR(20),
  country_code                     VARCHAR(3),
  country_name                     VARCHAR(100),
  uprn                             INTEGER,
  telephone_number                 VARCHAR(100),
  fax_number                       VARCHAR(100),	
  email_address                    VARCHAR(500),
  url                              VARCHAR(2000)	
);

CREATE INDEX CONTACT_DETAILS_IDX1 ON CONTACT_DETAILS (effective_from);

----------------------------------------------------------------------------------------

CREATE TABLE contact_point_lot_prs(
  contact_point_id                 SERIAL PRIMARY KEY NOT NULL,
  contact_detail_id                INTEGER NOT NULL,
  contact_point_reason_id          INTEGER NOT NULL,
  lot_person_role_id               INTEGER NOT NULL, 
  contact_point_name               VARCHAR(100),	
  effective_from                   DATE NOT NULL,
  effective_to                     DATE,
  primary_ind                      BOOLEAN
);

CREATE INDEX CONTACT_POINT_LOT_PRS_IDX1 ON CONTACT_POINT_LOT_PRS (lot_person_role_id, effective_from);

----------------------------------------------------------------------------------------

CREATE TABLE contact_point_lot_ors(
  contact_point_id                 SERIAL PRIMARY KEY NOT NULL,
  contact_detail_id                INTEGER NOT NULL,
  contact_point_reason_id          INTEGER NOT NULL,
  lot_organisation_role_id         INTEGER NOT NULL, 
  contact_point_name               VARCHAR(255),	
  effective_from                   DATE NOT NULL,
  effective_to                     DATE,
  primary_ind                      BOOLEAN
);
  
CREATE INDEX CONTACT_POINT_LOT_ORS_IDX1 ON CONTACT_POINT_LOT_ORS (lot_organisation_role_id, effective_from);

----------------------------------------------------------------------------------------

CREATE TABLE contact_point_commercial_agreement_ors(
  contact_point_id                                SERIAL PRIMARY KEY,
  contact_detail_id                               INTEGER NOT NULL,
  contact_point_reason_id                         INTEGER NOT NULL,
  commercial_agreement_organisation_role_id       INTEGER NOT NULL, 
  contact_point_name                              VARCHAR(100),	
  effective_from                                  DATE NOT NULL,
  effective_to                                    DATE,
  primary_ind                                     BOOLEAN

);
  
CREATE INDEX CONTACT_POINT_COMMERCIAL_AGREEMENT_ORS_IDX1 ON CONTACT_POINT_COMMERCIAL_AGREEMENT_ORS (commercial_agreement_organisation_role_id, effective_from);

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreement_benefits(
  commercial_agreement_benefit_id    SERIAL PRIMARY KEY NOT NULL,
  commercial_agreement_id            INTEGER NOT NULL,
  benefit_name                       VARCHAR(2000),
  benefit_description                VARCHAR(2000),
  benefit_url                        VARCHAR(2000),
  order_seq                          INTEGER
);
			  
CREATE INDEX commercial_agreement_benefits_IDX1 ON commercial_agreement_benefits (commercial_agreement_id);
CREATE INDEX commercial_agreement_benefits_IDX2 ON commercial_agreement_benefits (benefit_name);

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreement_updates(
  commercial_agreement_update_id     SERIAL PRIMARY KEY NOT NULL,
  commercial_agreement_id            INTEGER NOT NULL,
  update_name                        VARCHAR(100),
  update_description                 VARCHAR(4000),
  update_url                         VARCHAR(2000),
  published_date                     TIMESTAMP
);
					  
CREATE INDEX commercial_agreement_updates_IDX1 ON commercial_agreement_updates (commercial_agreement_id);
CREATE INDEX commercial_agreement_updates_IDX2 ON commercial_agreement_updates (update_name);

----------------------------------------------------------------------------------------

CREATE TABLE commercial_agreement_documents(
  commercial_agreement_document_id   SERIAL PRIMARY KEY NOT NULL,
  commercial_agreement_id            INTEGER NOT NULL,
  document_name                      VARCHAR(200),
  document_description               VARCHAR(2000),
  document_url                       VARCHAR(2000),
  document_type                      VARCHAR(20),
  document_version                   INTEGER,
  language                           VARCHAR(2),
  format                             VARCHAR(100),	
  published_date                     TIMESTAMP,
  modified_at                        TIMESTAMP
);
					  
CREATE INDEX commercial_agreement_documents_IDX1 ON commercial_agreement_documents (commercial_agreement_id);
CREATE INDEX commercial_agreement_documents_IDX2 ON commercial_agreement_documents (document_name);

----------------------------------------------------------------------------------------

CREATE TABLE procurement_event_types(
  procurement_event_type_id                 INTEGER NOT NULL,
  procurement_event_type_name               VARCHAR(20) NOT NULL,
  procurement_event_type_description        VARCHAR(2000) NOT NULL,
  premarket_activity_ind                    BOOLEAN NOT NULL,
  CONSTRAINT procurement_event_types_pkey   PRIMARY KEY (procurement_event_type_id),
  CONSTRAINT procurement_event_types_ukey   UNIQUE      (procurement_event_type_name)
);

----------------------------------------------------------------------------------------

CREATE TABLE lot_procurement_event_types(
  lot_id                                                 INTEGER NOT NULL,
  procurement_event_type_id                              INTEGER NOT NULL,
  mandatory_event_ind                                    BOOLEAN NOT NULL,
  repeatable_event_ind                                   BOOLEAN NOT NULL,
  max_repeats                                            INTEGER,
  assessment_tool_id                                     VARCHAR(128) NOT NULL,
  CONSTRAINT lot_procurement_event_types_pkey            PRIMARY KEY (lot_id,procurement_event_type_id)
);

----------------------------------------------------------------------------------------

CREATE TABLE procurement_question_templates( 
  template_id                                     SERIAL NOT NULL,
  template_name                                   VARCHAR(200) NOT NULL,
  template_url                                    VARCHAR(2000),
  template_payload                                JSONB,
  CONSTRAINT procurement_question_templates_pkey  PRIMARY KEY (template_id),
  CONSTRAINT procurement_question_templates_ukey  UNIQUE      (template_name)
);

----------------------------------------------------------------------------------------

CREATE TABLE lot_procurement_question_templates(
  lot_id                    INTEGER NOT NULL,
  template_id               INTEGER NOT NULL,
  procurement_event_type_id INTEGER NOT NULL,
  CONSTRAINT lot_procurement_question_templatess_pkey PRIMARY KEY (lot_id,template_id,procurement_event_type_id)
);