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

