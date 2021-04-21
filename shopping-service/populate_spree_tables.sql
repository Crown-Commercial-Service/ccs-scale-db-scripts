/* Script to populate the spree base tables */

/* scale_manufacturers */


CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- This allows uuid to be generated

insert into load_scale_manufacturers (id,name,created_at,updated_at)
select cnet_company_id,company_name,now(),now() from distivoc_stage;

/* spree_products */

insert into load_spree_products (name, description,slug,created_at,updated_at,promotionable,
							cnet_id,mpn_number,manufacturer_id)
select stst.description,stst.description,uuid_generate_v4(),now(),now(),true,
       stst.prod_id,prst.mf_pid,lsm.id
from   stdnee_stage stst
join   prod_stage prst on prst.prod_id = stst.prod_id
join   distivoc_stage dist on dist.cnet_company_code = prst.mf_id
join   load_scale_manufacturers lsm on lsm.id = dist.cnet_company_id;

/* spree_taxonomies */

INSERT INTO public.load_spree_taxonomies(
	id, name, created_at, updated_at, "position", filterable)
	VALUES (1, 'Tech Products', now(), now(), 1, true);
	
/* spree taxons */

-- First load the parent records
INSERT INTO public.load_spree_taxons(
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
	   null , --parent_taxon_id
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

INSERT INTO public.load_spree_taxons(
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

insert into load_spree_products_taxons(product_id,taxon_id)
select lsp.id, ccs.id
from   load_spree_products lsp
join   cct_products_stage cps on cps.prod_id = lsp.cnet_id
join   cct_categories_stage ccs on ccs.cat_id = cps.cat_id;

-- populate spree_properties
-- need to discover why some ar efilterable and others aren't 

INSERT INTO public.load_spree_properties(
	     name, presentation, created_at, updated_at, filterable)
select   evocee_text, evocee_text,now(),now(), true
from     evocee_stage where id like 'T%';

-- populate spree_products_properties

INSERT INTO public.load_spree_product_properties 
           (product_id, property_id,value, created_at,updated_at,position,"group",show_property)
select sppr.id, lsp.id, evst_value.evocee_text,now(),now(),esst.display_order,evst_group.evocee_text,true
from   load_spree_products sppr
join   especee_stage esst        on esst.prod_id  = sppr.cnet_id
join   evocee_stage evst_prop    on evst_prop.id  = esst.hdr_id
join   load_spree_properties lsp on lsp.name      = evst_prop.evocee_text 
join   evocee_stage evst_value   on evst_value.id = esst.body_id
join   evocee_stage evst_group   on evst_group.id = esst.sect_id;

-- Populate spree_option_types just for Colour

insert into public.load_spree_option_types(name,presentation,"position",created_at,updated_at,"group",filterable)
select distinct lspp."group"||'//'||lsp.name,lsp.name,1,now(),now(),lspp."group",true
from   load_spree_properties lsp
join   load_spree_product_properties lspp on lspp.property_id = lsp.id
where  lsp.name = 'Colour';

-- Populate spree_option_values

insert into public.load_spree_option_values ("position", name, presentation, option_type_id, 
											created_at, updated_at)
select distinct 1, -- position need to work this out 
       lspp.value,
	   lspp.value,
	   lsot.id,
	   now(),
	   now()
from   load_spree_properties lsp
join   load_spree_product_properties lspp on lspp.property_id = lsp.id
join   load_spree_option_types lsot on lsot.name = lspp."group"||'//'||lsp.name
where  lsp.name = 'Colour' order by id,value;

/* Populate spree_product_option_types */

INSERT INTO public.load_spree_product_option_types(
	"position", product_id, option_type_id, created_at, updated_at)
select 1, lspp.product_id , sot.id,now(),now()
from   load_spree_properties lsp
join   load_spree_product_properties lspp on lspp.property_id = lsp.id
join   load_spree_option_types sot on sot.name = lspp."group"||'//'||lsp.name
where  lsp.name = 'Colour'
order by lspp.product_id, lspp.position;

/* Populate Spree Variants */

INSERT INTO public.load_spree_variants(
	sku, weight, height, width, depth, deleted_at, is_master, product_id, 
	cost_price, "position", cost_currency, track_inventory, tax_category_id, 
	updated_at, discontinue_on, created_at)
select ' ', null, null, null, null, null, true, sp.id, 0, 1, 'GBP', null, null, now(),null, now()
from load_spree_products sp where parent_id is null;

/* Populate Spree Prices */

INSERT INTO public.load_spree_prices(
	variant_id, amount, currency, deleted_at, created_at, updated_at, compare_at_amount)
select sv.id,0,'GBP',null,now(),now(),null
from load_spree_products sp
join load_spree_variants sv on sv.product_id = sp.id
where sp.parent_id is null;

/* Populate load_spree_option value variants */

INSERT INTO public.load_spree_option_value_variants(
	variant_id, option_value_id)
select sv.id, sov.id	
from   load_spree_properties lsp
join   load_spree_product_properties lspp on lspp.property_id   = lsp.id
join   load_spree_option_types sot        on sot.name           = lspp."group"||'//'||lsp.name
join   load_spree_option_values sov       on sov.option_type_id = sot.id
                                         and sov.name           = lspp.value
join   load_spree_products sp             on sp.id              = lspp.product_id
                                         and sp.parent_id       is null
join   load_spree_variants sv             on sv.product_id      = sp.id
where  lsp.name = 'Colour';

/* Populate spree_assets */
-- spree assets documents
INSERT INTO public.load_spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,1,'Scale::Document', -- Type, could possibly be 'Scale::Document' or 'Scale::Image'
       now(),now(), dcs.content_guid, dcs.url,
       dcmts.media_type_description
from   digital_content_links_stage       dcls
join   digital_content_stage             dcs   on dcs.content_guid     = dcls.content_guid 
join   digital_content_meta_stage        dcms  on dcms.content_guid    = dcls.content_guid
join   digital_content_media_types_stage dcmts on dcmts.media_type_id  = dcs.media_type_id 
join   load_spree_products               sp    on sp.cnet_id           = dcls.prod_id
join   load_spree_variants               sv    on sv.product_id                = sp.id
where  sp.parent_id is null
and    dcmts.media_type_id in (11,12,13);

-- spree assets images
INSERT INTO public.load_spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,1,'Scale::Image', -- Type, could possibly be 'Scale::Document' or 'Scale::Image'
       now(),now(), dcs.content_guid, dcs.url,
       dcmts.media_type_description
from   digital_content_links_stage       dcls
join   digital_content_stage             dcs   on dcs.content_guid     = dcls.content_guid 
join   digital_content_meta_stage        dcms  on dcms.content_guid    = dcls.content_guid
join   digital_content_media_types_stage dcmts on dcmts.media_type_id  = dcs.media_type_id 
join   load_spree_products               sp    on sp.cnet_id           = dcls.prod_id
join   load_spree_variants               sv    on sv.product_id                = sp.id
where  sp.parent_id is null
and    dcmts.media_type_id in (1,15);

-- spree assets which don't link to an image or document

INSERT INTO public.load_spree_assets(viewable_type, viewable_id, 
	"position", type,created_at, updated_at, cnet_content_id, cnet_url, "group")
select 'Spree::Variant',sv.id,1,null, -- Type, could possibly be 'Scale::Document' or 'Scale::Image'
       now(),now(), dcs.content_guid, dcs.url,
       dcmts.media_type_description
from   digital_content_links_stage       dcls
join   digital_content_stage             dcs   on dcs.content_guid     = dcls.content_guid 
join   digital_content_meta_stage        dcms  on dcms.content_guid    = dcls.content_guid
join   digital_content_media_types_stage dcmts on dcmts.media_type_id  = dcs.media_type_id 
join   load_spree_products               sp    on sp.cnet_id           = dcls.prod_id
join   load_spree_variants               sv    on sv.product_id                = sp.id
where  sp.parent_id is null
and    dcmts.media_type_id not in (1,11,12,13,15);
