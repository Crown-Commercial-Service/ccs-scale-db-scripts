/*
Version No   Version Description
----------   -------------------
v0.0.20       Removing fullstop from hint text for Workplace Services (FM Marketplace 2)
*/

UPDATE search_domains
SET journey_selection_description='Security, housing and Facilities Management (FM) services for defence, central government and wider public sector'
WHERE modifier_journey_name like 'Workplace Services (FM Marketplace 2)';
