/*
Version No   Version Description
----------   -------------------
v0.0.25      Renaming journey name from Workplace Services (FM Marketplace 2) to Facilities Management Workplace Services'
*/

UPDATE search_domains
SET modifier_journey_name='Facilities Management Workplace Services', journey_selection_text='Facilities Management Workplace Services'
WHERE modifier_journey_name like 'Workplace Services (FM Marketplace 2)';
