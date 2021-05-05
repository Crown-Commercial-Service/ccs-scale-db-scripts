/* Script to populate the spree base tables */

/* Create indexes for load tables */

create index if not exists digital_content_stage_idx1 on digital_content_stage (content_guid);
create index if not exists digital_content_links_stage_idx1 on digital_content_links_stage (content_guid);
create index if not exists digital_content_meta_stage_idx1 on digital_content_meta_stage (content_guid);
create index if not exists digital_content_media_types_stage_idx1 on digital_content_media_types_stage (media_type_id);
create index if not exists digital_content_meta_value_voc_stage_idx1 on digital_content_meta_value_voc_stage(meta_value_id);
create index if not exists digital_content_links_stage_idx2 on digital_content_links_stage(prod_id);

create index if not exists load_spree_products_idxs on spree_products (cnet_id);
create index if not exists load_spree_variants_idxs on spree_variants (product_id);

drop index if exists index_scale_manufacturers_on_name;

/* Extension for UUID creation */


CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- This allows uuid to be generated

/* scale_manufacturers */


insert into scale_manufacturers (id,name,created_at,updated_at)
select cnet_company_id,company_name,now(),now() from distivoc_stage;

/* populate cnet_identies for the above records */

insert into scale_cnet_identities (cnet_id,cnet_type,item_id,item_type,created_at,updated_at)
select cnet_company_code, 'manufacturer',cnet_company_id,'Scale::Manufacturer',now(),now()
from   distivoc_stage;
   

/* spree_products */

insert into spree_products (name, description,slug,created_at,updated_at,promotionable,
							cnet_id,mpn_number,manufacturer_id)
select stst.description,stst.description,uuid_generate_v4(),now(),now(),true,
       stst.prod_id,prst.mf_pid,lsm.id
from   stdnee_stage stst
join   prod_stage prst on prst.prod_id = stst.prod_id
join   distivoc_stage dist on dist.cnet_company_code = prst.mf_id
join   scale_manufacturers lsm on lsm.id = dist.cnet_company_id;

/* spree_taxonomies */

INSERT INTO public.spree_taxonomies(
	id, name, created_at, updated_at, "position", filterable)
	VALUES (1, 'Tech Products', now(), now(), 1, true);
	
/* spree taxons */

-- Load record associated with spree_taxonomies

INSERT INTO public.spree_taxons(
	   id, 
	    parent_id, 
	    position, 
	    name, 
	    permalink, 
	    taxonomy_id, 
	    lft, 
	    rgt, 
	    description, 
	    created_at, 
	    updated_at, 
	    meta_title, 
	    meta_description, 
	    meta_keywords, 
	    depth, 
	    hide_from_nav, 
	    cnet_category_id)
values( 0, -- taxon id
	   null , --parent_taxon_id
	   0, -- position
	   'Tech Products', -- taxon name
       'tech-products/', --permalink
	   1, -- taxonym id
	   null, --lft
	   null, --rgt
	   null, -- description
	   now(), -- created_at
	   now(), -- updated_at
	   null, --meta_title, 
	   null, -- meta_description, 
	   null, -- meta_keywords, 
	   null,
	   false,
	   null);
  
-- Then load the immediate child records
INSERT INTO public.spree_taxons(
	   id, 
	    parent_id, 
	    position, 
	    name, 
	    permalink, 
	    taxonomy_id, 
	    lft, 
	    rgt, 
	    description, 
	    created_at, 
	    updated_at, 
	    meta_title, 
	    meta_description, 
	    meta_keywords, 
	    depth, 
	    hide_from_nav, 
	    cnet_category_id)
select id, -- taxon id
	   0 , --parent_taxon_id
	   0, -- position
	   category_name, -- taxon name
       'tech-products/'||lower (category_name), --permalink
	   1, -- taxonym id
	   null, --lft
	   null, --rgt
	   null, -- description
	   now(), -- created_at
	   now(), -- updated_at
	   null, --meta_title, 
	   null, -- meta_description, 
	   null, -- meta_keywords, 
	   category_level,
	   false,
	   category_name
from   cct_categories_stage
where parent_cat_id not like '1%' 
and    parent_cat_id not like '2%' 
and    parent_cat_id not like '3%' 
and    parent_cat_id not like '4%' 
and    parent_cat_id not like '5%'
and    parent_cat_id not like '6%'
and    parent_cat_id not like '7%'
and    parent_cat_id not like '8%'
and    parent_cat_id not like '9%' ;


-- Populate the child records

INSERT INTO public.spree_taxons(
	   id, 
	    parent_id, 
	    position, 
	    name, 
	    permalink, 
	    taxonomy_id, 
	    lft, 
	    rgt, 
	    description, 
	    created_at, 
	    updated_at, 
	    meta_title, 
	    meta_description, 
	    meta_keywords, 
	    depth, 
	    hide_from_nav, 
	    cnet_category_id)
select id, -- taxon id
	   (select id from cct_categories_stage where cat_id = ccs.parent_cat_id), --parent_taxon_id
	   0, -- position
	   category_name, -- taxon name
       'tech-products/'||lower (replace(replace(replace (replace(breadcrumbs||'/'||category_name,'>','/'),' / ','/'),' ','-'),'&','and')), --permalink
	   1, -- taxonym id
	   null, --lft
	   null, --rgt
	   null, -- description
	   now(), -- created_at
	   now(), -- updated_at
	   null, --meta_title, 
	   null, -- meta_description, 
	   null, -- meta_keywords, 
	   category_level,
	   false,
	   category_name
from   cct_categories_stage ccs
where length(parent_cat_id) > 1 ;

-- Create spree_products_taxons

insert into spree_products_taxons(product_id,taxon_id)
select lsp.id, ccs.id
from   spree_products lsp
join   cct_products_stage cps on cps.prod_id = lsp.cnet_id
join   cct_categories_stage ccs on ccs.cat_id = cps.cat_id;

-- populate spree_properties
-- need to discover why some are filterable and others aren't 

INSERT INTO public.spree_properties(
	     name, presentation, created_at, updated_at, filterable)
select   evocee_text, evocee_text,now(),now(), true
from     evocee_stage where id like 'T%'
and      evocee_text not in ('Colour','Weight');

-- populate spree_products_properties

INSERT INTO public.spree_product_properties 
           (product_id, property_id,value, created_at,updated_at,position,"group",show_property)
select sppr.id, lsp.id, evst_value.evocee_text,now(),now(),esst.display_order,evst_group.evocee_text,true
from   spree_products sppr
join   especee_stage esst        on esst.prod_id  = sppr.cnet_id
join   evocee_stage evst_prop    on evst_prop.id  = esst.hdr_id
join   spree_properties lsp on lsp.name      = evst_prop.evocee_text 
join   evocee_stage evst_value   on evst_value.id = esst.body_id
join   evocee_stage evst_group   on evst_group.id = esst.sect_id
where  sppr.parent_id is null;

-- Populate spree_option_types just for Colour

with cte_load_spree_product_types as
(select distinct evoc_group.evocee_text||'//'||evoc_prop.evocee_text as option_type_name,'Colour' as presentation,1,evoc_group.evocee_text as group_name
from   evocee_stage evoc_prop
join   especee_stage espe      on espe.hdr_id = evoc_prop.id
join   evocee_stage evoc_group on espe.sect_id = evoc_group.id
where  evoc_prop.evocee_text = 'Colour')
insert into public.spree_option_types(name,presentation,"position",created_at,updated_at,"group",filterable)
select option_type_name, presentation ,row_number() over (order by  option_type_name),now(),now(),group_name,true 
from   cte_load_spree_product_types;

					
-- Populate spree_option_values

with cte_load_spree_option_values as
(select distinct evoc_value.evocee_text as value_name, lsot.id as option_type_id
from   evocee_stage evoc_prop
join   especee_stage espe           on espe.hdr_id = evoc_prop.id
join   evocee_stage evoc_group      on espe.sect_id = evoc_group.id
join   spree_option_types lsot on lsot.name = evoc_group.evocee_text||'//'||evoc_prop.evocee_text
join   evocee_stage evoc_value      on evoc_value.id = espe.body_id            
where  evoc_prop.evocee_text = 'Colour')
insert into public.spree_option_values ("position", name, presentation, option_type_id, created_at, updated_at)
select row_number() over (partition by option_type_id order by value_name), value_name, value_name, option_type_id,
       now(),now()
from cte_load_spree_option_values;
					
/* Populate spree_product_option_types */

INSERT INTO public.spree_product_option_types(
	"position", product_id, option_type_id, created_at, updated_at)
select row_number () over (partition by lsp.id,lsot.id),
       lsp.id,
       lsot.id,
       now(),
       now()
--       evoc_value.evocee_text as value_name
from   evocee_stage evoc_prop
join   especee_stage espe           on espe.hdr_id = evoc_prop.id
join   spree_products lsp           on lsp.cnet_id = espe.prod_id and lsp.parent_id is null
join   evocee_stage evoc_group      on espe.sect_id = evoc_group.id
join   spree_option_types lsot      on lsot.name = evoc_group.evocee_text||'//'||evoc_prop.evocee_text
--join   evocee_stage evoc_value      on evoc_value.id = espe.body_id            
where  evoc_prop.evocee_text = 'Colour';


/* Populate Spree Variants master records */

INSERT INTO public.spree_variants(
	sku, weight, height, width, depth, deleted_at, is_master, product_id, 
	cost_price, "position", cost_currency, track_inventory, tax_category_id, 
	updated_at, discontinue_on, created_at)
select ' ', null, null, null, null, null, true, sp.id, 0, 1, 'GBP', null, null, now(),null, now()
from spree_products sp 
where parent_id is null;



/* Populate load_spree_option value variants */

-- first populate the stage table to link product_id, variant_id and option_value_id
insert into option_values_stage (product_id, option_type_id,option_value_id, variant_id)
select spot.product_id,
       spot.option_type_id,
       sov.id as option_value_id,
       nextval('spree_variants_id_seq')
from spree_product_option_types spot
join spree_products sp       on sp.id         = spot.product_id
join especee_stage espe           on espe.prod_id  = sp.cnet_id
join evocee_stage evoc_value      on evoc_value.id = espe.body_id 
join evocee_stage evoc_prop       on evoc_prop.id  = espe.hdr_id 
join spree_option_values sov on sov.option_type_id = spot.option_type_id
                                 and sov."name"         = evoc_value.evocee_text
where  evoc_prop.evocee_text = 'Colour'          
order by spot.product_id;


INSERT INTO public.spree_option_value_variants(variant_id, option_value_id)
select variant_id, option_value_id
from   option_values_stage;

/* Populate Spree Variants for option value type records */

INSERT INTO public.spree_variants(id,sku,is_master,product_id,cost_price, "position", cost_currency, updated_at,created_at)
select ovs.variant_id, ' ', false, ovs.product_id, 0, 2, 'GBP', now(),now()
from   option_values_stage ovs;

/* Populate Spree Prices */

INSERT INTO public.spree_prices(
	variant_id, amount, currency, deleted_at, created_at, updated_at, compare_at_amount)
select sv.id,0,'GBP',null,now(),now(),null
from spree_products sp
join spree_variants sv on sv.product_id = sp.id;


/* Populate spree_assets */
-- spree assets documents
INSERT INTO public.spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,1,'Scale::Document', -- Type, could possibly be 'Scale::Document' or 'Scale::Image'
       now(),now(), dcs.content_guid, dcs.url,
       dcmts.media_type_description
from   digital_content_links_stage       dcls
join   digital_content_stage             dcs   on dcs.content_guid     = dcls.content_guid 
join   digital_content_media_types_stage dcmts on dcmts.media_type_id  = dcs.media_type_id 
join   spree_products               sp    on sp.cnet_id           = dcls.prod_id
join   spree_variants               sv    on sv.product_id                = sp.id
where  sp.parent_id is null
and    dcmts.media_type_id in (11,12,13);

-- spree assets images -- standard image
INSERT INTO public.spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,1,'Scale::Image', -- Type, could possibly be 'Scale::Document' or 'Scale::Image'
       now(),now(), dcs.content_guid, dcs.url,
       dcmts.media_type_description
from   digital_content_links_stage       dcls
join   digital_content_stage             dcs   on dcs.content_guid     = dcls.content_guid 
join   digital_content_media_types_stage dcmts on dcmts.media_type_id  = dcs.media_type_id 
join   spree_products               sp    on sp.cnet_id           = dcls.prod_id
join   spree_variants               sv    on sv.product_id                = sp.id
where  sp.parent_id is null
and    dcmts.media_type_id in (1)
and    sv.is_master = TRUE;


-- spree assets images -- CCS Product Image

with CTA_Image_Size as(
select dcls.prod_id,
       dcmts.media_type_description, 
       max(cast (dcmvvs_w.meta_value_name as integer)) * 1 as image_weight,
       max(cast (dcmvvs_h.meta_value_name as integer) * cast (dcmvvs_iw.meta_value_name as integer)) as h_times_w
from   digital_content_links_stage          dcls
join   digital_content_stage                dcs    on dcs.content_guid     = dcls.content_guid 
join   digital_content_media_types_stage    dcmts  on dcmts.media_type_id  = dcs.media_type_id 
left  join   digital_content_meta_stage           dcms_w   on dcms_w.content_guid    = dcs.content_guid and dcms_w.meta_atr_id = 7  
left  join   digital_content_meta_value_voc_stage dcmvvs_w on dcmvvs_w.meta_value_id = dcms_w.meta_value_id 
left  join   digital_content_meta_atr_voc_stage   dcmavs_w on dcmavs_w.meta_atr_id   = dcms_w.meta_atr_id and dcmavs_w.meta_atr_id = 7
left join   digital_content_meta_stage           dcms_h   on dcms_h.content_guid    = dcs.content_guid and dcms_h.meta_atr_id = 4  
left join   digital_content_meta_value_voc_stage dcmvvs_h on dcmvvs_h.meta_value_id = dcms_h.meta_value_id 
left join   digital_content_meta_atr_voc_stage   dcmavs_h on dcmavs_h.meta_atr_id   = dcms_h.meta_atr_id and dcmavs_h.meta_atr_id = 4
left join   digital_content_meta_stage           dcms_iw   on dcms_iw.content_guid    = dcs.content_guid and dcms_iw.meta_atr_id = 3  
left join   digital_content_meta_value_voc_stage dcmvvs_iw on dcmvvs_iw.meta_value_id = dcms_iw.meta_value_id 
left join   digital_content_meta_atr_voc_stage   dcmavs_iw on dcmavs_iw.meta_atr_id   = dcms_iw.meta_atr_id and dcmavs_iw.meta_atr_id = 3
where  dcmts.media_type_id in (15)
group by dcls.prod_id, dcmts.media_type_description )
INSERT INTO public.spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,2,'Scale::Image', 
       now(),now(), dcs1.content_guid, dcs1.url,
       CTA_Image_Size.media_type_description       
from CTA_Image_Size 
join digital_content_links_stage             dcls1      on dcls1.prod_id            = CTA_Image_Size.prod_id
 join   digital_content_meta_stage           dcms_w1    on dcms_w1.content_guid     = dcls1.content_guid and dcms_w1.meta_atr_id = 7   
 join   digital_content_meta_value_voc_stage dcmvvs_w1  on dcmvvs_w1.meta_value_id  = dcms_w1.meta_value_id 
 join   digital_content_meta_atr_voc_stage   dcmavs_w1  on dcmavs_w1.meta_atr_id    = dcms_w1.meta_atr_id and dcmavs_w1.meta_atr_id = 7
 join   digital_content_meta_stage           dcms_h1    on dcms_h1.content_guid     = dcls1.content_guid and dcms_h1.meta_atr_id = 4  
 join   digital_content_meta_value_voc_stage dcmvvs_h1  on dcmvvs_h1.meta_value_id  = dcms_h1.meta_value_id 
 join   digital_content_meta_atr_voc_stage   dcmavs_h1  on dcmavs_h1.meta_atr_id    = dcms_h1.meta_atr_id and dcmavs_h1.meta_atr_id = 4
 join   digital_content_meta_stage           dcms_iw1   on dcms_iw1.content_guid    = dcls1.content_guid and dcms_iw1.meta_atr_id  = 3  
 join   digital_content_meta_value_voc_stage dcmvvs_iw1 on dcmvvs_iw1.meta_value_id = dcms_iw1.meta_value_id 
 join   digital_content_meta_atr_voc_stage   dcmavs_iw1 on dcmavs_iw1.meta_atr_id   = dcms_iw1.meta_atr_id and dcmavs_iw1.meta_atr_id = 3
 join   digital_content_stage                dcs1       on dcs1.content_guid        = dcls1.content_guid
 join   spree_products                       sp         on sp.cnet_id               = dcls1.prod_id
 join   spree_variants                       sv         on sv.product_id            = sp.id
where CTA_Image_Size.image_weight = cast (dcmvvs_w1.meta_value_name as integer) 
and   CTA_Image_Size.h_times_w    = cast (dcmvvs_h1.meta_value_name as integer) * cast (dcmvvs_iw1.meta_value_name as integer)  
and   sp.parent_id is NULL
and   sv.is_master = TRUE  
order by CTA_Image_Size.prod_id
;

-- spree assets which don't link to an image or document

-- removed insert for media types 4,5,10,14 as that data is stored in spree_products

/* populate friendly_id_slugs */

-- spree_taxons

insert into friendly_id_slugs (slug,sluggable_id,sluggable_type,created_at)
select permalink, id, 'Spree::Taxon', now()
from   spree_taxons;

-- spree_products

insert into friendly_id_slugs (slug,sluggable_id,sluggable_type,created_at)
select slug, id, 'Spree::Product', now()
from   spree_products
where  parent_id is NULL
and    slug is NOT NULL;

-- scale_product_xmls

INSERT into scale_product_xmls(cnet_id, url, media_type_id, content_guid, created_at, updated_at )
select prod_id, url, dcs.media_type_id, dcls.content_guid, now(), now()
from digital_content_stage dcs 
join digital_content_links_stage dcls on dcs.content_guid =  dcls.content_guid
where media_type_id in (4,5);

