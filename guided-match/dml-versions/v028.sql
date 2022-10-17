/*
Version No   Version Description
----------   -------------------
v0.0.28       Adding keywords for Language Services
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('d173dc66-3513-4d20-8029-3451a89471c8'::uuid,'Language Services',true);
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
INSERT INTO temp_journeys values ('Language Services','d173dc66-3513-4d20-8029-3451a89471c8');
insert into temp_domain_values values
('Accessible Translations','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Blind','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Braille','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('British Sign Language','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('BSL','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Deaf ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Deaf/Deaf Blind','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('End user feedback','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Interpreting','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Language Services','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Machine Translation','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Mystery Shopper','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Overseas Interpreting','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Quality Assurance','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Sign Language ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Telephone  ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Telephone Interpretering ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Transcription','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Translation','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Video  ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Video Interpreting ','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Video Relay Interpreting','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Video Relay Service','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('VRI','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('VRS','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs'),
('Website Localisation','Language Services', 'Commercial Agreement to facilitate all your language service needs within the UK and overseas, including translation, interpretation and ad hoc language needs');


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


insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       CAST('d173dc66-3513-4d20-8029-3451a89471c8' AS uuid) as journey_id,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term;
--------------------------------------------


INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
('ERR_GM070', 'Select where you need the services' , 'Select where you need the services'),
('ERR_GM071', 'Select the region you need','Select the region you need');


INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
('noSelection','ERR_GM039', 'b74c2815-db1c-49ee-b6dc-ce7cfb4f8d8b'),
('noSelection','ERR_GM070', 'e7789e0b-4509-4133-a999-f9bd425f3ac4'),
('noSelection','ERR_GM071', 'efceecf9-11b5-4880-9f19-f0b32a865e31');

--------------------------------------------