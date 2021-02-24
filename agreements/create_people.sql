/*
Title       create_people.sql
Date        July 16th 2020
Author      Trevor Cummings
Description This file is a script to create data for people.  
*/
INSERT INTO people (organisation_id,
                    first_name,
                    last_name,
                    title)
values
                    ((select organisation_id from organisations where legal_name = 'ACS Business Supplies Ltd'),
                    'Linus',
                    'Van Pelt',
                    'Master');
