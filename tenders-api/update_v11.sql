
/*
Tenders DB Update script: v11 (extend doc template source target type constraint)
*/

ALTER TABLE document_template_sources DROP CONSTRAINT check_target_type;
ALTER TABLE document_template_sources ADD CONSTRAINT check_target_type CHECK (target_type IN ('SIMPLE', 'LIST', 'TABLE', 'DATETIME', 'TITLE'));