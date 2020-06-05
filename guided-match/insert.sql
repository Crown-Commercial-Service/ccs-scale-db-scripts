/*
* Create some basic search term - domain - journey data and relationships for test/development
*/

DELETE FROM search_domains;
DELETE FROM search_terms;
DELETE FROM journeys;

INSERT INTO journeys (journey_id, journey_name)
VALUES ('ccb5a43a-75b5-11ea-bc55-0242ac130003', 'Linen & Laundry'),
('ccb5c730-75b5-11ea-bc55-0242ac130003', 'Wider Public Sector Legal Services'),
('ccb6174e-75b5-11ea-bc55-0242ac130003', 'Tech & EduTech');

INSERT INTO "search_terms" (search_term)
VALUES ('linen'),('laundry services'),('legal'),('laptops');

INSERT INTO search_domains (search_id, journey_id)
SELECT search_id, 'ccb5a43a-75b5-11ea-bc55-0242ac130003'
FROM search_terms
WHERE search_term = 'linen';

INSERT INTO search_domains (search_id, journey_id)
SELECT search_id, 'ccb5a43a-75b5-11ea-bc55-0242ac130003'
FROM search_terms
WHERE search_term = 'laundry services';

INSERT INTO search_domains (search_id, journey_id)
SELECT search_id, 'ccb5c730-75b5-11ea-bc55-0242ac130003'
FROM search_terms
WHERE search_term = 'legal';

INSERT INTO search_domains (search_id, journey_id)
SELECT search_id, 'ccb6174e-75b5-11ea-bc55-0242ac130003'
FROM search_terms
WHERE search_term = 'laptops';
