/*
Tenders DB Update script: v4: Support assessment events by marking rfx-derived columns NULL
*/
ALTER TABLE procurement_events ALTER COLUMN external_event_id DROP NOT NULL;
ALTER TABLE procurement_events ALTER COLUMN external_reference_id DROP NOT NULL;
