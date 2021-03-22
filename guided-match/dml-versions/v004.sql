/*
Version No   Version Description
----------   -------------------
v0.0.4       Adding "Something else" option to the non GM Lite search term which then start the GM Lite journey
*/

INSERT INTO search_domains (search_id, journey_id, modifier_journey_name, journey_selection_text, journey_selection_description)   
SELECT DISTINCT st.search_id,
    (SELECT journey_id FROM journeys WHERE  journey_name = 'GM Lite'),
    'GM Lite',
    'Something else',
    'What I need is not listed here'
FROM search_terms st;