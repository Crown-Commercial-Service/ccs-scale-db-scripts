/*
Version No   Version Description
----------   -------------------
v0.0.5       Breaking down some existing search term that has uneven proportion into parts 
*/

drop table if exists temp_domain_values;
create table temp_domain_values (search_term varchar(75),
				 domain_name varchar(50),
				 domain_desc varchar(2000));

drop table if exists temp_journeys;
create table temp_journeys (domain_name varchar(50),
						    journey_uuid uuid);

INSERT INTO temp_journeys values ('Housing','f08a2055-6502-4d5f-81f8-2e3f111ff7ae');
INSERT INTO temp_journeys values ('Facilities Management (FM)','7f7dcab1-9736-4012-960e-03da3b841c4c');
INSERT INTO temp_journeys values ('GM Lite','c9dd4455-7d23-4822-9912-eab4da9fc5a2');

insert into temp_domain_values values ('air','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('central','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('chc','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('delivery','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('hazardous','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('nifha','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('sfha','Housing','Access to housing services suppliers, including management and estate services');

insert into search_terms (search_term)
select  distinct lower(search_term)
from    temp_domain_values td
join   temp_journeys tj on tj.domain_name = td.domain_name;

insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       tj.journey_uuid,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term
join   temp_journeys tj on tj.domain_name = td.domain_name;

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

drop table if exists temp_domain_values;
drop table if exists temp_journeys;
