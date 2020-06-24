/*
Title       create_lot_rule_attributes.sql
Date        June 23rd 2020
Author      Trevor Cummings
Description This file is a script to create data for lot rule transaction objects       
*/
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (1,'batShowSupplierNames','integer',1,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (2,'attr1','integer',null,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (2,'attr2','string',null,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (2,'attr3','number',null,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (3,'batFurtherCompetitionNotifyThreshhold','integer',900000,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (4,'approvalRequired','integer',1,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (5,'approvalRequired','integer',1,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (6,'batProductPriceIncreasePercent','number',33.3,null,null);
INSERT INTO LOT_RULE_ATTRIBUTES (lot_rule_id, attribute_name, attribute_data_type, value_number, value_text, value_date)
VALUES                          (7,'batProductPriceDecreasePercent','number',12.5,null,null);
