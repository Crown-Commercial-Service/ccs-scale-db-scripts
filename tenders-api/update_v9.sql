/*
Tenders DB Update script: v8: Add tender_status,publish_date and close_date  to proc events
*/
ALTER TABLE procurement_events ADD COLUMN IF NOT EXISTS tender_status  VARCHAR(20) NULL;
ALTER TABLE procurement_events ADD COLUMN IF NOT EXISTS publish_date  TIMESTAMP NULL;
ALTER TABLE procurement_events ADD COLUMN IF NOT EXISTS close_date  TIMESTAMP NULL;
