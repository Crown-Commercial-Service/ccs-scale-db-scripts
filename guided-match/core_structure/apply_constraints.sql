/*
Title       Database constraint application script for Guided Match database structure
Date        October 5th 2022
Author      Nathan Topping
Description Database constraint application scripts for initial release of Guided Match, when applied separately to creation

NOTE: Do not amend this file - add changes under the "patches" folder
*/

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

ALTER TABLE journey_instance_outcome_details
ADD CONSTRAINT journey_instance_outcome_details_journey_instances_fk FOREIGN KEY (journey_instance_id)
    REFERENCES journey_instances (journey_instance_id);

ALTER TABLE error_usage
ADD CONSTRAINT error_usages_failure_validation_types_fk FOREIGN KEY (failure_validation_type_code)
    REFERENCES failure_validation_types (failure_validation_type_code);

ALTER TABLE error_usage
ADD CONSTRAINT error_usages_error_messages_fk FOREIGN KEY (error_message_code)
    REFERENCES error_messages (error_message_code);

