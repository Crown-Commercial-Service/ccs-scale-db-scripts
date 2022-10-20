/*
Title       Database creation script for Guided Match database structure
Date        October 5th 2022
Author      Nathan Topping
Description Database table creation scripts for initial release of Guided Match

NOTE: Do not amend this file - add changes under the "patches" folder
*/

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE journey_instance_answers (
  journey_instance_answer_id        BIGSERIAL PRIMARY KEY,
  journey_instance_question_id      BIGINT NOT NULL,
  journey_answer_id                 UUID, -- The graph answer node UUID
  answer_sequence                   SMALLINT,
  answer_text                       VARCHAR(200) NOT NULL, -- As presented to the user e.g. "Product", "Software", "Employment litigation"
  value_number                      DECIMAL, -- Numerical entry / conditional input type 'number'
  value_text                        VARCHAR(200), -- Free text entry value (post-MVP)
  value_date                        DATE -- Date selection / conditional input type 'date' (post-MVP)
);

CREATE INDEX JOIA_IDX1 on JOURNEY_INSTANCE_ANSWERS (journey_answer_id);

CREATE TABLE journey_instance_questions (
  journey_instance_question_id      BIGSERIAL PRIMARY KEY,
  journey_instance_id               BIGINT NOT NULL,
  journey_question_id               UUID NOT NULL,
  question_order                    SMALLINT NOT NULL,
  question_text                     VARCHAR(500) NOT NULL,
  question_hint                     VARCHAR(500) NOT NULL,
  question_type                     VARCHAR(50) NOT NULL
);

CREATE INDEX JOIQ_IDX1 on JOURNEY_INSTANCE_QUESTIONS (journey_question_id);

CREATE TABLE journey_instances (
  journey_instance_id               BIGSERIAL PRIMARY KEY,
  journey_instance_uuid             UUID NOT NULL UNIQUE,
  journey_id                        UUID NOT NULL,
  original_search_term              VARCHAR(200) NOT NULL,
  start_datetime                    TIMESTAMP NOT NULL,
  end_datetime                      TIMESTAMP,
  outcome_type                      VARCHAR(50)--enum_outcome_type
);

CREATE INDEX JOIN_IDX1 ON JOURNEY_INSTANCES(start_datetime);

CREATE TABLE journey_instance_outcome_details (
  journey_instance_outcome_detail_id      BIGSERIAL PRIMARY KEY,
  journey_instance_id                     BIGINT NOT NULL,
  agreement_number                        VARCHAR(20) NOT NULL,
  lot_number                              VARCHAR(20) NULL,
  unique (journey_instance_id, agreement_number, lot_number)
);

CREATE TABLE journeys (
  journey_id                        UUID PRIMARY KEY,
  journey_name                      VARCHAR(200) NOT NULL UNIQUE,
  published                         BOOLEAN NOT NULL,
  parent_journey_id                 UUID
);

CREATE INDEX JOUR_IDX1 on JOURNEYS(journey_name);

CREATE INDEX JOUR_IDX2 on JOURNEYS(parent_journey_id);

CREATE TABLE search_domains (
  domain_modifier_id               SERIAL PRIMARY KEY,
  lookup_entry_id                  UUID NOT NULL DEFAULT uuid_generate_v4(),
  search_id                        INTEGER NOT NULL,
  journey_id                       UUID NOT NULL,
  modifier_journey_name            VARCHAR(20) NOT NULL UNIQUE,
  journey_selection_text           VARCHAR(200) NOT NULL,
  journey_selection_description   VARCHAR(2000)
);

create index SEDO_IDX1 ON SEARCH_DOMAINS(search_id);

create index SEDO_IDX2 ON SEARCH_DOMAINS(journey_id);

create index SEDO_IDX3 ON SEARCH_DOMAINS(modifier_journey_name);

CREATE TABLE search_terms (
  search_id                        SERIAL PRIMARY KEY,
  search_term                      VARCHAR(50) NOT NULL UNIQUE
);

CREATE INDEX SETE_IDX1 ON SEARCH_TERMS (search_term);

ALTER TABLE journey_instance_answers
ADD COLUMN unit VARCHAR(16) NULL;

ALTER TABLE journey_instance_questions
ADD COLUMN unit VARCHAR(16) NULL;

ALTER TABLE journey_instance_questions
ALTER COLUMN question_hint DROP NOT NULL;

create extension if not exists pg_trgm;

alter table search_terms alter column search_term TYPE varchar(75);

alter table search_domains drop constraint search_domains_modifier_journey_name_key;

alter table search_domains alter column modifier_journey_name TYPE varchar(50);

CREATE INDEX journey_instance_questions_journey_instances_idx on journey_instance_questions (journey_instance_id);

CREATE INDEX search_domains_search_terms_idx on search_domains (search_id);

CREATE INDEX search_domains_journeys_idx on search_domains (journey_id);

CREATE INDEX journey_instance_answers_journey_instance_questions_idx on journey_instance_answers(journey_instance_question_id);

CREATE INDEX journey_instances_journey_idx on journey_instances(journey_id);
	
CREATE INDEX journey_instance_outcome_details_journey_instances_idx on journey_instance_outcome_details(journey_instance_id);

CREATE TABLE failure_validation_types
(failure_validation_type_code varchar(30) PRIMARY KEY,
 failure_validation_type_name varchar(100) UNIQUE
);

CREATE TABLE error_messages
(error_message_code varchar(30)  PRIMARY KEY,
 error_message      varchar(1000),
 error_summary      varchar(1000)
);

CREATE TABLE error_usage
(error_usage_id serial PRIMARY KEY,
 failure_validation_type_code varchar(30),
 error_message_code varchar(30),
 question_id        UUID -- The graph Journey_Question node UUID
);

