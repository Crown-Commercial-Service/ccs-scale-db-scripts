/*
Tenders DB Update script: v3: Add assessment supplier target (numeric) to proc events
*/
ALTER TABLE procurement_events ADD COLUMN IF NOT EXISTS assessment_supplier_target INTEGER NULL;
