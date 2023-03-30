/*
Title       Database Structure Adjustment scripts - Release 1.0
Date        March 30th 2023
Author      Chee Ng
Description WEB-2262:added selected_domain on journey_instances table
*/

ALTER TABLE journey_instances
ADD COLUMN selected_domain VARCHAR(50);