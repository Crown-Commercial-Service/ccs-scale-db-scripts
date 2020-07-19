/*
Title       create_contact_point_reasons.sql
Date        July 19th 2020
Author      Trevor Cummings
Description This file is a script to create data for contact_point_reasons. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_point_reasons(
	contact_point_reason_id, contact_point_reason_name, contact_point_reason_description, source_application_system)
	VALUES (1, 'Organisation contact information', 'This reason is used to show applications that this reason should be used to contact the organisation'  , 'BaT');
