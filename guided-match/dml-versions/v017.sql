/*
Version No   Version Description
----------   -------------------
v0.0.16       Adding keywords for Courier and Specialist Movement Movement DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('18940bd6-0c0c-4b3b-8790-72af82150118'::uuid,'Courier',true);
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
INSERT INTO temp_journeys values ('Courier','18940bd6-0c0c-4b3b-8790-72af82150118');

insert into temp_domain_values values
('24 hour','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Additional Security ','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('ADR','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Ambient Temperature','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Ammunition','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Artwork','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Asset recovery','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Auction','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Bike','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Bulk Movement','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Cage','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Cargo bike','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Chain of custody','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Controlled drugs','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Courier ','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Dangerous goods','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Dangerous goods movements','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Documents','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Donation','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Driver','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Dry ice','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Economy delivery','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('EV','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Electric Vehicle','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('End of life Vehicle disposal','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Enhanced Liabilities','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Exam Documents','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Exam Papers','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Examination results','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Fully Tracked','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('GPS tracking','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Guns','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('High value ','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Illegal drugs','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('IT equipment','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Lorry','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Medical Equipment','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Medical Records','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Movements','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Next day','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Overnight','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Packet','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Pallet','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Parcel','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Pharmaceuticals','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Proceeds of crime','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Proof of delivery','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Radioactive','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Resale','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Sameday','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Samples','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Seized goods','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Shipping container','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Specimens','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Student scripts','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Temperature controlled','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Test Papers','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Timed Delivery','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Uniforms','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Valuable Items','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Van','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Vehicle movement','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Weapons','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services');

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
('Collection','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Delivery','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Destruction','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Disposal','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('International','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Land','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Mail screening','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Mobile phone','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Property','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Secure','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services'),
('Storage','Courier','Courier and specialist movements: a wide range of courier and specialist movements from simple parcel deliveries to complex and large scale specialist services');

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

INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
('ERR_GM054','Select if you need increased security','Select if you need increased security');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
('noSelection','ERR_GM030','aa0e9cd1-e1d6-4391-ba91-9360bfde5b0b'),
('noSelection','ERR_GM054','e1437fe4-7165-4a82-91a0-664eb76d2e6f');
--------------------------------------------