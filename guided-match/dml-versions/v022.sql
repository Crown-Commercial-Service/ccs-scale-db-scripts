/*
Version No   Version Description
----------   -------------------
v0.0.13       Adding keywords for Building Materials DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('8b4ebcd8-4fa3-456c-a01f-af29b973d040'::uuid,'Building Materials',true);
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
INSERT INTO temp_journeys values ('Building Materials','8b4ebcd8-4fa3-456c-a01f-af29b973d040');

insert into temp_domain_values values
('Construction materials','Building Materials', 'Building materials, equipment and associated services.'),
('Housebuilding','Building Materials', 'Building materials, equipment and associated services.'),
('Civil engineering','Building Materials', 'Building materials, equipment and associated services.'),
('Plumbing','Building Materials', 'Building materials, equipment and associated services.'),
('Drainage','Building Materials', 'Building materials, equipment and associated services.'),
('Roofing','Building Materials', 'Building materials, equipment and associated services.'),
('Timber','Building Materials', 'Building materials, equipment and associated services.'),
('Copper pipes','Building Materials', 'Building materials, equipment and associated services.'),
('Bathrooms','Building Materials', 'Building materials, equipment and associated services.'),
('','Building Materials', 'Building materials, equipment and associated services.'),
('Insulation','Building Materials', 'Building materials, equipment and associated services.'),
('Kitchens','Building Materials', 'Building materials, equipment and associated services.'),
('White goods','Building Materials', 'Building materials, equipment and associated services.'),
('Ppe','Building Materials', 'Building materials, equipment and associated services.'),
('Plant hire','Building Materials', 'Building materials, equipment and associated services.'),
('Tools','Building Materials', 'Building materials, equipment and associated services.'),
('Lighting','Building Materials', 'Building materials, equipment and associated services.'),
('Led','Building Materials', 'Building materials, equipment and associated services.'),
('Alarms','Building Materials', 'Building materials, equipment and associated services.'),
('Co2','Building Materials', 'Building materials, equipment and associated services.'),
('Air filtration','Building Materials', 'Building materials, equipment and associated services.'),
('Blocks and bricks','Building Materials', 'Building materials, equipment and associated services.'),
('Mortar','Building Materials', 'Building materials, equipment and associated services.'),
('Windows and doors','Building Materials', 'Building materials, equipment and associated services.'),
('Cable and wire','Building Materials', 'Building materials, equipment and associated services.'),
('Paints','Building Materials', 'Building materials, equipment and associated services.'),
('Varnishes','Building Materials', 'Building materials, equipment and associated services.'),
('Central heating','Building Materials', 'Building materials, equipment and associated services.'),
('Boilers','Building Materials', 'Building materials, equipment and associated services.'),
('Water heating','Building Materials', 'Building materials, equipment and associated services.'),
('Cooling and ventilation','Building Materials', 'Building materials, equipment and associated services.'),
('Ducting','Building Materials', 'Building materials, equipment and associated services.'),
('Heating','Building Materials', 'Building materials, equipment and associated services.'),
('Pipes','Building Materials', 'Building materials, equipment and associated services.'),
('Sanitaryware','Building Materials', 'Building materials, equipment and associated services.'),
('Radiators','Building Materials', 'Building materials, equipment and associated services.'),
('Heat recovery','Building Materials', 'Building materials, equipment and associated services.'),
('Paint brushes','Building Materials', 'Building materials, equipment and associated services.'),
('Solvents','Building Materials', 'Building materials, equipment and associated services.'),
('Sealants','Building Materials', 'Building materials, equipment and associated services.'),
('Decorating supplies','Building Materials', 'Building materials, equipment and associated services.'),
('Adhesives','Building Materials', 'Building materials, equipment and associated services.'),
('Carpets, mats and rugs','Building Materials', 'Building materials, equipment and associated services.'),
('Carpet tiles','Building Materials', 'Building materials, equipment and associated services.'),
('Tiles','Building Materials', 'Building materials, equipment and associated services.'),
('Ceramics','Building Materials', 'Building materials, equipment and associated services.'),
('Floor coverings','Building Materials', 'Building materials, equipment and associated services.'),
('Solid flooring','Building Materials', 'Building materials, equipment and associated services.'),
('Laminated wood','Building Materials', 'Building materials, equipment and associated services.'),
('Grout','Building Materials', 'Building materials, equipment and associated services.'),
('Floor laying','Building Materials', 'Building materials, equipment and associated services.'),
('Shelves','Building Materials', 'Building materials, equipment and associated services.'),
('Kitchen furniture','Building Materials', 'Building materials, equipment and associated services.'),
('Worktops','Building Materials', 'Building materials, equipment and associated services.'),
('Cabinets','Building Materials', 'Building materials, equipment and associated services.'),
('Fitted kitchens','Building Materials', 'Building materials, equipment and associated services.'),
('Kitchen installation','Building Materials', 'Building materials, equipment and associated services.'),
('Clothing, footwear, luggage articles and accessories','Building Materials', 'Building materials, equipment and associated services.'),
('Occupational clothing, special workwear and accessories','Building Materials', 'Building materials, equipment and associated services.'),
('Occupational clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Industrial clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Coveralls','Building Materials', 'Building materials, equipment and associated services.'),
('Work gloves','Building Materials', 'Building materials, equipment and associated services.'),
('Protective gear','Building Materials', 'Building materials, equipment and associated services.'),
('Outerwear','Building Materials', 'Building materials, equipment and associated services.'),
('Coats','Building Materials', 'Building materials, equipment and associated services.'),
('Weatherproof clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Miscellaneous outerwear','Building Materials', 'Building materials, equipment and associated services.'),
('Garments','Building Materials', 'Building materials, equipment and associated services.'),
('Clothing accessories','Building Materials', 'Building materials, equipment and associated services.'),
('Scarves','Building Materials', 'Building materials, equipment and associated services.'),
('','Building Materials', 'Building materials, equipment and associated services.'),
('Disposable gloves','Building Materials', 'Building materials, equipment and associated services.'),
('Gauntlets','Building Materials', 'Building materials, equipment and associated services.'),
('Headgear and headgear accessories','Building Materials', 'Building materials, equipment and associated services.'),
('Protective headgear','Building Materials', 'Building materials, equipment and associated services.'),
('Footwear','Building Materials', 'Building materials, equipment and associated services.'),
('Knee boots','Building Materials', 'Building materials, equipment and associated services.'),
('Waders','Building Materials', 'Building materials, equipment and associated services.'),
('','Building Materials', 'Building materials, equipment and associated services.'),
('Personal care products','Building Materials', 'Building materials, equipment and associated services.'),
('Eye care products and corrective lenses','Building Materials', 'Building materials, equipment and associated services.'),
('Spectacles','Building Materials', 'Building materials, equipment and associated services.'),
('Goggles','Building Materials', 'Building materials, equipment and associated services.'),
('Protective goggles','Building Materials', 'Building materials, equipment and associated services.'),
('Firefighting, rescue and safety equipment','Building Materials', 'Building materials, equipment and associated services.'),
('Polishes and creams','Building Materials', 'Building materials, equipment and associated services.'),
('Safety visors','Building Materials', 'Building materials, equipment and associated services.'),
('Wind jackets','Building Materials', 'Building materials, equipment and associated services.'),
('Waterproof clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Anoraks','Building Materials', 'Building materials, equipment and associated services.'),
('Raincoats','Building Materials', 'Building materials, equipment and associated services.'),
('Clothing made of coated or impregnated textile fabrics','Building Materials', 'Building materials, equipment and associated services.'),
('T-shirts and shirts','Building Materials', 'Building materials, equipment and associated services.'),
('Special clothing and accessories','Building Materials', 'Building materials, equipment and associated services.'),
('Special clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Hats and headgear','Building Materials', 'Building materials, equipment and associated services.'),
('Visors','Building Materials', 'Building materials, equipment and associated services.'),
('Safety headgear','Building Materials', 'Building materials, equipment and associated services.'),
('Hard hats','Building Materials', 'Building materials, equipment and associated services.'),
('Waterproof footwear','Building Materials', 'Building materials, equipment and associated services.'),
('Rubber boots','Building Materials', 'Building materials, equipment and associated services.'),
('Footwear with uppers of leather','Building Materials', 'Building materials, equipment and associated services.'),
('Footwear with uppers of textile materials','Building Materials', 'Building materials, equipment and associated services.'),
('Protective footwear','Building Materials', 'Building materials, equipment and associated services.'),
('Footwear incorporating a protective metal toecap','Building Materials', 'Building materials, equipment and associated services.'),
('Special footwear','Building Materials', 'Building materials, equipment and associated services.'),
('Medical consumables','Building Materials', 'Building materials, equipment and associated services.'),
('Gas-therapy and respiratory devices','Building Materials', 'Building materials, equipment and associated services.'),
('Security, fire-fighting, police and defence equipment','Building Materials', 'Building materials, equipment and associated services.'),
('Garments for biological or chemical protection','Building Materials', 'Building materials, equipment and associated services.'),
('Nuclear and radiological protection clothing','Building Materials', 'Building materials, equipment and associated services.'),
('Safety vests','Building Materials', 'Building materials, equipment and associated services.'),
('Reflective vests','Building Materials', 'Building materials, equipment and associated services.'),
('Protective coats or ponchos','Building Materials', 'Building materials, equipment and associated services.'),
('Protective socks or hosiery','Building Materials', 'Building materials, equipment and associated services.'),
('Protective shirts or pants','Building Materials', 'Building materials, equipment and associated services.'),
('Protective wristbands','Building Materials', 'Building materials, equipment and associated services.'),
('Individual and support equipment','Building Materials', 'Building materials, equipment and associated services.'),
('Buoyancy compensators','Building Materials', 'Building materials, equipment and associated services.'),
('Apparatus for measuring radiation','Building Materials', 'Building materials, equipment and associated services.');

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
('Construction','Building Materials','Building materials, equipment and associated services.'),
('Gloves','Building Materials','Building materials, equipment and associated services.'),
('Tools','Building Materials','Building materials, equipment and associated services.');

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
 ('ERR_GM028','Error: Select if you want to buy or hire your building and construction tools','Error: Select if you want to buy or hire your building and construction tools');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM028','c9d1d3c4-3d5f-4db0-837e-be9f9fb8ce55');