/*
Version No   Version Description
----------   -------------------
v0.0.15       Renaming the selection text from 'Print Marketplace' to 'Print'
*/

UPDATE search_domains
SET journey_selection_text ='Print'
WHERE modifier_journey_name ='Print Marketplace'