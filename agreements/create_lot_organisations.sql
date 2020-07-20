/*
Title       create_lot_organisations.sql
Date        July 20th 2020
Author      Trevor Cummings
Description This file is a script to create data for LOT_ORGANISATIONS.   
*/
INSERT INTO LOT_ORGANISATION_ROLES (lot_id, 
                           organisation_id,
                           role_type_id,
                           trading_organisation_id, 
                           start_date, 
                           end_date)
values
                          (6, 
                           (select organisation_id from organisations where legal_name = 'ACS Business Supplies Ltd'),
                           1,
                           1,
                           '31-OCT-2016',
                           '31-OCT-2021');
© 2020 GitH
