CREATE TABLE std_calculation_rules (
	calculation_rule_id int4 not null,
	calculation_rule_name varchar(100) NOT NULL,
	calculation_rule_code varchar(100) NOT null,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT std_calculation_rules_pkey PRIMARY KEY (calculation_rule_id),
	CONSTRAINT uq_std_calculation_rule_code UNIQUE (calculation_rule_code)
);


CREATE TABLE std_exclusion_policy (
	exclusion_policy_id int4 not null,
	exclusion_policy_name varchar(100) NOT NULL,
	exclusion_policy_code varchar(100) NOT null,	
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT std_exclusion_policy_pkey PRIMARY KEY (exclusion_policy_id),
	CONSTRAINT uq_std_exclusion_policy_code UNIQUE (exclusion_policy_code)
);

INSERT INTO std_calculation_rules
(calculation_rule_id, calculation_rule_name, calculation_rule_code, created_by, created_at)
VALUES(0, 'Noop', 'DIM_NoopCalculator', 'dataloader', now()),
	(1, 'Standard', 'DIM_StandardWeighted', 'dataloader', now()),
	(2, 'Pricing', 'DIM_Pricing', 'dataloader', now());


INSERT INTO std_exclusion_policy
(exclusion_policy_id, exclusion_policy_name, exclusion_policy_code, created_by, created_at)
VALUES(0, 'Noop', 'EXCL_NoopPolicy', 'dataloader', now()),
	(1, 'AllRequirement', 'EXCL_AllReqNonZero', 'dataloader', now()),
	(2, 'AnyOneRequirement', 'EXCL_AtleastOneNonZero', 'dataloader', now());
	
	
CREATE TABLE assessment_tool_dimensions (
	assessment_tool_dimension_id serial4 NOT NULL,
	assessment_tool_id int4 NOT NULL,
	dimension_id int4 NOT NULL,
	calculation_rule_id int4 NOT NULL,
	exclusion_policy_id int4 NULL,
	min_weighting_pct numeric NULL,
	max_weighting_pct numeric NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT assessment_tool_dimensions_pkey PRIMARY KEY (assessment_tool_dimension_id),
	CONSTRAINT uq_assessment_tool_dimensions UNIQUE (assessment_tool_id, dimension_id)
);

ALTER TABLE assessment_tool_dimensions ADD CONSTRAINT assessment_tool_dimensions_fk 
FOREIGN KEY (assessment_tool_id) REFERENCES assessment_tools(assessment_tool_id);
ALTER TABLE assessment_tool_dimensions ADD CONSTRAINT assessment_tool_dimensions_fk_1 
FOREIGN KEY (dimension_id) REFERENCES dimensions(dimension_id);

CREATE TABLE submission_group (
	submission_group_id serial4 NOT NULL,
	submission_group_external_code varchar(32) NOT NULL,
	submission_group_desc varchar(2000) NOT NULL,	
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT submission_group_pkey PRIMARY KEY (submission_group_id)
);



CREATE TABLE assessment_tool_submission_group (
	assessment_tool_submission_group_id serial4 not null,
	submission_group_id int4 NOT NULL,
	assessment_tool_id int4 NOT NULL,	
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT assessment_tool_submission_group_pkey PRIMARY KEY (assessment_tool_submission_group_id),
	CONSTRAINT uq_assessment_tool_submission_group UNIQUE (assessment_tool_id, submission_group_id)
);

ALTER TABLE assessment_tool_submission_group ADD CONSTRAINT assessment_tool_submission_group_fk01 
FOREIGN KEY (assessment_tool_id) REFERENCES assessment_tools(assessment_tool_id);
ALTER TABLE assessment_tool_submission_group ADD CONSTRAINT assessment_tool_submission_group_fk02 
FOREIGN KEY (submission_group_id) REFERENCES submission_group(submission_group_id);


ALTER TABLE lot_requirement_taxons drop column if exists submission_group_id ;
ALTER TABLE lot_requirement_taxons ADD submission_group_id int4 NULL;

update lot_requirement_taxons  sd set submission_group_id  = (
select atx.assessment_tool_id  from lot_requirement_taxons lrt
inner join requirement_taxons rt on rt.requirement_taxon_id  = lrt.requirement_taxon_id 
inner join assessment_taxons atx on atx.assessment_taxon_id = rt.assessment_taxon_id 
where lrt.lot_id = sd.lot_id and lrt.lot_requirement_taxon_id  = sd.lot_requirement_taxon_id 
limit 1);


ALTER TABLE assessment_taxons drop column if exists submission_group_id;
ALTER TABLE assessment_taxons ADD submission_group_id int4 NULL;
update assessment_taxons  set submission_group_id  = assessment_tool_id ;

alter table dimensions add column dimension_code varchar(64) null;

create or replace view supplier_submission_data as
SELECT distinct ss.supplier_submission_id::text::character varying AS supplier_submission_id,
    ss.supplier_id,
    r.requirement_name,
    d.dimension_name,
    ats.assessment_tool_name,
    COALESCE(dvv.valid_value_code, ss.submission_value::text::character varying, "substring"(ss.submission_reference::text, 1, 1)::character varying) AS submission_value,
    st.submission_type_name,
    d.dimension_id,
    ats.assessment_tool_id,
    ats.external_assessment_tool_id,
    lrt.lot_id::text::character varying AS lot_id
   FROM supplier_submissions ss
     JOIN dimension_submission_types dst ON dst.dimension_submission_type_id = ss.dimension_submission_type_id
     JOIN submission_types st ON st.submission_type_code::text = dst.submission_type_code::text
     JOIN lot_requirement_taxons lrt ON lrt.lot_requirement_taxon_id = ss.lot_requirement_taxon_id
     JOIN requirement_taxons rt ON rt.requirement_taxon_id = lrt.requirement_taxon_id
     JOIN requirements r ON r.requirement_id = rt.requirement_id
     JOIN assessment_taxons atx ON rt.assessment_taxon_id = atx.assessment_taxon_id
     join submission_group sg on sg.submission_group_id = lrt.submission_group_id     
     join assessment_tool_submission_group atsg on atsg.submission_group_id = sg.submission_group_id     
     JOIN assessment_tools ats ON ats.assessment_tool_id = atsg.assessment_tool_id
     join assessment_tool_dimensions atd on atd.assessment_tool_id = ats.assessment_tool_id     
     JOIN dimensions d ON d.dimension_id = dst.dimension_id and d.dimension_id = atd.dimension_id
     left outer JOIN dimension_valid_values dvv ON dvv.valid_value_name::text = ss.submission_reference::text AND dvv.dimension_id = d.dimension_id;



-- Gcloud updates
alter table assessments add column assessment_name varchar(255);

  create table gcloud_assessments (
    assessment_id         serial        primary key,
    assessment_name       varchar(255),
    external_tool_id      integer       not null,
    status                varchar(30)   not null,
    dimension_reqs        varchar(2000),
    created_by            varchar(2000) not null,
    created_at            timestamp     not null,
    updated_by            varchar(2000),
    updated_at            timestamp
  );



  create table gcloud_assessment_results (
    gcloud_result_id      serial        primary key,
    assessment_id         integer       not null,
    service_name          varchar(255)  not null,
    supplier_name         varchar(255),
    service_desc          varchar(2000),
    service_link          varchar(2000),
    created_by            varchar(2000) not null,
    created_at            timestamp     not null,
    updated_by            varchar(2000),
    updated_at            timestamp
  );



-- document template updates

ALTER TABLE document_templates ADD commercial_agreement_number varchar(20);
ALTER TABLE document_templates ADD lot_number varchar(20);
ALTER TABLE document_templates ADD template_group int4;
ALTER TABLE document_template_sources DROP constraint if exists check_source_type;
ALTER TABLE document_template_sources ADD CONSTRAINT check_source_type CHECK (((source_type)::text = ANY (ARRAY[('JSON'::character varying)::text, ('JAVA'::character varying)::text, ('STATIC'::character varying)::text, ('SQL'::character varying)::text])));
ALTER TABLE document_template_sources ADD conditional_value varchar(2048) NULL;