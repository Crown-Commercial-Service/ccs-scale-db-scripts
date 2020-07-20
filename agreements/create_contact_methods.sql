/*
Title       create_contact_methods.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for contact_methods. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_methods(
	contact_method_id, contact_method_type_id, effective_from, effective_to, 
	virtual_address_value, street_address, locality, region, postal_code, country_code, uprn)
	VALUES (1, 1, '01-Jan-2016', null, 'test_bat@crowncommercial.gov.uk', null, null, null, null, null, null);