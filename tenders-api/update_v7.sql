
/*
Tenders DB Update script: v7 (buyer_user_details table)
*/

CREATE TABLE buyer_user_details (
	user_id varchar(100) NOT NULL,
	user_password varchar(256) NOT NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL
);