ALTER TABLE dimension_valid_values
ADD CONSTRAINT dimension_valid_values_dimensions_fk FOREIGN KEY (dimension_id)
    REFERENCES dimensions(dimension_id);

ALTER TABLE assessment_submission_types
ADD CONSTRAINT assessment_submission_types_assessment_tools_fk FOREIGN KEY  (assessment_tool_id)
    REFERENCES assessment_tools (assessment_tool_id);

ALTER TABLE assessment_submission_types
ADD CONSTRAINT assessment_submission_types_submission_types_fk FOREIGN KEY  (submission_type_code)
    REFERENCES submission_types (submission_type_code);

ALTER TABLE assessment_taxons
ADD CONSTRAINT assessment_taxons_assessment_tools_fk FOREIGN KEY (assessment_tool_id)
    REFERENCES assessment_tools (assessment_tool_id);

ALTER TABLE assessment_taxons
ADD CONSTRAINT assessment_taxons_assessment_taxons_fk FOREIGN KEY (parent_assessment_taxon_id)
    REFERENCES assessment_taxons (assessment_taxon_id);

ALTER TABLE assessment_taxon_dimensions
ADD CONSTRAINT assessment_taxon_dimensions_dimensions_fk FOREIGN KEY (dimension_id)
    REFERENCES dimensions(dimension_id);

ALTER TABLE assessment_taxon_dimensions
ADD CONSTRAINT assessment_taxon_dimensions_assessment_taxons_fk FOREIGN KEY (assessment_taxon_id)
    REFERENCES assessment_taxons(assessment_taxon_id);

ALTER TABLE requirement_taxons
ADD CONSTRAINT requirement_taxons_requirements_fk FOREIGN KEY (requirement_id)
    REFERENCES requirements(requirement_id);

ALTER TABLE requirement_taxons
ADD CONSTRAINT requirement_taxons_assessment_taxons_fk FOREIGN KEY (assessment_taxon_id)
    REFERENCES assessment_taxons(assessment_taxon_id);

ALTER TABLE lot_requirement_taxons
ADD CONSTRAINT lot_requirement_taxons_requirement_taxons_fk FOREIGN KEY (requirement_taxon_id)
    REFERENCES requirement_taxons(requirement_taxon_id);

ALTER TABLE supplier_submissions
ADD CONSTRAINT supplier_submissions_lot_requirement_taxons_fk FOREIGN KEY (lot_requirement_taxon_id)
    REFERENCES lot_requirement_taxons (lot_requirement_taxon_id);

ALTER TABLE supplier_submissions
ADD CONSTRAINT supplier_submissions_assessment_submission_types_fk FOREIGN KEY (assessment_submission_type_id)
    REFERENCES assessment_submission_types (assessment_submission_type_id);

ALTER TABLE assessments
ADD CONSTRAINT assessments_assessment_tools_fk FOREIGN KEY (assessment_tool_id)
    REFERENCES assessment_tools(assessment_tool_id);

ALTER TABLE assessment_selections
ADD CONSTRAINT assessment_selections_assessments_fk FOREIGN KEY (assessment_id)
    REFERENCES assessments(assessment_id);

ALTER TABLE assessment_selections
ADD CONSTRAINT assessment_selections_dimensions_fk FOREIGN KEY (dimension_id)
    REFERENCES dimensions(dimension_id);

ALTER TABLE assessment_selections
ADD CONSTRAINT assessment_selections_requirement_taxons_fk FOREIGN KEY (requirement_taxon_id)
    REFERENCES requirement_taxons (requirement_taxon_id);

ALTER TABLE assessment_results
ADD CONSTRAINT assessment_results_assessments_fk FOREIGN KEY (assessment_id)
    REFERENCES assessments(assessment_id);

ALTER TABLE assessment_selection_details
ADD CONSTRAINT assessment_selection_details_assessment_selections_fk FOREIGN KEY (assessment_selection_id)
    REFERENCES assessment_selections(assessment_selection_id);

ALTER TABLE assessment_selection_results
ADD CONSTRAINT assessment_selection_results_assessment_selection_details_fk FOREIGN KEY (assessment_selection_detail_id)
    REFERENCES assessment_selection_details(assessment_selection_detail_id);

ALTER TABLE assessment_dimension_weighting
ADD CONSTRAINT assessment_dimension_weighting_assessments_fk FOREIGN KEY (assessment_id)
    REFERENCES assessments(assessment_id);

ALTER TABLE assessment_dimension_weighting
ADD CONSTRAINT assessment_dimension_weighting_dimensions_fk FOREIGN KEY (dimension_id)
    REFERENCES dimensions(dimension_id);


