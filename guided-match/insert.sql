/*
* Create some basic search term - domain - journey data and relationships for test/development
*/

DELETE FROM search_domains;
DELETE FROM search_terms;
DELETE FROM journeys;

INSERT INTO journeys (journey_id, journey_name, published)
VALUES ('b87a0636-654e-11ea-bc55-0242ac130003', 'Linen & Laundry', true),
('ccb5c730-75b5-11ea-bc55-0242ac130003', 'Wider Public Sector Legal Services', true),
('ccb6174e-75b5-11ea-bc55-0242ac130003', 'Tech & EduTech', true);

INSERT INTO "search_terms" (search_term)
VALUES ('linen'),('laundry services'),('legal'),('laptops');

INSERT INTO search_domains (search_id, journey_id, modifier_journey_name, journey_selection_text, journey_selection_description, lookup_entry_id)
SELECT search_id, 'b87a0636-654e-11ea-bc55-0242ac130003', 'hospitals', 'Linen & Laundry hospitals', 'Linen & Laundry hospital specific guided match', 'a3a9783f-3ccd-4bb9-ae9b-63d6ea62e440'
FROM search_terms
WHERE search_term = 'linen';

INSERT INTO search_domains (search_id, journey_id, modifier_journey_name, journey_selection_text, journey_selection_description, lookup_entry_id)
SELECT search_id, 'b87a0636-654e-11ea-bc55-0242ac130003', 'bedsheets', 'Linen & Laundry bedsheets', 'Linen & Laundry bedsheets specific guided match', 'ef55cae4-df47-466a-aef1-45a5d2008e02'
FROM search_terms
WHERE search_term = 'laundry services';

INSERT INTO search_domains (search_id, journey_id, modifier_journey_name, journey_selection_text, journey_selection_description, lookup_entry_id)
SELECT search_id, 'ccb5c730-75b5-11ea-bc55-0242ac130003', 'contracts', 'Legal Services contracts', 'WPS Legal Services contracts specific guided match', 'e667b2b5-ab4d-4949-ac35-2eb4e5754992'
FROM search_terms
WHERE search_term = 'legal';

INSERT INTO search_domains (search_id, journey_id, modifier_journey_name, journey_selection_text, journey_selection_description, lookup_entry_id)
SELECT search_id, 'ccb6174e-75b5-11ea-bc55-0242ac130003', 'computer hardware', 'Tech/EduTech computer hardware', 'Tech/EduTech computer hardware specific guided match', 'c3360661-f3b5-4c78-bf37-a7f32bfb449f'
FROM search_terms
WHERE search_term = 'laptops';
