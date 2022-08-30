/*
Version No   Version Description
----------   -------------------
v0.0.7       Adding keywords for Payment Solutions DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('43a47701-fc11-4795-b67b-ddd6548dc395'::uuid,'Financial Services',true);
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
INSERT INTO temp_journeys values ('Financial Services','43a47701-fc11-4795-b67b-ddd6548dc395');

insert into temp_domain_values values
('acquirer','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('acquiring','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('alternative payment methods','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('American Express','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('amex','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('APM','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Apple Pay','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('bank','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('buyer','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('card','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('card not present','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('card present','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('card scheme','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('chargeback','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('CMA 9','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('CMA9','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('commercial','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('consumer','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('contacless','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('control','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('credit','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('debit','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('E-Wallet','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('eCommerce','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('EEA','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Electron','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('f2f','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('face to face','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('FCA Regulated','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Finance Conduct Authority','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('fraud','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('fund','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('gateway','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Google Pay','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('interchange ++','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('interchange Fee','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('interchange plus plus','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('issuer','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Maestro','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('mail order telephone order','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('mastercard','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('MCC','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('MCG','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('merchant','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('merchant acquiring','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Merchant Category Code','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('Merchant Category Group','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('MID','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('moto','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('online','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('open Banking','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payer','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment acceptance','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment equipment','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment gateway','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment initiation service provider','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('payment rails','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('PCI-DSS','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('PISP','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('POS terminal','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('reconciliation','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('refund','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('scheme','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('scheme Fee','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('settlemet','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('TID','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('tokenisation','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('transaction','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('visa','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions');

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
('consultancy','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions'),
('secure','Financial Services','Payment acceptance (Inbound payments) using card scheme payment rails, alternative payment methods and online banking solutions');

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