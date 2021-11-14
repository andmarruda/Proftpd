CREATE TABLE proftpd_users(
	id_proftpd_users SERIAL NOT NULL CONSTRAINT proftpd_users_pkey PRIMARY KEY,
	username varchar(100) not null,
	pass varchar(32) not null,
	uid varchar(5) not null,
	gid varchar(5) not null,
	homedir text not null,
	shell varchar(20) not null default '/bin/false',
	pub_key character varying(8192) not null
) with(
oids=false
);
GRANT ALL ON proftpd.users TO public;
