/*
Tenders DB Update script: v16 - Added event state column to get status related document templates (Scoring, Award) 
*/

ALTER TABLE public.document_templates ADD event_state VARCHAR(32) DEFAULT NULL;