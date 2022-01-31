ALTER TABLE dimension_valid_values drop CONSTRAINT dimension_valid_values_dimensions_fk; 

ALTER TABLE assessment_submission_types DROP CONSTRAINT assessment_submission_types_assessment_tools_fk;

ALTER TABLE assessment_submission_types DROP CONSTRAINT assessment_submission_types_submission_types_fk;

ALTER TABLE assessment_taxons DROP CONSTRAINT assessment_taxons_assessment_tools_fk;

ALTER TABLE assessment_taxons DROP CONSTRAINT assessment_taxons_assessment_taxons_fk;

ALTER TABLE assessment_taxon_dimensions DROP CONSTRAINT assessment_taxon_dimensions_dimensions_fk;

ALTER TABLE assessment_taxon_dimensions DROP CONSTRAINT assessment_taxon_dimensions_assessment_taxons_fk;

ALTER TABLE requirement_taxons DROP CONSTRAINT requirement_taxons_requirements_fk;

ALTER TABLE requirement_taxons DROP CONSTRAINT requirement_taxons_assessment_taxons_fk;

ALTER TABLE lot_requirement_taxons DROP CONSTRAINT lot_requirement_taxons_requirement_taxons_fk;

ALTER TABLE supplier_submissions DROP CONSTRAINT supplier_submissions_lot_requirement_taxons_fk;

ALTER TABLE supplier_submissions DROP CONSTRAINT supplier_submissions_assessment_submission_types_fk;

ALTER TABLE assessments DROP CONSTRAINT assessments_assessment_tools_fk;

ALTER TABLE assessment_selections DROP CONSTRAINT assessment_selections_assessments_fk;

ALTER TABLE assessment_selections DROP CONSTRAINT assessment_selections_dimensions_fk;

ALTER TABLE assessment_selections DROP CONSTRAINT assessment_selections_requirement_taxons_fk;

ALTER TABLE assessment_results DROP CONSTRAINT assessment_results_assessments_fk;

ALTER TABLE assessment_dimension_weighting DROP CONSTRAINT assessment_dimension_weighting_assessments_fk;

ALTER TABLE assessment_dimension_weighting DROP CONSTRAINT assessment_dimension_weighting_dimensions_fk;

ALTER TABLE assessment_selection_details DROP CONSTRAINT assessment_selection_details_assessment_selections_fk; 

ALTER TABLE assessment_selection_results DROP CONSTRAINT assessment_selection_results_assessment_selection_details_fk;

ALTER TABLE assessment_selection_details DROP CONSTRAINT assessment_selection_details_assessment_submission_types_fk;

