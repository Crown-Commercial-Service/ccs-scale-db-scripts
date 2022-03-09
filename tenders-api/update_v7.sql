
/*
Tenders DB Update script: v7 (buyer_user_details table)
*/

CREATE TABLE public.buyer_user_details (
	user_id varchar(100) NOT NULL,
	user_password varchar(2000) NOT NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NULL,
	updated_by varchar(2000) NOT NULL,
	updated_at timestamp NULL
);