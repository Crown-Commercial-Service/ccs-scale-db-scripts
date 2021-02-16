/* 
Title           v0002.sql

Description		Database fix script to remove the search term 'security consultant' from the table search_terms. 
				This table has a referential constraint to the serach_domains table. Therefore we need to 
				remove any reference to the serach term from this table first or a referential constraint would be raised
				when attempting to remove the record from the search_terms table.
				
Author			?

Date			16th February 2021

*/


/* create back up tables so fix can be rolled back if there are any issues */

create table search_domains_save as select * from search_domains;

create table search_terms_save   as select * from search_terms;

/* delete from serach_domains to remove any references back to search_terms from this table */

delete from search_domains 
where  search_id = (select search_id
				    from   search_terms
				    where  search_term = 'security consultant');
/* Finally remove the search term 'security consultant'	*/

delete from search_terms
where search_term = 'security consultant';



					
