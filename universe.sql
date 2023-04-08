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
    galaxy_id integer NOT NULL,
    galaxy_name character varying(20) NOT NULL,
    has_star boolean NOT NULL,
    from_big_bang boolean NOT NULL,
    is_cool boolean NOT NULL,
    name character varying(10)
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
-- Name: meteorites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorites (
    meteorites_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size numeric NOT NULL
);


ALTER TABLE public.meteorites OWNER TO freecodecamp;

--
-- Name: meteorites_meteorite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorites_meteorite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorites_meteorite_id_seq OWNER TO freecodecamp;

--
-- Name: meteorites_meteorite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorites_meteorite_id_seq OWNED BY public.meteorites.meteorites_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    planet_name character varying(20),
    galaxy_name character varying(20)
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
    name character varying(20) NOT NULL,
    number_moons integer NOT NULL,
    distance_from_earth integer NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    galaxy_name character varying(20),
    star_name character varying(20)
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
    star_name character varying(20) NOT NULL,
    age numeric NOT NULL,
    galaxy_name character varying(20),
    is_dead boolean DEFAULT false,
    name character varying(10)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteorites meteorites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorites ALTER COLUMN meteorites_id SET DEFAULT nextval('public.meteorites_meteorite_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', true, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'creamy way', true, true, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'shitty way', true, true, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'my way', true, true, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'your way', true, true, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'our way', true, true, true, NULL);


--
-- Data for Name: meteorites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorites VALUES (1, 'sexy', 19909);
INSERT INTO public.meteorites VALUES (2, 'the rock', 199);
INSERT INTO public.meteorites VALUES (3, 'small hart', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'wolf', false, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'snake', false, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'tiger', true, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'bear', true, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'lion', true, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'razorclam', false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'scallop', true, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'snapper', true, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'pig', true, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'shark', false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'whale', true, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'doryfish', true, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'redpanda', true, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'red gurnard', false, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'trout', true, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'salmon', true, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'grub', true, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'weird', false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'skate', true, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'scampi', true, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'mealworm', true, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (2, 'Mars', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (3, 'Venus', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (5, 'Neptune', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (6, 'luto', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (7, 'Jupiter', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (8, 'Uranus', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (9, 'Saturn', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (10, 'X12AE', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (11, 'X12E', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (12, 'X12', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (14, 'X112', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (15, 'X11112', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');
INSERT INTO public.planet VALUES (16, 'X131112', 2, 1000, 'Dead soon', true, 'milky way', 'Starry');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Starry', 1, NULL, false, NULL);
INSERT INTO public.star VALUES (2, 'Baby', 2, NULL, false, NULL);
INSERT INTO public.star VALUES (3, 'Violet', 12, NULL, false, NULL);
INSERT INTO public.star VALUES (4, 'Genita', 4, NULL, false, NULL);
INSERT INTO public.star VALUES (5, 'Cavatelli', 41, NULL, false, NULL);
INSERT INTO public.star VALUES (6, 'Cacioepepe', 12, NULL, false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteorites_meteorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorites_meteorite_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--a
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteorites meteorites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorites
    ADD CONSTRAINT meteorites_name_key UNIQUE (name);


--
-- Name: meteorites meteorites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorites
    ADD CONSTRAINT meteorites_pkey PRIMARY KEY (meteorites_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
    ADD CONSTRAINT star_name_key UNIQUE (star_name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet planet_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

