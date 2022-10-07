/*
Title       Drop table script for Agreements Service
Created     October 5th 2022
Author      Nathan Topping
*/

DROP TABLE IF EXISTS commercial_agreements CASCADE;

DROP TABLE IF EXISTS lots CASCADE;

DROP TABLE IF EXISTS sectors CASCADE;

DROP TABLE IF EXISTS lot_sectors CASCADE;

DROP TABLE IF EXISTS route_to_market CASCADE;

DROP TABLE IF EXISTS lot_route_to_market CASCADE;

DROP TABLE IF EXISTS commercial_agreement_contacts CASCADE;

DROP TABLE IF EXISTS lot_rules CASCADE;

DROP TABLE IF EXISTS lot_rule_transaction_objects CASCADE;

DROP TABLE IF EXISTS lot_rule_attributes CASCADE;

DROP TABLE IF EXISTS lot_related_lots CASCADE;








/* TEMP: Old Ref */
DROP TABLE  IF EXISTS lot_procurement_event_types;

DROP TABLE  IF EXISTS lot_procurement_question_templates;

DROP TABLE  IF EXISTS procurement_event_types;

DROP TABLE  IF EXISTS procurement_question_templates;

DROP TABLE IF EXISTS contact_point_lot_prs;

DROP TABLE IF EXISTS contact_point_lot_ors;

DROP TABLE IF EXISTS contact_point_commercial_agreement_ors;

DROP TABLE IF EXISTS commercial_agreement_organisation_roles;

DROP TABLE IF EXISTS lot_people_roles;
 
DROP TABLE IF EXISTS lot_organisation_roles;

DROP TABLE IF EXISTS people;

DROP TABLE IF EXISTS trading_organisations ; 

DROP TABLE IF EXISTS organisations;

DROP TABLE IF EXISTS lot_route_to_market;

DROP TABLE IF EXISTS route_to_market;

DROP TABLE IF EXISTS lot_sectors;

DROP TABLE IF EXISTS sectors;

DROP TABLE IF EXISTS contact_point_reasons; 

DROP TABLE IF EXISTS contact_details; 

DROP TABLE IF EXISTS lot_rule_transaction_objects;

DROP TABLE IF EXISTS lot_rule_attributes;

DROP TABLE IF EXISTS lot_related_lots;

DROP TABLE IF EXISTS lot_rules;

DROP TABLE IF EXISTS lots;

DROP TABLE IF EXISTS commercial_agreement_benefits;

DROP TABLE IF EXISTS commercial_agreement_updates;

DROP TABLE IF EXISTS commercial_agreement_documents;

DROP TABLE IF EXISTS commercial_agreements;

DROP TABLE IF EXISTS role_types;

DROP TYPE IF EXISTS DOMAIN_TYPE;
