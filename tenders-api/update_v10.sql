
/*
Tenders DB Update script: v10 (question_and_answer table)
*/

CREATE TABLE public.question_and_answer (
	question_id SERIAL PRIMARY KEY NOT NULL,
	question varchar(2000) NOT NULL,
	answer varchar(2000) NOT NULL,
	event_id int4 NOT NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp null
);

ALTER TABLE public.question_and_answer
ADD CONSTRAINT procurement_event_fk FOREIGN KEY (event_id)
    REFERENCES public.procurement_events(event_id); 