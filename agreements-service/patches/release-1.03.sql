/*
Title       Database clean up and Structure Adjustment scripts - Release 1.03
Date        July 3rd 2025
Author      Raja D
Description clean up duplicate data and added constraint to to make organisation entity_id NOT NULL
*/

CREATE TEMP TABLE target_orgs AS
SELECT organisation_id
FROM organisations
WHERE entity_id IS NULL
   OR entity_id IN (
       SELECT entity_id
       FROM organisations
       WHERE entity_id IS NOT NULL
       GROUP BY entity_id
       HAVING COUNT(*) > 1
   );

DELETE FROM lot_organisation_roles
WHERE organisation_id IN (SELECT organisation_id FROM target_orgs);


DELETE FROM commercial_agreement_organisation_roles
WHERE organisation_id IN (SELECT organisation_id FROM target_orgs);


DELETE FROM trading_organisations
WHERE organisation_id IN (SELECT organisation_id FROM target_orgs);


DELETE FROM people
WHERE organisation_id IN (SELECT organisation_id FROM target_orgs);


DELETE FROM organisations
WHERE organisation_id IN (SELECT organisation_id FROM target_orgs);

DROP TABLE target_orgs;