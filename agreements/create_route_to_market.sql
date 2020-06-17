/*
Title       create_route_to_market.sql
Date        June 15th 2020
Author      Trevor Cummings
Description This file is a script to create test data for Sectors         
*/

insert into route_to_market (
  route_to_market_name,
  route_to_market_description)
values ('Further Competition',
        'Further Competition means that the buyer must run a competitive tender');
        
insert into route_to_market (
  route_to_market_name,
  route_to_market_description)
values ('Direct Award',
        'Direct Award means that the buyer can procure without the need to go to Further Competition');

insert into route_to_market (
  route_to_market_name,
  route_to_market_description)
values ('Marketplace',
        'A Marketplace is a website where products can bought from a catalogue for example');
        
insert into route_to_market (
  route_to_market_name,
  route_to_market_description)
values ('Auction',
        'An auction is where suppliers bid on the contract being offered. There is more than one flavour of auction, 
         Absolute Auction (No reserve price), Minimum Price Auction, Reverse Auction, Sealed Bid Auction,
         Multi-Parcel Auction'); 
         
insert into route_to_market (
  route_to_market_name,
  route_to_market_description)
values ('Aggregation',
        'Aggregation is where buyers come together to leveage greater discounts from suppliers. CCS will handle this side of things for the buyers. If yopu want further information themn please email aggregation@crowncommercial.gov.uk for more information');         
        
  
