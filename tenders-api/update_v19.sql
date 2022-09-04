/*
Tenders DB Update script: v19 - Added extra columns for categorize different agreement templates                                                                                  answer
*/

ALTER TABLE public.document_templates ADD commercial_agreement_number varchar(20);
ALTER TABLE public.document_templates ADD lot_number varchar(20);
ALTER TABLE public.document_templates ADD template_group int4;

ALTER TABLE public.document_template_sources ADD CONSTRAINT check_source_type CHECK (((source_type)::text = ANY (ARRAY[('JSON'::character varying)::text, ('JAVA'::character varying)::text, ('STATIC'::character varying)::text, ('SQL'::character varying)::text])));

ALTER TABLE public.document_template_sources ADD conditional_value varchar(2048) NULL;
