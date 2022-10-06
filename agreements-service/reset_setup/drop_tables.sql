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