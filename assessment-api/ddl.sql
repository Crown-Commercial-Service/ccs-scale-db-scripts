-- Prototype database design for Cabability assessment
-- load tables

create table cap_load_resources
(resource_cluster varchar(100),
 resource_family varchar(100));

create table cap_load_service_capability
(service_capability_hdr varchar(100),
 service_capability     varchar(100));

create table cap_load_jobs
(role_cluster varchar(100),
 role_num     varchar(10),
 role_family  varchar(100),
 role_name    varchar(100),
 role_level   varchar(100));



-- Create table cap_dimensions


create table cap_dimensions 
( dimension_name  varchar(30)   primary key,
  dimension_descr varchar(2000) not null,
  created_by      varchar(2000) not null,                                   
  created_at      timestamp     not null,
  updated_by      varchar(2000) ,
  updated_at      timestamp);

-- Create table cap_dimension_valid_values

create table cap_dimension_valid_values
(dimension_name    varchar(30)   not null,
 valid_value_code  varchar(30)   not null,
 valid_value_name  varchar(30)   not null,
 valid_value_descr varchar(2000) not null,
 created_by        varchar(2000) not null,                                   
 created_at        timestamp     not null,
 updated_by        varchar(2000),
 updated_at        timestamp,
 primary key (dimension_name, valid_value_code));

-- Create table submission_types

create table cap_submission_types 
( submission_type_code varchar(30)   primary key,
  submission_type_name varchar(2000) not null,
  created_by           varchar(2000) not null,                                   
  created_at           timestamp     not null,
  updated_by           varchar(2000),
  updated_at           timestamp);
 

-- Create table cap_taxonomies;
create table cap_taxonomies
( taxonomy_id   integer       primary key,
  taxonomy_name varchar(100)  unique,
  created_by    varchar(2000) not null,
  created_at    timestamp     not null,
  updated_by    varchar(2000),
  updated_at    timestamp);
 
-- Create table cap_taxons;

create table cap_taxons
( taxon_id        integer       primary key,
  taxonomy_id     integer       not null,
  parent_taxon_id integer,
  taxon_name      varchar(50),
  permalink       varchar(500),
  taxon_descr     varchar(2000),
  created_by      varchar(2000) not null,
  created_at      timestamp     not null,
  updated_by      varchar(2000),
  updated_at      timestamp);
 
-- Create table cap_taxon_dimensions

create table cap_taxon_dimensions
( taxon_dimension_id serial        primary key,
  taxon_id           integer       not null,
  dimension_name     varchar(30)   not null,
  created_by         varchar(2000) not null,
  created_at         timestamp     not null,
  updated_by         varchar(2000),
  updated_at         timestamp);


-- Create table cap_products

create table cap_products
( product_id    serial        primary key,
  product_name  varchar(100)  not null,
  product_descr varchar(2000) not null,
  created_by    varchar(2000) not null,
  created_at    timestamp     not null,
  updated_by    varchar(2000),
  updated_at    timestamp);

 
-- Create table cap_product_taxons

create table cap_product_taxons
( product_taxon_id serial        primary key,
  product_id       integer       not null,
  taxon_id         integer       not null,
  created_by       varchar(2000) not null,
  created_at       timestamp     not null,
  updated_by       varchar(2000),
  updated_at       timestamp);

  

-- Create table cap_lot_product_taxons

create table cap_lot_product_taxons
( lot_product_taxon_id serial        primary key,
  lot_id               integer       not null,
  product_taxon_id     integer       not null,
  created_by           varchar(2000) not null,
  created_at           timestamp     not null,
  updated_by           varchar(2000),
  updated_at           timestamp);


-- Create table cap_supplier_submissions 
  
create table cap_supplier_submissions
( cap_supplier_submission_id serial        primary key,
  lot_product_taxon_id       integer       not null,
  supplier_id                integer       not null,
  submission_type_code       varchar(30)   not null,
  submission_reference       varchar(30),
  submission_value           integer,
  created_by                 varchar(2000) not null,
  created_at                 timestamp     not null,
  updated_by                 varchar(2000),
  updated_at                 timestamp);




