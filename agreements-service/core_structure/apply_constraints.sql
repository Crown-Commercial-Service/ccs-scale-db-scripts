/*
Title       Database constraint application script for Agreements Service database structure
Date        October 6th 2022
Author      Nathan Topping
Description Database constraint application scripts for initial release of Agreements Service, when applied separately to creation

NOTE: Do not amend this file - add changes under the "patches" folder
*/

ALTER TABLE lots 
ADD CONSTRAINT lots_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);
    
ALTER TABLE lot_sectors 
ADD CONSTRAINT lot_sectors_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);    
    
ALTER TABLE lot_sectors 
ADD CONSTRAINT lot_sectors_sectors_fk FOREIGN KEY (sector_code) 
    REFERENCES sectors (sector_code);        

ALTER TABLE lot_route_to_market
ADD CONSTRAINT lot_route_to_market_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);        

ALTER TABLE lot_route_to_market
ADD CONSTRAINT lot_route_to_market_route_to_market_fk FOREIGN KEY (route_to_market_name) 
    REFERENCES route_to_market (route_to_market_name);     
     
ALTER TABLE commercial_agreement_contacts
ADD CONSTRAINT commercial_agreement_contacts_commercial_agreements_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);

ALTER TABLE lot_rules 
ADD CONSTRAINT lot_rules_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);

ALTER TABLE lot_related_lots 
ADD CONSTRAINT lot_related_lots_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
    
ALTER TABLE lot_related_lots 
ADD CONSTRAINT lot_related_lots_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);    
    
ALTER TABLE lot_rule_attributes 
ADD CONSTRAINT lot_rule_attributes_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);    
    
ALTER TABLE lot_rule_transaction_objects
ADD CONSTRAINT lot_rule_transaction_objects_lot_rule_fk FOREIGN KEY (lot_rule_id) 
    REFERENCES lot_rules (lot_rule_id);

ALTER TABLE organisations
ADD CONSTRAINT organisations_organisations_fk1 FOREIGN KEY (parent_org_id) 
    REFERENCES organisations (organisation_id);  
    
ALTER TABLE organisations
ADD CONSTRAINT organisations_organisations_fk2 FOREIGN KEY (ultimate_org_id) 
    REFERENCES organisations (organisation_id);
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lots_organisation_organisations_fk FOREIGN KEY (organisation_id) 
    REFERENCES organisations (organisation_id);  
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lot_organisation_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
    
ALTER TABLE lot_organisation_roles
ADD CONSTRAINT lot_organisation_lort_fk FOREIGN KEY (role_type_id) 
    REFERENCES role_types (role_type_id);
					   
ALTER TABLE commercial_agreement_organisation_roles
ADD CONSTRAINT caor_organisations_fk FOREIGN KEY (organisation_id) 
    REFERENCES organisations (organisation_id);      
    
ALTER TABLE commercial_agreement_organisation_roles 
ADD CONSTRAINT caor_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id) 
    REFERENCES commercial_agreements (commercial_agreement_id);    

ALTER TABLE commercial_agreement_organisation_roles 
ADD CONSTRAINT caor_commercial_agreement_roles_fk FOREIGN KEY (role_type_id) 
    REFERENCES role_types (role_type_id);    

ALTER TABLE trading_organisations 
ADD CONSTRAINT trading_organisations_organisations_fk FOREIGN KEY (organisation_id ) 
    REFERENCES organisations (organisation_id );
		
ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_lot_prs
ADD CONSTRAINT contact_point_lot_prs_lot_people_roles_fk FOREIGN KEY (lot_person_role_id)
    REFERENCES lot_people_roles (lot_person_role_id);

ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_lot_ors
ADD CONSTRAINT contact_point_lot_ors_lot_people_roles_fk FOREIGN KEY (lot_organisation_role_id)
    REFERENCES lot_organisation_roles (lot_organisation_role_id);

ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_contact_details_fk FOREIGN KEY(contact_detail_id)
    REFERENCES contact_details (contact_detail_id);

ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_contact_point_reason_fk FOREIGN KEY (contact_point_reason_id)
    REFERENCES contact_point_reasons (contact_point_reason_id);
					   
ALTER TABLE contact_point_commercial_agreement_ors
ADD CONSTRAINT contact_point_commercial_agreement_ors_lot_people_roles_fk FOREIGN KEY (commercial_agreement_organisation_role_id)
    REFERENCES commercial_agreement_organisation_roles (commercial_agreement_organisation_role_id);
					  
ALTER TABLE lot_people_roles 
ADD CONSTRAINT lot_people_role_people_fk FOREIGN KEY (person_id)
    REFERENCES people (person_id);						   				   

ALTER TABLE lot_people_roles 
ADD CONSTRAINT lot_people_roles_people_fk FOREIGN KEY (role_type_id)
    REFERENCES role_types (role_type_id);	
					   
ALTER TABLE people 
ADD CONSTRAINT people_organisations_fk FOREIGN KEY (organisation_id)
    REFERENCES organisations (organisation_id);	
					  
ALTER TABLE commercial_agreement_benefits
ADD CONSTRAINT coab_commercial_agreement_fk FOREIGN KEY (commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id);    
					  
ALTER TABLE commercial_agreement_updates
ADD CONSTRAINT coau_commercial_agreement_fk FOREIGN KEY(commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id);    

ALTER TABLE commercial_agreement_documents
ADD CONSTRAINT coad_commercial_agreement_fk FOREIGN KEY(commercial_agreement_id)
    REFERENCES commercial_agreements (commercial_agreement_id); 
    
ALTER TABLE lot_procurement_event_types
ADD CONSTRAINT lot_procurement_event_types_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);
	
ALTER TABLE lot_procurement_event_types
ADD CONSTRAINT lot_procurement_event_types_lpet_fk FOREIGN KEY (procurement_event_type_id) 
    REFERENCES procurement_event_types (procurement_event_type_id);
	
ALTER TABLE lot_procurement_question_templates
ADD CONSTRAINT lot_procurement_question_templates_lots_fk FOREIGN KEY (lot_id) 
    REFERENCES lots (lot_id);	
	
ALTER TABLE lot_procurement_question_templates
ADD CONSTRAINT lot_procurement_question_templates_pqt_fk FOREIGN KEY (template_id) 
    REFERENCES procurement_question_templates (template_id);
	    
ALTER TABLE lot_procurement_question_templates
ADD CONSTRAINT lot_procurement_question_templates_pet_fk FOREIGN KEY (procurement_event_type_id) 
    REFERENCES procurement_event_types (procurement_event_type_id);