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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    number2 integer NOT NULL,
    number3 integer NOT NULL,
    name character varying(10),
    fifth_id integer NOT NULL
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_type text NOT NULL,
    diameter_in_light_years integer NOT NULL,
    description character varying(100)
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_its_planet_in_km integer NOT NULL,
    description character varying(100)
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
    planet_type text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(5,1) NOT NULL,
    distance_from_its_star_in_millions_of_km integer NOT NULL,
    star_id integer NOT NULL,
    description character varying(100)
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
    name character varying(20) NOT NULL,
    star_type text NOT NULL,
    galaxy_id integer NOT NULL,
    description character varying(100)
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
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


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
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (0, 0, 'John', 4);
INSERT INTO public.fifth VALUES (0, 0, 'Mark', 5);
INSERT INTO public.fifth VALUES (0, 0, 'Francis', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 105700, 'The Milky Way includes the Solar System and it is named for its appaerance.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 220000, 'The Andromeda is the nearest major galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'IC 1101', 'Elliptical', 3914000, 'IC 1101 is a class S0 supergiant lenticular galaxy at the center of the Abell 2029 cluster.');
INSERT INTO public.galaxy VALUES (4, 'Maffei 1', 'Elliptical', 75000, 'Maffei 1 is a galaxy in the constellation Cassiopea, named after Paolo Maffei who discovered it.');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic', 'Irregular', 18900, 'The S. M. Cloud is a dwarf galaxy near the Milky Way and contains several hundreds milion stars.');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic', 'Irregular', 32200, 'The L. M. Cloud is a dwarf irregular galaxy and it is one-hundredth the mass of the Milky Way.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 353274, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 9380, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 23460, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, 421113, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 665840, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 1071791, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1880000, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, 0, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 0, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, 0, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 0, NULL);
INSERT INTO public.moon VALUES (12, 'Rheea', 6, 0, NULL);
INSERT INTO public.moon VALUES (13, 'Ariel', 7, 0, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', 7, 0, NULL);
INSERT INTO public.moon VALUES (15, 'Puck', 7, 0, NULL);
INSERT INTO public.moon VALUES (16, 'Rosalind', 7, 0, NULL);
INSERT INTO public.moon VALUES (17, 'Galatea', 8, 0, NULL);
INSERT INTO public.moon VALUES (18, 'Halimede', 8, 0, NULL);
INSERT INTO public.moon VALUES (19, 'Hippocamp', 8, 0, NULL);
INSERT INTO public.moon VALUES (20, 'Larissa', 8, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky', false, true, 4503.1, 68, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'Rocky', false, true, 4503.1, 109, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'Rocky', true, true, 4543.1, 152, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Rocky', false, true, 4603.1, 248, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas', false, true, 4603.1, 742, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas', false, true, 4503.1, 1461, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice', false, true, 4503.1, 2937, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice', false, true, 4503.1, 4473, 1, NULL);
INSERT INTO public.planet VALUES (9, 'PA-99-N2', 'NA', false, true, 0.0, 0, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Planet1', 'NA', false, false, 0.0, 0, 3, NULL);
INSERT INTO public.planet VALUES (11, 'Planet2', 'NA', false, false, 0.0, 0, 4, NULL);
INSERT INTO public.planet VALUES (12, 'Planet3', 'NA', false, false, 0.0, 0, 5, NULL);
INSERT INTO public.planet VALUES (13, 'Planet4', 'NA', false, false, 0.0, 0, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 1, 'The Sun is the star at the Center of the Solar System.');
INSERT INTO public.star VALUES (2, 'Beta Andromedae', 'M0 III', 2, 'The Beta Andromedae is a prominent star in the northern constellation of Andromeda.');
INSERT INTO public.star VALUES (3, 'Various0', 'Various', 3, NULL);
INSERT INTO public.star VALUES (4, 'Various1', 'Various', 4, NULL);
INSERT INTO public.star VALUES (5, 'PMMR 62', 'M0lab C', 5, 'The PMMR 62 is a red supergiant star in the constellation Tucana.');
INSERT INTO public.star VALUES (6, 'Various2', 'Various', 6, NULL);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth fifth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_name_key UNIQUE (name);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_galaxy_nam_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_nam_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


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

