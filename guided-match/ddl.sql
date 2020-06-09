/*
Title       Database creation script for FaT database design

Description This file is a script to create the tables for the Find a Thing database. The data model for FaT will be deployed in
            two separate databases. One will be a postgreSQL database for our relational tables and the other will be a Neo4j
            for the graph database.

*/

CREATE TABLE journey_instance_answers (
  journey_instance_answer_id        BIGSERIAL PRIMARY KEY,
  journey_instance_question_id      BIGINT NOT NULL,
  journey_answer_id                 UUID,
  answer_sequence                   SMALLINT,
  answer_text                       VARCHAR(2000),
  answer_date                       DATE,
  answer_number                     NUMERIC(18,4)
);

CREATE INDEX JOIA_IDX1 on JOURNEY_INSTANCE_ANSWERS (journey_answer_id);

CREATE TABLE journey_instance_questions (
  journey_instance_question_id      BIGSERIAL PRIMARY KEY,
  journey_instance_id               BIGINT NOT NULL,
  journey_question_id               UUID NOT NULL,
  question_order                    SMALLINT NOT NULL,
  question_text                     VARCHAR(2000) NOT NULL
);
CREATE INDEX JOIQ_IDX1 on JOURNEY_INSTANCE_QUESTIONS (journey_question_id);


CREATE TABLE journey_instances (
  journey_instance_id               BIGSERIAL PRIMARY KEY,
  journey_instance_uuid             UUID NOT NULL UNIQUE,
  journey_id                        UUID NOT NULL,
  search_id                         INTEGER NOT NULL,
  journey_start_date                DATE NOT NULL,
  journey_end_date                  DATE
);
CREATE INDEX JOIN_IDX1 ON JOURNEY_INSTANCES(journey_start_date);

/* This table could exist in some form in both databases */
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

/* Referential constraints */
ALTER TABLE journey_instance_questions
ADD CONSTRAINT journey_instance_questions_journey_instances_fk FOREIGN KEY (journey_instance_id)
    REFERENCES journey_instances (journey_instance_id);

ALTER TABLE search_domains
ADD CONSTRAINT search_domains_search_terms_fk FOREIGN KEY (search_id)
    REFERENCES search_terms(search_id);

ALTER TABLE search_domains
ADD CONSTRAINT search_domains_journeys_fk FOREIGN KEY (journey_id)
    REFERENCES journeys(journey_id);

ALTER TABLE journey_instance_answers
ADD CONSTRAINT journey_instance_answers_journey_instance_questions_fk FOREIGN KEY (journey_instance_question_id)
    REFERENCES journey_instance_questions(journey_instance_question_id);

ALTER TABLE journey_instances
ADD CONSTRAINT journey_instances_journey_fk FOREIGN KEY (journey_id)
    REFERENCES journeys(journey_id);

ALTER TABLE journey_instances
ADD CONSTRAINT journey_instances_search_terms_fk FOREIGN KEY (search_id)
    REFERENCES search_terms(search_id);
