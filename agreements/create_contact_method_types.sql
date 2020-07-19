/*
Title       create_contact_method_types.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for ORGANISATION_TYPES. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_method_types(
	contact_method_type_id, contact_method_type_name, contact_method_type_description)
	VALUES (1, 'Email', 'Communication from one email address to another');
INSERT INTO public.contact_method_types(
	contact_method_type_id, contact_method_type_name, contact_method_type_description)
	VALUES (2, 'Postal Address', 'An address where a physical letter or parcel can be sent');
INSERT INTO public.contact_method_types(
	contact_method_type_id, contact_method_type_name, contact_method_type_description)
	VALUES (3, 'Phone', 'A telephone number for calling a fixed line');	
INSERT INTO public.contact_method_types(
	contact_method_type_id, contact_method_type_name, contact_method_type_description)
	VALUES (4, 'Mobile', 'A telephone number for calling a mobile telephone');	
INSERT INTO public.contact_method_types(
	contact_method_type_id, contact_method_type_name, contact_method_type_description)
	VALUES (5, 'Fax', 'A telephone number for receiving facsimile document');	
