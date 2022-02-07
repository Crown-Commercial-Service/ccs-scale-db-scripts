/*
Version No   Version Description
----------   -------------------
v0.0.10       Adding keywords for Office Supplies DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('56873452-78b1-4870-84ac-705618d3f337'::uuid,'Office',true);
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
INSERT INTO temp_journeys values ('Office','56873452-78b1-4870-84ac-705618d3f337');

insert into temp_domain_values values
('A4 100% RECYCLED COPIER PAPER 80GSM WHITE','Office','Stationery, Office and Electronic Office Supplies'),
('A4 MULTI COLOURED DIVIDER ','Office','Stationery, Office and Electronic Office Supplies'),
('A4 paper','Office','Stationery, Office and Electronic Office Supplies'),
('Adding machines','Office','Stationery, Office and Electronic Office Supplies'),
('anti bac wipes','Office','Stationery, Office and Electronic Office Supplies'),
('Art suppplies','Office','Stationery, Office and Electronic Office Supplies'),
('Batteries','Office','Stationery, Office and Electronic Office Supplies'),
('C02 Fire extinguisher','Office','Stationery, Office and Electronic Office Supplies'),
('CDs, DVDs, USB drives','Office','Stationery, Office and Electronic Office Supplies'),
('Chair','Office','Stationery, Office and Electronic Office Supplies'),
('Clear pockets','Office','Stationery, Office and Electronic Office Supplies'),
('Coffee','Office','Stationery, Office and Electronic Office Supplies'),
('Coloured paper','Office','Stationery, Office and Electronic Office Supplies'),
('Copier paper','Office','Stationery, Office and Electronic Office Supplies'),
('Cups','Office','Stationery, Office and Electronic Office Supplies'),
('Cut paper','Office','Stationery, Office and Electronic Office Supplies'),
('Cutlery','Office','Stationery, Office and Electronic Office Supplies'),
('Desk','Office','Stationery, Office and Electronic Office Supplies'),
('Desktop accessories','Office','Stationery, Office and Electronic Office Supplies'),
('Diaries','Office','Stationery, Office and Electronic Office Supplies'),
('Electronic office and media supplies','Office','Stationery, Office and Electronic Office Supplies'),
('Electronic storage media and peripherals','Office','Stationery, Office and Electronic Office Supplies'),
('Envelopes','Office','Stationery, Office and Electronic Office Supplies'),
('Ergonomic equipment','Office','Stationery, Office and Electronic Office Supplies'),
('Exercise books','Office','Stationery, Office and Electronic Office Supplies'),
('Eye protectors','Office','Stationery, Office and Electronic Office Supplies'),
('fan','Office','Stationery, Office and Electronic Office Supplies'),
('fax machine','Office','Stationery, Office and Electronic Office Supplies'),
('Files','Office','Stationery, Office and Electronic Office Supplies'),
('Filing','Office','Stationery, Office and Electronic Office Supplies'),
('Fire blanket','Office','Stationery, Office and Electronic Office Supplies'),
('First aid foil blankets','Office','Stationery, Office and Electronic Office Supplies'),
('First aid kits','Office','Stationery, Office and Electronic Office Supplies'),
('Glasses','Office','Stationery, Office and Electronic Office Supplies'),
('Guillotines','Office','Stationery, Office and Electronic Office Supplies'),
('Hand sanitisor','Office','Stationery, Office and Electronic Office Supplies'),
('Hard hats','Office','Stationery, Office and Electronic Office Supplies'),
('Highlighter pens','Office','Stationery, Office and Electronic Office Supplies'),
('Ink','Office','Stationery, Office and Electronic Office Supplies'),
('Janitorial ','Office','Stationery, Office and Electronic Office Supplies'),
('Jumbo blue roll','Office','Stationery, Office and Electronic Office Supplies'),
('Laminator','Office','Stationery, Office and Electronic Office Supplies'),
('Lever arch files','Office','Stationery, Office and Electronic Office Supplies'),
('Marker pens','Office','Stationery, Office and Electronic Office Supplies'),
('Mugs','Office','Stationery, Office and Electronic Office Supplies'),
('Napkins','Office','Stationery, Office and Electronic Office Supplies'),
('non medical PPE','Office','Stationery, Office and Electronic Office Supplies'),
('Office Stationary','Office','Stationery, Office and Electronic Office Supplies'),
('Office Supplies','Office','Stationery, Office and Electronic Office Supplies'),
('Pencils','Office','Stationery, Office and Electronic Office Supplies'),
('Pens','Office','Stationery, Office and Electronic Office Supplies'),
('Perpex screens','Office','Stationery, Office and Electronic Office Supplies'),
('Photocopier paper','Office','Stationery, Office and Electronic Office Supplies'),
('Pocket and filing accessories','Office','Stationery, Office and Electronic Office Supplies'),
('Post it notes ','Office','Stationery, Office and Electronic Office Supplies'),
('PPE non medical','Office','Stationery, Office and Electronic Office Supplies'),
('Print cartriges','Office','Stationery, Office and Electronic Office Supplies'),
('Printer','Office','Stationery, Office and Electronic Office Supplies'),
('Recycled paper','Office','Stationery, Office and Electronic Office Supplies'),
('Refuse sacks ','Office','Stationery, Office and Electronic Office Supplies'),
('Remanufactured ink cartridges','Office','Stationery, Office and Electronic Office Supplies'),
('Remanufactured toner cartridges','Office','Stationery, Office and Electronic Office Supplies'),
('Safer working supplies ','Office','Stationery, Office and Electronic Office Supplies'),
('Safety clothing','Office','Stationery, Office and Electronic Office Supplies'),
('School books','Office','Stationery, Office and Electronic Office Supplies'),
('Shredder','Office','Stationery, Office and Electronic Office Supplies'),
('Signage locks','Office','Stationery, Office and Electronic Office Supplies'),
('Small office equipment','Office','Stationery, Office and Electronic Office Supplies'),
('Soap dispenser ','Office','Stationery, Office and Electronic Office Supplies'),
('Stapler','Office','Stationery, Office and Electronic Office Supplies'),
('Staples','Office','Stationery, Office and Electronic Office Supplies'),
('Stationery','Office','Stationery, Office and Electronic Office Supplies'),
('sticky notes','Office','Stationery, Office and Electronic Office Supplies'),
('Tea','Office','Stationery, Office and Electronic Office Supplies'),
('Teaching supplies','Office','Stationery, Office and Electronic Office Supplies'),
('Teapots','Office','Stationery, Office and Electronic Office Supplies'),
('Toner ','Office','Stationery, Office and Electronic Office Supplies'),
('Toner waste collection','Office','Stationery, Office and Electronic Office Supplies'),
('usb','Office','Stationery, Office and Electronic Office Supplies'),
('usb flash drive','Office','Stationery, Office and Electronic Office Supplies'),
('Washroom supplies','Office','Stationery, Office and Electronic Office Supplies'),
('Waste containers','Office','Stationery, Office and Electronic Office Supplies'),
('Whiteboard pens','Office','Stationery, Office and Electronic Office Supplies'),
('wipes','Office','Stationery, Office and Electronic Office Supplies');

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
('Catering','Office','Stationery, Office and Electronic Office Supplies'),
('Office','Office','Stationery, Office and Electronic Office Supplies');
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
 ('ERR_GM035','Select the product type you need','Select the product type you need'),
 ('ERR_GM036','Select whether you want to buy from a single or multi supplier lot','Select whether you want to buy from a single or multi supplier lot');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM035','6607e294-8094-4a01-aa6b-1399e126cf96'),
 ('noSelection','ERR_GM036','5dff2b1e-e952-4741-9443-843395823f6e');
--------------------------------------------
