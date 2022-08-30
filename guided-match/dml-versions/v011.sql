/*
Version No   Version Description
----------   -------------------
v0.0.11       Adding keywords for National Fuels 2 DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('44e30745-7220-41b0-8a64-c706d46de505'::uuid,'Fuels',true);
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
INSERT INTO temp_journeys values ('Fuels','44e30745-7220-41b0-8a64-c706d46de505');

insert into temp_domain_values values
('205 Litre Drum Pump','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Air Compressor Lubricant','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Automatic Transmission Fluid','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Aviation Fuel comprising NATO Fuel Specification','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Bio-Diesel','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Biolube Hydraulic Oil','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Blended Heating Oil/ Gas Oil Substitute','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Brake Fluid, Automotive','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Bulk Liquefied Natural Gas','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Chainsaw Lubricant','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Compressed Natural Gas','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Diesel - ULSD','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Disposal of Residual Waste from Biomass Fuels','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Disposal of Residual Waste from Solid Fuels','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Engine Oil ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Extreme Pressure Gear Oil, Mineral Oil based','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Extreme Pressure Grease','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Cleaning','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Oil (light) - Class E','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Oil (Heavy)- Class G','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Oil (Medium )- Class F','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Spillage Kits','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Spillage Response','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Storage Tank provision,','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Testing Kits ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Testing Services','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Uplift and Disposal','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Fuel Uplift, Clean and Transfer','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Gas','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Gas Oil - Class A2','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Gas Oil - Class D (Furnace Fuel)','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('General Purpose Chain Lubricant','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('General Purpose, Emulsifiable Cutting Fluid','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Grease','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Ground Fuel comprising NATO Fuel Specification ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('GTL Gas to Liquid','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Heat Transfer Fluid','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('HVO','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Hydrogen Bulk','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Hydrogen Cylinders','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Installation of Fuel Storage Tanks','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Kerosene','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Kerosene - Class C1 (Burning Oil)','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Kerosene - Class C2 (Burning Oil)','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('LPG','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('LPG - Bulk Butane Gas','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('LPG - Bulk Propane Gas','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('LPG - Butane Cylinders','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('LPG - Propane Cylinders','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Motorcycle Chain Lubricant','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Open Gear Lubricant','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Paraffin Fuel','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Petrol ULSP','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Pump maintenance','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Re-siting of Fuel Storage Tanks','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Renewable Heat Incentive','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Road fuel additives, eg Ad Blue','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Tank Bunding ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Tank Cleaning','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Tank Lining','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Tank Maintenance','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Telemetry','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Transmission Fluid, ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Transmission Oil ','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('UTTO SAE10W-30','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Vehicle Antifreeze','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Vehicle Body wash','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Vehicle Windscreen Wash','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Wax Film','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Wood Pellets','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.'),
('Woodchip','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.');

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
('Installation','Fuels','Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal.');
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
 ('ERR_GM037','Select whether you need a product or service','Select whether you need a product or service'),
 ('ERR_GM038','Select the product you need','Select the product you need'),
 ('ERR_GM039','Select the service you need','Select the service you need'),
 ('ERR_GM040','Select where you need the fuel to be delivered','Select where you need the fuel to be delivered'); 

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM037','53051f51-c1ea-4b45-b8c0-cbb60f6a0446'),
 ('noSelection','ERR_GM038','b74c2815-db1c-49ee-b6dc-ce7cfb4f8d8b'),
 ('noSelection','ERR_GM039','c0600456-9a91-49d3-8baa-6067554b4b92'),
 ('noSelection','ERR_GM040','eb910af9-a2e8-46c2-8537-c0853b72dc7c');
--------------------------------------------
