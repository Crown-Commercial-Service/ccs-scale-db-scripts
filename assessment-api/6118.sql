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


INSERT INTO assessment_tool_dimensions (assessment_tool_id,dimension_id,calculation_rule_id,exclusion_policy_id,
	min_weighting_pct,max_weighting_pct,created_by,created_at,updated_by,updated_at) VALUES
	 (1,1,1,0,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,2,1,0,5,65,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,3,1,0,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,4,1,0,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (1,5,1,2,5,65,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,1,1,0,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,2,1,0,5,55,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,3,1,0,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,4,1,0,10,60,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,5,1,2,5,55,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL),
	 (2,6,1,0,10,70,'dataloader','2022-08-09 11:31:53.082728',NULL,NULL);


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


/* INSERT INTO submission_group
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
*/

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




create or replace view  calculation_base_new as
WITH agdvv AS (
         SELECT dvv_1.dimension_id,
            count(*) AS dimension_divisor
           FROM dimension_valid_values dvv_1
          WHERE dvv_1.valid_value_code::text <> '0'::text
          GROUP BY dvv_1.dimension_id
        )
select  
concat(ss.supplier_id,':', asel.assessment_id,':', st.submission_type_code,
 ':',r.requirement_id,':', d.dimension_id, ':', ss.supplier_submission_id) AS id
, ass.assessment_id,ss.supplier_id,atool.assessment_tool_name
,st.submission_type_name, st.submission_type_code, d.dimension_name
,d.dimension_id, r.requirement_name, r.requirement_id, ss.submission_reference
,COALESCE(dvv.valid_value_code, ss.submission_value::text::character varying, "substring"(ss.submission_reference::text, 1, 1)::character varying) AS submission_value
,adw.weighting_pct AS adw_weighting_pct, asel.weighting_pct AS asel_weighting_pct
,asd.requirement_value, agdvv.dimension_divisor::integer AS dimension_divisor
from 
assessments ass 
join assessment_selections asel on ass.assessment_id  = asel.assessment_id
join requirement_taxons rt on rt.requirement_taxon_id  = asel.requirement_taxon_id 
JOIN lot_requirement_taxons lrt ON lrt.requirement_taxon_id = rt.requirement_taxon_id 
JOIN requirements r ON r.requirement_id = rt.requirement_id
join assessment_taxons atx on atx.assessment_taxon_id  = rt.assessment_taxon_id -- and atx.submission_group_id = lrt.submission_group_id 
join assessment_taxon_dimensions atxd on (atxd.assessment_taxon_id = atx.parent_assessment_taxon_id )
join supplier_submissions ss ON ss.lot_requirement_taxon_id = lrt.lot_requirement_taxon_id 
 join submission_group sg on sg.submission_group_id  = lrt.submission_group_id  
 JOIN dimension_submission_types dst ON dst.dimension_submission_type_id = ss.dimension_submission_type_id
 JOIN submission_types st ON st.submission_type_code = dst.submission_type_code
 join dimensions d on d.dimension_id  = dst.dimension_id 
  and d.dimension_id  = atxd.dimension_id 
 JOIN assessment_dimension_weighting adw ON asel.assessment_id = adw.assessment_id AND d.dimension_id = adw.dimension_id
 join assessment_tool_submission_group atsg on atsg.submission_group_id = lrt.submission_group_id and atsg.submission_group_id  = atx.submission_group_id 
 join assessment_tools atool on atool.assessment_tool_id  = atsg.assessment_tool_id and atool.assessment_tool_id  = ass.assessment_tool_id 
 LEFT JOIN dimension_valid_values dvv ON dvv.valid_value_name::text = ss.submission_reference::text AND dvv.dimension_id = d.dimension_id
LEFT JOIN agdvv ON agdvv.dimension_id = d.dimension_id
LEFT JOIN assessment_selection_details asd ON asd.assessment_selection_id = asel.assessment_selection_id AND asd.dimension_submission_type_id = dst.dimension_submission_type_id
where 
(ss.submission_reference IS NOT NULL OR ss.submission_value IS NOT NULL) AND ass.status::text = 'ACTIVE'::text AND d.max_weighting_pct > 0::numeric;
