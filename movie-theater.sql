CREATE DATABASE movie_theater
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE SCHEMA myschema
    AUTHORIZATION postgres;

SET search_path TO myschema;

-- city
-------------------------------------------------------------------

CREATE SEQUENCE myschema.city_city_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.city_city_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.city
(
    city_id integer NOT NULL DEFAULT nextval('myschema.city_city_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT city_pkey PRIMARY KEY (city_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.city
    OWNER to postgres;
	
INSERT INTO city(name)
VALUES ('Москва'), ('Санкт-Петербург'), ('Екатеринбург');

SELECT * FROM city;
--------------------------------------------------------------------


-- role
--------------------------------------------------------------------
CREATE SEQUENCE myschema.role_role_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.role_role_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.role
(
    role_id integer NOT NULL DEFAULT nextval('myschema.role_role_id_seq'::regclass),
    role_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT role_pkey PRIMARY KEY (role_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.role
    OWNER to postgres;
--------------------------------------------------------------------


-- creator
--------------------------------------------------------------------
CREATE SEQUENCE myschema.creator_creator_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.creator_creator_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.creator
(
    creator_id integer NOT NULL DEFAULT nextval('myschema.creator_creator_id_seq'::regclass),
    creator_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT creator_pkey PRIMARY KEY (creator_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.creator
    OWNER to postgres;
--------------------------------------------------------------------


-- genre
--------------------------------------------------------------------
CREATE SEQUENCE myschema.genre_genre_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.genre_genre_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.genre
(
    genre_id integer NOT NULL DEFAULT nextval('myschema.genre_genre_id_seq'::regclass),
    genre_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT genre_pkey PRIMARY KEY (genre_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.genre
    OWNER to postgres;
--------------------------------------------------------------------


-- language
--------------------------------------------------------------------
CREATE SEQUENCE myschema.language_language_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.language_language_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.language
(
    language_id integer NOT NULL DEFAULT nextval('myschema.language_language_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT language_pkey PRIMARY KEY (language_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.language
    OWNER to postgres;
--------------------------------------------------------------------


-- accessibility
--------------------------------------------------------------------
CREATE SEQUENCE myschema.accessibility_accessibility_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.accessibility_accessibility_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.accessibility
(
    accessibility_id integer NOT NULL DEFAULT nextval('myschema.accessibility_accessibility_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT accessibility_pkey PRIMARY KEY (accessibility_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.accessibility
    OWNER to postgres;
--------------------------------------------------------------------


-- offer
--------------------------------------------------------------------
CREATE SEQUENCE myschema.offer_offer_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.offer_offer_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.offer
(
    offer_id integer NOT NULL DEFAULT nextval('myschema.offer_offer_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
	discount numeric NOT NULL,
    CONSTRAINT offer_pkey PRIMARY KEY (offer_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.offer
    OWNER to postgres;
--------------------------------------------------------------------


-- position
--------------------------------------------------------------------
CREATE SEQUENCE myschema.position_position_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.position_position_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.position
(
    position_id integer NOT NULL DEFAULT nextval('myschema.position_position_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    salary numeric, 
    CONSTRAINT position_pkey PRIMARY KEY (position_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.position
    OWNER to postgres;
--------------------------------------------------------------------
   

-- client
--------------------------------------------------------------------
CREATE SEQUENCE myschema.client_client_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.client_client_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.client
(
    client_id integer NOT NULL DEFAULT nextval('myschema.client_client_id_seq'::regclass),
    client_name character varying COLLATE pg_catalog."default", 
    email character varying COLLATE pg_catalog."default", 
    phone character varying COLLATE pg_catalog."default", 
    CONSTRAINT client_pkey PRIMARY KEY (client_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.client
    OWNER to postgres;
--------------------------------------------------------------------
   
   
-- menu_item
--------------------------------------------------------------------
CREATE SEQUENCE myschema.menu_item_menu_item_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.menu_item_menu_item_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.menu_item
(
    menu_item_id integer NOT NULL DEFAULT nextval('myschema.menu_item_menu_item_id_seq'::regclass),
    menu_item_name character varying COLLATE pg_catalog."default" NOT NULL,
    price integer CHECK (price > 0), 
    CONSTRAINT menu_item_pkey PRIMARY KEY (menu_item_id)
)

TABLESPACE pg_default;

ALTER TABLE myschema.menu_item
    OWNER to postgres;
--------------------------------------------------------------------
   
-- subway
--------------------------------------------------------------------
CREATE SEQUENCE myschema.subway_subway_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.subway_subway_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.subway
(
    subway_id integer NOT NULL DEFAULT nextval('myschema.subway_subway_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    city_id int , 
    CONSTRAINT subway_id_pkey PRIMARY KEY (subway_id),
    CONSTRAINT subway_city_id_fkey FOREIGN KEY (city_id)
        REFERENCES myschema.city (city_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict)

TABLESPACE pg_default;

ALTER TABLE myschema.subway
    OWNER to postgres;
--------------------------------------------------------------------

-- theater
--------------------------------------------------------------------
CREATE SEQUENCE myschema.theater_theater_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.theater_theater_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.theater
(
    theater_id integer NOT NULL DEFAULT nextval('myschema.theater_theater_id_seq'::regclass),
    address character varying COLLATE pg_catalog."default",
    city_id int , 
    subway_id int,
    CONSTRAINT theater_id_pkey PRIMARY KEY (theater_id),
    CONSTRAINT theater_city_id_fkey FOREIGN KEY (city_id)
        REFERENCES myschema.city (city_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
     CONSTRAINT theater_subway_id_fkey FOREIGN KEY (subway_id)
        REFERENCES myschema.subway (subway_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict)

TABLESPACE pg_default;

ALTER TABLE myschema.theater
    OWNER to postgres;
--------------------------------------------------------------------
   
-- pos_theater
--------------------------------------------------------------------
CREATE SEQUENCE myschema.pos_theater_pos_theater_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.pos_theater_pos_theater_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.pos_theater
(
    pos_theater_id integer NOT NULL DEFAULT nextval('myschema.pos_theater_pos_theater_id_seq'::regclass),
    position_id int not null,
    theater_id int not null, 
    CONSTRAINT pos_theater_id_pkey PRIMARY KEY (pos_theater_id),
    CONSTRAINT theater_theater_id_fkey FOREIGN KEY (theater_id)
        REFERENCES myschema.theater (theater_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
     CONSTRAINT pos_theater_position_id_fkey FOREIGN KEY (position_id)
        REFERENCES myschema.position (position_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict)

TABLESPACE pg_default;

ALTER TABLE myschema.pos_theater
    OWNER to postgres;
--------------------------------------------------------------------
   
-- employee
--------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS myschema.employee
(
    employee_id character varying (5) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying COLLATE pg_catalog."default" NOT NULL,
	first_name character varying COLLATE pg_catalog."default" NOT NULL,
	second_name character varying COLLATE pg_catalog."default",
    birth date,
	email character varying COLLATE pg_catalog."default",
	pos_theater_id int not null,
	passport character(11) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT employee_id_pkey PRIMARY KEY (employee_id),
    CONSTRAINT employee_theater_id_fkey FOREIGN KEY (pos_theater_id)
        REFERENCES myschema.pos_theater (pos_theater_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict
)
TABLESPACE pg_default;

ALTER TABLE myschema.employee
    OWNER to postgres;
--------------------------------------------------------------------
   
-- movie
--------------------------------------------------------------------
create type myschema.status as enum('скоро на экранах', 'новинка', 'уже в кино', 'вышел из проката');
create type myschema.rating as enum('0+', '6+', '12+', '16+',' 18+')

CREATE SEQUENCE myschema.movie_movie_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.movie_movie_id_seq
    OWNER TO postgres;
	
CREATE TABLE IF NOT EXISTS myschema.movie
(
    movie_id integer NOT NULL DEFAULT nextval('myschema.movie_movie_id_seq'::regclass),
    title character varying COLLATE pg_catalog."default" NOT NULL,
	release date,
	description text,
    duration interval NOT NULL,
	language_id int,
	rating myschema.rating not null,
	status myschema.status NOT NULL,
    CONSTRAINT movie_id_pkey PRIMARY KEY (movie_id),
    CONSTRAINT movie_language_id_fkey FOREIGN KEY (language_id)
        REFERENCES myschema.language (language_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict
)
TABLESPACE pg_default;

ALTER TABLE myschema.movie
    OWNER to postgres;
--------------------------------------------------------------------

-- movie_genre
--------------------------------------------------------------------
CREATE SEQUENCE myschema.movie_genre_movie_genre_id_seq
	INCREMENT 1
	START 1
	MINVALUE 1
	MAXVALUE 2147483647
	CACHE 1;

ALTER SEQUENCE myschema.movie_genre_movie_genre_id_seq
	OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.movie_genre
(
	movie_genre_id integer NOT NULL DEFAULT nextval('myschema.movie_genre_movie_genre_id_seq'::regclass),
	movie_id int NOT NULL,
	genre_id int NOT NULL,
	CONSTRAINT movie_genre_id_pkey PRIMARY KEY (movie_genre_id),
	CONSTRAINT movie_genre_movie_id_fkey FOREIGN KEY (movie_id)
		REFERENCES myschema.movie (movie_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT movie_genre_genre_id_fkey FOREIGN KEY (genre_id)
		REFERENCES myschema.genre (genre_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict)

TABLESPACE pg_default;

ALTER TABLE myschema.movie_genre
	OWNER to postgres;
--------------------------------------------------------------------

-- job_exp
--------------------------------------------------------------------
CREATE SEQUENCE myschema.job_exp_job_exp_id_seq
	INCREMENT 1
	START 1
	MINVALUE 1
	MAXVALUE 2147483647
	CACHE 1;

ALTER SEQUENCE myschema.job_exp_job_exp_id_seq
	OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.job_exp
(
	job_exp_id integer NOT NULL DEFAULT nextval('myschema.job_exp_job_exp_id_seq'::regclass),
	company character varying COLLATE pg_catalog."default" NOT NULL,
	start_date date,
	finish_date date,
	employee_id character varying (5) COLLATE pg_catalog."default" NOT NULL,
	CONSTRAINT job_exp_id_pkey PRIMARY KEY (job_exp_id),
	CONSTRAINT job_exp_employee_id_fkey FOREIGN KEY (employee_id)
		REFERENCES myschema.employee (employee_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict
)

TABLESPACE pg_default;

ALTER TABLE myschema.job_exp
	OWNER to postgres;
--------------------------------------------------------------------

-- cast_crew
--------------------------------------------------------------------
CREATE SEQUENCE myschema.cast_crew_cast_crew_id_seq
	INCREMENT 1
	START 1
	MINVALUE 1
	MAXVALUE 2147483647
	CACHE 1;

ALTER SEQUENCE myschema.cast_crew_cast_crew_id_seq
	OWNER TO postgres;


CREATE TABLE IF NOT EXISTS myschema.cast_crew
(
	cast_crew_id integer NOT NULL DEFAULT nextval('myschema.cast_crew_cast_crew_id_seq'::regclass),
	movie_id int not null,
	creator_id int not null,
	in_cast boolean,
	role_id int not null,
	CONSTRAINT cast_crew_id_pkey PRIMARY KEY (cast_crew_id),
	CONSTRAINT cast_crew_movie_id_fkey FOREIGN KEY (movie_id)
		REFERENCES myschema.movie (movie_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT cast_crew_creator_id_fkey FOREIGN KEY (creator_id)
		REFERENCES myschema.creator (creator_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT cast_crew_role_id_fkey FOREIGN KEY (role_id)
		REFERENCES myschema.role (role_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict
)

TABLESPACE pg_default;

ALTER TABLE myschema.cast_crew
	OWNER to postgres;
--------------------------------------------------------------------

-- menu_theater
--------------------------------------------------------------------
CREATE SEQUENCE myschema.menu_theater_menu_theater_id_seq
	INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.menu_theater_menu_theater_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.menu_theater
(
    menu_theater_id integer NOT NULL DEFAULT nextval('myschema.menu_theater_menu_theater_id_seq'::regclass),
    menu_item_id int NOT NULL,
	theater_id int NOT NULL,
    stock integer CHECK (stock >= 0), 
    CONSTRAINT menu_theater_id_pkey PRIMARY KEY (menu_theater_id),
	CONSTRAINT menu_theater_menu_item_id_fkey FOREIGN KEY (menu_item_id)
		REFERENCES myschema.menu_item (menu_item_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT menu_theater_theater_id_fkey FOREIGN KEY (theater_id)
		REFERENCES myschema.theater (theater_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict
)

TABLESPACE pg_default;

ALTER TABLE myschema.menu_theater
    OWNER to postgres;
--------------------------------------------------------------------

-- order
--------------------------------------------------------------------
CREATE SEQUENCE myschema.order_order_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.order_order_id_seq
    OWNER TO postgres;
	
CREATE TABLE IF NOT EXISTS myschema.order
(
    order_id integer NOT NULL DEFAULT nextval('myschema.order_order_id_seq'::regclass),
    offer_id int NOT NULL,
	order_time timestamp without time zone,
    CONSTRAINT order_id_pkey PRIMARY KEY (order_id),
	CONSTRAINT order_offer_id_fkey FOREIGN KEY (offer_id)
        REFERENCES myschema.offer (offer_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict
)
TABLESPACE pg_default;

ALTER TABLE myschema.order
    OWNER to postgres;
--------------------------------------------------------------------

-- order_item
--------------------------------------------------------------------
CREATE SEQUENCE myschema.order_item_order_item_id_seq
	INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.order_item_order_item_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.order_item
(
	order_item_id integer NOT NULL DEFAULT nextval('myschema.order_item_order_item_id_seq'::regclass),
    order_id int NOT NULL,
	menu_theater_id int NOT NULL,
	order_amount integer NOT NULL,
	CONSTRAINT order_item_id_pkey PRIMARY KEY (order_item_id),
	CONSTRAINT order_item_order_id_fkey FOREIGN KEY (order_id)
		REFERENCES myschema.order (order_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT order_item_menu_theater_fkey FOREIGN KEY (menu_theater_id)
		REFERENCES myschema.menu_theater (menu_theater_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict
)

TABLESPACE pg_default;

ALTER TABLE myschema.order_item
    OWNER to postgres;
--------------------------------------------------------------------

-- auditorium
--------------------------------------------------------------------
create type myschema.type as enum('2D', '3D', 'IMAX');
create type myschema.exp as enum('Standard', 'VIP');

CREATE SEQUENCE myschema.auditorium_auditorium_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.auditorium_auditorium_id_seq
    OWNER TO postgres;
	
CREATE TABLE IF NOT EXISTS myschema.auditorium
(
    auditorium_id integer NOT NULL DEFAULT nextval('myschema.auditorium_auditorium_id_seq'::regclass),
    auditorium_no character varying(2) COLLATE pg_catalog."default" NOT NULL,
	theater_id int NOT NULL,
	type myschema.type,
    experience myschema.exp,
	accessibility_id int NOT NULL,
	rows integer CHECK (rows > 0),
	numbers integer CHECK (numbers > 0),
    CONSTRAINT auditorium_id_pkey PRIMARY KEY (auditorium_id),
    CONSTRAINT auditorium_theater_id_fkey FOREIGN KEY (theater_id)
        REFERENCES myschema.theater (theater_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
	CONSTRAINT auditorium_accessibility_id_fkey FOREIGN KEY (accessibility_id)
        REFERENCES myschema.accessibility (accessibility_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict
)
TABLESPACE pg_default;

ALTER TABLE myschema.auditorium
    OWNER to postgres;
--------------------------------------------------------------------

-- screening
--------------------------------------------------------------------
CREATE SEQUENCE myschema.screening_screening_id_seq
	INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.screening_screening_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.screening
(
	screening_id integer NOT NULL DEFAULT nextval('myschema.screening_screening_id_seq'::regclass),
	auditorium_id int NOT NULL,
	movie_id int NOT NULL,
	start timestamp without time zone, 
	price integer CHECK (price > 0),
	CONSTRAINT screening_id_pkey PRIMARY KEY (screening_id),
	CONSTRAINT screening_auditorium_id_fkey FOREIGN KEY (auditorium_id)
		REFERENCES myschema.auditorium (auditorium_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict,
	CONSTRAINT screening_movie_id_fkey FOREIGN KEY (movie_id)
		REFERENCES myschema.movie (movie_id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE restrict
)

TABLESPACE pg_default;

ALTER TABLE myschema.screening
    OWNER to postgres;
--------------------------------------------------------------------
   
-- booking
--------------------------------------------------------------------
CREATE SEQUENCE myschema.booking_booking_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE myschema.booking_booking_id_seq
    OWNER TO postgres;

CREATE TABLE IF NOT EXISTS myschema.booking
(
    booking_id integer NOT NULL DEFAULT nextval('myschema.booking_booking_id_seq'::regclass),
    client_id int NOT NULL,
	screening_id int NOT NULL,
	offer_id int,
    booking_time timestamp without time zone,
	row integer CHECK (row > 0) NOT NUll,
	number integer CHECK (number > 0) NOT NUll,
	order_id int,
    CONSTRAINT booking_id_pkey PRIMARY KEY (booking_id),
    CONSTRAINT booking_client_id_fkey FOREIGN KEY (client_id)
        REFERENCES myschema.client (client_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
	CONSTRAINT booking_screening_id_fkey FOREIGN KEY (screening_id)
        REFERENCES myschema.screening (screening_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
	CONSTRAINT booking_offer_id_fkey FOREIGN KEY (offer_id)
        REFERENCES myschema.offer (offer_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict,
	CONSTRAINT booking_order_id_fkey FOREIGN KEY (order_id)
        REFERENCES myschema.order (order_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE restrict
)
TABLESPACE pg_default;

ALTER TABLE myschema.booking
    OWNER to postgres;
--------------------------------------------------------------------
   

