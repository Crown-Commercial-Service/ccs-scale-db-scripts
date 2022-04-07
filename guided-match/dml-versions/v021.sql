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
INSERT INTO temp_journeys values ('Print and Digital','af949053-6110-48a2-a252-ebb83fc98b14');

insert into temp_domain_values values
('Advice','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Aio','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Aio – all in one','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('All in one','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Best practice','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Black & white','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Black and white','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Bulk mail','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Colour','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Consultancy services','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Consultant','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Content','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Copier','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Copying','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Cost control opportunities','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),

('Desktop printer','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Document infrastructure','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Document workflow','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),

('Evaluation','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Fax','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Faxing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Full networked','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Health','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Information technology','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('It','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('It supplies','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Lease','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Leasing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Managed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Managed print','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Mfd','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Mfd''s','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Mono','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multifunctional','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multi-functional','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Multifunctional devices','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Networked','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Office output','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Page output','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Photocopier','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Ppm - page-per-minute speed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Page per minute','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Print management','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Print room','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printed','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printers','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Printing','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Process efficiencies','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Recommendations','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Strategic change','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Tech','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Technology','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Technology products','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.');


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

-- MAPPING OLD KEYWORDS WITH THE NEW JOURNEY
insert into temp_domain_values values
('Education','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.'),
('Desktop','Print and Digital', 'Provides access to multifunctional devices, managed print services, technical resources, digital workflow, cloud solutions for digital transition and print consultancy services.');


-- ADDING ERROR FOR THE DECISION TREE
INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
 ('ERR_GM059','Select the service you need','Select the service you need');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM059','22497168-ac36-4980-a45f-b958c57b0fa7');