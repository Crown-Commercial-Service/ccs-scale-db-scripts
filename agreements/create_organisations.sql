/*
Title       create_organisations.sql
Date        July 16th 2020
Author      Trevor Cummings
Description This file is a script to create data for ORGANISATIONS. This data eventually will reside in Conclave     
*/
INSERT INTO ORGANISATIONS (
  legal_name,
  business_type,
  organisation_uri,
  incorporation_date,
  country_of_incorporation,
  parent_org_id,
  ultimate_org_id)
  values 
('ACS Business Supplies Ltd',
 1,
 'www.acsacs.co.uk',
 '01-Jan-2018',
 'GB',
 null,
 null);
        
