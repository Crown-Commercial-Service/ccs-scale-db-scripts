-- Version No   Version Description
----------      -------------------
-- v0.0.2       Add columns representing answer value units

-- Unit (currency, months etc) for numerical conditional input type questions (and multi-answer CI)
ALTER TABLE journey_instance_answers
ADD COLUMN unit VARCHAR(16) NULL;

-- Unit for numerical input (free entry) question types (post-MVP)
ALTER TABLE journey_instance_questions
ADD COLUMN unit VARCHAR(16) NULL;
