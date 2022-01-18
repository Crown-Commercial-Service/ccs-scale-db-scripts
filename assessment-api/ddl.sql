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



-- Create table dimensions


create table dimensions 
( dimension_name               varchar(30)   primary key,
  dimension_descr              varchar(2000) not null,
  min_weighting_pct            decimal,
  max_weighting_pct            decimal,
  allow_multiple_selection_ind boolean,
  min_allowed_value            decimal,
  max_allowed_value            decimal,
  created_by                   varchar(2000) not null,                                   
  created_at                   timestamp     not null,
  updated_by                   varchar(2000) ,
  updated_at                   timestamp);

-- Create table cap_dimension_valid_values

create table dimension_valid_values
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

create table submission_types 
( submission_type_code  varchar(30)   primary key,
  submission_type_name  varchar(100)  not null,
  submission_type_descr varchar(2000) not null,
  created_by            varchar(2000) not null,                                   
  created_at            timestamp     not null,
  updated_by            varchar(2000),
  updated_at            timestamp);
 


-- Create table assessment submission types

create table assessment_submission_types 
( assessment_submission_type_id       serial primary key,
  assessment_tool_id    integer       not null,
  submission_type_code  varchar(30)   not null,
  created_by            varchar(2000) not null,                                   
  created_at            timestamp     not null,
  updated_by            varchar(2000),
  updated_at            timestamp);


-- Create table Assessment Tools - Originally know as Taxonomies

create table assessment_tools
( assessment_tool_id    integer       primary key,
  assessment_tool_name  varchar(100)  unique,
  assessment_tool_descr varchar(2000),
  created_by            varchar(2000) not null,
  created_at            timestamp     not null,
  updated_by            varchar(2000),
  updated_at            timestamp);
 
-- Create table assessment taxons;

create table assessment_taxons
( assessment_taxon_id        integer       primary key,
  assessment_tool_id         integer       not null,
  parent_assessment_taxon_id integer,
  assessment_taxon_name      varchar(50),
  permalink                  varchar(500),
  assessment_taxon_descr     varchar(2000),
  created_by                 varchar(2000) not null,
  created_at                 timestamp     not null,
  updated_by                 varchar(2000),
  updated_at                 timestamp);
 
-- Create table taxon_dimensions

create table assessment_taxon_dimensions
( assessment_taxon_dimension_id serial        primary key,
  assessment_taxon_id           integer       not null,
  dimension_name                varchar(30)   not null,
  created_by                    varchar(2000) not null,
  created_at                    timestamp     not null,
  updated_by                    varchar(2000),
  updated_at                    timestamp);


-- Create table requirements (products & services)

create table requirements
( requirement_id    serial        primary key,
  requirement_name  varchar(100)  not null,
  requirement_descr varchar(2000) not null,
  created_by        varchar(2000) not null,
  created_at        timestamp     not null,
  updated_by        varchar(2000),
  updated_at        timestamp);

 
-- Create table requirement_taxons

create table requirement_taxons
( requirement_taxon_id serial        primary key,
  requirement_id       integer       not null,
  assessment_taxon_id  integer       not null,
  created_by           varchar(2000) not null,
  created_at           timestamp     not null,
  updated_by           varchar(2000),
  updated_at           timestamp);

  

-- Create table lot_requirement_taxons

create table lot_requirement_taxons
( lot_requirement_taxon_id serial        primary key,
  lot_id               integer       not null,
  requirement_taxon_id integer       not null,
  created_by           varchar(2000) not null,
  created_at           timestamp     not null,
  updated_by           varchar(2000),
  updated_at           timestamp);


-- Create table supplier_submissions 
  
create table supplier_submissions
( supplier_submission_id       serial        primary key,
  lot_requiremennt_taxon_id         integer       not null,
  supplier_id                  integer       not null,
  assesment_submission_type_id integer       not null,
  submission_reference         varchar(30),
  submission_value             integer,
  created_by                   varchar(2000) not null,
  created_at                   timestamp     not null,
  updated_by                   varchar(2000),
  updated_at                   timestamp);


-- Create table Assessments

create table assessments(
  assessment_id         integer       primary key,
  buyer_organisation_id integer       not null,
  assesment_name        varchar(100)  not null,
  assessment_descr      varchar(2000) not null,
  status                varchar(30)   not null,
  assessment_tool_id    integer       not null,
  created_by            varchar(2000) not null,
  created_at            timestamp     not null,
  updated_by            varchar(2000),
  updated_at            timestamp);

-- Create table assessment selection

create table assessment_selections
( assessment_selection_id serial        primary key,
  assessment_id           integer       not null,
  dimension_name          varchar(30)   not null,
  requirement_taxon_id    integer       not null,
  weighting_pct           decimal       not null,
  created_by              varchar(2000) not null,
  created_at              timestamp     not null,
  updated_by              varchar(2000),
  updated_at              timestamp);


-- Create table assessment results

create table assessment_result
( assessment_result_id                  serial primary key,
  assessment_id                         integer not null,
  supplier_organisation_id              integer not null,
  assessment_result_value               decimal ,
  assessment_selection_result_reference varchar(30),
  created_by                            varchar(2000) not null,
  created_at                            timestamp     not null,
  updated_by                            varchar(2000),
  updated_at                            timestamp);

-- Create table assessment_selection_results

create table assessment_selection_results
( assessment_selection_result_id        serial  primary key,
  assessment_selection_id               integer not null,
  assessment_selection_result_value     decimal ,
  assessment_selection_result_reference varchar(30),
  created_by                            varchar(2000) not null,
  created_at                            timestamp     not null,
  updated_by                            varchar(2000),
  updated_at                            timestamp);

create table assessment_dimension_weighting
( assessment_dimension_weighting_id serial        primary key,
  assessment_id                     integer       not null,
  weighting_pct                     decimal       not null,
  created_by                        varchar(2000) not null,
  created_at                        timestamp     not null,
  updated_by                        varchar(2000),
  updated_at                        timestamp);


