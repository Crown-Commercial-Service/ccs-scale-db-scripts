/*
Title       create_commercial_agreements.sql
Date        June 15th 2020
Author      Trevor Cummings
Description This file is a script to create test data for Commercial Agreements          
*/

-- Tech Products

Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     1,   
             'RM3733',
             'Technology Products 2',
             'CCS',
             'Technology Products 2 (TP2) offers public sector customers a flexible and compliant way to source all their technology product needs (hardware and software).',
             '31-Oct-2016',
             '31-Oct-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3733');
       
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     2,   
             'RM6068',
             'Technology Products & Associated Services',
             'CCS',
             'Technology Products & Associated Services (TePAS) offers public sector buyers a flexible and compliant way to source all of their technology product needs. This is the first iteration of the Technology Products framework to have associated services in its scope.

Under this agreement buyers can procure associated services and goods. The UK public sector and their associated bodies and agencies, including the voluntary sector and charities, can use this framework.',
             '10-Dec-2019',
             '09-Dec-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM6068');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     3,   
             'RM6103',
             'Education Technology',
             'CCS',
             'Educational establishments can buy ICT (Information and Communication Technologies) goods and technology services through one agreement.',
             '10-Jun-2019',
             '10-Jun-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM6103');  
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     4,   
             'RM3808',
             'Network Services 2',
             'CCS',
             'Telecommunications services including networks for the entire public sector, their associated bodies and agencies, the voluntary sector and charities.',
             '12-Aug-2019',
             '16-Aug-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM3808'); 
             
-- Linen and Laundry RM6154 and RM3830

Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     5,   
             'RM6154',
             'Linen and Laundry Services',
             'CCS',
             'This framework contains 3 lots. You can choose which lot suits your needs best, or use a combination of lots to suit your requirement.',
             '01-Feb-2020',
             '19-Mar-2023',
             'https://www.crowncommercial.gov.uk/agreements/RM6154'); 
       
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     6,   
             'RM3830',
             'Facilities Management Marketplace',
             'CCS',
             'UK-wide facilities management (FM) services organised regionally and available to all public sector entities. Includes maintenance, cleaning, security, helpdesk etc.',
             '10-Jul-2018',
             '09-Jul-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM3830');  
             
-- Legal WPS - RM3788, Rail LS - RM3756, eDisclosure - RM3717, Cost Lawyers - RM6137 ,GLAS - RM3786 ,Finance & Complex - RM3787             

Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     7,   
             'RM3788',
             'Legal Services for the Wider Public Sector',
             'CCS',
             '<p class="govuk-body">This framework contains 4 lots offering both general and more specific legal services. You can find suitable suppliers from the lots on this agreement using the our filtering tool (hyperlink to https://marketplace.service.crowncommercial.gov.uk/legal-services).
</p>        
<p class="govuk-body">Both direct award and further competition is enabled under this panel.
</p>',
             '01-Oct-2018',
             '18-Oct-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3788');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     8,   
             'RM3756',
             'Rail Legal Services',
             'CCS',
             '<ul class="govuk-list govuk-list--bullet">
<li>Specific legal advice for rail services, particularly for rail franchising
<li>This panel is designed for the Department of Transport''s rail division, although other central government departments and arms length bodies may be able to access the suppliers
<li>This panel isn''t suitable for the wider public sector
</ul> 
<p class="govuk-body">Direct award and further competition are both enabled on this panel. Schedule 5 of the agreement gives further information. 
</p>
<p class="govuk-body">RM3756 replaces part of expired framework RM919.
</p>',
             '31-May-2017',
             '31-Mar-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM3756');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     9,   
             'RM3717',
             'eDisclosure Services',
             'CCS',
             '<ul class="govuk-list govuk-list--bullet">
<li>eDisclosure and eDiscovery services for the public sector
<li>Select an end-to-end service or buy individual components from selected lots 
</ul> 
<p class="govuk-body">This framework offers the option for further competition and direct award. 
</p>
<p class="govuk-body">RM3717 replaces the previous CCS eDisclosure framework RM924. 
</p>',
             '01-Jun-2017',
             '01-Jun-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3717');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     10,   
             'RM6137',
             'Costs Lawyer Services',
             'CCS',
             '<ul class="govuk-list govuk-list--bullet">
<li>Routine and complex costs litigation work
<li>Services covered include consultancy, negotiation, advocacy, attending hearings and instructing counsel
<li>This framework covers England and Wales
</ul> 
<p class="govuk-body">This framework offers the option for further competition and direct award. 
</p>
<p class="govuk-body">RM6137 replaces the previous CCS Law Costs Draftsman Services framework RM1675.
</p>',
             '19-Aug-2019',
             '18-Aug-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM6137');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     11,   
             'RM3786',
             'General Legal Advice Services',
             'CCS',
             '<ul class="govuk-list govuk-list--bullet">
<li>Legal advice for central government and arms length bodies, covering 23 most commonly required areas of law, including major projects
<li>This panel covers English and Welsh law 
<li>Suppliers must supply advice under Scottish law where required. Legal advice on international jurisdications may also be in scope, if the supplier can provide it
</ul> 
<p class="govuk-body">Direct award and further competition are both enabled on this panel. Schedule 5 of the agreement gives further information.
</p>',
             '28-Feb-2017',
             '17-Dec-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3786');
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     12,   
             'RM3787',
             'Finance and Complex Legal Services',
             'CCS',
             '<ul class="govuk-list govuk-list--bullet">
<li>Legal advice for central government departments, executive agencies and arms length bodies, covering complex corporate finance for high-value, high-profile projects
<li>Suppliers may offer international coverage 
</ul> 
<p class="govuk-body">You can purchase services under this agreement by direct award or further competition. 
</p>        
<p class="govuk-body">RM3787 replaces some elements of RM919. 
</p>',
             '21-Aug-2017',
             '20-Dec-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3787');    
             
-- FM2 - RM6089 , Cleaning DPS - RM6130    

Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     13,   
             'RM6089',
             'Workplace Services (FM Marketplace Phase 2)',
             'CCS',
             'This agreement provides access to:

specialist security suppliers for the provision of both physical and technical security
housing management and maintenance services
specialist defence FM and housing services (for defence customers only.)
Our suppliers cover up to 40 geographical regions of the UK (Nomenclature of Territorial Units for Statistics (NUTS) 2 regions), providing you with regional and national coverage depending on your needs. For defence lots, suppliers can offer regional or national coverage. In some cases, suppliers may also be able to provide international coverage

Contracts can be let under this agreement for an initial length of up-to 7 years. This is inclusive of the mobilisation period, and a maximum duration (including extensions) of 10 years.

Any call-off will have an initial maximum duration of up to 7 years. You are allowed as many extensions as you need but the maximum call-off time should not be for more than 10 years. This includes the initial call-off duration as well as the possibility of one or more extensions.

Suppliers can provide all mandatory services and as well as a number of non-mandatory FM services on the following lots:

lot 1a (security)
lot 1b (technical)
lot 2c (housing maintenance and management)
The documents below give more details about the full scope of services available under this agreement.',
             '25-Jan-2019',
             '24-Jan-2023',
             'https://www.crowncommercial.gov.uk/agreements/RM6089'); 
             
Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     14,   
             'RM6130',
             'Building Cleaning Services',
             'CCS',
             'This agreement will offer central government departments, wider public sector organisations and charities the opportunity to procure a wide range of internal and external building cleaning services from regional and national suppliers. Building Cleaning Services has been designed around your needs and is easy to access, simple to use and extremely flexible. This DPS also includes the option to find experts to review your current delivery and performance methods to help you make improvements using recommendations based on industry standards and benchmarking. Building Cleaning Services uses a filter system to help you find qualifying local suppliers that can deliver services for your specific needs. The filters available are:
Filter 1: Delivery and Performance Assessment Services
Filter 2: Delivery and Performance Assessment Services - Location
Filter 3: Building Cleaning Services
Filter 4: Building Cleaning Services - Location
If you are a supplier and would like to provide your services through this DPS you can access the supplier bid pack on GOV.UK.',
             '30-Mar-2020',
             '25-Feb-2024',
             'https://www.crowncommercial.gov.uk/agreements/RM6130'); 
             
             
-- Tech Products additional CA missed from list of Commercial Agreements

Insert into Commercial_Agreements
            (commercial_agreement_id,          
             commercial_agreement_number,       
             commercial_agreement_name,         
             commercial_agreement_owner,        
             commercial_agreement_description,   
             start_date,                       
             end_date,                          
             agreement_url)
values (     15,   
             'RM3804',
             'Technology Services 2',
             'CCS',
             'ICT services from strategy and service design through transition to operational deployment. Includes large project services and up to top secret classification',
             '06-Sep-2017',
             '05-Sep-2021',
             'https://www.crowncommercial.gov.uk/agreements/RM3804');             
             
   
