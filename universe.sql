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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    size integer NOT NULL,
    location integer,
    gaseous boolean,
    description character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    size integer NOT NULL,
    weight integer NOT NULL,
    bol boolean,
    planet_id integer
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
-- Name: orbittypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.orbittypes (
    orbittypes_id integer NOT NULL,
    eccent boolean,
    good boolean NOT NULL,
    frequency integer,
    amazing boolean,
    name character varying(20),
    hello integer
);


ALTER TABLE public.orbittypes OWNER TO freecodecamp;

--
-- Name: orbittypes_orbittypes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.orbittypes_orbittypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orbittypes_orbittypes_id_seq OWNER TO freecodecamp;

--
-- Name: orbittypes_orbittypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.orbittypes_orbittypes_id_seq OWNED BY public.orbittypes.orbittypes_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20),
    planet_id integer NOT NULL,
    size integer NOT NULL,
    weight integer NOT NULL,
    bol boolean,
    star_id integer,
    frfr text
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
    name character varying(20),
    star_id integer NOT NULL,
    type numeric,
    dead boolean,
    rating numeric,
    choose boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: orbittypes orbittypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbittypes ALTER COLUMN orbittypes_id SET DEFAULT nextval('public.orbittypes_orbittypes_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('alpha', 1, 20, 40, true, 'excellent');
INSERT INTO public.galaxy VALUES ('milkyway', 2, 3, 45, false, 'okay');
INSERT INTO public.galaxy VALUES ('andromeda', 3, 3, 13, true, 'meh');
INSERT INTO public.galaxy VALUES ('beta', 4, 111, 333, true, 'itsucks');
INSERT INTO public.galaxy VALUES ('outthere', 5, 34, 23, false, 'eh');
INSERT INTO public.galaxy VALUES ('thezoneautozone', 6, 1, 1, false, 'amazing deals');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('alpha', 1, 23, 34, true, NULL);
INSERT INTO public.moon VALUES ('a', 2, 1, 22, true, NULL);
INSERT INTO public.moon VALUES ('b', 3, 3, 44, false, NULL);
INSERT INTO public.moon VALUES ('c', 4, 34, 76, true, NULL);
INSERT INTO public.moon VALUES ('r', 5, 3432, 3, false, NULL);
INSERT INTO public.moon VALUES ('g', 6, 34, 65, false, NULL);
INSERT INTO public.moon VALUES ('gfd', 7, 654, 234, true, NULL);
INSERT INTO public.moon VALUES ('re', 8, 43, 3, false, NULL);
INSERT INTO public.moon VALUES ('yu', 9, 34, 12, false, NULL);
INSERT INTO public.moon VALUES ('po', 10, 4, 3, true, NULL);
INSERT INTO public.moon VALUES ('dd', 11, 23, 66, false, NULL);
INSERT INTO public.moon VALUES ('dfgdf', 12, 54, 3, false, NULL);
INSERT INTO public.moon VALUES ('gfds', 13, 12, 54, false, NULL);
INSERT INTO public.moon VALUES ('bgf', 14, 6, 6, true, NULL);
INSERT INTO public.moon VALUES ('poi', 15, 23, 98, false, NULL);
INSERT INTO public.moon VALUES ('were', 16, 4, 4, true, NULL);
INSERT INTO public.moon VALUES ('gfdsss', 17, 3, 342, true, NULL);
INSERT INTO public.moon VALUES ('trt', 18, 23, 34, false, NULL);
INSERT INTO public.moon VALUES ('popo', 19, 3, 4, false, NULL);
INSERT INTO public.moon VALUES ('oo', 20, 44, 44, false, NULL);
INSERT INTO public.moon VALUES ('pop', 23, 3, 3, NULL, NULL);


--
-- Data for Name: orbittypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.orbittypes VALUES (1, true, true, 3, true, NULL, NULL);
INSERT INTO public.orbittypes VALUES (2, false, false, 4, false, NULL, NULL);
INSERT INTO public.orbittypes VALUES (3, true, false, 99, true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('eeeeeeee', 1, 4, 4, true, NULL, NULL);
INSERT INTO public.planet VALUES ('lllll', 2, 1, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES ('dddddddd', 3, 8, 8, true, NULL, NULL);
INSERT INTO public.planet VALUES ('ddddddd', 4, 3, 3, true, NULL, NULL);
INSERT INTO public.planet VALUES ('dfgdfgdoo', 5, 1, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES ('gfgfdgdsss', 6, 7, 7, true, NULL, NULL);
INSERT INTO public.planet VALUES ('ooooooooooooo', 7, 1, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES ('ereee', 8, 5, 5, true, NULL, NULL);
INSERT INTO public.planet VALUES ('sdfasfasd', 9, 1, 1, false, NULL, NULL);
INSERT INTO public.planet VALUES ('gggg', 10, 3, 3, true, NULL, NULL);
INSERT INTO public.planet VALUES ('ewrerwggg', 11, 1, 1, true, NULL, NULL);
INSERT INTO public.planet VALUES ('lololo', 12, 6, 6, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('himtie', 1, 3.12, true, 32.1, false, 1);
INSERT INTO public.star VALUES ('letterman', 2, 32.34, false, 2.344, true, 2);
INSERT INTO public.star VALUES ('byt', 3, 342.2342, false, 234.3, true, 3);
INSERT INTO public.star VALUES ('liket', 4, 2.3, false, 435.0, true, 4);
INSERT INTO public.star VALUES ('amber', 5, 9.3, true, 9.3, false, 5);
INSERT INTO public.star VALUES ('pop', 6, 3.2, false, 9.4, true, 6);


--
-- Name: galaxy_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gid_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: orbittypes_orbittypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.orbittypes_orbittypes_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 39, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon hi; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT hi UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: orbittypes orbittypes_hello_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbittypes
    ADD CONSTRAINT orbittypes_hello_key UNIQUE (hello);


--
-- Name: orbittypes orbittypes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbittypes
    ADD CONSTRAINT orbittypes_pkey PRIMARY KEY (orbittypes_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet x; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT x UNIQUE (name);


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
-- PostgreSQL database dump complete
--

