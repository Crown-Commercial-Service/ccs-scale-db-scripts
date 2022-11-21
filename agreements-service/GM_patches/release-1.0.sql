/*
Title       Database Population Adjustment scripts - Release 1.00
Date        November 21th 2022
Author      Chee Ng
Description Aligning CaS and GM agreement service data
*/

ALTER TABLE commercial_agreements ALTER COLUMN commercial_agreement_name SET NOT NULL;
ALTER TABLE commercial_agreements ALTER COLUMN commercial_agreement_owner DROP NOT NULL;
