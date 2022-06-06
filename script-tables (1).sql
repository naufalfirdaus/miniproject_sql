create table users (
    user_id serial,
    user_name varchar(20),
    user_email  varchar(55),
    user_password  varchar(255),
    user_handphone  varchar(15),
	constraint user_id_pk primary key (user_id),
	constraint user_name_uq unique (user_name),
	constraint user_email_uq unique (user_email),
	constraint user_handphone_uq unique (user_handphone)
);

create table roles (
    role_id  serial,
    role_name  varchar(25),
    constraint role_id_pk primary key (role_id)
);

create table user_roles(
    usro_id serial,
    usro_user_id integer,
    usro_role_id integer,
	constraint usro_id_pk primary key(usro_id),
	constraint usro_user_id_fk foreign key (usro_user_id) references users(user_id),
	constraint usro_role_id_fk foreign key (usro_role_id) references roles(role_id)
);


create table talent(
    tale_id  serial,
    tale_fullname  varchar(25),
    tale_birthdate  date,
    tale_education  varchar(5),
    tale_email varchar(55),
    tale_school_name  varchar(85),
    tale_major  varchar(35),
    tale_year_graduate  varchar(4),
    tale_gpa  integer,
    tale_handphone  varchar(15),
    tale_bootcamp  varchar(35),
    tale_motivation  varchar(55),
    tale_address  varchar(255),
    tale_city  varchar(35),
    tale_province  varchar(55),
    tale_status  varchar(15),
    tale_candidat_resume  varchar(55),
    tale_resume  varchar(55),
    tale_cover_letter  varchar(55),
    tale_photo  varchar(55),
    tale_position  varchar(55),
    tale_scale_skill  integer,
    tale_status_timeline  varchar(15),
    tale_timeline_date  date,
    tale_tag_skill  varchar(255),
    tale_user_id integer,
	constraint tale_id_pk primary key (tale_id),
	constraint tale_user_id_fk foreign key (tale_user_id) references users(user_id)
);

create table time_line(
	timeline_name  varchar(25),
	timeline_order  integer,
    constraint timeline_name_pk primary key (timeline_name)
);


create table talent_timeline(
    tati_id  serial,
    tati_date  date,
    tati_tale_id  integer,
    tati_timeline_name  varchar(25),
   	constraint tati_id_pk primary key (tati_id),
	constraint tati_tale_id_fk foreign key (tati_tale_id) references talent(tale_id),
	constraint tati_timeline_name_fk foreign key (tati_timeline_name) references time_line(timeline_name)
);

create table instructor (
    inst_id serial,
    inst_name  varchar(15),
    inst_bootcamp  varchar(25),
    inst_photo  varchar(55),
    inst_about  varchar(255),
    inst_linkedin  varchar(100),
    inst_twitter  varchar(100),
    inst_blog  varchar(100),
    inst_youtube  varchar(100),
    constraint inst_id_pk primary key (inst_id)
);


create table batch(
    batch_id  serial, 
    batch_name   varchar(15), 
    batch_technology  varchar(35),
    batch_start_date   date,
    batch_end_date  date,
    batch_duration  varchar(15),
    batch_type  varchar(15),
    batch_status  varchar(15),
    batch_user_id integer,
    batch_inst_id integer,
    constraint batch_id_pk primary key (batch_id),
    constraint batch_user_id_fk foreign key (batch_user_id) references users(user_id),
	constraint batch_inst_id_fk foreign key (batch_inst_id) references instructor(inst_id),
	constraint batch_name_uq unique (batch_name)
);

create table talent_batch(
    taba_id  serial,
    taba_drop  boolean,
    taba_notes  varchar(255),
    taba_drop_date  date,
    taba_review  varchar(255),
    taba_tale_id integer,
    taba_batch_id integer,
    constraint taba_id_pk primary key(taba_id),
	constraint taba_tale_id_fk foreign key (taba_tale_id) references talent(tale_id),
	constraint taba_batch_id_fk foreign key (taba_batch_id) references batch(batch_id)
);

create table client(
    client_id  serial,
    client_name  varchar(100),
    client_address  varchar(255),
    client_total_worker  integer,
    client_industry  varchar(25), 
    client_location  varchar(255),
    client_city  varchar(85),
    client_website  varchar(255),
    client_logo  varchar(255),
    constraint client_id_pk primary key (client_id)
);

create table placement(
    place_id  serial,
    place_contract_no  varchar(55),
    place_created  timestamp,
    place_start_date  date,
    place_end_date  date,
    place_status  varchar(15),
    place_note  varchar(255),
    place_user_id integer,
    place_client_id integer,
    constraint place_id_pk primary key(place_id),
	constraint place_user_id_fk foreign key (place_user_id) references users(user_id),
    constraint place_client_id_fk foreign key (place_client_id) references client(client_id),
	constraint place_contract_no_uq unique(place_contract_no)
);

create table talent_placement (
    tapl_id  serial,
    tapl_drop   boolean,
    tapl_notes  varchar(255),
    tapl_drop_date  date,
    tapl_tale_id integer,
    tapl_place_id integer,
    constraint tapl_id_pk primary key(tapl_id),
	constraint tapl_tale_id_fk foreign key (tapl_tale_id) references talent(tale_id),
	constraint tapl_place_id_fk foreign key(tapl_place_id) references placement(place_id)
);

create table curriculum(
    curr_id  serial,
    curr_name  varchar(20),
    curr_title  varchar(55), 
    curr_headline  varchar(155),
    curr_description  varchar(255),
    curr_duration  varchar(15),
    curr_learning_type  varchar(15),
    curr_type_payment  varchar(15),
    curr_price  numeric(15,2),
    curr_category  varchar(15),
    curr_language  varchar(15),
    curr_min_score  integer,
    curr_tag_skill  varchar(255),
    curr_roadmap_materi  varchar(255),
    curr_total_talents  integer,
    curr_total_batch  integer,
    curr_rating  integer,
    curr_createdon  timestamp,
    curr_lastupdate  timestamp, 
    curr_logo  varchar(255),
    curr_user_id integer,
    curr_inst_id integer,
    constraint curr_id_pk primary key (curr_id),
    constraint curr_user_id_fk foreign key (curr_user_id) references users(user_id),
	constraint curr_inst_id_fk foreign key (curr_inst_id) references instructor(inst_id)
);

create table curriculum_materi(
    cuma_id  serial,
    cuma_section  varchar(155),
    cuma_subsection  varchar(155),
    cuma_attachment  varchar(255),
    cuma_attachment_type  varchar(55),
    cuma_duration  varchar(15),
    cuma_curr_id integer,
    cuma_cuma_id integer,
    constraint cuma_id_pk primary key (cuma_id),
	constraint cuma_curr_id_fk foreign key (cuma_curr_id) references curriculum(curr_id),
	constraint cuma_cuma_id_fk foreign key (cuma_cuma_id) references curriculum_materi(cuma_id)
);

create table curriculum_reviews(
    cure_id  serial,
    cure_review  varchar(500),
    cure_rating  integer,
    cure_curr_id  integer,
	curr_user_id integer,
     constraint cure_id_pk primary key (cure_id),
    constraint curr_user_id_fk foreign key (curr_user_id) references users(user_id),
    constraint cure_curr_id_fk foreign key (cure_curr_id) references curriculum(curr_id)
);



create table users_client(
    uscl_id  serial,
    uscl_user_id  integer,
    uscl_client_id  integer,
    constraint uscl_id_pk primary key (uscl_id),
    constraint uscl_user_id_fk foreign key (uscl_user_id) references users(user_id),
    constraint uscl_client_id_fk foreign key (uscl_client_id) references client(client_id)
);



create table jobs(
    jobs_id  serial,
    jobs_post_no  varchar(20),
    jobs_title  varchar(85),
    jobs_start_date  timestamp,
    jobs_end_date  timestamp,
    jobs_upto_salary  numeric(15,2),
    job_upto_experience  integer,
    jobs_description  varchar(500),
    jobs_primary_skill  varchar(255),
    jobs_secondary_skill  varchar(255),
    jobs_industry_type  varchar(25),
    jobs_working_type  varchar(15),
    jobs_publish  boolean,
    jobs_remotely  boolean,
    jobs_spec_education  varchar(25),
    jobs_benefit  varchar(500),
    jobs_specification  varchar(100),
    jobs_status  varchar(15),
    jobs_location  varchar(255),
    jobs_city  varchar(85),
    jobs_user_id  integer,
    jobs_client_id  integer,
    constraint jobs_id_pk primary key (jobs_id),
    constraint jobs_user_id_fk foreign key (jobs_user_id) references users(user_id),
    constraint jobs_uscl_client_id_fk foreign key (jobs_client_id) references client(client_id)
);

create table jobs_talent_apply(
    jtap_id  serial,
    jtap_apply_date  timestamp,
    jtap_intro  varchar(255),
    jtap_status  varchar(15),
    jtap_jobs_id  integer,
    jtap_user_id  integer,
    constraint jtap_id_pk primary key (jtap_id),
    constraint jtap_user_id_fk foreign key (jtap_user_id) references users(user_id)
);



create table talent_experience(
    taex_id  integer,
    taex_title  varchar(255),
    taex_employment_type  varchar(25),
    taex_company_name  varchar(125),
    taex_location  varchar(255),
    taex_status  varchar(15),
    taex_start_date  timestamp,
    taex_end_date  timestamp,
    taex_end_position  boolean,
    taex_headline  varchar(255),
    taex_industry  varchar(55),
    taex_description  varchar(255),
    taex_tale_id  integer,
    constraint taex_id_pk primary key (taex_id),
    constraint taex_tale_id_fk foreign key (taex_tale_id) references talent(tale_id)
);

create table talent_experience_media(
    teme_id  integer,
    teme_url_link  varchar(255),
    teme_media_upload  varchar(255),
    teme_taex_id  integer,
     constraint teme_id_pk primary key (teme_id),
    constraint teme_taex_id_fk foreign key (teme_taex_id) references talent_experience(taex_id)
);

