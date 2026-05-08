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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    round character varying(255) NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (95, 'Final', 2, 4, 2018, 115, 116);
INSERT INTO public.games VALUES (96, 'Third Place', 0, 2, 2018, 117, 118);
INSERT INTO public.games VALUES (97, 'Semi-Final', 1, 2, 2018, 116, 118);
INSERT INTO public.games VALUES (98, 'Semi-Final', 0, 1, 2018, 115, 117);
INSERT INTO public.games VALUES (99, 'Quarter-Final', 2, 3, 2018, 116, 119);
INSERT INTO public.games VALUES (100, 'Quarter-Final', 0, 2, 2018, 118, 120);
INSERT INTO public.games VALUES (101, 'Quarter-Final', 1, 2, 2018, 117, 121);
INSERT INTO public.games VALUES (102, 'Quarter-Final', 0, 2, 2018, 115, 122);
INSERT INTO public.games VALUES (103, 'Eighth-Final', 1, 2, 2018, 118, 123);
INSERT INTO public.games VALUES (104, 'Eighth-Final', 0, 1, 2018, 120, 124);
INSERT INTO public.games VALUES (105, 'Eighth-Final', 2, 3, 2018, 117, 125);
INSERT INTO public.games VALUES (106, 'Eighth-Final', 0, 2, 2018, 121, 126);
INSERT INTO public.games VALUES (107, 'Eighth-Final', 1, 2, 2018, 116, 127);
INSERT INTO public.games VALUES (108, 'Eighth-Final', 1, 2, 2018, 119, 128);
INSERT INTO public.games VALUES (109, 'Eighth-Final', 1, 2, 2018, 122, 129);
INSERT INTO public.games VALUES (110, 'Eighth-Final', 3, 4, 2018, 115, 130);
INSERT INTO public.games VALUES (111, 'Final', 0, 1, 2014, 131, 130);
INSERT INTO public.games VALUES (112, 'Third Place', 0, 3, 2014, 132, 121);
INSERT INTO public.games VALUES (113, 'Semi-Final', 0, 1, 2014, 130, 132);
INSERT INTO public.games VALUES (114, 'Semi-Final', 1, 7, 2014, 131, 121);
INSERT INTO public.games VALUES (115, 'Quarter-Final', 0, 1, 2014, 132, 133);
INSERT INTO public.games VALUES (116, 'Quarter-Final', 0, 1, 2014, 130, 117);
INSERT INTO public.games VALUES (117, 'Quarter-Final', 1, 2, 2014, 121, 123);
INSERT INTO public.games VALUES (118, 'Quarter-Final', 0, 1, 2014, 131, 115);
INSERT INTO public.games VALUES (119, 'Eighth-Final', 1, 2, 2014, 121, 134);
INSERT INTO public.games VALUES (120, 'Eighth-Final', 0, 2, 2014, 123, 122);
INSERT INTO public.games VALUES (121, 'Eighth-Final', 0, 2, 2014, 115, 135);
INSERT INTO public.games VALUES (122, 'Eighth-Final', 1, 2, 2014, 131, 136);
INSERT INTO public.games VALUES (123, 'Eighth-Final', 1, 2, 2014, 132, 126);
INSERT INTO public.games VALUES (124, 'Eighth-Final', 1, 2, 2014, 133, 137);
INSERT INTO public.games VALUES (125, 'Eighth-Final', 0, 1, 2014, 130, 124);
INSERT INTO public.games VALUES (126, 'Eighth-Final', 1, 2, 2014, 117, 138);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (115, 'France');
INSERT INTO public.teams VALUES (116, 'Croatia');
INSERT INTO public.teams VALUES (117, 'Belgium');
INSERT INTO public.teams VALUES (118, 'England');
INSERT INTO public.teams VALUES (119, 'Russia');
INSERT INTO public.teams VALUES (120, 'Sweden');
INSERT INTO public.teams VALUES (121, 'Brazil');
INSERT INTO public.teams VALUES (122, 'Uruguay');
INSERT INTO public.teams VALUES (123, 'Colombia');
INSERT INTO public.teams VALUES (124, 'Switzerland');
INSERT INTO public.teams VALUES (125, 'Japan');
INSERT INTO public.teams VALUES (126, 'Mexico');
INSERT INTO public.teams VALUES (127, 'Denmark');
INSERT INTO public.teams VALUES (128, 'Spain');
INSERT INTO public.teams VALUES (129, 'Portugal');
INSERT INTO public.teams VALUES (130, 'Argentina');
INSERT INTO public.teams VALUES (131, 'Germany');
INSERT INTO public.teams VALUES (132, 'Netherlands');
INSERT INTO public.teams VALUES (133, 'Costa Rica');
INSERT INTO public.teams VALUES (134, 'Chile');
INSERT INTO public.teams VALUES (135, 'Nigeria');
INSERT INTO public.teams VALUES (136, 'Algeria');
INSERT INTO public.teams VALUES (137, 'Greece');
INSERT INTO public.teams VALUES (138, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 126, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 138, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

