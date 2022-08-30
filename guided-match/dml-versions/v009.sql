/*
Version No   Version Description
----------   -------------------
v0.0.9       Inserts error messages for Postal Goods, Payment Solutions and Print Marketplace decision tree.
*/

INSERT INTO error_messages (error_message_code, error_summary, error_message)
VALUES
 ('ERR_GM027','Select the type of product you need','Select the type of product you need'),
 ('ERR_GM028','Select whether you need mail room equipment that can print large volumes of material daily','Select whether you need mail room equipment that can print large volumes of material daily'),
 ('ERR_GM029','Where you need the services','Where you need the services'),
 ('ERR_GM030','Select the type of service you need','Select the type of service you need'),
 ('ERR_GM031','Select the type of payment card you need','Select the type of payment card you need'),
 ('ERR_GM032','Select the type of product or service you need','Select the type of product or service you need'),
 ('ERR_GM033','Select whether you need a print management service','Select whether you need a print management service'),
 ('ERR_GM034','Select your preferred route to market','Select your preferred route to market');

INSERT INTO error_usage (failure_validation_type_code, error_message_code, question_id)
values
 ('noSelection','ERR_GM027','77fb6b2a-630e-4154-9340-1ebe71d4ed95'),
 ('noSelection','ERR_GM028','b0bc8862-4a90-4b5b-a31f-982d25f49013'),
 ('noSelection','ERR_GM029','203b27fd-0754-4333-8347-b2e5cb9019e1'),
 ('noSelection','ERR_GM030','18df190c-ef8e-4cda-a760-68929965b86a'),
 ('noSelection','ERR_GM031','d0d0bb91-b819-4cac-9b17-24b7b4ba8f7b'),
 ('noSelection','ERR_GM032','236fc784-2dbe-4ae5-8502-7598af1205bd'),
 ('noSelection','ERR_GM033','c4793641-9cf4-4b59-a247-457cebecb3a9'),
 ('noSelection','ERR_GM034','6e4cb6ba-0df3-44ac-a2e5-11c038cd53e9');