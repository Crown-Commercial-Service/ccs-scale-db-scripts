/*
* Create some basic search term - domain - journey data and relationships for test/development
*/

DELETE FROM search_domains;
DELETE FROM search_terms;
DELETE FROM journey_instance_answers;
DELETE FROM journey_instance_questions;
DELETE FROM journey_instance_outcome_details;
DELETE FROM journey_instances;
DELETE FROM journeys;
DELETE FROM error_usage;
DELETE FROM error_messages;
DELETE FROM failure_validation_types;

INSERT INTO journeys (journey_id, journey_name, published)
VALUES ('b87a0636-654e-11ea-bc55-0242ac130003', 'Linen & Laundry', true),
('ccb5c730-75b5-11ea-bc55-0242ac130003', 'Wider Public Sector Legal Services', true),
('ccb6174e-75b5-11ea-bc55-0242ac130003', 'Tech & EduTech', true),
('63f1b00f-530d-4271-a74d-e584c04d8e1b','FM2 Security',true),
('f08a2055-6502-4d5f-81f8-2e3f111ff7ae','FM2 Housing',true),
('7f7dcab1-9736-4012-960e-03da3b841c4c','FM2 Facilities',true);

drop table if exists temp_domain_values;
create table temp_domain_values (search_term varchar(75),
				 domain_name varchar(50),
				 domain_desc varchar(2000));

drop table if exists temp_journeys;
create table temp_journeys (domain_name varchar(50),
						    journey_uuid uuid);

-- The domain name links to the domain used in the spreadsheet. Have set up this temp table as names in the Journeys are slightly different. Plus
-- Software falls under Tech & Edu Tech annd doesn't have its own journey

INSERT INTO temp_journeys values ('Linen','b87a0636-654e-11ea-bc55-0242ac130003');
INSERT INTO temp_journeys values ('Legal','ccb5c730-75b5-11ea-bc55-0242ac130003');
INSERT INTO temp_journeys values ('Technology','ccb6174e-75b5-11ea-bc55-0242ac130003');
INSERT INTO temp_journeys values ('Software','ccb6174e-75b5-11ea-bc55-0242ac130003');
INSERT INTO temp_journeys values ('Security Services','63f1b00f-530d-4271-a74d-e584c04d8e1b');
INSERT INTO temp_journeys values ('Housing','f08a2055-6502-4d5f-81f8-2e3f111ff7ae');
INSERT INTO temp_journeys values ('Facilities Management (FM)','7f7dcab1-9736-4012-960e-03da3b841c4c');

insert into temp_domain_values values ('academy','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audio ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audio visual','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audio visual','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audit','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('AV','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('AVA','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('benchmarking','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('bridge','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Broadband','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('cabling','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('charging','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('chrome books','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('coleg gwent','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('college','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Communication ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('CONNECT','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('desktop','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('digital','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('digital signage','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('edu','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('educa','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('educaation ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Education','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Education ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education it','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education tec','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education tech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('EDUCATION TECH','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Education tech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education technolgy','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('education technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Education technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('EDUCATION TECHNOLOGY','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('educational','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('educational ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('fibre','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('fire','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('firewall','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('furniture','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('government education technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('HARDWARE','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ict','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ict for education','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ict hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ICT HARDWARE','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ICT in schools','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('infrastructure','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('INFRASTRUCTURE','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('installation','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('interactive','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Interactive ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('internet','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('IT','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('laptop','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('laptops','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('MIS','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('nec','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('net','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('network','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('networking','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('networking ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('phe','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('print','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('PRINT','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('printer','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('printers','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('safety','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('school','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('schools','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Schools','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('signage','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('soft','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('software','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Software','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('software ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('solutions','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('sound','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('switche','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tables','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TABLES','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECHNOLOGY','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tele','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('television','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('testing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('train','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('training','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TRAINING','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('trolley','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('universities','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('visual','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('whiteboards','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Bedsheets','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('cleanroom','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen hire','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('reusable theatre packs','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('wash','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen hire','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('bath','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('bed','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('bedding','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('globe locums','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('gloves','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('gowns','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('hire','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('Laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('Linen','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('specialist','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('waste disposal','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laund','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('LAUNDRY','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laundry and linen','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen and laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('Laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('linen','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('laundry','Linen','Standard collection, wash, finish and return of buyer owned and hired laundry from the supplier, specialist laundry and cleanroom services.');
insert into temp_domain_values values ('Security','Software','Computer programs designed to enhance IT security');
insert into temp_domain_values values ('application','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('assurance','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audio','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('audio visual','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('AV','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('board','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('books','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('cable','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('cabling','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('camera','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('catalogue','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('computer','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('computers','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('conferencing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('corporate','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('cots','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('desktop','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('DESKTOP ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('destruction','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('device','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('devices','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('display','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('disposal','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('disposals','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('DPS','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('encryption','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('enterprise','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('enterprise agreement','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('equipment','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('erp','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('fire','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('firewall','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Firewall','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('HARDWARE','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('hardware and software','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ict','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('imaging','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('information assurance','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('infrastructure','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('interactive','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ipad','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ipad covers','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('ipads','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('IT ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('it hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('IT Hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('IT Infrastructure','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('IT solutions','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('keyboards','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Laptop','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('LAPTOP','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('laptops','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('licence','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('licences','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('licencing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('license','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('licensing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('local area network','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('mac','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('macbook','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('maintenance','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('media','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('microsoft','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('mobile phone','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('mobile telephone','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('mobiles','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('mou','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('network','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('network infrastructure','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('network products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('networks','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('packaged software','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('pc','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('peripherals','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('phone','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('phones','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('print','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('printer','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('printers','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('product','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('project','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('projector','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('projectors','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('router','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('SAN','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('scan','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('scanner','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('scanners','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('secure','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('secure destruction','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('secure disposal','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('security','Software','Computer programs designed to enhance IT security');
insert into temp_domain_values values ('server','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('servers','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('smart','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('smartphone','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('smartphones','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('software','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('speech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('speech recognition','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('storage','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('switch','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tablet','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Tech','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECH','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tech products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Tech products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Tech Products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tech products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Tech Products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('techn','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technical products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technical products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technolo','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technolog','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECHNOLOGY','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECHNOLOGY ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology hard','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Hardware','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology pr','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology pro','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology prod','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology product','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology product','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology Product','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Product','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology product ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology Products','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECHNOLOGY PRODUCTS','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Products ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology products ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Products & Associated Services','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('TECHNOLOGY PRODUCTS 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology Products 2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products 2 ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Technology Products 2 ','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology products 3','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('technology&limit=20','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('telephone','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('telephony','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('touchscreen','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tp2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Tp2','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('tpas','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('video','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Video','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('video conferencing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('Video Conferencing','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('visual','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('whiteboards','Technology','Technology products, including hardware and software');
insert into temp_domain_values values ('AC','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Access','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Air conditioning','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('appliance','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Archiving','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('asbestos','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('asset','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('AV','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Billable','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('BIM','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Blinds','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('BMS','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Building','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Building information modelling','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('cable','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Cable','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('CAFM','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('car park','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Catering','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Catering','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('christmas tree','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Classified Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Clean  ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Cleaning','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Clinical Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Clocks','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('condition','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Curtains','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Deep  ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Deep cleaning','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Deli-Bar','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Electrical','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Engineering','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Environmental','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Equipment','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('External','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Fabric','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Facilities','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Feminine Hygiene Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Fire  ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Fire alarm','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('flag','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('flowers','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('FM','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Food','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('General Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('grounds','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Handyman','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Hard','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Hazardous Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Helpdesk','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('high voltage','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Hoist','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Horticultural','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('hospitality','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Housekeeping','Facilities Management (FM)','Access to FM suppliers for residential accommodation services, including janitorial duties');
insert into temp_domain_values values ('HVAC','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('hygiene','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('ice','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('inspection','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Internal','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Kitchen','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('lamping','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('lamps','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Lift','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('locksmith','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('M&E','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('machine','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('mail','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Mail','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Maintenance','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Mats','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Mechancial','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Medical Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Messenger','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Mobilisation','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('modelling','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('office','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('PAT','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('periodic','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('pest','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('planned','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('planting','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('plants','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('pond','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('portable','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('porter ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Porterage','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Power','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('PPM','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('re-lamping','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Reactive','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Reception','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Recycled Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Reprographics','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('reservoir','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('restaurant','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Risk','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('river','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('room','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Routine','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Delivery Plan','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('SFG20','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Signage','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('snow','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('soft  ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Soft landings','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Specialist','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Standby','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Statutory   ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Statutory Obligations','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('survey','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('switchgear','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Systems','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Taxi booking','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('testing','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('tree','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Trolley','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Vending','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Ventilation','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('voice','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('voltage','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('wall','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Waste','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Water','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('water feature','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Window ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Window ','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Windows','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Windows','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Workplace','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Workplace','Facilities Management (FM)','Function and support services, including janitorial services');
insert into temp_domain_values values ('Accommodation','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Adaptations','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Bin Areas','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Carbon Neutral Homes','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Care Homes','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Central Government Housing','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Certification','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Communal','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Community Housing Cymru (CHC)','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Corridors','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Decent Homes Standards 2006 ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('disability','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('EPC','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('FAM','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Fences and walls','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Foyers','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Garages','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Gardens','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Gas','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Grounds','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Homes England ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing and Planning Act 2016 ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Associations ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Co-operatives Housing Trusts ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Infrastructure ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing maintenance','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Management','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Stock','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Housing Units','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Local Authority Housing ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Local Housing Companies ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Maintenance ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Management','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('National Housing Federation','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Occupation','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Outsourcing Playbook','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Pathways','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Play Areas','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Private Registered Providers (PRPs).','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Property','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('PRPs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Public Sector Housing ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Radon','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Reactive Repairs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Recreational Facilities ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Rent','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Rental','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Repair Maintenance and Improvement','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('RMI','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Roadways','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Servicing','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Social Housing ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Social Value','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Special need','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Stairs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Stock Management ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('The Northern Ireland Federation of Housing Associations (NIFHA)','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('The Scottish Federation of Housing Associations (SFHA)','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Vacant','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Void','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Alarm','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Blockers','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Bollard','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Canine','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Cash','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('CCTV','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Emergency','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Fence','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Gate','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Guarding','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Intruder','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Key Holding','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Lock Up','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Locking','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Monitoring','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('NVR','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Panic','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Patrols','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Perimeter','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Physical','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Protection','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Response','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Risk','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Screening','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Security','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Security consultant','Security Services','For example guarding, patrols, CCTV monitoring, alarm response, installation of electronic or physical security systems');
insert into temp_domain_values values ('Barrier','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Biometric','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('CCTV','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('closed circuit','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Control','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Detection','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('DVR','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Electronic','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Intrusion','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Lighting','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Monitoring','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Security','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Systems','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('Technical security','Technical Security','For example risk assessments, and the design and installation of electronic or physical security systems');
insert into temp_domain_values values ('construction','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('contract','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('DPS','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('finance','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('general legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('General Legal Advice','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('government legal advisory','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Interims','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('IP Exploitation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('land','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('lega','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal advice','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal case','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal advice','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal case','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('panel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('property','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('property legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('public sector','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('rail','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('rail legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('strategy','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('trade panel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('transport','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider public ','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider public sector','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('WPS ','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wps le','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wps legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Law','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Lawyer','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal Counsel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Litigation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Disputes','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal Representation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Solicitor','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Tribunal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Negotiation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Conveyancing','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Drafting','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Statutes','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Precedents','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Disclosure','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Discovery','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('e-Disclosure','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('e-Discovery','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('costs draftman','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('draftsman','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('eDisclosure','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Private Registered Providers (PRPs). ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Property','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('PRPs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Public Sector Housing','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Radon','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Reactive Repairs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Recreational Facilities ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Rent','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Rental','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Repair Maintenance and Improvement','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('RMI','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Roadways','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Servicing','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Social Housing ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Social Value','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Special need','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Stairs','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Stock Management ','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('The Northern Ireland Federation of Housing Associations (NIFHA)','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('The Scottish Federation of Housing Associations (SFHA)','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Vacant','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('Void','Housing','Access to housing services suppliers, including management and estate services');
insert into temp_domain_values values ('construction','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('contract','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('DPS','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('finance','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('general legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('government legal advisory','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Interims','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('IP Exploitation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('land','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('lega','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal advice','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal case','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal advice','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('legal case','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('panel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('property','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('property legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('public sector','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('rail','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('rail legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('strategy','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('trade panel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('transport','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider public ','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wider public sector','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('WPS ','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wps le','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('wps legal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Law','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Lawyer','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal Counsel','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Litigation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Disputes','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Legal Representation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Solicitor','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Tribunal','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Negotiation','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Conveyancing','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Drafting','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Statutes','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Precedents','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Disclosure','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('Discovery','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('e-Disclosure','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('e-Discovery','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('costs draftman','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('draftsman','Legal','Services involving Legal or Law related matters');
insert into temp_domain_values values ('eDisclosure','Legal','Services involving Legal or Law related matters');

insert into search_terms (search_term)
select  distinct lower(search_term)
from    temp_domain_values td
join   temp_journeys tj on tj.domain_name = td.domain_name;

insert into search_domains (search_id,journey_id,modifier_journey_name,journey_selection_text,journey_selection_description)
select distinct st.search_id,
       tj.journey_uuid,
	   td.domain_name,
	   td.domain_name,
	   td.domain_desc
from   search_terms st
join   temp_domain_values td on lower(td.search_term) = st.search_term
join   temp_journeys tj on tj.domain_name = td.domain_name;

drop table if exists temp_domain_values;
drop table if exists temp_journeys;

/*
* Error handling seed data
*/
insert into failure_validation_types (failure_validation_type_code, failure_validation_type_name)
values ('noSelection', 'User has not selected an option in a select list where a selection is needed.'),
('noValue', 'User has not entered a value where a value is required.'),
('checkNumber', 'User has entered text into a number selection field.'),
('checkWholeNumber', 'User has entered a non whole number');

insert into error_messages (error_message_code, error_summary, error_message)
values ('ERR_GM001', '<p>If you know your budget, enter it here.</p><p>Select No if you don''t know your budget', '<p>If you know your budget, enter it here.</p><p>Select No if you don''t know your budget'),
('ERR_GM002', 'Enter your budget in £', 'Enter your budget in £'),
('ERR_GM003', 'Enter your budget using numbers not letters', 'Enter your budget using numbers not letters'),
('ERR_GM004', 'Enter your budget using whole numbers', 'Enter your budget using whole numbers'),
('ERR_GM005', '<p>Enter the length of your contract in months if you know it.</p><p>Select No if you don''t know the length of your contract</p>', '<p>Enter the length of your contract in months if you know it.</p><p>Select No if you don''t know the length of your contract</p>'),
('ERR_GM006', 'Enter the length of your contract in numbers not letters. The length of your contract must be in months.', 'Enter the length of your contract in numbers not letters. The length of your contract must be in months.'),
('ERR_GM007', 'Select if you''re looking for a product or service.', 'Select if you''re looking for a product, service or both. If you''re looking for both, select a service.'),
('ERR_GM008', 'Select which service you need', 'Select which service you need'),
('ERR_GM009', 'Select an option for additional facilities management services, if you need one. Select no if you don''t need any additional services', 'Select an option for additional facilities management services, if you need one. Select no if you don''t need any additional services'),
('ERR_GM010', 'Select which sector you are buying for', 'Select which sector you are buying for'),
('ERR_GM011', 'Select which service area you need. You can choose multiple options.', 'Select which service area you need. You can choose multiple options.'),
('ERR_GM012', 'Select if you need this service in England and Wales, Scotland or Northern Ireland', 'Select if you need this service in England and Wales, Scotland or Northern Ireland'),
('ERR_GM013', 'Select if you''re looking for a product, service or both', 'Select if you''re looking for a product, service or both'),
('ERR_GM014', 'Select which services you need. You can choose multiple options', 'Select which services you need. You can choose multiple options'),
('ERR_GM015', 'Select what type of security you need', 'Select what type of security you need'),
('ERR_GM016', 'Select what type of security services you need. You can choose multiple options', 'Select what type of security services you need. You can choose multiple options'),
('ERR_GM017', 'Select an option for additional facilities management services, if you need one. You can choose multiple options. Select No if you don''t need any additional services', 'Select an option for additional facilities management services, if you need one. You can choose multiple options. Select No if you don''t need any additional services'),
('ERR_GM018', 'Select what type of technical security you need', 'Select what type of technical security you need'),
('ERR_GM019', 'Select what type of services you need', 'Select what type of services you need'),
('ERR_GM020', 'Select what type of housing services you need', 'Select what type of housing services you need'),
('ERR_GM021', 'Select where you need this service', 'Select where you need this service');

insert into error_usage (failure_validation_type_code, error_message_code, question_id)
-- Decision Tree Graph Question Definition UUIDs (see https://github.com/Crown-Commercial-Service/ccs-scale-decision-tree-db/blob/develop/graph/common.cypher)
values ('noSelection', 'ERR_GM013', 'b879c040-654e-11ea-bc55-0242ac130003'), --Prod/Service/Both v1
('noSelection', 'ERR_GM007', '00888ff8-4327-4f46-a03b-8c6556b1fcac'), --Prod/Service/Both v2
('noSelection', 'ERR_GM001', 'b879c16c-654e-11ea-bc55-0242ac130003'), --Budget
('noValue', 'ERR_GM002', '931a3024-8612-422b-8e6f-480007105c2e'), --Budget
('checkNumber', 'ERR_GM003', '931a3024-8612-422b-8e6f-480007105c2e'), --Budget
('checkWholeNumber', 'ERR_GM004', '931a3024-8612-422b-8e6f-480007105c2e'), --Budget
('noSelection', 'ERR_GM005', 'b879c25c-654e-11ea-bc55-0242ac130003'), --Contract
('checkNumber', 'ERR_GM006', '754c6fbb-4525-4468-89d6-148ac26ec7f9'), --Contract
('noSelection', 'ERR_GM009', '1ecbbf8d-7d40-4711-b9e8-9e4e710d8ced'), --Additional Fac/Man v1 (single)
('noSelection', 'ERR_GM017', 'b879c342-654e-11ea-bc55-0242ac130003'), --Additional Fac/Man v2 (multi-select)
('noSelection', 'ERR_GM010', 'b879c46e-654e-11ea-bc55-0242ac130003'), --Sector
('noSelection', 'ERR_GM020', '4d9acc00-13eb-4854-8455-3213f381e0de'), --Housing services
('noSelection', 'ERR_GM008', 'b879c55e-654e-11ea-bc55-0242ac130003'), --Service v1
('noSelection', 'ERR_GM008', 'e415219f-f3e9-40a6-ab2b-ba73f44ce56d'), --Service v2
('noSelection', 'ERR_GM014', 'b87a0014-654e-11ea-bc55-0242ac130003'), --Services v3
('noSelection', 'ERR_GM015', 'b879c784-654e-11ea-bc55-0242ac130003'), --Security
('noSelection', 'ERR_GM016', '1b99e1a4-432f-4700-bcc2-7cbb2538fc20'), --Security services
('noSelection', 'ERR_GM018', '9a6301b0-e9f7-46b4-ad64-14da3396b2c7'), --Technical security
('noSelection', 'ERR_GM012', 'ccb5c64a-75b5-11ea-bc55-0242ac130003'), --Service location
('noSelection', 'ERR_GM011', '59561c74-8d8f-4863-a01d-5cca0a289986'); --Service area
