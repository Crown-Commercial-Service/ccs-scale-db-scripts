/*
Version No   Version Description
----------   -------------------
v0.0.11       Adding keywords for Water and Wastewater DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('ba6a6091-aeaf-431e-825d-4087ed9885ef'::uuid,'Water Wastewater and Ancillary Services',true);
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
INSERT INTO temp_journeys values ('Water Wastewater and Ancillary Services','ba6a6091-aeaf-431e-825d-4087ed9885ef');

insert into temp_domain_values values
('AMR','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Automated Meter Reading','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Bill Validation ','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Contingency planning','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Cost Recovery','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Leak','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Leak detection and repair','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Legionella Risk Assessments','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Sewage ','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Site surveys','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Tariff optimisation and benchmarking','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Wastewater','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Water Audit','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Water Footprint assessment','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.');

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
('Telemetry ','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.'),
('Water','Water Wastewater and Ancillary Services','Supply of water, wastewater (sewage) and ancillary services that make usage more efficient and supply more resilient, including tariff optimisation and benchmarking, leak detection and repair, legionella testing and automated meter readings.');

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
