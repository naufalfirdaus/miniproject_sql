insert into users (user_name,user_email,user_password,user_handphone) values ('Fika','fika@gmail.com','$2b$10$dwpp1vEo8k04xruXmgsSz.PDUiedoLWRrZN1CkK3npWXo8B2KLdx6','081111111111');
insert into users (user_name,user_email,user_password,user_handphone) values ('Rendra','rendra@gmail.com','$2b$10$dwpp1vEo8k04xruXmgsSz.PDUiedoLWRrZN1CkK3npWXo8B2KLdx6','082222222222');
insert into users (user_name,user_email,user_password,user_handphone) values ('Anya','anya@gmail.com','$2b$10$dwpp1vEo8k04xruXmgsSz.PDUiedoLWRrZN1CkK3npWXo8B2KLdx6','0828888');
insert into users (user_name,user_email,user_password,user_handphone) values ('Jiso','jiso@gmail.com','$2b$10$dwpp1vEo8k04xruXmgsSz.PDUiedoLWRrZN1CkK3npWXo8B2KLdx6','082211');
insert into users (user_name,user_email,user_password,user_handphone) values ('diancp','diancp@gmail.com','$2b$10$dwpp1vEo8k04xruXmgsSz.PDUiedoLWRrZN1CkK3npWXo8B2KLdx6','082211');

insert into roles (role_name) values ('administrator');
insert into roles (role_name) values ('trainer');
insert into roles (role_name) values ('recruiter');
insert into roles (role_name) values ('sales');
insert into roles (role_name) values ('candidate');


insert into user_roles (usro_user_id,usro_role_id) values (1,1);
insert into user_roles (usro_user_id,usro_role_id) values (2,3);
insert into user_roles (usro_user_id,usro_role_id) values (3,4);
insert into user_roles (usro_user_id,usro_role_id) values (4,5);
insert into user_roles (usro_user_id,usro_role_id) values (5,2);


insert into instructor (inst_name,inst_bootcamp,inst_photo) values ('Dian','NodeJS','dian.jpg');
insert into instructor (inst_name,inst_bootcamp,inst_photo) values ('Vincent','Golang','vincent.jpg');
insert into instructor (inst_name,inst_bootcamp,inst_photo) values ('Nofal','NET','nofal.jpg');

insert into client (client_name,client_address) values ('AOP','Jakarta');
insert into client (client_name,client_address) values ('Astra','Jakarta');
insert into client (client_name,client_address) values ('Artaka','Jakarta');

insert into batch (batch_name,batch_technology,batch_start_date,batch_end_date,batch_duration,batch_type,batch_status,batch_inst_id) values ('Batch#12','NodeJS',now(),now()+ interval '30 day','30 hari','offline','running',1);
insert into batch (batch_name,batch_technology,batch_start_date,batch_end_date,batch_duration,batch_type,batch_status,batch_inst_id) values ('Batch#14','Golang',now(),now()+ interval '30 day','30 hari','online','new',2);



insert into curriculum (curr_name,curr_title,curr_description,
						curr_duration,curr_learning_type,curr_tag_skill,curr_inst_id) 
values ('NodeJS','Build Rest API With NodeJS','Learn javascript from scratch','30 hari','Offline','NodeJS,javascript,html/css',1);

insert into curriculum (curr_name,curr_title,curr_description,
						curr_duration,curr_learning_type,curr_tag_skill,curr_inst_id) 
values ('Java Full Stack','Build Rest API With Springboot','Java','90 hari','Offline','Java',2);


insert into curriculum_materi (cuma_section,cuma_subsection,cuma_duration,cuma_curr_id) values ('Day01',null,'30 hari',1);
insert into curriculum_materi (cuma_section,cuma_subsection,cuma_duration,cuma_curr_id) values ('Day01',null,'30 hari',2);
insert into curriculum_materi (cuma_section,cuma_subsection,cuma_duration,cuma_cuma_id,cuma_curr_id) values ('Logic & Algorithm',null,'30 hari',1,1);
insert into curriculum_materi (cuma_section,cuma_subsection,cuma_duration,cuma_cuma_id,cuma_curr_id) values ('RestFul API',null,'15 minutes',2,2);



insert into placement (place_contract_no,place_start_date,place_end_date,place_status,place_note,place_client_id) values ('PO#202201-0001',now(),now()+ interval '30 day','trial','trial',1);
insert into placement (place_contract_no,place_start_date,place_end_date,place_status,place_note,place_client_id) values ('PO#202201-0002',now(),now()+ interval '30 day','palcement','placement',2);
insert into placement (place_contract_no,place_start_date,place_end_date,place_status,place_note,place_client_id) values ('PO#202201-0003',now(),now()+ interval '30 day','closed','closed',3);



insert into talent (tale_fullname,tale_email,tale_education,tale_school_name,tale_major,tale_year_graduate,tale_gpa,tale_address,tale_City,tale_province,tale_photo,tale_tag_skill,tale_status,tale_user_id,tale_handphone,tale_bootcamp,tale_position,tale_scale_skill) values ('Rafika','fika@gmail.com','S1','UPN VETERAN JATIM','TEKNIK INFORMATIKA','2020',3,'Surabaya','Surabaya','Jawa Timur','fika.jpg','NodeJS, Javascript, Postgress, ReactJS, Redux','Candidate',1,'081111111111','NodeJS','junior fullstack',3);
insert into talent (tale_fullname,tale_email,tale_education,tale_school_name,tale_major,tale_year_graduate,tale_gpa,tale_address,tale_City,tale_province,tale_photo,tale_tag_skill,tale_status,tale_user_id,tale_handphone,tale_bootcamp,tale_position,tale_scale_skill) values ('Maha Rendra','rendra@gmail.com','S1','UPN VETERAN JATENG','TEKNIK INFORMATIKA','2020',3,'Solo','Solo','Jawa Tengah','rendra.jpg','Golang, Microservice, Python','Talent',2,'082222222222','Golang','software developer',3);
insert into talent (tale_fullname,tale_email,tale_education,tale_school_name,tale_major,tale_year_graduate,tale_gpa,tale_address,tale_City,tale_province,tale_photo,tale_tag_skill,tale_status,tale_user_id,tale_handphone,tale_bootcamp,tale_position,tale_scale_skill) values ('Anya Geraldin','anya@gmail.com','S1','UPN VETERAN JAKARTA','TEKNIK INFORMATIKA','2020',3,'Jakarta Selatan','Jakarta Selatan','Jakarta','anya.jpg','NodeJS, Javascript, Postgress, ReactJS, Redux','Candidate',3,'082121','NodeJS','junior fullstack',3);
insert into talent (tale_fullname,tale_email,tale_education,tale_school_name,tale_major,tale_year_graduate,tale_gpa,tale_address,tale_City,tale_province,tale_photo,tale_tag_skill,tale_status,tale_user_id,tale_handphone,tale_bootcamp,tale_position,tale_scale_skill) values ('Jiso','jiso@gmail.com','S1','UNIVERSITAS BRAWIJAYA','TEKNIK INFORMATIKA','2020',3,'Malang','Malang','Jawa Timur','jiso.jpg','Golang, Microservice, Python','Talent',4,'082221','Golang','software developer',3);



insert into talent_batch (taba_drop,taba_notes,taba_drop_date,taba_review,taba_tale_id,taba_batch_id) values (false,null,null,null,1,1);
insert into talent_batch (taba_drop,taba_notes,taba_drop_date,taba_review,taba_tale_id,taba_batch_id) values (false,null,null,null,2,2);



insert into talent_placement (tapl_drop,tapl_notes,tapl_drop_date,tapl_tale_id,tapl_place_id) values (false,null,now(),1,3);
insert into talent_placement (tapl_drop,tapl_notes,tapl_drop_date,tapl_tale_id,tapl_place_id) values (false,null,now(),2,3);

insert into time_line values('Apply',1);
insert into time_line values('Filtering Test',2);
insert into time_line values('Contract',3);
insert into time_line values('Briefing Bootcamp',4);
insert into time_line values('Join Bootcamp',5);


insert into talent_timeline (tati_timeline_name,tati_date,tati_tale_id) values ('Apply',now(),2);
insert into talent_timeline (tati_timeline_name,tati_date,tati_tale_id) values ('Filtering Test',now()+interval '2 day',2);
insert into talent_timeline (tati_timeline_name,tati_date,tati_tale_id) values ('Contract',now()+interval '4 day',2);
insert into talent_timeline (tati_timeline_name,tati_date,tati_tale_id) values ('Briefing Bootcamp',now()+interval '6 day',2);
insert into talent_timeline (tati_timeline_name,tati_date,tati_tale_id) values ('Join Bootcamp',now()+interval '8 day',2);
