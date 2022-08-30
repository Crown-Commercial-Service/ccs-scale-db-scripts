/*
Version No   Version Description
----------   -------------------
v0.0.14       Removing fullstop from hint text for National Fuels 2
*/

UPDATE search_domains
SET journey_selection_description='Supply of liquid, solid and biomass fuels, liquefied gasses, greases, lubricants, antifreeze and associated services for various tank provisions including cleaning, testing, uplift and disposal'
WHERE modifier_journey_name like 'Fuels';
