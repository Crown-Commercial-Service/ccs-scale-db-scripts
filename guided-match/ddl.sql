/*
Title       Database creation script for FaT database design

Date        May 11th 2020

Author      Trevor Cummings

Description This file is a script to create the tables for the Find a Thing database. The data model for FaT will be deployed in 
            two separate databases. One will be a postgreSQL database for our relational tables and the other will be a Neo4j
            for the graph database.
            
            I will comment out the tables which are for the graph database as the create table statements will be created
            in a separate script


*/

/* Neo4J
CREATE TABLE ccs_outcomes (
   outcome_id                       INTEGER PRIMARY KEY,
   journey_question_id              INTEGER NOT NULL,
   outcome_evaluator_code           VARCHAR(10) NOT NULL, 
   journey_answer_id                INTEGER NOT NULL,
   ccs_support_ind                  CHAR(1) NOT NULL
);
*/


/* Neo4J 
CREATE TABLE domain_question_outcomes (
   outcome_id                       INTEGER PRIMARY KEY,
   journey_question_id              INTEGER NOT NULL,
   outcome_evaluator_code           VARCHAR(10) NOT NULL, 
   journey_answer_id                INTEGER NOT NULL,
   modifier_journey_name            VARCHAR(10) NOT NULL
);
*/
/* Neo4J
CREATE TABLE explicit_question_outcomes (
   outcome_id                       INTEGER PRIMARY KEY,
   journey_question_id              INTEGER NOT NULL,
   outcome_evaluator_code           VARCHAR(10) NOT NULL, 
   journey_answer_id                INTEGER NOT NULL,
   resulting_journey_question_id    INTEGER NOT NULL
);
*/

/* Neo4J
CREATE TABLE journey_answers ( --Need to check this one out with Dave H as attributes on model are different to descriptions on confluence page
  journey_answer_id                INTEGER PRIMARY KEY,
  journey_question_id              INTEGER NOT NULL,
  answer_type                      VARCHAR(50),
  answer_label                     VARCHAR(100),
  default_ind                      CHAR(1), -- Y or N default value will be N as only one can be Y
  valid_value                      VARCHAR(200),
  url                              VARCHAR(200), -- notsure required anymore
  regex_validation                 VARCHAR(2000)  -- notsure required anymore
);
*/

CREATE TABLE journey_instance_answers (
  journey_instance_answer_id        INTEGER PRIMARY KEY,
  journey_instance_question_id      INTEGER NOT NULL,
  journey_answer_id                 UUID,
  answer_sequence                   SMALLINT,
  answer_text                       VARCHAR(2000),
  answer_date                       DATE,
  answer_number                     NUMBER(18,4)
);         

CREATE INDEX JOIA_IDX1 on JOURNEY_INSTANCE_ANSWERS (journey_answer_id);

CREATE TABLE journey_instance_questions (
  journey_instance_question_id      INTEGER PRIMARY KEY,
  journey_instance_id               UUID NOT NULL,
  journey_question_id               UUID NOT NULL,
  question_order                    INTEGER NOT NULL,
  question_text                     VARCHAR(2000) NOT NULL
);
CREATE INDEX JOIQ_IDX1 on JOURNEY_INSTANCE_QUESTIONS (journey_question_id);


CREATE TABLE journey_instances (
  journey_instance_id               UUID PRIMARY KEY,
  journey_start_date                DATE NOT NULL,
  journey_end_date                  DATE NULL
);
CREATE INDEX JOIN_IDX1 ON JOURNEY_INSTANCES(journey_start_date);

/* Neo4J
CREATE TABLE journey_questions (
  journey_question_id               INTEGER PRIMARY KEY,
  question_id                       INTEGER NOT NULL,
  question_order                    SMALLINT NOT NULL ,
  regex_validation                  VARCHAR(2000),
  min_threshold_range               NUMBER(12,2),
  max_threshold_range               NUMBER(12,2),
  threshold_value                   NUMBER(12,2),
  min_threshold_date                DATE,
  max_Threshold_date                DATE,
  threshhold_date                   DATE
);

*/

/* This table could exist in some form in both databases */
CREATE TABLE journeys (
  journey_id                        UUID PRIMARY KEY,
  journey_name                      VARCHAR(200),
  published_status                  CHAR(1), -- Y(es) or N(o)
  parent_journey_id                 INTEGER
);
CREATE INDEX JOUR_IDX1 on JOURNEYS(journey_name);
CREATE INDEX JOUR_IDX2 on JOURNEYS(parent_journey_id);

/* Neo4J
CREATE TABLE lot_outcomes (
   outcome_id                       INTEGER PRIMARY KEY,
   journey_question_id              INTEGER NOT NULL,
   outcome_evaluator_code           VARCHAR(10) NOT NULL, 
   journey_answer_id                INTEGER NOT NULL,
   lot_number                       VARCHAR(10) NOT NULL        
);
*/



/* Neo4J
CREATE TABLE question_definitions (
  question_id                       INTEGER PRIMARY KEY,
  question_type                     VARCHAR(20) NOT NULL,
  question_description              VARCHAR(2000) NOT NULL,
  question_text                     VARCHAR(200) NOT NULL,
  published_status                  CHAR(1) NOT NULL, -- Y(es) or N(o),
  validate_via_agreement            CHAR(1) NOT NULL, -- Y(es) or N(o),
);
*/
/* Neo4J
CREATE TABLE question_groups (
  question_group_id                 INTEGER PRIMARY KEY,
  question_group_name               VARCHAR(100) NOT NULL,
  published_status                  CHAR(1) NOT NULL -- Need to check if we don't want to make this boolean
);
*/
/* Neo4J
CREATE TABLE question_group_members (
  question_group_member_id          INTEGER PRIMARY KEY,
  question_group_name               VARCHAR(200) NOT NULL,
  published_status                  CHAR(1) NOT NULL-- Y(es) or N(o),
);
*/
/* Neo4J
CREATE TABLE question_outcome_evaluators (
  outcome_evaluator_code            VARCHAR(10) PRIMARY KEY,
  outcome_evaluator_description     VARCHAR(200) NOT NULL
);
*/

CREATE TABLE search_domains (
  domain_modifier_id               INTEGER PRIMARY KEY,
  search_id                        INTEGER NOT NULL,
  journey_id                       UUID NOT NULL,
  modifier_journey_name            VARCHAR(20),
  modifier_journey_description     VARCHAR(2000)
);

create index SEDO_IDX1 ON SEARCH_DOMAINS(search_id);
create index SEDO_IDX2 ON SEARCH_DOMAINS(journey_id);
create index SEDO_IDX3 ON SEARCH_DOMAINS(modifier_journey_name);

CREATE TABLE search_terms (
  search_id                        INTEGER PRIMARY KEY,
  search_term                      VARCHAR(50) NOT NULL
);

CREATE INDEX SETE_IDX1 ON SEARCH_TERMS (search_term);

/* Neo4J
CREATE TABLE standard_answers  (
  standard_answer_id                INTEGER PRIMARY KEY,
  valid_value                       VARCHAR(200),
  answer_label                      VARCHAR(100),
);
*/

/* Referential constraints */

ALTER TABLE journey_instance_questions 
ADD CONSTRAINT journey_instance_questions_journey_instances_fk FOREIGN KEY (journey_instance_id) 
    REFERENCES journey_instances (journey_instance_id); 
    
ALTER TABLE journey_instance_questions 
ADD CONSTRAINT journey_instance_questions_journey_questions_fk FOREIGN KEY (journey_question_id) 
    REFERENCES journey_questions (journey_question_id);
    
ALTER TABLE search_domains
ADD CONSTRAINT search_domains_search_terms_fk FOREIGN KEY (search_id) 
    REFERENCES search_terms(search_id);    
    
ALTER TABLE search_domains
ADD CONSTRAINT search_domains_journeys_fk FOREIGN KEY (journey_id) 
    REFERENCES search_terms(journey_id);   
    
ALTER TABLE journey_instance_answers
ADD CONSTRAINT journey_instance_answers_journey_instance_questions_fk FOREIGN KEY (journey_instance_question_id)
    REFERENCES journey_instance_questions(journey_instance_question_id);
    
