/*
Title       create_lot_rule_transaction_objects.sql
Date        June 23rd 2020
Author      Trevor Cummings
Description This file is a script to create data for lot rule transaction objects       
*/
insert into lot_rule_transaction_objects (lot_rule_id, object_name, object_reference)
values                                   (3,'basketValue','basket.value'); 
insert into lot_rule_transaction_objects (lot_rule_id, object_name, object_reference)
values                                   (6,'priceIncreasePercent','product.priceIncreasePercent');    
insert into lot_rule_transaction_objects (lot_rule_id, object_name, object_reference)
values                                   (7,'priceDecreasePercent','product.priceDecreasePercent');    
