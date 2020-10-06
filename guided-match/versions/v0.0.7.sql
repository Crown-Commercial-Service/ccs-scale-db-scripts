/*
Version No   Version Description
----------   -------------------
v0.0.7       Inserts additional values into the tables for error handling in Find a Thing.
*/

insert into failure_validation_types (failure_validation_type_code, failure_validation_type_name)
values ('checkPositiveNumber', 'User has entered zero or a negative number');

insert into error_messages (error_message_code, error_summary, error_message)
values ('ERR_GM022', 'Enter your budget using numbers above 0', 'Enter your budget using numbers above 0'),
('ERR_GM023', 'Enter the length of your contract using whole numbers', 'Enter the length of your contract using whole numbers'),
('ERR_GM024', 'Enter the length of your contract using numbers above 0', 'Enter the length of your contract using numbers above 0'),
('ERR_GM025', 'Enter the length of your contract in months', 'Enter the length of your contract in months');

insert into error_usage (failure_validation_type_code, error_message_code, question_id)
values ('checkPositiveNumber', 'ERR_GM022', 'b879c16c-654e-11ea-bc55-0242ac130003'), --Budget
('checkPositiveNumber', 'ERR_GM022', 'd3a82a1e-ed20-11ea-adc1-0242ac120002'), --Budget (Legal)
('noValue', 'ERR_GM025', 'b879c25c-654e-11ea-bc55-0242ac130003'), --Contract
('checkWholeNumber', 'ERR_GM023', 'b879c25c-654e-11ea-bc55-0242ac130003'), --Contract
('checkPositiveNumber', 'ERR_GM024', 'b879c25c-654e-11ea-bc55-0242ac130003'); --Contract

update error_messages set error_message = 'Select which service you need' where error_message_code = 'ERR_GM011';
