/*
Title       create_role_types.sql
Date        Feb 26th 2021
Author      Trevor Cummings
Description This file is a script to create data for role_types   
*/
INSERT INTO ROLE_TYPES (role_type_id,role_domain,role_type_name)
values (1,'LOT_PEOPLE','Contact for the supplier in relation to the lot');

INSERT INTO ROLE_TYPES (role_type_id,role_domain,role_type_name)
values (2,'LOT_ORGANISATION','Supplier');

INSERT INTO ROLE_TYPES (role_type_id,role_domain,role_type_name)
values (3,'COMMERCIAL_AGREEMENT_ORGANISATION','Owner');
