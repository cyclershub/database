BEGIN;

CREATE TABLE forums(
	id serial NOT NULL,
	title varchar(50) NOT NULL,
	description text,
	message_count integer NOT NULL DEFAULT 0,
	thread_count integer NOT NULL DEFAULT 0,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	CONSTRAINT forums_pkey PRIMARY KEY(id)
);

CREATE TABLE images(
	id serial NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	alt varchar(255),
	category varchar(50) NOT NULL,
	users_id integer NOT NULL,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT images_pkey PRIMARY KEY(id)
);

COMMENT ON TABLE images IS 'Image table that can be used in multiple locations for ease of use.';

CREATE TABLE message_votes(
	users_id integer NOT NULL,
	messages_id integer NOT NULL,
	"type" integer NOT NULL,
	CONSTRAINT message_votes_pkey PRIMARY KEY(users_id, messages_id, "type")
);

CREATE TABLE messages(
	id serial NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	body text,
	votes integer NOT NULL DEFAULT 0,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	threads_id integer NOT NULL,
	users_id integer NOT NULL,
	CONSTRAINT messages_pkey PRIMARY KEY(id)
);

CREATE TABLE places(
	id serial NOT NULL,
	title varchar(255) NOT NULL,
	description text,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	images json,
	rating float8 NOT NULL DEFAULT 0,
	services integer NOT NULL DEFAULT 0,
	street varchar,
	zip varchar,
	city varchar,
	country varchar,
	lat float8 NOT NULL,
	lng float8 NOT NULL,
	users_id integer,
	"type" varchar NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	CONSTRAINT places_pkey PRIMARY KEY(id)
);

CREATE TABLE setups_images (
	setups_id integer NOT NULL,
	images_id integer NOT NULL
);

CREATE TABLE setups(
	id serial NOT NULL,
	title varchar(255) NOT NULL,
	body text NOT NULL,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	users_id integer NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	CONSTRAINT setups_pkey PRIMARY KEY(id)
);

COMMENT ON TABLE setups IS 'Bicycle Setups visible in the Gallery section.';

CREATE TABLE tags(
	id serial NOT NULL,
	tag varchar(50) NOT NULL,
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT tags_pkey PRIMARY KEY(id)
);

CREATE UNIQUE INDEX tags_tag_unique ON tags(tag);

CREATE TABLE thread_views(
	threads_id integer NOT NULL,
	users_id integer NOT NULL,
	CONSTRAINT thread_views_pkey PRIMARY KEY(threads_id, users_id)
);

CREATE TABLE threads(
	id serial NOT NULL,
	message_count integer NOT NULL DEFAULT 0,
	view_count integer NOT NULL DEFAULT 0,
	votes integer NOT NULL DEFAULT 0,
	forums_id integer NOT NULL,
	users_id integer NOT NULL,
	title varchar NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	created_on timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT threads_pkey PRIMARY KEY(id)
);

CREATE TABLE threads_tags(
	tags_id integer NOT NULL,
	threads_id integer NOT NULL,
	CONSTRAINT threads_tags_pkey PRIMARY KEY(tags_id, threads_id)
);

CREATE TABLE users(
	id serial NOT NULL,
	username varchar(50) NOT NULL,
	email varchar(255) NOT NULL,
	"password" varchar(128) NOT NULL,
	uid uuid NOT NULL DEFAULT gen_random_uuid(),
	profile_picture varchar(255),
	country varchar(2),
	city varchar(55),
	CONSTRAINT users_pkey PRIMARY KEY(id)
);

ALTER TABLE
	threads
ADD
	CONSTRAINT threads_forums_id_fkey FOREIGN KEY (forums_id) REFERENCES forums (id);

ALTER TABLE
	threads
ADD
	CONSTRAINT threads_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	messages
ADD
	CONSTRAINT messages_threads_id_fkey FOREIGN KEY (threads_id) REFERENCES threads (id);

ALTER TABLE
	messages
ADD
	CONSTRAINT messages_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	places
ADD
	CONSTRAINT places_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	thread_views
ADD
	CONSTRAINT thread_views_threads_id_fkey FOREIGN KEY (threads_id) REFERENCES threads (id);

ALTER TABLE
	thread_views
ADD
	CONSTRAINT thread_views_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	message_votes
ADD
	CONSTRAINT message_votes_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	message_votes
ADD
	CONSTRAINT message_votes_messages_id_fkey FOREIGN KEY (messages_id) REFERENCES messages (id);

ALTER TABLE
	threads_tags
ADD
	CONSTRAINT threads_tags_tags_id_fkey FOREIGN KEY (tags_id) REFERENCES tags (id);

ALTER TABLE
	threads_tags
ADD
	CONSTRAINT threads_tags_threads_id_fkey FOREIGN KEY (threads_id) REFERENCES threads (id);

ALTER TABLE
	setups_images
ADD
	CONSTRAINT setups_images_setups_id_fkey FOREIGN KEY (setups_id) REFERENCES setups (id);

ALTER TABLE
	setups_images
ADD
	CONSTRAINT setups_images_images_id_fkey FOREIGN KEY (images_id) REFERENCES images (id);

ALTER TABLE
	setups
ADD
	CONSTRAINT setups_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

ALTER TABLE
	images
ADD
	CONSTRAINT images_users_id_fkey FOREIGN KEY (users_id) REFERENCES users (id);

END;