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

DROP TABLE IF EXISTS lot_procurement_event_types CASCADE;

DROP TABLE IF EXISTS lot_procurement_question_templates CASCADE;

DROP TABLE IF EXISTS procurement_event_types CASCADE;

DROP TABLE IF EXISTS procurement_question_templates CASCADE;

DROP TABLE IF EXISTS contact_point_lot_prs CASCADE;

DROP TABLE IF EXISTS contact_point_lot_ors CASCADE;

DROP TABLE IF EXISTS contact_point_commercial_agreement_ors CASCADE;

DROP TABLE IF EXISTS commercial_agreement_organisation_roles CASCADE;

DROP TABLE IF EXISTS lot_people_roles CASCADE;
 
DROP TABLE IF EXISTS lot_organisation_roles CASCADE;

DROP TABLE IF EXISTS people CASCADE;

DROP TABLE IF EXISTS trading_organisations CASCADE; 

DROP TABLE IF EXISTS organisations CASCADE;

DROP TABLE IF EXISTS contact_point_reasons CASCADE; 

DROP TABLE IF EXISTS contact_details CASCADE; 

DROP TABLE IF EXISTS commercial_agreement_benefits CASCADE;

DROP TABLE IF EXISTS commercial_agreement_updates CASCADE;

DROP TABLE IF EXISTS commercial_agreement_documents CASCADE;

DROP TABLE IF EXISTS template_groups CASCADE;

DROP TABLE IF EXISTS template_group_mapping CASCADE;

DROP TABLE IF EXISTS role_types CASCADE;

DROP TYPE IF EXISTS DOMAIN_TYPE CASCADE;
