-- Version No   Version Description
----------      -------------------
-- v0.0.4       Amend columns and constraint on search_terms and search_domains

create extension if not exists pg_trgm;

alter table search_terms alter column search_term TYPE varchar(75);

alter table search_domains drop constraint search_domains_modifier_journey_name_key;

alter table search_domains alter column modifier_journey_name TYPE varchar(50);
