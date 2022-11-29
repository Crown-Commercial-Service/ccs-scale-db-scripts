/** Unique constraints added for Organisations and trading organisations to avoid duplicate entites 
Before running this script, existing duplicates in the relevant tables must be cleanedup.
*/

ALTER TABLE organisations ADD CONSTRAINT organisations_entitycode_uq UNIQUE (entity_id,registry_code);
ALTER TABLE trading_organisations ADD CONSTRAINT org_trading_name_uq UNIQUE (organisation_id,trading_organisation_name);