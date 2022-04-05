/*
Version No   Version Description
----------   -------------------
v0.0.13       Adding keywords for Multi Functional Devices DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('af949053-6110-48a2-a252-ebb83fc98b14'::uuid,'Multi Functional Devices',true);
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
INSERT INTO temp_journeys values ('Multi Functional Devices','af949053-6110-48a2-a252-ebb83fc98b14');

insert into temp_domain_values values
('Advice','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Aio','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('AIO – all in one','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('All in one','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Audit','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Best practice','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Black & white','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Black and white','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Bulk mail','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Central government','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Cg','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Colour','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Consultancy services','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Consultant','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Content','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Content management','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Copier','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Copying','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Cost control opportunities','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Desktop','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Desktop printer','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Digital transformation','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Digital workflow','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Document infrastructure','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Document workflow','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Education','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Envelope','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Evaluation','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Fax','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Faxing','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Full networked','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Health','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Hybrid mail','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Information technology','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('IT','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('IT supplies','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Lease','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Leasing','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Local government','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Mail','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Managed','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Managed print','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('MFD','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('MFD''s','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Mono','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multifunctional','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multi-functional','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multifunctional devices','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Networked','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Office output','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Office supplies','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Page output','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Photocopier','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('PPM - page-per-minute speed','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Page per minute','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Print','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Print management','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Print room','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printed','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printer','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printers','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printing','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Process efficiencies','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Recommendations','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Savings','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Scanning','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Software','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Strategic change','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Tech','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Technology','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Technology products','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Wps','Multi Functional Devices', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.');

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
('Device','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Education','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Educational Technology','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Hardware','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Housing','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Office','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('PPM','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Project','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('School','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Software','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Tech products','Multi Functional Devices','Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.');

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
 ('ERR_GM027','Error: Select the service you need','Error: Select the service you need');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM027','22497168-ac36-4980-a45f-b958c57b0fa7');