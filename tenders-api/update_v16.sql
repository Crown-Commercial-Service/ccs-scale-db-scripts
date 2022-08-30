/*
Tenders DB Update script: v16 - Added event stage column to get stage related document templates (Scoring, Awardind) 
*/

ALTER TABLE public.document_templates ADD event_stage VARCHAR(32) DEFAULT NULL;