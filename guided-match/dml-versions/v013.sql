/*
Version No   Version Description
----------   -------------------
v0.0.13       Adding keywords for Modular Buildings DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('bd89c967-067c-4831-8acb-69b3fdadf30d'::uuid,'Modular Building Solutions',true);
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
INSERT INTO temp_journeys values ('Modular Building Solutions','bd89c967-067c-4831-8acb-69b3fdadf30d');

insert into temp_domain_values values
('Academies','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Accommodation Hire','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Accommodation Lease','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Bespoke ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Blue Light','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Building Hire','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Building Lease','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Canteens','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Carbon NET zero buildings','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('CNZ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('CCTV Buildings','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Cells','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Classrooms','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Colleges','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Community Centre','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Construction Playbook','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Containers','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Counter Terrorism','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Custodial','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Defence','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Doctors','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Eco Classrooms','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Emergency Services','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Energy-efficient','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Estates','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Events','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('External Finishes','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Full Turn-Key Solution','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Gyms','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Healthcare','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Healthcare Hire ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('High Rise','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('HIP1','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('HIP2','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Hospital ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Hospital Wards','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Hotels','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Houses','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Intensive Care Units','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Internal Finishes','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Laboratory','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Library ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Logisitcs','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Marketing Suites','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Marquee ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Military ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('MMC','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Modern Methods of Construction','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Modular','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Multi-Storey','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Nursery','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Off site construction','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Off-Site Solutions','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Offices','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Operating Theatre','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Permanent','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Polling stations','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Portable','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Portacabin','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Portakabin','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Pre-Finished','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Primary','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Prisons','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Railway','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Reduced carbon','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Residential','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Retail Outlet','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Secondary','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Security Units','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('SEND','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Shelter','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Showers','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Special Educational Needs ','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Sport Facilities','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Sports Hall','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Steel-Framed','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Storage Facilities','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Student Accomodation','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Temporary','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Temporary Accommodation','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Temporary Building Solutions','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Temporary Classroom','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Tent','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Timber-Framed','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Toilets','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Transport','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('University','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Utilities','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Volumetric','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Ward Solutions','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Welfare Units','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.');

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
('Building','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Commercial','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Construction','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Corporate','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Education','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Infrastructure','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Safety','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Schools','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.'),
('Training','Modular Building Solutions','The design, fabrication, delivery, construction or installation and maintenance of modular buildings for purchase or hire.');

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
 ('ERR_GM041','Select the sector you are buying for','Select the sector you are buying for'),
 ('ERR_GM042','Select whether you want to buy permanent buildings or hire temporary buildings','Select whether you want to buy permanent buildings or hire temporary buildings'),
 ('ERR_GM043','Select your budget','Select your budget');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM041','23c500ab-1b52-44c2-b1b7-6fa2c8e7b0a0'),
 ('noSelection','ERR_GM042','5da2615f-22d7-4686-a2aa-50fc6a652164'),
 ('noSelection','ERR_GM043','6076dccc-cd9b-4bbf-a70e-0fe7b48db1a0');
--------------------------------------------
