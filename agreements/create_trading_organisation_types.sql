/*
Title       create_trading_organisation_types.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for trading_organisation_types. This data eventually will reside in Conclave     
*/
INSERT INTO public.trading_organisation_types(
	trading_organisation_type_id, trading_organisation_type_name, trading_organisation_type_description)
	VALUES (1, 'Organisation contact email', 'The contact email address for the organisation');
