/*
Title       create_commercial_agreement_documents.sql
Date        February 25th 2021
Author      Trevor Cummings
Description This file is a script to create test data for Commercial Agreement Documents          
*/

insert into commercial_agreement_documents(
  commercial_agreement_id,
  document_name,
  document_url,
  document_type,
  document_version,	
  published_date) 
  values 
 (1,
  'RM3733 Customer Guidance v.3.pdf',
  'https://assets.crowncommercial.gov.uk/wp-content/uploads/RM3733%20Customer%20Guidance%20v.3.pdf',
  'DOCTYPE',
  1,
  '21-Feb-2021') ;
