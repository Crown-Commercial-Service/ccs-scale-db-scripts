-- Version No   Version Description
----------      -------------------
-- v0.0.3       Make question_hint column in jiq table nullable

-- Not all questions have hint text, so this column must be nullable
ALTER TABLE journey_instance_questions
ALTER COLUMN question_hint DROP NOT NULL;
