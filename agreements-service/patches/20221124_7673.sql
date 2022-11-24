ALTER TABLE lot_organisation_roles 
	ADD COLUMN organisation_status char(1) NOT NULL DEFAULT 'A',
	ADD COLUMN created_by varchar(2000) NULL,
	ADD COLUMN created_at timestamp NULL,
	ADD COLUMN updated_by varchar(2000) NULL,
	ADD COLUMN updated_at timestamp NULL;