/*
Title       Database Structure Adjustment scripts - Release 1.01
Date        November 04th 2024
Author      Chee Ng
Description added regulation and agreement type on commercial_agreements
*/

ALTER TABLE commercial_agreements
ADD COLUMN regulation VARCHAR(200),
ADD COLUMN agreement_type VARCHAR(200);