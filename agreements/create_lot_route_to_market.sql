/*
Title       create_lot_route_to_market.sql
Date        June 15th 2020
Author      Trevor Cummings
Description This file is a script to create test data for lot_route_to_market         
*/

-- Location can be Regional or National  

-- RM3733

INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (1,'Further Competition','31-Oct-2016','31-Mar-2020','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12);
  
INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (2,'Further Competition','31-Oct-2016','31-Mar-2020','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12);
  
 INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (3,'Further Competition','31-Oct-2016','31-Mar-2020','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12);
 
INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (4,'Further Competition','31-Oct-2016','31-Mar-2020','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12);
  
INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (5,'Further Competition','31-Oct-2016','31-Mar-2020','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12);
  
 INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id, route_to_market_name, start_date, end_date, location, buying_method_url, 
  lot_minimum_value,lot_maximum_value, lot_contract_length_uom, lot_contract_length_minimum_value,lot_contract_length_maximum_value)
 VALUES
 (6,'Marketplace','31-Oct-2016','31-Oct-2021','National', 'https://www.crowncommercial.gov.uk/agreements',
  1,10000,'Month',6,12); 
  
-- RM6068  
