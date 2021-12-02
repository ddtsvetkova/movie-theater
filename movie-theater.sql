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

SET search_path TO myschema

-- city

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
VALUES ('Москва'), ('Санкт-Петербург'), ('Екатеринбург')

SELECT * FROM city
--------------------------------------------------------------------




