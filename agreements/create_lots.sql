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
