/*
Version No   Version Description
----------   -------------------
v0.0.13       Adding keywords for Print and Digital
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('af949053-6110-48a2-a252-ebb83fc98b14'::uuid,'Print and Digital',true);
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
INSERT INTO temp_journeys values ('Print and Digital','af949053-6110-48a2-a252-ebb83fc98b14');

insert into temp_domain_values values
('Advice','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('AIO – all in one','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('AIO','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('All in one','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Best practice','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Black & white','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Black and white','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Bulk mail','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Colour','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Consultancy services','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Consultant','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Content','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Copier','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Copying','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Cost control opportunities','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Desktop printer','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Document infrastructure','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Document workflow','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Evaluation','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Fax','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Faxing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Full networked','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Health','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Information technology','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('IT supplies','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('IT','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Lease','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Leasing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Managed print','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Managed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('MFD','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('MFD''s','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Mono','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Multi-functional','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Multifunctional devices','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Multifunctional','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Networked','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Office output','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Page output','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Page per minute','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Photocopier','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('PPM - page-per-minute speed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Print management','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Print room','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Printed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Printers','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Printing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Process efficiencies','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Recommendations','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Strategic change','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Tech','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Technology products','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Technology','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services');

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
('Audit','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Central government','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Cg','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Content management','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Desktop','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Device','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Digital transformation','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Digital workflow','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Education technology','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Education','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Envelope','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Hardware','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Housing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Hybrid mail','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Local government','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Mail','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Office supplies','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Office','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('PPM','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Print','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Printer','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Project','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Savings','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Scanning','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('School','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Software','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('Tech products','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services'),
('WPS','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services');


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

-- ADDING ERROR FOR THE DECISION TREE
INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
 ('ERR_GM059','Select the service you need','Select the service you need');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM059','22497168-ac36-4980-a45f-b958c57b0fa7');