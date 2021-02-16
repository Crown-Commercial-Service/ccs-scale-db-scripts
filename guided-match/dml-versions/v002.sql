/*
Version No   Version Description
----------   -------------------
v0.0.2       Removing 'security consultant from search_terms and the references on search_domains
*/


DELETE FROM search_domains 
WHERE  search_id = (SELECT search_id
				    FROM   search_terms
				    WHERE  search_term = 'security consultant');

DELETE FROM search_terms
WHERE search_term = 'security consultant';



					
