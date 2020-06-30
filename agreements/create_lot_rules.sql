/*
Title       create_lot_rules.sql
Date        June 23rd 2020
Author      Trevor Cummings
Description This file is a script to create test data for lot rules         
*/

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(1,6,'batShowSupplierNames','Specifies whether Supplier names can be shown for products','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(2,6,'batUpdateableAttributes','Specifies which attributes can be modified by BaT','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(3,6,'batFurtherCompetitionNotification','Specifies when BaT Buyers should be notified of Further Competition options','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(4,6,'batDeleteProductApprovalRequired','Specifies whether approval is required to delete a product','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(5,6,'batAddProductApprovalRequired','Specifies whether approval is required to add a product','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(6,6,'batProductPriceIncreaseApprovalRequired','Specifies when approval is required to increase a product price','flag','BaT');

INSERT INTO lot_rules 
(lot_rule_id,lot_id,lot_rule_name,lot_rule_description,evaluation_type,related_application_system_name) 
values 
(7,1,'batProductPriceDecreaseApprovalRequired','Specifies when approval is required to decrease a product price','flag','BaT');
