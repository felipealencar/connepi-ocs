-- Table: _users

-- DROP TABLE _users;

CREATE TABLE _users
(
  user_id serial NOT NULL,
  username character varying(45),
  password character varying(40),
  salutation character varying(40),
  first_name character varying(70),
  middle_name character varying(40),
  last_name character varying(90),
  gender character varying(1),
  initials character varying(5),
  affiliation character varying(255),
  email character varying(90),
  url character varying(255),
  phone character varying(24),
  fax character varying(24),
  mailing_address character varying(255),
  country character varying(90),
  locales character varying(255),
  date_last_email timestamp without time zone,
  date_registered timestamp without time zone,
  date_validated timestamp without time zone,
  date_last_login timestamp without time zone,
  must_change_password smallint,
  auth_id bigint,
  auth_str character varying(255),
  disabled smallint DEFAULT 0,
  disabled_reason text,
  interests text,
  CONSTRAINT _users_pkey PRIMARY KEY (user_id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE _users
  OWNER TO postgres;

-- Index: _users_email

-- DROP INDEX _users_email;

CREATE UNIQUE INDEX _users_email
  ON _users
  USING btree
  (email COLLATE pg_catalog."default" );

-- Index: _users_username

-- DROP INDEX _users_username;

CREATE UNIQUE INDEX _users_username
  ON _users
  USING btree
  (username COLLATE pg_catalog."default" );

