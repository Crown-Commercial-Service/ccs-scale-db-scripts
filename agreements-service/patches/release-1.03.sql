/*
Title       Database clean up and Structure Adjustment scripts - Release 1.03
Date        July 3rd 2025
Author      Raja D
Description clean up duplicate data and added constraint to to make organisation entity_id NOT NULL
*/

WITH duplicate_entity_ids AS (
    SELECT entity_id
    FROM organisations
    WHERE entity_id IS NOT NULL
    GROUP BY entity_id
    HAVING COUNT(*) > 1
)
DELETE FROM organisations
WHERE entity_id IS NULL
   OR entity_id IN (SELECT entity_id FROM duplicate_entity_ids);

ALTER TABLE organisations
ALTER COLUMN entity_id SET NOT NULL;