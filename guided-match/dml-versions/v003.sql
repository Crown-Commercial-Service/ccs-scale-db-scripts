/*
Version No   Version Description
----------   -------------------
v0.0.3       Inserts GM Lite Journey and the error message needed for Find a Thing UI.
*/


INSERT INTO journeys (journey_id, journey_name, published)
VALUES ('c9dd4455-7d23-4822-9912-eab4da9fc5a2', 'GM Lite', true);


INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES ('ERR_GM026', 'You will need to select one option','You will need to select one option');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
VALUES ('noSelection', 'ERR_GM026', '2efb026a-f85c-42d1-b294-3d72f2b95736'), -- LeveL 1 Question

('noSelection', 'ERR_GM026', '22462bd6-9323-4f8a-9672-a724e19eafeb'), -- LeveL 2 Question
('noSelection', 'ERR_GM026', 'd180386a-fe18-42ac-add8-2e1341c750a5'),
('noSelection', 'ERR_GM026', '6c166ea3-63a3-4e0e-82a1-f36ce6040122'),
('noSelection', 'ERR_GM026', '95d78c62-141b-4621-8431-6c94c97bb0ea'),

('noSelection', 'ERR_GM026', 'b96c9d64-f049-4b48-b07d-10853b016ffd'), -- LeveL 3 Question
('noSelection', 'ERR_GM026', '078539c7-61c9-414a-bdc8-3337187287d3'),
('noSelection', 'ERR_GM026', '7c6644ee-0c9c-402f-9880-5a59aa9333d1'),
('noSelection', 'ERR_GM026', '7b5f8442-08bc-4d2d-8802-30261c41e08f'),
('noSelection', 'ERR_GM026', '3ae2dd16-0cbe-4817-bb61-77cf404c392e'),
('noSelection', 'ERR_GM026', '3f34ac96-0e84-40a2-823a-99699027e3af'),
('noSelection', 'ERR_GM026', '1c3abfaa-2efd-4588-934c-14a654fd9545'),
('noSelection', 'ERR_GM026', '458fbaf9-e5f9-4200-b9d5-3230138520ec'),
('noSelection', 'ERR_GM026', 'ffa7e553-59f0-4ecd-a29e-6e2d1fd532eb'),
('noSelection', 'ERR_GM026', '616badb5-90bd-4569-8976-f3f6e8391a1a'),
('noSelection', 'ERR_GM026', 'ba8a29f9-e578-4079-9259-5553574ccc1b'),
('noSelection', 'ERR_GM026', 'e6d01fe3-aed3-4636-b078-5948e4150d38'),
('noSelection', 'ERR_GM026', '77bd757c-a54b-4a49-9b74-0181e1da1cfc'),
('noSelection', 'ERR_GM026', '1654a87f-feda-41b8-92bd-ba5ddf57ee2b'),
('noSelection', 'ERR_GM026', '6cd833c7-8fea-4843-86b3-177822804ce5'),
('noSelection', 'ERR_GM026', 'e608f643-a749-4ccc-892d-6e05ad942258'),
('noSelection', 'ERR_GM026', '4a2642ba-71ae-4391-a3b7-a81bc103f463'),
('noSelection', 'ERR_GM026', '5a22109d-12c4-47a2-a7f9-698331c774d0'),
('noSelection', 'ERR_GM026', 'bbeea78d-c39f-4bf9-887c-e17b5164ca88'),

('noSelection', 'ERR_GM026', '27ee54bc-dfed-41d0-80f1-0f239c9c3405'), -- LeveL 4 Question
('noSelection', 'ERR_GM026', '32b9c366-6fdd-4a04-baee-7b0053fc6847'),
('noSelection', 'ERR_GM026', 'eb1f6aa9-6b7d-48b7-a70a-307292c18de2'),
('noSelection', 'ERR_GM026', '69f740df-3d43-4694-a4b1-61d6bd7743d1'),
('noSelection', 'ERR_GM026', '53c720e7-965d-4e5e-a4de-19a056fd0a10'),
('noSelection', 'ERR_GM026', '9daf3e3d-7783-44c5-975a-b9e3fb8ae29e');





