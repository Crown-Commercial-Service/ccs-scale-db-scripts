/*
Contact point name length increased to match the DMP API schema.
https://crowncommercialservice.atlassian.net/browse/SCAT-8205
*/
ALTER TABLE contact_point_lot_ors ALTER COLUMN contact_point_name TYPE varchar(255) USING contact_point_name::varchar;