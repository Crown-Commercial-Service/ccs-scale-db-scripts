/*
Title       create_contact_point_lot_prs.sql
Date        February 25th 2021
Author      Trevor Cummings
Description This file is a script to create data for contact_point_lot_prs. This data eventually will reside in Conclave     
*/
INSERT INTO public.contact_point_lot_prs(contact_detail_id, contact_point_reason_id, lot_person_role_id, effective_from, effecive_to, primary_ind)
	VALUES ( 1, 1, 1, '01-Jul-2020', null, TRUE);
	