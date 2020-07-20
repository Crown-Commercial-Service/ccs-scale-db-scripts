/*
Title       create_commercial_agreement_organisation_roles.sql
Date        July 16th 2020
Author      Trevor Cummings
Description This file is a script to create data for COMMERCIAL_AGREEMENT_ORGANISATION_ROLES.   
*/

INSERT INTO COMMERCIAL_AGREEMENT_ORGANISATION_ROLES (commercial_agreement_id, organisation_id, role_type_id,start_date, end_date)
values
                          (1, (select organisation_id from organisations where legal_name = 'ACS Business Supplies Ltd'),
						   1,'31-OCT-2016','31-OCT-2021');
						  
