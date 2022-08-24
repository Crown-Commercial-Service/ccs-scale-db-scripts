
/*
Tenders DB Update script: v10 (question_and_answer table)
*/

CREATE TABLE question_and_answer (
	question_id SERIAL PRIMARY KEY NOT NULL,
	question varchar(500) NOT NULL,
	answer varchar(500) NOT NULL,
	event_id int4 NOT NULL,
	created_by varchar(50) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(50) NULL,
	updated_at timestamp null
);

ALTER TABLE question_and_answer
ADD CONSTRAINT procurement_event_fk FOREIGN KEY (event_id)
    REFERENCES procurement_events(event_id); 