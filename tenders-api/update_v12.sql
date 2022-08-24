
/*
Tenders DB Update script: v11 (deleted flag for delete team members)
*/

ALTER TABLE project_user_mapping ADD deleted boolean DEFAULT false;
