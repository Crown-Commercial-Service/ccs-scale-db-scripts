/*
Tenders DB Update script: v13: new column to store supplier selection justification
*/
ALTER TABLE procurement_events ADD COLUMN supplier_selection_justification VARCHAR(500)  NULL;