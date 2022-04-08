/*
Version No   Version Description
----------   -------------------
v0.0.13       Adding keywords for Building Materials and Equipment
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('8b4ebcd8-4fa3-456c-a01f-af29b973d040'::uuid,'Building Materials and Equipment',true);
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
INSERT INTO temp_journeys values ('Building Materials and Equipment','8b4ebcd8-4fa3-456c-a01f-af29b973d040');

insert into temp_domain_values values
('Adhesives','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Air filtration','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Alarms','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Anoraks','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Apparatus for measuring radiation','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Bathrooms','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Blocks and bricks','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Boilers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Buckets, shovels, grabs and grips for cranes or excavators','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Buoyancy compensators','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Cabinets','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Cable and wire','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Carpet tiles','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Carpets, mats and rugs','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Central heating','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Ceramics','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Chain','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Chisels','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Civil engineering','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Clothing accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Clothing made of coated or impregnated textile fabrics','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Clothing, footwear, luggage articles and accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Co2','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Coats','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Compressors','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Construction materials','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Cooling and ventilation','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Copper fasteners','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Copper pipes','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Coveralls','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Crane and dumper trucks','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Crash barriers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Crimping pliers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Decorating supplies','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Disposable gloves','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Drainage','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Drill bits','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Drill bits, screwdriver bits and other accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Drills','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Ducting','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Dumper trucks','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Earthmoving and excavating machinery, and associated parts','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Earthmoving machinery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Elevator-platforms trucks','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Eye care products and corrective lenses','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Fasteners','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Files or rasps','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Firefighting, rescue and safety equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Fitted kitchens','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Floor coverings','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Floor laying','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Floor-cleaning machines','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Floor-maintenance machines','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Footwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Footwear incorporating a protective metal toecap','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Footwear with uppers of leather','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Footwear with uppers of textile materials','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Garments','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Garments for biological or chemical protection','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Gas-therapy and respiratory devices','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Gauntlets','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Generators','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Goggles','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Graders and levellers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Grout','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Guardrails','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hammers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hand saws','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hand tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hand-held instruments for measuring length','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hats and headgear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Headgear and headgear accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Heat recovery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Heating','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Heras fencing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hinges, mountings and fittings','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hoists','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Housebuilding','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Individual and support equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Industrial clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Industrial machinery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Insulation','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Kitchen furniture','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Kitchen installation','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Kitchens','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Knee boots','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Knives','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Laminated wood','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Led','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Life jackets','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Lifting and handling equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Lifting and handling equipment and parts','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Lifting, handling, loading or unloading machinery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Lighting','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Locks, keys and hinges','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Machine tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Machinery for the production and use of mechanical power','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Marquees','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Mattocks, picks, hoes, rakes and beach rakes','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Medical consumables','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Milling machines','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Miscellaneous gardening equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Miscellaneous general and special-purpose machinery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Miscellaneous outerwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Modular building','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Mortar','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Non-domestic fans','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Non-threaded fasteners','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Nuclear and radiological protection clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Occupational clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Occupational clothing, special workwear and accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Outerwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Paint brushes','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Paints','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Parts and accessories of machine tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Personal care products','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Pipes','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Plant hire','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Pliers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Plumbing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Polishes and creams','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Portable toilets','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Power tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Ppe','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective coats or ponchos','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective footwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective gear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective goggles','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective headgear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective shirts or pants','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective socks or hosiery','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Protective wristbands','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Radiators','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Raincoats','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Reflective vests','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Road barriers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Roofing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Rubber boots','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Safety barriers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Safety fencing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Safety headgear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Safety vests','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Safety visors','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Sanitaryware','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Scarves','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Scissors','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Scraper machines','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Screwdriver bits','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Sealants','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Security, fire-fighting, police and defence equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Shelves','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Skip loaders','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Solid flooring','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Solvents','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Spades and shovels','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Spanners','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Special clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Special clothing and accessories','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Special footwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Spectacles','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Surveying instruments','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('T-shirts and shirts','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tamping machines','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Threaded fasteners','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tiles','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Timber','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('To upper case','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tool carriers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tool handles and tool parts','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Tools, locks, keys, hinges, fasteners, chain and springs','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Transformers','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Treadle-operated tools','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Varnishes','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Visors','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Waders','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Water fountains','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Water heating','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Waterproof clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Waterproof footwear','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Weatherproof clothing','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('White goods','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Wind jackets','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Windows and doors','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Woodworking equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Work benches','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Work gloves','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Workshop equipment','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Worktops','Building Materials and Equipment', 'Building materials, equipment and associated services');

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
// Power construction, gloves, tools,
-- MAPPING OLD KEYWORDS WITH THE NEW JOURNEY
insert into temp_domain_values values
('Batteries','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Construction','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Gloves','Building Materials and Equipment', 'Building materials, equipment and associated services'),
('Hard hats','Building Materials and Equipment', 'Building materials, equipment and associated services');

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
 ('ERR_GM060','Select if you want to buy or hire your building and construction tools','Select if you want to buy or hire your building and construction tools');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM060','c9d1d3c4-3d5f-4db0-837e-be9f9fb8ce55');