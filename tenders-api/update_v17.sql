
/*
Tenders DB Update script: v17 (Award details table)
*/

CREATE TABLE award_details (
	contract_id SERIAL PRIMARY KEY NOT NULL,
	award_id int4 NOT NULL,
	event_id int4 NOT NULL,
	contract_status varchar(10) NOT NULL,
	start_date timestamp NOT NULL,
	end_date timestamp null,
	created_by varchar(50) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(50) NULL,
	updated_at timestamp NULL
);

ALTER TABLE award_details
ADD CONSTRAINT procurement_event_fk FOREIGN KEY (event_id)
    REFERENCES procurement_events(event_id); 