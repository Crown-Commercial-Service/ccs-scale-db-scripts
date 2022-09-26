
CREATE TABLE assessment_dimension_criteria (
	assessment_dimension_criteria_id serial4 NOT NULL,
	assessment_id int4 NOT NULL,
	dimension_id int4 NOT NULL,
	criterion_id int4 NOT NULL,
	active boolean NOT NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT assessment_dimension_criteria_pkey PRIMARY KEY (assessment_dimension_criteria_id)
);


ALTER TABLE assessment_dimension_criteria ADD CONSTRAINT assessment_criteria_assessments_fk FOREIGN KEY (assessment_id) REFERENCES assessments(assessment_id);
ALTER TABLE assessment_dimension_criteria ADD CONSTRAINT assessment_criteria_dimensions_fk FOREIGN KEY (dimension_id) REFERENCES dimensions(dimension_id);

ALTER TABLE dimension_submission_types ADD submission_mandatory boolean NOT NULL DEFAULT true;
