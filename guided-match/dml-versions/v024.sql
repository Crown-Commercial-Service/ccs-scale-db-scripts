/*
Version No   Version Description
----------   -------------------
v0.0.24       Adding keywords for Furniture and Associated Services
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('085df7f9-8014-4350-b3a4-b1eadf5c3766'::uuid,'Furniture and Associated Services',true);
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
INSERT INTO temp_journeys values ('Furniture and Associated Services','085df7f9-8014-4350-b3a4-b1eadf5c3766');
insert into temp_domain_values values
('Accoustic Divider','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Advocates Bench','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Ammunition Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Beam seating','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bedroom furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bedside cabinet','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bench Workstation','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Benching','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bespoke / Fitted Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bespoke Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Bin','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Booth','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Break out furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Clerks Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Coat Cupboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Coffee table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Computer Container','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Conference Room Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Conference Room Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Conference Room Table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Court furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Court room furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Credenza','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Cupboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Dining Room Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Dining table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Document box','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Educational Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Electronically Operated Storage Unit','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Equipment Trolley','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Ergonomic chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Filing cabinet','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('First Aid Room Bed','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Fitted Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Fully Upholstered Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture and Associated Services','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture Repair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture Supply','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture Supply and Instal','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture Supply and Installation','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Gondola Library Shelving','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('GPA Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Heavyweight Secure Cupboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('High Density Steel Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('High Stool','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Home Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Home Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Home Working Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Hubs Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Key Box','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Lamp','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Lectern','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Living Room Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Locker','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Lounge Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Lounge Seating','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Media Unit','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Meeting Booth','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Meeting Room Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Meeting Room Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Meeting Room Table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Meeting Table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Mobile Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Mobile Tray Unit','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Monitor Arms','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Cupboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Seating','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Office Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Outdoor bench','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Outdoor chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Outdoor coffee table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Outdoor furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Outdoor table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Parasol','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Partition','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Planter','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Post Room Racks','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Pupil Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Pupil Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Pupil Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Repair and Renovation Services','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Residential Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Residential Seating','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Residential Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Rotary Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('School Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Secure Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Secure Furniture (CPNI)','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Security Cupboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Security Cupboards (and fixtures)','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Security Fixtures','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Security Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Side Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Side table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Sideboard','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Sit-stand Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Sit-stand Workstation','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Sofa','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Soft Seating','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Soft Seating System','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Stackable Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Stackable Stool','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Stackable Table','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Stacking Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Static Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Steel Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Steel Storage Solutions','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Storage Unit','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Task Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Teacher Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Teacher Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Teacher Pedestal','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Teacher Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Tub Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Umbrella Stand','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Wardrobe','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Waste Bin','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Witness Screens','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Witness Stand','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Workstation','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services');

insert into search_terms (search_term)
select  distinct lower(search_term)
from    temp_domain_values td;
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
join   temp_domain_values td on lower(td.search_term) = st.search_term;
------------------------------------

-- MAPPING OLD KEYWORDS WITH THE NEW JOURNEY
insert into temp_domain_values VALUES
('Bed','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Chair','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Desk','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Furniture','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services'),
('Storage','Furniture and Associated Services', 'Buy a range of furniture for use in public sector organisations, as well as repair and renovation services');

insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       CAST('085df7f9-8014-4350-b3a4-b1eadf5c3766' AS uuid) as journey_id,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term;
--------------------------------------------

INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
('ERR_GM066', 'Select if you need a service or product' , 'Select if you need a service or product'),
('ERR_GM067','Select the option you need','Select the option you need'),
('ERR_GM068','Select the type of office furniture you need', 'Select the type of office furniture you need');


INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values

('noSelection','ERR_GM038','25e5d903-2f2a-4a55-9382-5fb935dab79d'),
('noSelection','ERR_GM066','e40d4dee-53fc-493b-a1d3-3e86d17add1e'),
('noSelection','ERR_GM067','a765ee32-5f0b-4022-9f22-d1765d5cd6f9'),
('noSelection','ERR_GM068','8f0e8b24-b61f-4b4b-9bc4-99197d9253ae');


--------------------------------------------

