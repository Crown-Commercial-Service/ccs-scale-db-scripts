/*
Version No   Version Description
----------   -------------------
v0.0.6       Adding keywords for Postal Goods DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('4c3916b2-f894-43e7-b67a-56ee73711a66'::uuid,'Postal Services',true);
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
INSERT INTO temp_journeys values ('Postal Services','4c3916b2-f894-43e7-b67a-56ee73711a66');

insert into temp_domain_values values
('1st class','Postal Services','Postal Services Goods Solutions'),
('2nd class','Postal Services','Postal Services Goods Solutions'),
('Air Mail','Postal Services','Postal Services Goods Solutions'),
('ALB','Postal Services','Postal Services Goods Solutions'),
('archived documents','Postal Services','Postal Services Goods Solutions'),
('audit','Postal Services','Postal Services Goods Solutions'),
('bomb containment','Postal Services','Postal Services Goods Solutions'),
('business process outsourcing','Postal Services','Postal Services Goods Solutions'),
('carriage','Postal Services','Postal Services Goods Solutions'),
('central government','Postal Services','Postal Services Goods Solutions'),
('CG','Postal Services','Postal Services Goods Solutions'),
('charities','Postal Services','Postal Services Goods Solutions'),
('collection','Postal Services','Postal Services Goods Solutions'),
('communication','Postal Services','Postal Services Goods Solutions'),
('consultancy','Postal Services','Postal Services Goods Solutions'),
('consumables','Postal Services','Postal Services Goods Solutions'),
('correspondence','Postal Services','Postal Services Goods Solutions'),
('data','Postal Services','Postal Services Goods Solutions'),
('data managed','Postal Services','Postal Services Goods Solutions'),
('digital scanning','Postal Services','Postal Services Goods Solutions'),
('discount','Postal Services','Postal Services Goods Solutions'),
('document','Postal Services','Postal Services Goods Solutions'),
('document management','Postal Services','Postal Services Goods Solutions'),
('DSA','Postal Services','Postal Services Goods Solutions'),
('email','Postal Services','Postal Services Goods Solutions'),
('envelope','Postal Services','Postal Services Goods Solutions'),
('folder inserter','Postal Services','Postal Services Goods Solutions'),
('franking','Postal Services','Postal Services Goods Solutions'),
('franking machine','Postal Services','Postal Services Goods Solutions'),
('franking machine ink','Postal Services','Postal Services Goods Solutions'),
('franking machine labels','Postal Services','Postal Services Goods Solutions'),
('goods','Postal Services','Postal Services Goods Solutions'),
('hand held','Postal Services','Postal Services Goods Solutions'),
('high sort','Postal Services','Postal Services Goods Solutions'),
('hosting','Postal Services','Postal Services Goods Solutions'),
('hybrid','Postal Services','Postal Services Goods Solutions'),
('inbound','Postal Services','Postal Services Goods Solutions'),
('indicia','Postal Services','Postal Services Goods Solutions'),
('international','Postal Services','Postal Services Goods Solutions'),
('large letter','Postal Services','Postal Services Goods Solutions'),
('letter opening','Postal Services','Postal Services Goods Solutions'),
('letters','Postal Services','Postal Services Goods Solutions'),
('low sort','Postal Services','Postal Services Goods Solutions'),
('mail','Postal Services','Postal Services Goods Solutions'),
('mail opening','Postal Services','Postal Services Goods Solutions'),
('mail screening','Postal Services','Postal Services Goods Solutions'),
('mailmark','Postal Services','Postal Services Goods Solutions'),
('mailroom','Postal Services','Postal Services Goods Solutions'),
('Metal detector','Postal Services','Postal Services Goods Solutions'),
('outbound','Postal Services','Postal Services Goods Solutions'),
('overseas','Postal Services','Postal Services Goods Solutions'),
('packets','Postal Services','Postal Services Goods Solutions'),
('parcels','Postal Services','Postal Services Goods Solutions'),
('post','Postal Services','Postal Services Goods Solutions'),
('postage paid','Postal Services','Postal Services Goods Solutions'),
('postal','Postal Services','Postal Services Goods Solutions'),
('postroom','Postal Services','Postal Services Goods Solutions'),
('PPI','Postal Services','Postal Services Goods Solutions'),
('print','Postal Services','Postal Services Goods Solutions'),
('print file','Postal Services','Postal Services Goods Solutions'),
('recorded delivery','Postal Services','Postal Services Goods Solutions'),
('review','Postal Services','Postal Services Goods Solutions'),
('Royal Mail','Postal Services','Postal Services Goods Solutions'),
('savings','Postal Services','Postal Services Goods Solutions'),
('scales','Postal Services','Postal Services Goods Solutions'),
('scanning','Postal Services','Postal Services Goods Solutions'),
('security screening','Postal Services','Postal Services Goods Solutions'),
('services','Postal Services','Postal Services Goods Solutions'),
('signed for','Postal Services','Postal Services Goods Solutions'),
('SMS','Postal Services','Postal Services Goods Solutions'),
('sortation','Postal Services','Postal Services Goods Solutions'),
('sorted','Postal Services','Postal Services Goods Solutions'),
('special delivery','Postal Services','Postal Services Goods Solutions'),
('stamp','Postal Services','Postal Services Goods Solutions'),
('tracking','Postal Services','Postal Services Goods Solutions'),
('unsorted','Postal Services','Postal Services Goods Solutions'),
('Weapon detector','Postal Services','Postal Services Goods Solutions'),
('web','Postal Services','Postal Services Goods Solutions'),
('weighing','Postal Services','Postal Services Goods Solutions'),
('wider public sector','Postal Services','Postal Services Goods Solutions'),
('X-ray machine','Postal Services','Postal Services Goods Solutions');

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
('delivery','Postal Services','Postal Services Goods Solutions'),
('digital','Postal Services','Postal Services Goods Solutions'),
('solutions','Postal Services','Postal Services Goods Solutions'),
('wps','Postal Services','Postal Services Goods Solutions');

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