CREATE TABLE proftpd_users(
	id_proftpd_users SERIAL NOT NULL CONSTRAINT proftpd_users_pkey PRIMARY KEY,
	username character varying(100) not null,
	pass character varying(32) not null,
	uid character varying(5) not null,
	gid character varying(5) not null,
	homedir text not null,
	shell character varying(20) not null default '/bin/false',
	pub_key character varying(8192) not null
) with(
oids=false
);
GRANT ALL ON proftpd.users TO public;
