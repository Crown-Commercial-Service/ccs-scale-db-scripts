/*
Title       create_lot_suppliers.sql
Date        July 16th 2020
Author      Trevor Cummings
Description This file is a script to create data for ORGANISATIONS. This data eventually will reside in Conclave     
*/
INSERT INTO LOT_SUPPLIERS (lot_id, 
                           organisation_id,
                           trading_organisation_id, 
                           start_date, 
                           end_date)
values
                          (6, 
                           (select organisation_id from organisations where legal_name = 'ACS Business Supplies Ltd'),
                           1,
                           '31-OCT-2016',
                           '31-OCT-2021');
