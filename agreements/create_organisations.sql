/*
Title       create_organisations.sql
Date        July 16th 2020
Author      Trevor Cummings
Description This file is a script to create data for ORGANISATIONS. This data eventually will reside in Conclave     
*/
INSERT INTO ORGANISATIONS (
  organisation_name,
  alias_name,
  supplier_ind,
  buyer_ind,
  business_type,
  organisation_uri,
  creation_date,
  country_of_creation,
  parent_org_id,
  top_level_org_id,
  organisation_status)
  values 
('ACS Business Supplies Ltd',
 'ACSACS',
 B'1',
 B'0',
 1,
 'www.acsacs.co.uk',
 '01-Jan-2018',
 'GB',
 null,
 null,
 1);
        
