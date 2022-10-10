/*
Version No   Version Description
----------   -------------------
v0.0.26       Adding keywords for Employee Benefits
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('42bfbf8b-4a40-43ab-a9e8-95edcf13852c'::uuid,'Employee Benefits',true);
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
INSERT INTO temp_journeys values ('Employee Benefits','42bfbf8b-4a40-43ab-a9e8-95edcf13852c');
insert into temp_domain_values values
('Bicycle','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Bicycle Lights','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Bicycle Mirrors','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Child Safety Seat','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Childcare Voucher Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Childcare Vouchers','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Chain','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Clips','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Helmets','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Lock','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Reflective Clothing','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Repair Kit','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle To Work','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle To Work Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycle Tool Kit','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Cycles','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Dental Discounts','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Dental Insurance','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Discounted Gym Memberships','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Employee Benefits','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Employee Benefits Platform','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Employee Bike Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Employee Discount Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Employee Discounts','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Financial Wellbeing','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Gift Cards','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Green Car Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Gym Membership Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('High Street Discount','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('High Street Vouchers','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Loyalty Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Payroll Giving Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Recognition Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Reward And Recognition','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Reward And Recognition Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Reward And Recognition Vouchers','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Reward Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Salary Sacrifice','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Technology And Smartphone Discount Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Technology Discount Scheme','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme'),
('Vouchers','Employee Benefits', 'A range of employee benefits to support pay and reward policies including  Childcare Voucher Scheme, Cycle to Work Scheme, Reward & Recognition Scheme, Payroll Giving Scheme, Employee Discounts Scheme, Discounted Gym Membership Scheme, Technology and Smartphone Discount Scheme, Financial Wellbeing Scheme, Green Car Scheme');

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


insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       CAST('42bfbf8b-4a40-43ab-a9e8-95edcf13852c' AS uuid) as journey_id,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term;
--------------------------------------------


INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
('noSelection','ERR_GM039', '6530dfa4-a1b1-40c7-8f06-77045302fa4a');

--------------------------------------------