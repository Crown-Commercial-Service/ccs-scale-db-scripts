/*
Title       create_trading_organisations.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for trading_organisations. This data eventually will reside in Conclave     
*/
INSERT INTO public.trading_organisations(
	trading_organisation_id, trading_organisation_type_id, organisation_id, trading_organisation_name)
	VALUES (1,1,(select organisation_id from organisations where legal_name = 'ACS Business Supplies Ltd'), 'ACS Ltd');
