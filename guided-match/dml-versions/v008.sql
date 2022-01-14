/*
Version No   Version Description
----------   -------------------
v0.0.8       Adding keywords for Print Marketplace DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('2578175a-713c-4df5-9b0f-0ab746bba928'::uuid,'Print Marketplace',true);
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
INSERT INTO temp_journeys values ('Print Marketplace','2578175a-713c-4df5-9b0f-0ab746bba928');

insert into temp_domain_values values
('booklets','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('brochures','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('business cards','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('command and house papers','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('compliment slips','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('design services','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('digital asset management','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('digital solutions','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('direct mail','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('distribution','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('election print','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('flyers','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('folders','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('forms','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('fulfilment','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('leaflets','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('letterheads','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('media duplication','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('official papers','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('operational print','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('pads','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('postcards','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('posters','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('pre production services','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('printed material','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('security print','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('storage','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('transactional print','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.');

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
('print','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.'),
('scanning','Print Marketplace','Printed materials including brochures, flyers, leaflets and business cards and services such as bulk printing, direct mail and secure print.');
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
