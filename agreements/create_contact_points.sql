/*
Title       create_contact_points.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for contact_points. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_points(
	contact_point_id, contact_method_id, contact_point_reason_id, party_id, effective_from, effecive_to, 
	primary_ind, source_application_system)
	VALUES (1, 1, 1, 1, '01-Jul-2020', null, TRUE, 'BaT');
