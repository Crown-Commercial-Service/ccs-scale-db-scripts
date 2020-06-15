/*
Title       create_lot_route_to_market.sql
Date        June 15th 2020
Author      Trevor Cummings
Description This file is a script to create test data for lot_route_to_market         
*/

INSERT INTO LOT_ROUTE_TO_MARKET
( lot_id,
  route_to_market_name, 
  start_date,
  end_date,
  location, -- For example, Regional or National  
  buying_method_url,
  lot_minimum_value,
  lot_maximum_value,   
  lot_contract_length_uom,          
  lot_contract_length_minimum_value, 
  lot_contract_length_maximum_value)
 VALUES
 (1,
  'Further Competition',
  '01-Jan-2018',
  '01-Jan-2022,
  'National', -- Will be this value for all lots
  'BuyingMethodURL',
  1,
  10000,
  'Month',
  6,
  12);
  
  
