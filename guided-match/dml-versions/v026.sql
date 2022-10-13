/*
Version No   Version Description
----------   -------------------
v0.0.26      Updating Error Messages for Building Materials DT
*/


INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
('ERR_GM069', 'Select the product you are looking for' , 'Select the product you are looking for');


DELETE FROM error_usage WHERE question_id = 'c9d1d3c4-3d5f-4db0-837e-be9f9fb8ce55';

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
('noSelection','ERR_GM069','c9d1d3c4-3d5f-4db0-837e-be9f9fb8ce55'),
('noSelection','ERR_GM060','def0be6b-76a6-4e87-aa85-61165a60e08b');

