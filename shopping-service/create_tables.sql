/* Drop tables */

DROP TABLE IF EXISTS distivoc_stage;
DROP TABLE IF EXISTS cct_products_stage;
DROP TABLE IF EXISTS cct_categories_stage;
DROP TABLE IF EXISTS especee_stage;
DROP TABLE IF EXISTS evocee_stage;
DROP TABLE IF EXISTS prod_stage;
DROP TABLE IF EXISTS stdnee_stage;
DROP TABLE IF EXISTS digital_content_stage;
DROP TABLE IF EXISTS digital_content_links_stage;
DROP TABLE IF EXISTS digital_content_meta_stage;
DROP TABLE IF EXISTS digital_content_meta_value_voc_stage;
DROP TABLE IF EXISTS option_values_stage;

/* Cat string copmmand will convert file cat file.txt | tr -s '[:blank:]' ',' > fileCSV.csv */

create table distivoc_stage (cnet_company_code varchar(20),
							 company_name      varchar(500),
							 cnet_company_id SERIAL);
							 
/* Cat string copmmand will convert file cat file.txt | tr -s '[:blank:]' ',' > fileCSV.csv */

create table cct_products_stage (prod_id     varchar(40),
								 version_id  int,
								 cat_id      varchar(40),
								 primary_ind varchar(1)); -- amended for loading from txt file

/* Had to open in numbers to convert to csv because of spaces in the breadcrumbs. Must be a way to alter 
   the command line to fix that problem */
   
create table cct_categories_stage (id serial,
	                               cat_id         varchar(40),
								   version_id     int,
								   category_name  varchar(300),
								   cat_key        varchar(40),
								   parent_cat_id  varchar(40),
								   category_level int,
								   display_order  int,
								   breadcrumbs    varchar(2000),
								   notes          varchar(300),
								   optional_ind   varchar(1),-- amended for loading from txt file
								   obsolete_ind   varchar(1));-- amended for loading from txt file
								   
/* Cat string copmmand will convert file cat file.txt | tr -s '[:blank:]' ',' > fileCSV.csv */

create table especee_stage (prod_id       varchar(40),
						    sect_id       varchar(10),
						    hdr_id        varchar(10),
							body_id       varchar(10),
							display_order int);
								   
/* Had to open in numbers to convert to csv because of spaces in the notes plus other special characters. Must be 
a way to alter  the command line to fix that problem */

create table evocee_stage(id          varchar(10),
						  evocee_text varchar(2000));
						  
/* Had to open in numbers to convert to csv because of spaces in the notes plus other special characters. Must be 
a way to alter  the command line to fix that problem */

create table prod_stage(prod_id varchar(40),
					    cat_id  varchar(2),
					    mkt_id  varchar(10),
					    img_id  varchar(10),
					    mf_id   varchar(10),
					    mf_pid  varchar(40),
					    attribute1 varchar(40),
					   	attribute2 varchar(40),
					   	attribute3 varchar(40),
					   	attribute4 varchar(40),
					   	attribute5 varchar(40),
					   	attribute6 varchar(40),
					   	attribute7 varchar(40),
					   	attribute8 varchar(40),
					   	attribute9 varchar(40),
					   	attribute10 varchar(40),
					   	attribute11 varchar(40),
					   	attribute12 varchar(40),
					   	attribute13 varchar(40),
					   	attribute14 varchar(40));

/* Had to open in numbers and then convert comma delimter to a pipe delimiter */

create table stdnee_stage (prod_id varchar(40),
						   description varchar(2000));

/* Used cat command to put the commas in the file */

create table digital_content_stage (content_guid  varchar(36),
							  media_type_id int,
							  mime_type     varchar(50),
							  url           varchar(500),
							  timestamp_at  varchar(19));		
							  
create table digital_content_links_stage(prod_id varchar(40),
								   content_guid varchar(36));
								   
create table digital_content_meta_stage(content_guid  varchar(36),
								  meta_atr_id   int,
								  meta_value_id int);
							  
create table digital_content_meta_value_voc_stage(meta_value_id   int,
										    language_code   varchar(20),
										    meta_value_name varchar(36));								  
						   
CREATE TABLE public.digital_content_media_types_stage
(
    media_type_id integer,
    media_type_description character varying(1000) COLLATE pg_catalog."default"
);
													    
CREATE TABLE public.digital_content_meta_atr_voc_stage
(
    meta_atr_id integer,
    meta_value_name character varying(200) COLLATE pg_catalog."default"
);													    

CREATE TABLE option_values_stage
(   product_id      integer,
    option_type_id  integer,
    option_value_id integer,
    variant_id      integer
);