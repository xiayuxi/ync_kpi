drop table if exists oatask;
drop table if exists oauser;

create table oatask (
	id bigint,
	title varchar(128) not null,
	description varchar(255),
	user_id bigint not null,
    primary key (id)
);

create table oauser (
	id bigint,
	login_name varchar(64) not null unique,
	name varchar(64) not null,
	password varchar(255) not null,
	salt varchar(64) not null,
	roles varchar(255) not null,
	register_date timestamp not null,
	primary key (id)
);


create sequence oaseq_task start with 100 increment by 20;
create sequence oaseq_user start with 100 increment by 20;