create table template_groups
( 
    template_group_id         serial4 not null,
    template_group_name       varchar(256) not null,
    lot_id                    integer not null,
    procurement_event_type_id integer not null,  
    created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
    CONSTRAINT template_groups_pkey PRIMARY KEY (template_group_id),
    CONSTRAINT template_groups_lots_fk FOREIGN KEY (lot_id) REFERENCES lots (lot_id),
    CONSTRAINT template_groups_lpet_fk FOREIGN KEY (procurement_event_type_id) REFERENCES procurement_event_types (procurement_event_type_id)    
);


create table template_group_mapping
( 
    template_group_mapping_id serial4 not null,
    template_group_id         integer not null,
    template_id         integer not null,    
    created_by varchar(2000) NOT NULL,
	created_at timestamp NOT NULL,
	updated_by varchar(2000) NULL,
	updated_at timestamp NULL,
    CONSTRAINT template_group_mapping_pkey PRIMARY KEY (template_group_mapping_id),
    CONSTRAINT template_group_mapping_group_fkey FOREIGN KEY (template_group_id) REFERENCES template_groups (template_group_id),
    CONSTRAINT template_group_mapping_template_fkey FOREIGN KEY (template_id) REFERENCES procurement_question_templates (template_id)
);

ALTER TABLE procurement_question_templates 
	ADD template_description varchar(512) null,
	add template_parent integer null, 
	add template_mandatory boolean null default false,
	add created_by varchar(2000) NOT NULL,
	add created_at timestamp NOT NULL,
	add updated_by varchar(2000) NULL,
	add updated_at timestamp null;

