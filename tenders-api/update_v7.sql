
/*
Tenders DB Update script: v6 (buyer_user_details table)
*/

-- Drop table

-- DROP TABLE public.buyer_user_details;

CREATE TABLE public.buyer_user_details (
	user_id int4 NOT NULL,
	user_password varchar NOT NULL,
	created_by varchar NOT NULL,
	created_at timestamp NULL,
	updated_by varchar NOT NULL,
	updated_at timestamp null
	CONSTRAINT user_id_pkey PRIMARY KEY (user_id)
);