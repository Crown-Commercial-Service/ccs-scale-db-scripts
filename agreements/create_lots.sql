/*
Title       create_lots.sql
Date        June 15th 2020
Author      Trevor Cummings
Description This file is a script to create test data for lots         
*/

--RM3733 CA FK 1, Has 6 lots
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(1,
 'Lot 1',
 'Technology Hardware',
 'Technology Hardware description',
 1,
 'Products',
 '31-Oct-2016',
 '31-Oct-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(2,
 'Lot 2',
 'Packaged Software',
 'Packaged Software description',
 1,
 'Products',
 '31-Oct-2016',
 '31-Mar-2020');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(3,
 'Lot 3',
 'Combined Hardware and Packaged Software',
 'Combined Hardware and Packaged Software description',
 1,
 'Products',
 '31-Oct-2016',
 '31-Mar-2020');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(4,
 'Lot 4',
 'Information Assured Products',
 'Information Assured Products description',
 1,
 'Products',
 '31-Oct-2016',
 '31-Mar-2020');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(5,
 'Lot 5',
 'Volume Hardware Requirements (Direct from Original Equipment Manufacturer (OEM))',
 'Volume Hardware Requirements (Direct from Original Equipment Manufacturer (OEM))',
 1,
 'Products',
 '31-Oct-2016',
 '31-Mar-2020');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(6,
 'Lot 6',
 'Catalogue',
 'TCatalogue description',
 1,
 'Products',
 '31-Oct-2016',
 '31-Oct-2021');
 
 -- RM6068 CA FK 2, 4 Lots
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(7,
 'Lot 1',
 'Hardware & Software & Associated Services',
 'Hardware & Software & Associated Services description',
 2,
 'Services',
 '10-Dec-2019',
 '09-Dec-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(8,
 'Lot 2',
 'Hardware and Associated Services',
 'Hardware and Associated Services description',
  2,
 'Services',
 '10-Dec-2019',
 '19-Dec-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(9,
 'Lot 3',
 'Software and Associated Services',
 'Software and Associated Services description',
  2,
 'Services',
 '10-Dec-2019',
 '09-Dec-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(10,
 'Lot 4',
 'Information Assured Products & Associated Services',
 'Information Assured Products & Associated Services description',
 2,
 'Services',
 '10-Dec-2019',
 '09-Dec-2021');
 
 -- RM 6103 CA FK 3, 5 Lots
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(11,
 'Lot 1',
 'ICT Solutions',
 'This is a direct replacement of ICT Services for Education (RM1050) agreement. The agreement provides customers with the capability to obtain ICT goods and or services for their specific needs, whether it is a new build requirement or an ICT refresh.',
 3,
 'Services',
 '10-Jun-2019',
 '10-Jun-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(12,
 'Lot 2',
 'Broadband Fibre Infrastructure',
 'The provision of a design and installation of broadband fibre infrastructure. Suppliers under this lot are capable of supplying overall design, provision of fibre to the premises, testing of fibre and ''last mile'' installation.',
 3,
 'Services',
 '10-Jun-2019',
 '10-Jun-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(13,
 'Lot 3',
 'Broadband Services',
 'The provision of connectivity services. Suppliers under this lot are capable of supplying full fibre broadband services (new services/upgrade of existing), support and maintenance, internet filtering, firewall, eSafety and IP connectivity.',
 3,
 'Services',
 '10-Jun-2019',
 '10-Jun-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(14,
 'Lot 4',
 'Hardware',
 'The provision of ICT hardware, software and some networking equipment. Suppliers can supply hardware (laptops, desktops), networking: (switches, cabling, routers), peripherals (printers, mice, charging trolleys) and software (part of a package).',
 3,
 'Services',
 '10-Jun-2019',
 '10-Jun-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(15,
 'Lot 5',
 'Audio Visual',
 'The provision and installation of sound and/or visual equipment. Suppliers under this lot are capable of supplying interactive solutions (whiteboards, tables), digital signage, televisions, AV software, auditorium solutions, training.',
 3,
 'Services',
 '10-Jun-2019',
 '10-Jun-2022');
 
 -- RM3808 CA FK 4 , 13 lots
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(16,
 'Lot 1',
 'Data access services',
 'Connectivity services: site-to-site or site-to-cloud. Includes terrestrial, wireless and satellite solutions, software designed networking, network security, connectivity circuits, IP connectivity, ISP and internet services, and associated equipment maint',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(17,
 'Lot 2',
 'Local connectivity services',
 'Single site connectivity: local connectivity services and LAN connectivity services for a single site, multiple sites in the same place etc. Includes SAN equipment, wired or wireless connectivity, plus specialised power solutions, managed equipment rooms,',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(18,
 'Lot 3',
 'Traditional telephony services',
 'Voice services connecting local traditional telephony equipment with public network. Includes traditional voice connectivity, voice call packages, SIP trunks, DDI ranges, CPS services and equipment maintenance and support for legacy estates.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(19,
 'Lot 4',
 'Inbound telephony services',
 'Inbound call management services for established local call centre functions including non-geographical numbers such as 03xx, 05xx, 08xx and 09xx and associated equipment maintenance and support services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(20,
 'Lot 5',
 'IP telephony services',
 'Internet Protocol (IP) Telephony services with the ability to make and receive telephone calls by the transmission of voice over an IP based network service, including breakout to PSTN. Voice call packages, direct dial (DD) ranges and associated equipment',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(21,
 'Lot 6',
 'Mobile voice and data services',
 'Including voice calls and voicemail, SMS, mobile email, mobile data connectivity and applications, value-added mobile services and mobile device management and associated equipment maintenance and support services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');

INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(22,
 'Lot 7',
 'Paging and alerting services',
 'Paging, mobile messaging and alerting services including bureau services and associated equipment maintenance and support services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(23,
 'Lot 8',
 'Video conferencing services',
 'Traditional and IP based audio-visual conferencing services. Includes consultancy and training services, software management tools, call recording, analysis tools, peripheral equipment, transcribing and translation services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(24,
 'Lot 9',
 'Audio conferencing services',
 'Includes call recording, playback, analysis tools, the ability to reserve and pre-book, coded access references, peripheral equipment, software, management tools, security access products, collaboration tools, transcribing and translation services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(25,
 'Lot 10',
 'Unified communications',
 'The provision of unified communications to provide a consistent user interface across multiple devices providing a cohesive end user experience in accessing two or more of the Primary Services from the following lots: lot 5, lot 6, lot 8 and lot 9.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(26,
 'Lot 11',
 'Radio services',
 'A voice communication solution utilising UHF, and/or VHF radio frequency bands and associated equipment maintenance and support services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(27,
 'Lot 12',
 'Security and surveillance services',
 'Includes the provision of CCTV and physical security monitoring equipment, including services to access real time audio and video activities and associated equipment maintenance and support services.',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');

INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(28,
 'Lot 13',
 'Contact centre services',
 'The provision of call/contact centre services for the use of Buyer employees only. With the ability to make outbound contact and respond to an incoming contact and route the contact to a predefined destination and associated equipment maintenance and supp',
 4,
 'Services',
 '12-Aug-2019',
 '16-Aug-2022');
 
 -- RM6154 CA FK 5, 4 Lots
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(29,
 'Lot 1a',
 'Linen Hire with Standard Wash Linen and Laundry Services',
 'Linen Hire with Standard Wash Linen and Laundry Services description',
 5,
 'Services',
 '01-Feb-2020',
 '19-Mar-2023');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(30,
 'Lot 2',
 'Standard Wash Linen and Laundry Services',
 'Standard Wash Linen and Laundry Services description',
 5,
 'Services',
 '01-Feb-2020',
 '19-Mar-2023');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(31,
 'Lot 3',
 'Specialist Laundry Services (Theatre Packs)',
 'Specialist Laundry Services (Theatre Packs) description',
 5,
 'Services',
 '01-Feb-2020',
 '19-Mar-2023');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(32,
 'Lot 1b',
 'Specialist Cleanroom Laundry Services',
 'Specialist Cleanroom Laundry Services description',
 5,
 'Services',
 '01-Feb-2020',
 '19-Mar-2023'); 
 
 -- RM3830 CA FK 6, 3 Lots
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(33,
 'Lot 1a',
 'Total contract value up to £7M',
 'Total contract value up to £7M description',
 6,
 'Services',
 '10-Jul-2018',
 '09-Jul-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(34,
 'Lot 1b',
 'Total contract value £7M - £50M',
 'Total contract value £7M - £50M',
 6,
 'Services',
 '10-Jul-2018',
 '09-Jul-2022');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(35,
 'Lot 1c',
 'Total contract value £50M+',
 'Total contract value £50M+ description',
 6,
 'Services',
 '10-Jul-2018',
 '09-Jul-2022');
 
 -- RM3788 CA FK 7 , 6 lots
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(36,
 'Lot 1',
 'Regional Service Provision',
 'Regional Service Provision description',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(37,
 'Lot 2a',
 'Full Service Firms - England & Wales',
 'Full Service Firms - England & Wales description',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(38,
 'Lot 2b',
 'Full Service Firms - Scotland',
 'Full Service Firms - Scotlanddescription',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021');

INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(39,
 'Lot 2c',
 'Full Service Firms - Northern Ireland',
 'Full Service Firms - Northern Ireland description',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(40,
 'Lot 3',
 'Property & Construction',
 'Property & Construction description',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021'); 
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(41,
 'Lot 4',
 'Transport Rail',
 'Transport Rail description',
 7,
 'Services',
 '19-Oct-2018',
 '18-Oct-2021'); 
 
 
-- RM3756 CA FK 8, 2 Lots


INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(42,
 'Lot 1',
 'Rail Legal Services Tier 1',
 'Rail Legal Services Tier 1',
 8,
 'Services',
 '31-May-2017',
 '31-May-2021'); 
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(43,
 'Lot 2',
 'Rail Legal Services Tier 2',
 'Rail Legal Services Tier 2 description',
 8,
 'Services',
 '31-May-2017',
 '31-May-2021');
 
 -- RM3717 CA FK 9, 9 Lots
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(44,
 'Lot 1',
 'Low Volume Work Service Package',
 'Low Volume Work Service Package description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(45,
 'Lot 2',
 'End to End Service Package',
 'End to End Service Package description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(46,
 'Lot 3',
 'Project Management & Advice',
 'Project Management & Advice description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(47,
 'Lot 4',
 'Data Preservation & Collection',
 'Data Preservation & Collection description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(48,
 'Lot 5',
 'Document Processing',
 'Document Processing description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(49,
 'Lot 6',
 'Document Review & Document Production',
 'IDocument Review & Document Production description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');

INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(50,
 'Lot 7',
 'Disclosure from Other Opponent Parties',
 'Disclosure from Other Opponent Parties description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(51,
 'Lot 8',
 'Presentation at Trial',
 'Presentation at Trial description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(52,
 'Lot 9',
 'End to End Service (up to and including ''Secret'' and ''Top Secret'')',
 'End to End Service (up to and including ''Secret'' and ''Top Secret'') description',
 9,
 'Services',
 '01-Jun-2017',
 '01-Jun-2021');
 
 
 -- RM6137 CA FK 10, Lots 3
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(53,
 'Lot 1',
 'General Costs Law Services',
 'General Costs Law Services description',
 10,
 'Services',
 '19-Aug-2019',
 '18-Aug-2021');
 
 INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(54,
 'Lot 2',
 'Clinical Negligence Specialist Services',
 'Clinical Negligence Specialist Services description',
 10,
 'Services',
 '19-Aug-2019',
 '18-Aug-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(55,
 'Lot 3',
 'Security Clearance Specialist Services',
 'Security Clearance Specialist Services description',
 10,
 'Services',
 '19-Aug-2019',
 '18-Aug-2021'); 

-- RM3786 CA FK 11 , 2 Lots

INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(56,
 'Lot 1',
 'General Legal Services Tier 1',
 'General Legal Services Tier 1 description',
 11,
 'Services',
 '28-Feb-2017',
 '27-Feb-2021');
 
INSERT INTO lOTS
(lot_id,
 lot_number,
 lot_name,
 lot_description,          
 commercial_agreement_id, -- FK back to commercial agreements
 lot_type,                -- Valid values Services, Products or Products and Services
 start_date,
 end_date)
values 
(57,
 'Lot 2',
 'General Legal Services Tier 2',
 'General Legal Services Tier 2 description',
 11,
 'Services',
 '28-Feb-2017',
 '27-Feb-2021');
