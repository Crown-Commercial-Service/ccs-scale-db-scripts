/* Script to create local versions of spree tables */

CREATE TABLE public.scale_manufacturers -- tab 1
(
    id serial primary key,
    name character varying COLLATE pg_catalog."default",
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL);
	
CREATE TABLE public.scale_cnet_identities --tab 2
(
    id SERIAL,
    cnet_id character varying COLLATE pg_catalog."default",
    cnet_type character varying COLLATE pg_catalog."default",
    item_id bigint,
    item_type character varying COLLATE pg_catalog."default",
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    CONSTRAINT scale_cnet_identities_pkey PRIMARY KEY (id)
);	
	
CREATE TABLE public.spree_products --tab 3
(
    id serial primary key,
    name character varying COLLATE pg_catalog."default" NOT NULL DEFAULT ''::character varying,
    description text COLLATE pg_catalog."default",
    available_on timestamp without time zone,
    deleted_at timestamp without time zone,
    slug character varying COLLATE pg_catalog."default",
    meta_description text COLLATE pg_catalog."default",
    meta_keywords character varying COLLATE pg_catalog."default",
    tax_category_id integer,
    shipping_category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    promotionable boolean DEFAULT true,
    meta_title character varying COLLATE pg_catalog."default",
    discontinue_on timestamp without time zone,
    vendor_id integer,
    cnet_id character varying COLLATE pg_catalog."default",
    parent_id integer,
    mpn_number character varying COLLATE pg_catalog."default",
    manufacturer_id integer,
    unspsc character varying COLLATE pg_catalog."default",
    key_selling_points character varying COLLATE pg_catalog."default",
    catalog_id integer)
;

CREATE TABLE public.spree_taxonomies -- tab 4
(
    id integer NOT NULL ,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer DEFAULT 0,
    filterable boolean,
    CONSTRAINT load_spree_taxonomies_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_taxons -- tab 5
(
    id serial,
    parent_id integer,
    "position" integer DEFAULT 0,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    permalink character varying COLLATE pg_catalog."default",
    taxonomy_id integer,
    lft integer,
    rgt integer,
    description text COLLATE pg_catalog."default",
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    meta_title character varying COLLATE pg_catalog."default",
    meta_description character varying COLLATE pg_catalog."default",
    meta_keywords character varying COLLATE pg_catalog."default",
    depth integer,
    hide_from_nav boolean DEFAULT false,
    cnet_category_id character varying COLLATE pg_catalog."default",
    CONSTRAINT load_spree_taxons_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_products_taxons -- tab 6
(
    product_id integer,
    taxon_id integer,
    id serial,
    "position" integer,
    CONSTRAINT load_spree_products_taxons_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_properties -- tab 7
(
    id serial,
    name character varying COLLATE pg_catalog."default",
    presentation character varying COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    filterable boolean,
    CONSTRAINT load_spree_properties_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_product_properties -- tab 8
(
    id serial,
    value character varying COLLATE pg_catalog."default",
    product_id integer,
    property_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer DEFAULT 0,
    "group" character varying COLLATE pg_catalog."default",
    show_property boolean DEFAULT true,
    CONSTRAINT load_spree_product_properties_pkey PRIMARY KEY (id)
);

create table public.spree_option_types( -- tab 9
    id serial,
    name character varying COLLATE pg_catalog."default",
    presentation character varying COLLATE pg_catalog."default" NOT NULL,
    "position" integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "group" character varying COLLATE pg_catalog."default",
    filterable boolean,
    CONSTRAINT load_spree_option_types_pkey PRIMARY KEY (id)
);

create table public.spree_option_values( -- tab 10
    id serial,
    "position" integer DEFAULT 0,
    name character varying COLLATE pg_catalog."default",
    presentation character varying COLLATE pg_catalog."default" NOT NULL,
	option_type_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    CONSTRAINT load_spree_option_values_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_product_option_types -- tab 11
(
    id serial,
    "position" integer,
    product_id integer,
    option_type_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    CONSTRAINT load_spree_product_option_types_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_variants -- tab 12
(
    id serial ,
    sku character varying COLLATE pg_catalog."default" NOT NULL DEFAULT ''::character varying,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2),
    width numeric(8,2),
    depth numeric(8,2),
    deleted_at timestamp without time zone,
    is_master boolean DEFAULT false,
    product_id integer,
    cost_price numeric(10,2),
    "position" integer,
    cost_currency character varying COLLATE pg_catalog."default",
    track_inventory boolean DEFAULT true,
    tax_category_id integer,
    updated_at timestamp without time zone NOT NULL,
    discontinue_on timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    CONSTRAINT load_spree_variants_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_prices -- tab 13
(
    id serial,
    variant_id integer NOT NULL,
    amount numeric(10,2),
    currency character varying COLLATE pg_catalog."default",
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    compare_at_amount numeric(10,2),
    CONSTRAINT load_spree_prices_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_option_value_variants -- tab 14
(
    variant_id integer,
    option_value_id integer,
    id serial,
    CONSTRAINT load_spree_option_value_variants_pkey PRIMARY KEY (id)
);

CREATE TABLE public.spree_assets -- tab 15
(
    id serial,
    viewable_type character varying COLLATE pg_catalog."default",
    viewable_id integer,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying COLLATE pg_catalog."default",
    attachment_file_name character varying COLLATE pg_catalog."default",
    type character varying(75) COLLATE pg_catalog."default",
    attachment_updated_at timestamp without time zone,
    alt text COLLATE pg_catalog."default",
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    cnet_content_id character varying COLLATE pg_catalog."default",
    cnet_url character varying COLLATE pg_catalog."default",
    "group" character varying COLLATE pg_catalog."default",
    CONSTRAINT load_spree_assets_pkey PRIMARY KEY (id)
);

CREATE TABLE public.friendly_id_slugs -- tab 16
(
    id SERIAL,
    slug character varying COLLATE pg_catalog."default" NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50) COLLATE pg_catalog."default",
    scope character varying COLLATE pg_catalog."default",
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id)
);

CREATE TABLE "public"."scale_product_xmls" ( -- tab 17
    id SERIAL,
    cnet_id varchar,
    url varchar,
    media_type_id int4,
    content_guid varchar,
    created_at timestamp NOT NULL,
    updated_at timestamp NOT NULL,
    status varchar DEFAULT 'new'::character varying,
    PRIMARY KEY (id)
);
