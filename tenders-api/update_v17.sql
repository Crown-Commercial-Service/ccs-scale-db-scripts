
/*
Tenders DB Update script: v17 (Contract details table)
*/

CREATE TABLE contract_details (
	contract_id SERIAL PRIMARY KEY NOT NULL,
	award_id varchar(50) NOT NULL,
	event_id int4 NOT NULL,
	contract_status varchar(10) NOT NULL,
	created_by varchar(50) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(50) NULL,
	updated_at timestamp NULL
);

-- contract_details foreign keys
ALTER TABLE contract_details ADD CONSTRAINT procurement_event_fk FOREIGN KEY (event_id) REFERENCES procurement_events(event_id);
    
    