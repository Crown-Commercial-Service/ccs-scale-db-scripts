/*
Version No   Version Description
----------   -------------------
v0.0.29       Adding keywords for Energy
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('103db792-d07f-4885-afcd-dc0324d0a968'::uuid,'Energy',true);
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
INSERT INTO temp_journeys values ('Energy','103db792-d07f-4885-afcd-dc0324d0a968');
insert into temp_domain_values values
('100% Renewable ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Additionality','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Advanced','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Advanced Meter','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Aggregation','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Amr Meter','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ancillary ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ancillary Services','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Annual Quantity (Aq)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Aq','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Automated Meter Reading (Amr)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Balancing','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Balancing And Settlement Code (Bsc)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Basket','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Benchmark','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Benchmarking','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Big 6','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Bsc','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Bsuos','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Calorific Value','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Capacity','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Capacity Market (Cm)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Footprint','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Net Zero (Cnz)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Neutral','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Offsets','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Offsetting','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Reduction','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Carbon Reporting','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Climate Change Levy (Ccl)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ccl','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Change Of Occupier (Coo)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Coo','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Change Of Tenancy (Cot)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Cot','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Commodity','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Connection','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Connections','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Consumption','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Contracts For Difference (Cfd)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Cfd','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Corporate Ppa','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Correction Factor','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Data Aggregator','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Data Collector','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Data Flow','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Decarbonisation','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Decarbonise','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Deemed','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Deemed Rates','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Demand','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Demand Destruction','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Demand Generation','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Demand Profile','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Demand Side Response','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Dsr','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Distribution Network ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Distribution Network Operator (Dno)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Distribution Network Operators (Dnos)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Dno','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Distribution Use Of System (Duos) Charges','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Duos','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Efficiency','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Electricity','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Elexon','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Management','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Markets','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Options','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Prices','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Services','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Solutions ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Sources ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Energy Strategy','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Environmental And Social Obligation Costs','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Estimated Annual Consumption (Eac)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Eac','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Export','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Feed-In Tariff (Fit)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Fixed','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Fixed Tariff','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Fossil Fuel','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Framework Agreement','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Gas Purchase Agreement','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Generation','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Goo''S','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Gpa','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Green','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Green Certificates','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Green Energy','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Greenhouse Gas (Ghg)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ghg','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ghg Reporting','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Grid','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Grid Supply Point (Gsp)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Gsp','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Half Hourly (Hh)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Half Hourly Data','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Hh','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Import','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Incumbent','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Incumbent Supplier','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Industrial ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Industrial And Commercial (I&C)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('I&C','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kilo Volt Amperes','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kilowatt','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kilowatthour','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kva','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kw','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Kwh','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Line Loss Factor(Llf)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Llf','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Locked','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Long Term','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Lot','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Low','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Low Carbon','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Low Carbon Electricity','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mam','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Map','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Market Drivers','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Measurement Class','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mega Watt Hour','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Asset Manager','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Asset Provider (Map)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Operator(Mop)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Point Administrative Number (Mpan)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Point Reference (Mpr)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Profile ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Profile Class','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Meter Serial Number','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mop','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mpan','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mpan Core','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mpr','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Mwh','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('National Grid','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Nec''S ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Net Zero','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Network Costs','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Nhh','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Non Half Hourly','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Non Half Hourly Data','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Non-Energy Costs (Nec''S)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Objection','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Offtaker','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ofgem','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ooc','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Operating Costs','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Out Of Contract (Ooc)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Pass Through Charges','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Peak Demand','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Portability','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Power Purchase Agreement (Ppa)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Ppa','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Profile Class','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Reading','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Registration Window','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Rego','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Rego''S','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Regulator','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Renewable ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Renewable Energy','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Renewable Energy Guarantees Of Origin','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Renewables Obligation (Ro)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('(Ro)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Report','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Reporting','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Shaping','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Short Term','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Sleeving ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smart','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smart Meter','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smets1','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smets2','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Supplier','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Sustainability','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Targeted Charging Review (Tcr)','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Tcr','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Transmission Network','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Transmission Network Use Of System (Tnuos) Charges','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Tnuos ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Triad','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Triad Period','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Variable','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Wholesale Market','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Zero Carbon','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smets ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Smart Metering Technical Specifications','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services');

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

-- MAPPING OLD KEYWORDS WITH THE NEW JOURNEY
insert into temp_domain_values VALUES
('CNZ','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Data','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Framework','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Generators','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('NEC','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Power','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Review','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services'),
('Tariff','Energy', 'Supply of Energy including both Natural Gas and Electricity. This includes billing, administration, customer service and ancillary services');



insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       CAST('103db792-d07f-4885-afcd-dc0324d0a968' AS uuid) as journey_id,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term;
--------------------------------------------


INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
('noSelection','ERR_GM039', 'e212194f-7780-43c3-a028-277e168d5951');

--------------------------------------------