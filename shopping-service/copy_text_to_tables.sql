
/* Script to load the files from cnet into the database */

/* Distivoc - Organisation names - probably transformed using the shell command */

copy public.distivoc_stage (cnet_company_code,company_name) 
FROM '/Users/trevorcummings/cnet_tfr/Distivoc.txt'
ENCODING 'LATIN2';

/* Cct_product - probably transformed using the shell command */

copy public.cct_products_stage (prod_id, version_id, cat_id, primary_ind) 
FROM '/Users/trevorcummings/cnet_tfr/Cct_products.txt' 
;

/* Cct_Categories - probably transformed using numbers as there were spaces in the breadcrumbs */

copy public.cct_categories_stage (cat_id,version_id,category_name,cat_key,parent_cat_id,category_level,
								   display_order,breadcrumbs,notes,optional_ind,obsolete_ind) 
FROM '/Users/trevorcummings/cnet_tfr/Cct_Categories.txt';

/* especee - probably transformed shell command */

copy public.especee_stage (prod_id,sect_id,hdr_id,body_id,display_order) 
FROM '/Users/trevorcummings/cnet_tfr/especee.txt' ;


/* Evocee */

copy public.evocee_stage (id, evocee_text) 
FROM '/Users/trevorcummings/cnet_tfr/evocee.txt' ENCODING 'LATIN2';

/* Prod */ /* Still needs looking at */

copy public.prod_stage (prod_id,cat_id,mkt_id,img_id, mf_id,mf_pid,attribute1,
						    attribute2,attribute3,attribute4,attribute5,attribute6,
						    attribute7,attribute8,attribute9,attribute10,attribute11,
						    attribute12,attribute13,attribute14) 
FROM '/Users/trevorcummings/cnet_tfr/prod.txt' ENCODING 'LATIN2' ;

/* stdnee */ 

copy public.stdnee_stage (prod_id, description) 
FROM '/Users/trevorcummings/cnet_tfr/stdnee.txt'  ENCODING 'LATIN2';

/* Digital_Content - Had to use numbers to transform file */

copy public.digital_content_stage (content_guid,media_type_id,mime_type,url,timestamp_at) 
FROM '/Users/trevorcummings/cnet_tfr/Digital_Content.txt';

/*  Digital_Content_links used shell script command*/

copy public.digital_content_links_stage (prod_id,content_guid) 
FROM '/Users/trevorcummings/cnet_tfr/Digital_Content_Links.txt';

/* Digital_content_meta used shell script command*/

copy public.digital_content_meta_stage (content_guid,meta_atr_id,meta_value_id) 
FROM '/Users/trevorcummings/cnet_tfr/Digital_Content_Meta.txt';

/* Digital_content_meta_value_voc - used shell script command*/

copy public.digital_content_meta_value_voc_stage (meta_value_id,language_code,meta_value_name) 
FROM '/Users/trevorcummings/cnet_tfr/Digital_Content_Meta_Value_Voc.txt';

/* Populate Digital_content_meta_atr_voc */

insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (10,'Clipping Path');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (7,'Image Weight');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (9,'Copyright');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (1,'Image Angle');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (6,'Resolution');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (8,'Image ID');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (2,'Image Type');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (3,'Image Width');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (4,'Image Height');
insert into digital_content_meta_atr_voc_stage(meta_atr_id,meta_value_name) values (5,'File Size');

/* populate digital_content_media_types */

insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(1,	'Standard Image (200x150)');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(4,	'Marketing description');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(5,	'Key Selling Points');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(10,	'What''s in the Box');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(11,	'Product Data Sheet / Brochure');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(12,	'User Manual');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(13,	'Quick Start Guide');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(14,	'Product Features');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(15,	'CCS Product Image');
insert into digital_content_media_types_stage(media_type_id ,media_type_description) values 
(17,	'Logo Image');

/*
select count(*) from  distivoc_stage; -- 45,782
select count(*) from  cct_products_stage; -- 22,668,946
select count(*) from  cct_categories_stage; -- 3,272
select count(*) from  especee_stage; -- 52,477,641
select count(*) from  evocee_stage; -- 1,397,242
select count(*) from  prod_stage; -- 3,752,102
select count(*) from  stdnee_stage; -- 3,752,102
select count(*) from  digital_content_stage;-- 11,927,250
select count(*) from  digital_content_links_stage; -- 44,914,857
select count(*) from  digital_content_meta_stage; -- 73,681,306
select count(*) from  digital_content_meta_value_voc_stage; -- 2,151,835
*/
