/*

Title       Drop table script for the Find a Thing Service

Date        June 4th 2020

Author      Trevor Cummings

Description This file is a script to drop the tables for the Find a Thing database.
*/

DROP TABLE IF EXISTS journey_instance_answers;

DROP TABLE IF EXISTS journey_instance_questions;

DROP TABLE IF EXISTS journey_instance_outcome_details;

DROP TABLE IF EXISTS journey_instances;

DROP TABLE IF EXISTS search_domains;

DROP TABLE IF EXISTS journeys;

DROP TABLE IF EXISTS search_terms;

DROP TABLE IF EXISTS error_usage;

DROP TABLE IF EXISTS error_messages;

DROP TABLE IF EXISTS failure_validation_types;

DROP TYPE IF EXISTS enum_outcome_type;
