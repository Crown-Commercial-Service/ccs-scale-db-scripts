/*
Version No Version Description

v0.0.4     This file is a script to create additional tables and insert values into the tables for error handling in Find a Thing.
*/

-- Failure Validation Types
CREATE TABLE failure_validation_types
(failure_validation_type_code varchar(10) PRIMARY KEY,
 failure_validation_type_name varchar(100) UNIQUE
);

CREATE TABLE error_messages
(error_message_code varchar(10)  PRIMARY KEY,
 error_message      varchar(1000),
 error_summary      varchar(1000)
);

CREATE TABLE error_usage
(error_usage_id serial PRIMARY KEY,
 failure_validation_type_code varchar(10),
 error_message_code varchar(10),
 question_id        UUID -- The graph Journey_Question node UUID
);

/* Referential constraints */
ALTER TABLE error_usage
ADD CONSTRAINT error_usages_failure_validation_types_fk FOREIGN KEY (failure_validation_type_code)
    REFERENCES failure_validation_types (failure_validation_type_code);
    
ALTER TABLE error_usage
ADD CONSTRAINT error_usages_error_messages_fk FOREIGN KEY (error_message_code)
    REFERENCES error_messages (error_message_code);
    
