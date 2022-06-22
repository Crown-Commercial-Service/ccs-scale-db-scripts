
/*
Tenders DB Update script: v15 - Buyer user details unique constraint on user_id
*/

ALTER TABLE buyer_user_details ADD CONSTRAINT buyer_user_unique UNIQUE(user_id);