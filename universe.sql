--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: conselattions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.conselattions (
    conselattions_id integer NOT NULL,
    name character varying(30),
    number_of_stars integer NOT NULL,
    age_in_millions integer NOT NULL
);


ALTER TABLE public.conselattions OWNER TO freecodecamp;

--
-- Name: conselattions_conselattions_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.conselattions_conselattions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conselattions_conselattions_id_seq OWNER TO freecodecamp;

--
-- Name: conselattions_conselattions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.conselattions_conselattions_id_seq OWNED BY public.conselattions.conselattions_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric,
    has_life boolean
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_form_earth numeric,
    age_in_millions integer NOT NULL,
    planet_id integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_form_earth numeric,
    is_spherical boolean,
    has_life boolean,
    age_in_millions integer NOT NULL,
    star_id integer NOT NULL
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_form_earth numeric,
    age_in_millions integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: conselattions conselattions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.conselattions ALTER COLUMN conselattions_id SET DEFAULT nextval('public.conselattions_conselattions_id_seq'::regclass);


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
-- Data for Name: conselattions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.conselattions VALUES (1, 'orion', 5, 33);
INSERT INTO public.conselattions VALUES (2, 'Cursa', 7, 45);
INSERT INTO public.conselattions VALUES (3, 'Orpa', 9, 89);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'description', 3459.8, false);
INSERT INTO public.galaxy VALUES (2, 'Milk way', 'description', 0, false);
INSERT INTO public.galaxy VALUES (3, 'Sombero', 'This is the gas full galaxy', 7659.8, true);
INSERT INTO public.galaxy VALUES (4, 'Centurs', 'it is sugggested to be dead', 3459.8, false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'One of the most cool galaxy', 9686.8, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'It is furthest', 23459.8, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5675, 340, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 5645, 341, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 3745, 640, 2);
INSERT INTO public.moon VALUES (4, 'Io', 5745, 340, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 2745, 660, 3);
INSERT INTO public.moon VALUES (6, 'Ganymed', 1745, 440, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 4445, 675, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 4465, 120, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4575, 120, 5);
INSERT INTO public.moon VALUES (10, 'Mimas', 6578, 780, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 6685, 334, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 4745, 940, 6);
INSERT INTO public.moon VALUES (13, 'Lapetus', 1890, 340, 6);
INSERT INTO public.moon VALUES (14, 'Triton', 12590, 640, 8);
INSERT INTO public.moon VALUES (15, 'Nereid', 9975, 790, 8);
INSERT INTO public.moon VALUES (16, 'Proteus', 11245, 770, 5);
INSERT INTO public.moon VALUES (17, 'Charon', 34745, 653, 4);
INSERT INTO public.moon VALUES (18, 'Nix', 4567, 798, 3);
INSERT INTO public.moon VALUES (19, 'Hydra', 7879, 575, 5);
INSERT INTO public.moon VALUES (20, 'Kerberos', 4579, 670, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, true, 90, 1);
INSERT INTO public.planet VALUES (2, 'venus', 20, true, false, 100, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 23, true, false, 10, 1);
INSERT INTO public.planet VALUES (4, 'Uranus', 0, true, false, 139, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 0, true, false, 145, 1);
INSERT INTO public.planet VALUES (6, 'Mecurty', 23, true, false, 158, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 29, true, false, 200, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 90, false, false, 250, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', 45, true, true, 200, 1);
INSERT INTO public.planet VALUES (10, 'Proxima', 23, true, false, 209, 2);
INSERT INTO public.planet VALUES (11, 'Methuselah', 300, true, true, 308, 3);
INSERT INTO public.planet VALUES (12, 'Osiris', 24, true, true, 329, 4);
INSERT INTO public.planet VALUES (13, 'Kelper', 56, true, false, 345, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The one contain the earth', 0.90, 60, 2);
INSERT INTO public.star VALUES (2, 'Rigiel', 'The one near the earth', 4567, 100, 1);
INSERT INTO public.star VALUES (3, 'Vega', 'Contain nitor gas', 33456, 123, 3);
INSERT INTO public.star VALUES (4, 'Srius', 'Contain Methane gas', 5673, 143, 4);
INSERT INTO public.star VALUES (5, 'Alpha', 'Contain Hydrogen gas', 6781, 456, 5);
INSERT INTO public.star VALUES (6, 'Betel', 'Contain hydro carbon gas', 56746, 456, 6);


--
-- Name: conselattions_conselattions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.conselattions_conselattions_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: conselattions conselattions_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.conselattions
    ADD CONSTRAINT conselattions_name_key UNIQUE (name);


--
-- Name: conselattions conselattions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.conselattions
    ADD CONSTRAINT conselattions_pkey PRIMARY KEY (conselattions_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

