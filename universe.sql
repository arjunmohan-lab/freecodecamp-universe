--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: arjun_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.arjun_table (
    height integer NOT NULL,
    weight integer NOT NULL,
    name character varying(30),
    uuid integer,
    arjun_table_id integer NOT NULL
);


ALTER TABLE public.arjun_table OWNER TO freecodecamp;

--
-- Name: arjun_table_arjun_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.arjun_table_arjun_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arjun_table_arjun_table_id_seq OWNER TO freecodecamp;

--
-- Name: arjun_table_arjun_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.arjun_table_arjun_table_id_seq OWNED BY public.arjun_table.arjun_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    weight integer NOT NULL,
    height integer,
    volume numeric,
    description text,
    visited boolean,
    cold boolean,
    galaxy_id integer NOT NULL,
    uuid integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    height integer,
    weight integer NOT NULL,
    volume numeric,
    description text,
    cold boolean,
    visited boolean,
    moon_id integer NOT NULL,
    columnplanet_id integer,
    planet_id integer,
    uuid integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    height integer,
    weight integer NOT NULL,
    volume numeric,
    description text,
    visited boolean,
    cold boolean,
    planet_id integer NOT NULL,
    star_id integer,
    uuid integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    weight integer NOT NULL,
    height integer,
    volume numeric,
    description text,
    cold boolean,
    visited boolean,
    star_id integer NOT NULL,
    galaxy_id integer,
    uuid integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: arjun_table arjun_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.arjun_table ALTER COLUMN arjun_table_id SET DEFAULT nextval('public.arjun_table_arjun_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: arjun_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.arjun_table VALUES (200, 300, 'arjun', NULL, 1);
INSERT INTO public.arjun_table VALUES (200, 300, 'brjun', NULL, 2);
INSERT INTO public.arjun_table VALUES (200, 300, 'crjun', NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 1, NULL);
INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 2, NULL);
INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 3, NULL);
INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 4, NULL);
INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 5, NULL);
INSERT INTO public.galaxy VALUES ('arjun', 3000000, 4000000, 300000.43, 'many storms', false, true, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 1, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 2, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 3, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 4, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 5, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 6, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 7, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 8, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 9, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 10, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 11, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 12, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 13, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 14, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 15, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 16, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 17, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 18, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 19, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 20, NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 1, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 2, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 3, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 4, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 5, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 6, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 7, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 8, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 9, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 10, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 11, 1, NULL);
INSERT INTO public.planet VALUES ('This is star', 3000, 5000, 7000, 'This is good', true, true, 12, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 1, 1, NULL);
INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 2, 2, NULL);
INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 3, 3, NULL);
INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 4, 4, NULL);
INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 5, 5, NULL);
INSERT INTO public.star VALUES ('This is star', 5000, 3000, 7000, 'This is good', true, true, 6, 6, NULL);


--
-- Name: arjun_table_arjun_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.arjun_table_arjun_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: arjun_table arjun_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.arjun_table
    ADD CONSTRAINT arjun_table_pkey PRIMARY KEY (arjun_table_id);


--
-- Name: arjun_table arjun_table_uuid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.arjun_table
    ADD CONSTRAINT arjun_table_uuid_key UNIQUE (uuid);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uuid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uuid_key UNIQUE (uuid);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uuid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uuid_key UNIQUE (uuid);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uuid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uuid_key UNIQUE (uuid);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uuid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uuid_key UNIQUE (uuid);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) MATCH FULL;


--
-- PostgreSQL database dump complete
--

