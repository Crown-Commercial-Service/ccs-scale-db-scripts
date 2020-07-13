-- Role: pentestadmin
-- DROP ROLE pentestadmin;

CREATE ROLE pentestadmin WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION;

GRANT rds_superuser TO pentestadmin WITH ADMIN OPTION;

ALTER USER pentestadmin WITH PASSWORD 'password';
