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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    galaxy_type character varying(20) NOT NULL,
    distance_from_earth_ly numeric NOT NULL
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    diameter_km integer,
    description text
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
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    planet_type character varying(30) NOT NULL,
    distance_from_earth_ly numeric NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_spherical boolean NOT NULL,
    temperature_kelvin integer NOT NULL,
    description text,
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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, containing billions of stars', 13600, 'Spiral', 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large galaxy to Milky Way', 10000, 'Spiral', 2537000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Giant elliptical galaxy in Virgo cluster', 13000, 'Elliptical', 53000000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral galaxy, part of the Local Group', 12000, 'Spiral', 3000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Bright spiral galaxy with a large central bulge', 9000, 'Spiral', 29000000);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular dwarf galaxy orbiting the Milky Way', 13000, 'Irregular', 163000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, true, 3474, 'Earth''s only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, false, 22, 'One of Mars'' two moons, irregular shape');
INSERT INTO public.moon VALUES (3, 'Deimos', 2, false, 12, 'Mars'' smaller moon, irregular shape');
INSERT INTO public.moon VALUES (4, 'Europa', 3, true, 3122, 'Jupiter''s icy moon, potential for life');
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, true, 5268, 'Largest moon in the solar system');
INSERT INTO public.moon VALUES (6, 'Titan', 4, true, 5150, 'Saturn’s largest moon with thick atmosphere');
INSERT INTO public.moon VALUES (7, 'Enceladus', 4, true, 504, 'Saturn’s icy moon with geysers');
INSERT INTO public.moon VALUES (8, 'Triton', 5, true, 2707, 'Neptune’s largest moon, orbits backwards');
INSERT INTO public.moon VALUES (9, 'Callisto', 3, true, 4820, 'Jupiter’s heavily cratered outer moon');
INSERT INTO public.moon VALUES (10, 'Io', 3, true, 3643, 'Most volcanically active body in the solar system');
INSERT INTO public.moon VALUES (11, 'Mimas', 4, true, 396, 'Saturn’s small moon with a large crater');
INSERT INTO public.moon VALUES (12, 'Oberon', 6, true, 1523, 'One of Uranus’s largest moons');
INSERT INTO public.moon VALUES (13, 'Titania', 6, true, 1578, 'Largest moon of Uranus');
INSERT INTO public.moon VALUES (14, 'Ariel', 6, true, 1158, 'One of Uranus’s brightest moons');
INSERT INTO public.moon VALUES (15, 'Miranda', 6, true, 471, 'Known for its unique and varied surface features');
INSERT INTO public.moon VALUES (16, 'Charon', 7, true, 1212, 'Pluto’s largest moon');
INSERT INTO public.moon VALUES (17, 'Nix', 7, false, 49, 'Small irregular moon orbiting Pluto');
INSERT INTO public.moon VALUES (18, 'Hydra', 7, false, 55, 'Small irregular moon orbiting Pluto');
INSERT INTO public.moon VALUES (19, 'Proteus', 8, false, 420, 'Neptune''s second-largest moon');
INSERT INTO public.moon VALUES (20, 'Larissa', 8, false, 194, 'Irregularly shaped moon of Neptune');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 'Terrestrial', 0);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 'Terrestrial', 0.0000000000158);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, false, 'Gas Giant', 0.000000000082);
INSERT INTO public.planet VALUES (4, 'Proxima Centauri b', 2, false, 'Terrestrial', 4.24);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 2, false, 'Terrestrial', 4.37);
INSERT INTO public.planet VALUES (6, 'Betelgeuse I', 3, false, 'Gas Giant', 642.5);
INSERT INTO public.planet VALUES (7, 'Rigel III', 4, false, 'Ice Giant', 860);
INSERT INTO public.planet VALUES (8, 'M87 Planet X', 5, false, 'Terrestrial', 53000000);
INSERT INTO public.planet VALUES (9, 'Triangulum Terra', 6, true, 'Terrestrial', 3000000);
INSERT INTO public.planet VALUES (10, 'Gliese 581d', 6, false, 'Terrestrial', 20.3);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 4, false, 'Hot Jupiter', 870);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 1, false, 'Super-Earth', 1400);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Rocky planets with solid surfaces like Earth and Mars');
INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'Large planets mostly made of gases like Jupiter and Saturn');
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'Planets composed mostly of ices, such as Uranus and Neptune');
INSERT INTO public.planet_type VALUES (4, 'Dwarf Planet', 'Small planetary-mass objects like Pluto');
INSERT INTO public.planet_type VALUES (5, 'Exoplanet', 'Planets orbiting stars outside our solar system');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 5778, 'Our closest star, supports life', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', true, 5790, 'Part of the Alpha Centauri system', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', true, 3500, 'Red supergiant in Orion constellation', 1);
INSERT INTO public.star VALUES (4, 'Rigel', true, 12100, 'Blue supergiant, very luminous', 1);
INSERT INTO public.star VALUES (5, 'M87 Star 1', true, 6000, 'Bright star in Messier 87 galaxy', 3);
INSERT INTO public.star VALUES (6, 'Triangulum Star', true, 4500, 'Typical star in the Triangulum galaxy', 4);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 5, true);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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

