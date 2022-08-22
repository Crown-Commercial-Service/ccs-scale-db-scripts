/*
Tenders DB Update script: v18 -  PA Event type data added.
*/




INSERT INTO public.procurement_event_types
(procurement_event_type_id, procurement_event_type_name, procurement_event_type_description, premarket_activity_ind)
VALUES(8, 'PA', 'Procurement Assessment', false);



INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7771, 8, true, true, 5, '3');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7772, 8, true, true, 5, '4');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7773, 8, true, true, 5, '5');


INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7774, 8, true, true, 5, '6');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7775, 8, true, true, 5, '7');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7776, 8, true, true, 5, '8');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7777, 8, true, true, 5, '9');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7778, 8, false, true, 5, '10');

INSERT INTO public.lot_procurement_event_types
(lot_id, procurement_event_type_id, mandatory_event_ind, repeatable_event_ind, max_repeats, assessment_tool_id)
VALUES(7779, 8, true, true, 5, '11');
