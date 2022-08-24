CREATE TABLE assessment_tool_dimensions (
	assessment_tool_dimension_id serial4 NOT NULL,
	assessment_tool_id int4 NOT NULL,
	dimension_id int4 NOT NULL,
	calculation_rule_id int4 NOT NULL,
	min_weighting_pct numeric NULL,
	max_weighting_pct numeric NULL,
	created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
	CONSTRAINT assessment_tool_dimensions_pkey PRIMARY KEY (assessment_tool_dimension_id),
	CONSTRAINT uq_assessment_tool_dimensions UNIQUE (assessment_tool_id, dimension_id),
	exclusion_policy_id int4 NULL
);

ALTER TABLE assessment_tool_dimensions ADD CONSTRAINT assessment_tool_dimensions_fk 
FOREIGN KEY (assessment_tool_id) REFERENCES assessment_tools(assessment_tool_id);
ALTER TABLE assessment_tool_dimensions ADD CONSTRAINT assessment_tool_dimensions_fk_1 
FOREIGN KEY (dimension_id) REFERENCES dimensions(dimension_id);


INSERT INTO assessment_tool_dimensions (assessment_tool_id,dimension_id,calculation_rule_id,min_weighting_pct,max_weighting_pct,created_by,created_at,updated_by,updated_at) VALUES
	 (1,1,1,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,2,1,5,65,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,3,1,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,4,1,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,5,1,5,65,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,1,1,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,2,1,5,55,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,3,1,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,4,1,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,5,1,5,55,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,6,1,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL);


drop view if exists supplier_submission_data_new;
drop table if exists assessment_tool_submission_group;
drop table if exists submission_group;

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


INSERT INTO submission_group
(submission_group_id, submission_group_external_code, submission_group_desc,
created_by, created_at)
select submission_group_id, submission_group_id submission_group_external_code, submission_group_id submission_group_desc,
'dataloader' created_by, now() created_at from (
select distinct lrt.submission_group_id  from lot_requirement_taxons lrt 
order by submission_group_id) sdf;


INSERT INTO assessment_tool_submission_group
(submission_group_id, assessment_tool_id, created_by, created_at)
select sg.submission_group_id, ats.assessment_tool_id, 
sg.created_by, now() from submission_group sg 
inner join assessment_tools ats on ats.assessment_tool_id  = sg.submission_group_id;


ALTER TABLE assessment_taxons drop column if exists submission_group_id;
ALTER TABLE assessment_taxons ADD submission_group_id int4 NULL;
update assessment_taxons  set submission_group_id  = assessment_tool_id ;


create view supplier_submission_data_new as
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
