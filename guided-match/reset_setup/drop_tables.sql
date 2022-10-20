/*
Title       Drop table script for Guided Match
Created     October 5th 2022
Author      Nathan Topping
*/

DROP TABLE IF EXISTS journey_instance_answers CASCADE;

DROP TABLE IF EXISTS journey_instance_questions CASCADE;

DROP TABLE IF EXISTS journey_instances CASCADE;

DROP TABLE IF EXISTS journey_instance_outcome_details CASCADE;

DROP TABLE IF EXISTS journeys CASCADE;

DROP TABLE IF EXISTS search_domains CASCADE;

DROP TABLE IF EXISTS search_terms CASCADE;

DROP TABLE IF EXISTS failure_validation_types CASCADE;

DROP TABLE IF EXISTS error_messages CASCADE;

DROP TABLE IF EXISTS error_usage CASCADE;

DROP TYPE IF EXISTS enum_outcome_type CASCADE;