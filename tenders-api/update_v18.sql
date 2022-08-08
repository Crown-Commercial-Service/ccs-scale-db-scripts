/*
Tenders DB Update script: v18 - Increased question_and_answer table coulmns size to  5000 for question and answer                                                                                              answer
*/

ALTER TABLE question_and_answer ALTER COLUMN question TYPE varchar(5000), ALTER COLUMN answer TYPE varchar(5000);