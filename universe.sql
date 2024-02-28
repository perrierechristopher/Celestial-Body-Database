--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50),
    description text,
    galaxy_types integer NOT NULL,
    hasblackholes boolean,
    sizely numeric,
    age integer
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
    name character varying(50),
    description text,
    is_spherical boolean,
    age integer,
    has_life boolean,
    planet_id integer,
    moon_types integer NOT NULL
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age integer NOT NULL,
    alive boolean,
    has_family boolean,
    phone numeric,
    planet_id integer
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_people_id_seq OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_people_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text,
    planet_types integer NOT NULL,
    is_spherical boolean,
    age integer,
    star_id integer,
    has_life boolean
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
    name character varying(50),
    description text,
    star_types integer NOT NULL,
    is_spherical boolean,
    age integer,
    galaxy_id integer,
    has_life boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_people_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Neptal', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);
INSERT INTO public.galaxy VALUES (3, 'Neptal2', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);
INSERT INTO public.galaxy VALUES (4, 'Neptal3', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);
INSERT INTO public.galaxy VALUES (5, 'Neptal4', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);
INSERT INTO public.galaxy VALUES (6, 'Neptal5', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);
INSERT INTO public.galaxy VALUES (7, 'Neptal6', 'Galaxy of your dreams', 4, NULL, 343490349034, 329403904);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moona', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (2, 'Moona2', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (3, 'Moona3', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (4, 'Moona4', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (5, 'Moona5', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (6, 'Moona6', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (7, 'Moona7', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (8, 'Moona8', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (9, 'Moona9', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (10, 'Moona10', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (11, 'Moona11', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (12, 'Moona12', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (13, 'Moona13', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (14, 'Moona14', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (15, 'Moona15', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (16, 'Moona16', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (17, 'Moona17', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (18, 'Moona18', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (19, 'Moona19', 'First Moon', NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (20, 'Moona20', 'First Moon', NULL, NULL, NULL, 1, 3);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, 'Chris', NULL, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.people VALUES (2, 'Chrfearfis', NULL, 43, NULL, NULL, NULL, NULL);
INSERT INTO public.people VALUES (3, 'Chrfears', NULL, 43, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Neptune', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Neptune2', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Neptune3', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Neptune4', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Neptune5', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Neptune6', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune7', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune8', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune9', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Neptune10', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Neptune11', 'First Planet', 34, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Neptune12', 'First Planet', 34, NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Starilus', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Starilus2', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Starilus3', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Starilus4', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Starilus5', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Starilus6', 'First star of her galaxy', 3, NULL, NULL, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: people_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_people_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_phone_key UNIQUE (phone);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


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
-- Name: people people_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

