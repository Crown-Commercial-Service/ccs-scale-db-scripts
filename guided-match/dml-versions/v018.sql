/*
Version No   Version Description
----------   -------------------
v0.0.18       Adding keywords for Records Information Management DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('d39ea9e1-b33c-4ce7-9ec2-6448d8277684'::uuid,'Records',true);
-----------------------

-- CREATING FRESH TABLE
drop table if exists temp_domain_values; 
create table temp_domain_values (search_term varchar(75),
				 domain_name varchar(50),
				 domain_desc varchar(2000));

drop table if exists temp_journeys;
create table temp_journeys (domain_name varchar(50),
						    journey_uuid uuid);
-----------------------

-- INSERTING NEW KEYWORDS 
INSERT INTO temp_journeys values ('Records','d39ea9e1-b33c-4ce7-9ec2-6448d8277684');

insert into temp_domain_values values
('Active records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Appraisal','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Archive','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Bulk','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Bulk Scanning','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Cataloguing','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Clinic Preparation','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Cloud','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Cloud services','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Content management','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Digital outcomes and services','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Digital records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Digital transformation','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Digital Workflow','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Document review','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Document storage','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Fleet architect','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Hybrid mail','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('IaaS','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Inactive records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Information','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Information management','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Infrastructure as a service','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Interim technical resources','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('LG','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Listing','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Local government','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Loose filing','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('National Archive','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('National Cyber Security Centre (NCSC)','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('NHS','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('NHS clinic preparation (service)','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('NHS Patient Records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Off-site Storage','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('PaaS','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Patient records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Physical records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Platform as a Service','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Project manager','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Public Records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Public Records Act','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Record','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Record management','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Record preparation','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Records management','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Records preparation','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('SaaS','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Secure Shredding','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Security architect','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Selection','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Sensitivity','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Sensitivity review','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Service delivery manager','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Service requirements analyst','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Shredding','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Software','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Specialist Records','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Triage','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud');

UPDATE search_terms
SET search_term ='wps'
WHERE search_id = 371;

insert into search_terms (search_term)
select  distinct lower(search_term)
from    temp_domain_values td
join   temp_journeys tj on tj.domain_name = td.domain_name;
-----------------------

-- MAPPING NEW KEYWORDS WITH GM LITE
insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct 
		st.search_id,
		CAST('c9dd4455-7d23-4822-9912-eab4da9fc5a2' AS uuid) as journey_id,
		'GM Lite' as modifier_journey_name,
		'Something else' as journey_selection_text,
		'What I need is not listed here' as journey_selection_description
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term
join   temp_journeys tj on tj.domain_name = td.domain_name;
------------------------------------

-- MAPPING OLD KEYWORDS WITH THE NEW JOURNEY
insert into temp_domain_values values
('Central government','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('CG','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Destruction','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Disposal','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Document','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Document management','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Project','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Review','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Scan','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Software as a Service','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Scanning','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Secure destruction','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('Storage','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud'),
('WPS','Records','Access to storage, scanning, shredding and disposal services. Also provides support with NHS clinic preparation and transition to digital solutions through digital workflow and cloud');

insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       tj.journey_uuid,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term
join   temp_journeys tj on tj.domain_name = td.domain_name;
--------------------------------------------