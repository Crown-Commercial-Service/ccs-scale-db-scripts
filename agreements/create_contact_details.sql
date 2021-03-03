/*
Title       create_contact_details.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for contact_details. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_details(
	contact_detail_id, effective_from, effective_to, street_address, locality, region, postal_code, country_code, uprn, 
	telephone_number, fax_number, email_address, url)
	VALUES (1, '01-Jan-2016', null, '1 Waterdale', 'Wombourne', ['Wolverhampton', 'WV5 0DH', null, null,
		'020020202', '03030303', 'test_bat@crowncommercial.gov.uk','www.crowncommercial.gov.uk');
