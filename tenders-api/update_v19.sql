/*
Tenders DB Update script: v19 - Added extra columns for categorize different agreement templates                                                                                  answer
*/

ALTER TABLE public.document_templates ADD commercial_agreement_number varchar(20);
ALTER TABLE public.document_templates ADD lot_number varchar(20);
ALTER TABLE public.document_templates ADD template_group int4;