-- Version No   Version Description
----------      -------------------
-- v0.0.5       Amend columns and constraint on search_terms and search_domains
CREATE INDEX journey_instance_questions_journey_instances_idx on journey_instance_questions (journey_instance_id);

CREATE INDEX search_domains_search_terms_idx on search_domains (search_id);

CREATE INDEX search_domains_journeys_idx on search_domains (journey_id);

CREATE INDEX journey_instance_answers_journey_instance_questions_idx on journey_instance_answers(journey_instance_question_id);

CREATE INDEX journey_instances_journey_idx on journey_instances(journey_id);
	
CREATE INDEX journey_instance_outcome_details_journey_instances_idx on journey_instance_outcome_details(journey_instance_id);

