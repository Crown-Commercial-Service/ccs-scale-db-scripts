/*
Title       Database data creation script for Agreements database design
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
             'RM6103',
             'Network Services 2',
             'CCS',
             'Telecommunications services including networks for the entire public sector, their associated bodies and agencies, the voluntary sector and charities.',
             '12-Aug-2019',
             '16-Aug-2022',
             'https://www.crowncommercial.gov.uk/agreements/RM3808');               
       
