BEGIN;

CREATE TABLE "Forums"(
  id serial NOT NULL,
  title varchar(50) NOT NULL,
  description text,
  "MessageCount" integer NOT NULL DEFAULT 0,
  "ThreadCount" integer NOT NULL DEFAULT 0,
  "CreatedOn" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT "Forums_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Messages"(
  id serial NOT NULL,
  body text,
  "Votes" integer NOT NULL DEFAULT 0,
  "CreatedOn" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  threads_id integer NOT NULL,
  users_id integer NOT NULL,
  CONSTRAINT "Messages_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Places"(
  id serial NOT NULL,
  title varchar(255) NOT NULL,
  description text,
  "CreatedOn" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  CONSTRAINT "Places_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Threads"(
  id serial NOT NULL,
  "MessageCount" integer NOT NULL DEFAULT 0,
  "ViewCount" integer NOT NULL DEFAULT 0,
  "Votes" integer NOT NULL DEFAULT 0,
  forums_id integer NOT NULL,
  users_id integer NOT NULL,
  title varchar NOT NULL,
  CONSTRAINT "Threads_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Users"(
  id serial NOT NULL,
  username varchar(50) NOT NULL,
  email varchar(255) NOT NULL,
  "password" varchar(128) NOT NULL,
  uid varchar(36) NOT NULL,
  CONSTRAINT "Users_pkey" PRIMARY KEY(id)
);

ALTER TABLE "Threads"
  ADD CONSTRAINT "Threads_forums_id_fkey"
    FOREIGN KEY (forums_id) REFERENCES "Forums" (id);

ALTER TABLE "Threads"
  ADD CONSTRAINT "Threads_users_id_fkey"
    FOREIGN KEY (users_id) REFERENCES "Users" (id);

ALTER TABLE "Messages"
  ADD CONSTRAINT "Messages_threads_id_fkey"
    FOREIGN KEY (threads_id) REFERENCES "Threads" (id);

ALTER TABLE "Messages"
  ADD CONSTRAINT "Messages_users_id_fkey"
    FOREIGN KEY (users_id) REFERENCES "Users" (id);

ALTER TABLE "Places"
  ADD CONSTRAINT "Places_users_id_fkey"
    FOREIGN KEY (users_id) REFERENCES "Users" (id);

END;