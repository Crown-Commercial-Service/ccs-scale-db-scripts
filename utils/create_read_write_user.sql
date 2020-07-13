-- Template for provisioning a new user with read/write on all DB schema objects

CREATE USER test_rw WITH PASSWORD 'your_password';

GRANT CONNECT ON DATABASE [dbname] TO test_rw;

GRANT USAGE ON SCHEMA public TO test_rw;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO test_rw;
