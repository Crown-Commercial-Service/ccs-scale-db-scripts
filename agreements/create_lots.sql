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
 '<ul class="govuk-list govuk-list--bullet">
<li>Search and filter for day to day purchases</li>
<li>Suppliers on this lot can accommodate for low complexity requirements or high urgency products</li>
</ul> ',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of technology product needs</li>
<li>Suppliers on Lot 1 can provide hardware and software, combined with service requirements if needed</li>
</ul>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of technology product needs</li>
<li>Suppliers on Lot 2 can provide hardware requirements only. This includes end user devices, consumables and peripheral equipment</li>
</ul> ',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of technology product needs</li>
<li>Suppliers on Lot 4 can provide hardware and software with protective and information assurance</li>
</ul>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of Information and Communications Technologies (ICT) goods and services. Services include a new build requirement or an ICT refresh</li>
<li>Open to all public sector educational organisations</li>
</ul> 
<p class="govuk-body">Lot 1 replaces RM1050 agreement, ICT Services for Education.
</p>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Design and installation of broadband fibre infrastructure for new premises</li>
<li>Suppliers can provide overall design, fibre, run fibre tests, and do ''last mile'' installation from the node to the premises</li>
</ul> 
<p class="govuk-body">Further competition is enabled on all lots. Simplified competition and direct award is enabled on Lots 4 and 5. 
</p>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of connectivity services</li>
<li>Suppliers can provide full fibre broadband services for both new services and upgrading existing services</li>
<li>This includes support and maintenance, internet filtering, firewall, eSafety, and IP connectivity</li>
</ul> 
<p class="govuk-body">Further competition is enabled on all lots. Simplified competition and direct award is enabled on Lots 4 and 5. 
</p>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision of Information and Communication Technologies (ICT) hardware</li>
<li>Suppliers can also provide some networking equipment such as switches and routers, peripheral ICT equipment such as printers, and software when offered as part of a package</li>
</ul> 
<p class="govuk-body">Further competition is enabled on all lots. Simplified competition and direct award is enabled on Lots 4 and 5. 
</p>',
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
 'Audio Visual (AV)',
 '<ul class="govuk-list govuk-list--bullet">
<li>Provision and installation of sound and visual equipment</li>
<li>Suppliers can  provide interactive solutions such as whiteboards, digital signage, TVs, AV software, auditorium solutions and training</li>
</ul> 
<p class="govuk-body">Further competition is enabled on all lots. Simplified competition and direct award is enabled on Lots 4 and 5. 
</p>',
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
 'Standard wash, collection and return',
 '<ul class="govuk-list govuk-list--bullet">
<li>The suppliers on Lot 1a are responsible for providing standard wash linen and laundry services for laundry rented from the supplier</li>
<li>For buyer-owned laundry, refer to lot 1b </li>
</ul> 
<p class="govuk-body">Provided your needs met the criteria, Lot 1a  has a direct award facility.
</p>',
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
 'Specialist Laundry Services for CE marked Barrier Theatre Textiles',
 '<ul class="govuk-list govuk-list--bullet">
<li>Collection, wash, finish and return of CE marked barrier theatre textiles</li>
<li>Laundry can be owned by you or rented from the supplier </li>
</ul> 
<p class="govuk-body">The suppliers on Lot 2 are responsible for providing specialist laundry services for  CE marked barrier theatre textiles such as surgical drapes, gowns and packs. This will either be performed to the standard as described in the framework specification, or you can specify the standard you need. 
</p>
<p class="govuk-body">There is no direct award so to use Lot 2 you are required to run a further competition.
</p>',
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
 'Specialist Cleanroom Laundry Services',
 '<ul class="govuk-list govuk-list--bullet">
<li>Collection, wash, finish and return of laundry to the ISO classification stated by you</li>
<li>Laundry can be owned by you or rented from the supplier </li>
</ul> 
<p class="govuk-body">There is no direct award so to use Lot 3 you are required to run a further competition. 
</p>',
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
 'Standard wash collection and return',
 '<ul class="govuk-list govuk-list--bullet">
<li>Standard collection, wash, finish and return of laundry owned by you</li>
<li>For linen hire, refer to Lot 1a</li>
</ul> 
<p class="govuk-body">Provided your needs met the criteria, Lot 1b has a direct award facility. 
</p>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Legal services provided by regional firms, covering a range of legal specialisms</li>
<li>Suitable for low to medium value transactions</li>
</ul> 
',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Commercial legal services for all legal specialisms provided by firms that offer full services</li>
<li>This lot covers English and Welsh law</li>
</ul> 
',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Commercial legal services for all legal specialisms provided by firms that offer full services</li>
<li>This lot covers Scottish law</li>
</ul> 
',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Commercial legal services for all legal specialisms provided by firms that offer full services</li>
<li>This lot covers Northern Irish law</li>
</ul>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Legal services for property and construction</li>
<li>UK-wide services provided</li>
</ul>',
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
 '<ul class="govuk-list govuk-list--bullet">
<li>Legal services for transport rail</li>
<li>UK-wide services provided</li>
</ul>',
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

-- RM3787 CA FK 12, 1 lot

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
(58,
 'Lot 2',
 'Finance & Complex Legal Services',
 'Finance & Complex Legal Services description',
 12,
 'Services',
 '21-Aug-2017',
 '20-Aug-2021');
 
 --RM6089 CA FK 13, 6 Lots
 
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
(59,
 'Lot 1a',
 'Security Services',
 '<ul class="govuk-list govuk-list--bullet">
<li>Access to security and guarding services using approved contractors accredited by the Security Industry Authority (SIA)</li>
<li>Services include guarding, assessment of security risk and design of security systems</li>
<li>Suppliers offer technical and security services, where a single supplier is needed to deliver both </li>
<li>UK-wide and European coverage</li>
</ul>',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023');

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
(60,
 'Lot 1b',
 'Technical Security',
 '<ul class="govuk-list govuk-list--bullet">
<li>Design, supply, installation and maintenance of technical security systems, including electronic and physical security</li>
<li>Security risk assessments and design services provided by accreditation bodies recognised by the Centre for the Protection of National Insurance (CPNI)</li>
<li>UK-wide and European coverage</li>
</ul> ',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023');
 
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
(61,
 'Lot 2a',
 'Defence Housing Management Services (National)',
 '<ul class="govuk-list govuk-list--bullet">
<li>Portfolio and estate management, including contact centres, provided on a national basis</li>
<li>This lot is restricted to use by the Ministry of Defence and its related agencies and arms length bodies</li>
</ul>',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023');
 
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
(62,
 'Lot 2b',
 'Defence Housing Maintenance Services (Regional)',
 '<ul class="govuk-list govuk-list--bullet">
<li>Housing maintenance services including all types of housing, garages, communal areas, grounds and facilities, provided on a regional basis</li>
<li>This lot is restricted to use by the Ministry of Defence and its related agencies and arms length bodies</li>
</ul>',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023');
 
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
(63,
 'Lot 2c',
 'Housing Maintenance and Management Services',
 '<ul class="govuk-list govuk-list--bullet">
<li>Services are planned maintenance, compliance, void management, responsive repairs and helpdesk services</li>
<li>This is for central government, public sector departments, devolved administrations and third parties </li>
</ul>',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023');
 
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
(64,
 'Lot 3',
 'MOD Facilities Management Marketplace',
 '<ul class="govuk-list govuk-list--bullet">
<li>Facilities management solutions developed towards specific defence requirements, provided on a national basis</li>
<li>Range of services offered including maintenance services, statutory obligations, catering, and cleaning services </li>
<li>This lot is restricted to use by the Ministry of Defence and its related agencies and arms length bodies</li>
</ul> ',
 13,
 'Services',
 '25-Jan-2019',
 '24-Jan-2023'); 
 
 
 -- RM6130 CA FK 14, 1 Lot
 
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
(65,
 'Lot 1',
 'Building Cleaning Services',
 'Building Cleaning Services description',
 14,
 'Services',
 '30-Mar-2020',
 '25-Feb-2024'); 
 
 -- RM3804 CA FK 15, 8 Lots
 
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
(66,
 'Lot 1',
 'Technology Strategy and Service Design',
 'Technology Strategy and Service Design description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(67,
 'Lot 2',
 'Transition and Transformation',
 'Transition and Transformation description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(68,
 'Lot 3a',
 'Operational Services - End User Services',
 'Operational Services - End User Services description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(69,
 'Lot 3b',
 'Operational Services - Operational Management',
 'Operational Services - Operational Management',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(70,
 'Lot 3c',
 'Operational Services - Technical Management',
 'Operational Services - Technical Management description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(71,
 'Lot 3d',
 'Operational Services - Application and Data Management',
 'Operational Services - Application and Data Management description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(72,
 'Lot 4a',
 'Programmes and Large Projects - Government Official Security Classification',
 'Programmes and Large Projects - Government Official Security Classification description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
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
(73,
 'Lot 4b',
 'Programmes and Large Projects - Above Government Official Classification',
 'Programmes and Large Projects - Above Government Official Classification description',
 15,
 'Services',
 '06-Sep-2017',
 '05-Sep-2021'); 
 
