/*
Title       Database Structure Adjustment scripts - Release 1.0
Date        November 21th 2023
Author      Chee Ng
Description added constraint to eliminate duplicate relationship on lot_organisation_roles
*/

ALTER TABLE lot_organisation_roles
ADD CONSTRAINT UC_lot_organisation_roles UNIQUE (lot_id,organisation_id,role_type_id);
