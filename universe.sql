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
    name character varying(30) NOT NULL,
    achivable boolean,
    diameter_kpc numeric,
    distance_mly numeric,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inhabitable boolean,
    size integer,
    distance_ly numeric,
    type text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    object_id integer,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inhabitable boolean,
    size integer,
    distance_ly numeric,
    type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inhabitable boolean,
    size integer,
    distance_ly numeric,
    type text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', false, 46.56, 756, 'Barred spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky way', true, 26.8, 27, 'Barred spiral');
INSERT INTO public.galaxy VALUES (3, 'Antennae', false, 50, 800, 'Group');
INSERT INTO public.galaxy VALUES (4, 'Backward', false, 30, 56, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', false, 13, 96, 'Eliptical');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', false, 100, 63, 'Iregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 7654, 0, 'Earth', 2);
INSERT INTO public.moon VALUES (2, 'Callisto', true, 2589, 5692, 'Jupiter', 2);
INSERT INTO public.moon VALUES (3, 'Enceladus', false, 7265, 2689, 'Saturn', 6);
INSERT INTO public.moon VALUES (4, 'LXI', false, 3695, 5592, 'Jupiter', 8);
INSERT INTO public.moon VALUES (5, 'Cyllene', false, 5923, 5963, 'Jupiter', 12);
INSERT INTO public.moon VALUES (6, 'LI', false, 5923, 5963, 'Jupiter', 8);
INSERT INTO public.moon VALUES (7, 'LXXII', false, 2669, 2295, 'Jupiter', 9);
INSERT INTO public.moon VALUES (8, 'Triton', false, 7654, 223, 'Neptun', 12);
INSERT INTO public.moon VALUES (9, 'Lapetus', false, 762692, 5922, 'Saturn', 3);
INSERT INTO public.moon VALUES (10, 'Tethys', false, 76696, 592, 'Saturn', 9);
INSERT INTO public.moon VALUES (11, 'Telesto', false, 7653, 223, 'Saturn', 2);
INSERT INTO public.moon VALUES (12, 'Pesphae', false, 76639, 669329, 'Jupiter', 6);
INSERT INTO public.moon VALUES (13, 'Praxydike', false, 3695, 669329, 'Jupiter', 3);
INSERT INTO public.moon VALUES (14, 'Ortosie', false, 853, 669329, 'Jupiter', 2);
INSERT INTO public.moon VALUES (15, 'Errapus', false, 48236, 669329, 'Saturn', 4);
INSERT INTO public.moon VALUES (16, 'Callirohoe', false, 9365, 669329, 'Jupiter', 1);
INSERT INTO public.moon VALUES (17, 'Europa', false, 76, 669329, 'Jupiter', 8);
INSERT INTO public.moon VALUES (18, 'Titan', false, 76, 3694, 'Saturn', 10);
INSERT INTO public.moon VALUES (19, 'Thebe', false, 76, 15896, 'Jupiter', 5);
INSERT INTO public.moon VALUES (20, 'LII', false, 76, 45896, 'Jupiter', 9);
INSERT INTO public.moon VALUES (21, 'XMLUY', false, 76, 45896, 'Jupiter', 3);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 1, 'info1', 'lorem impsum');
INSERT INTO public.more_info VALUES (2, 2, 'info2', 'lorem impsum');
INSERT INTO public.more_info VALUES (3, 3, 'info3', 'lorem impsum');
INSERT INTO public.more_info VALUES (4, 4, 'info4', 'lorem impsum');
INSERT INTO public.more_info VALUES (5, 5, 'info5', 'lorem impsum');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 7654, 0, 'Mega-Earth', 2);
INSERT INTO public.planet VALUES (2, 'Mars', true, 2589, 5692, 'Earth', 3);
INSERT INTO public.planet VALUES (3, 'Uranus', false, 7265, 2689, 'Giant', 5);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 3695, 5592, 'Dwarf', 6);
INSERT INTO public.planet VALUES (5, 'Planet', false, 5923, 5963, 'Spectral', 4);
INSERT INTO public.planet VALUES (6, 'Mercury', false, 5923, 5963, 'Spectral', 6);
INSERT INTO public.planet VALUES (7, 'Venus', false, 2669, 2295, 'Dwarf', 1);
INSERT INTO public.planet VALUES (8, 'Planet X', false, 7654, 223, 'Spectral', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 762692, 5922, 'Spectral', 1);
INSERT INTO public.planet VALUES (10, 'CoRoT-7b', false, 76696, 592, 'Spectral', 2);
INSERT INTO public.planet VALUES (11, 'HD 209458b', false, 7653, 223, 'Spectral', 3);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', false, 76, 669329, 'Super-Earth', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Adhil', false, 7654, 223, 'Spectral class', 2);
INSERT INTO public.star VALUES (2, 'Almach', false, 3, 320, 'Supergiant', 2);
INSERT INTO public.star VALUES (3, 'Alpheratz', false, 4, 163, 'Dwarf', 3);
INSERT INTO public.star VALUES (4, 'Buna', false, 7, 250, 'Giant', 4);
INSERT INTO public.star VALUES (5, 'Mirach ', false, 4, 563, 'Blue main sequence', 6);
INSERT INTO public.star VALUES (6, 'Nembus ', false, 64, 568, 'Spectral class', 1);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_id UNIQUE (more_info_id);


--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

