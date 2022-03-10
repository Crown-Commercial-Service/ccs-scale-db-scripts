/*
Version No   Version Description
----------   -------------------
v0.0.16       Adding keywords for Network Services 2 DT
*/

-- CREATING THE JOURNEY
INSERT INTO journeys (journey_id,journey_name,published)
	VALUES ('611b0f3f-da0d-4a5b-804e-2bbcd24086c7'::uuid,'Networks',true);
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
INSERT INTO temp_journeys values ('Networks','611b0f3f-da0d-4a5b-804e-2bbcd24086c7');

insert into temp_domain_values values
('access circuit control','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('adsl','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('analogue digital exchange lines','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('apn','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('audio conferencing services on demand','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('audio visual collaboration','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('automated call distribution routing direct exchange intelligent contact ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('broadband','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('caas','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('call centre','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('call recording playback','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cctv monitoring','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cloud based solutions','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cloud contact centre encryption','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('colocation','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('connectivity as a service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('consistent user interface','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('contact centre','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('copper','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cos','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cpe','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('critical communications','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ctops','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('customer premises equipment','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('cyber threat detection','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('dark fibre','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('data access networking ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ddi numbers ranges','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('dns ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('domain name service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('efm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('email services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('end-to-end ip telephony','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('esim','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ethernet first mile','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ffib','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('fibre to the building','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('firewalls','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('fixed voice ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('fttb','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('fttc','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ftth','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('fttp','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('full fibre infrastructure build','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('gprs','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('gsm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('handheld mobile devices','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('handset','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('hardware fund','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('icr','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('imap','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('inbound call management ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('intelligent interactive voice response','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('intergrated services digital network','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('international coverage','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('internet of things','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('internet service providers','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ios','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('iot','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ip based access control video conferencing application','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ip telephony','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ipt','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ipvpn','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('isdn2','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('isdn30','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('isp peering ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ivr','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('lan connectivity power','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('landline','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('layer 2 3','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('leased line','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('line of sight','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('line rental maintainance','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('local area network ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('local exchange','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('local loop unbundling','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('maas','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('man','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('managed wan ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mdm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('messaging applications services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mifi','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mipp','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mms','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mobile as a service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mobile device management','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mobile phone radio transceiver enabler operator data applications','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mobile voice and data services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mpls','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('multi-channel','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('multi-protocol label switching','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mvne','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('mvno','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('network firewall infrastructure security','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ngn','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('non geographical number','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ns2','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('omnichannel','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('online storage','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('paging and alerting services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pbx','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('phone line','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('physical security monitoring ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pias','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('plain old telephone service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pmr','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('poe','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('point of presence','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('point to multipoint','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('point-to-internet','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('point-to-point data-only connection','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pop','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pots','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('power over ethernet','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('premise security','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('private branch exchange','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('professional private mobile radio communications','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('pstn','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('public switched telephone network','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('public wifi','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('push to talk','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('qos','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('quality management solutions','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ranged connectivity services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ras','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('real time audio video security conferencing','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('remote access solutions call crm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('roaming','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('san ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('satellite','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('sbc','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('sd wan','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('sdsl','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('secure radio and support equipment','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('security access control software','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('session border controller','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('session initiation protocol trunks','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('sim','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('single site connectivity ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('sip trunks','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('site-to-cloud','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('site-to-site','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('smartphones','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('software as a service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('software management tools','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('software-defined networking','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('specialist security','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('speech recognition software','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ssid','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('storage area network','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('surveillance','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('switching','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('synchonous digital subscriber line','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('tariff','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('telco carrier exchange','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('telecommunications','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('terrestrial trunked radio ','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('tetra','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('traditional telephony','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('transition management','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('trunking','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('two way transceiver','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ucaas','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('uhf','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ultra high frequency','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('unified communications as a service','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('ups','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('value added mobile services','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('vdsm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('very high frequency','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('vhf','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('virtual private lan service network','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('vlan','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('voice connectivity','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('voice over ip','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('voip','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('vpls','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('vpn','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('wholesale line rental','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('wide area network connectivity wired wireless local connectivity portal','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('wifi security gateway','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('wlan','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('wlr','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network');

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
('alarm','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('AV','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('encryption','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('hosting','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('SMS','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network'),
('telephone','Networks','Telecommunications services including fibre connectivity and access to the Health and Social Care Network');

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
 ('ERR_GM044','Select the network service you need','Select the network service you need'),

 ('ERR_GM045','Select the type of connectivity you need','Select the type of connectivity you need'),
 ('ERR_GM046','Select the type of telephony you need','Select the type of telephony you need'),
 ('ERR_GM047','Select the mobile service you need','Select the mobile service you need'),
 ('ERR_GM048','Select whether you need consultancy support','Select whether you need consultancy support'),
 ('ERR_GM049','Select whether you need contact centre technology and services','Select whether you need contact centre technology and services'),
 ('ERR_GM050','Select whether you need CCTV services or equipment','Select whether you need CCTV services or equipment'),
 
 ('ERR_GM051','Select an option','Select an option'),
 ('ERR_GM052','Select the type of conferencing you need','Select the type of conferencing you need'),
 ('ERR_GM053','Select whether you need contact centre staff','Select whether you need contact centre staff');


INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM044','516287ea-9709-43b2-a2b2-87e3a16ce2e3'),

 ('noSelection','ERR_GM045','b50f2f4f-9dd2-40f3-91e9-92cd8d4c0576'),
 ('noSelection','ERR_GM046','783417a6-4a54-439e-9f30-4122fc0c14e6'),
 ('noSelection','ERR_GM047','56a15a16-263f-45d4-861f-e98792144de2'),
 ('noSelection','ERR_GM048','91ebe974-88f1-4857-b7e0-ba940223030a'),
 ('noSelection','ERR_GM049','3fbfc864-4f7e-4c99-9115-de9173d9105b'),
 ('noSelection','ERR_GM050','61202a8c-7eb9-43ec-8032-9752d0206f6c'),

 ('noSelection','ERR_GM051','1cc3dd79-7869-4687-ada7-62981b211798'),
 ('noSelection','ERR_GM052','302878c8-cc17-43a4-8d5a-7136d2febea7'),
 ('noSelection','ERR_GM053','ca801cc6-4993-4387-b1f8-57139161eab1');
--------------------------------------------