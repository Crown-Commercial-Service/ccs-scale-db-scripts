
/*
Tenders DB Update script: v11 (exported flag to check if the buyers are exported or Jaggaer)
*/

ALTER TABLE public.buyer_user_details ADD exported boolean DEFAULT false;