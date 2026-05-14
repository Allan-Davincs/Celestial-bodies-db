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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'asiha', 0, NULL);
INSERT INTO public.users VALUES (2, 'user_1778741221889', 0, NULL);
INSERT INTO public.users VALUES (3, 'user_1778741221888', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1778741265261', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1778741265260', 0, NULL);
INSERT INTO public.users VALUES (6, 'user_1778741370865', 0, NULL);
INSERT INTO public.users VALUES (7, 'user_1778741370864', 0, NULL);
INSERT INTO public.users VALUES (8, 'user_1778742223631', 0, NULL);
INSERT INTO public.users VALUES (9, 'user_1778742223630', 0, NULL);
INSERT INTO public.users VALUES (10, 'Ally', 0, NULL);
INSERT INTO public.users VALUES (11, 'aly', 0, NULL);
INSERT INTO public.users VALUES (13, 'user_1778742930246', 2, 397);
INSERT INTO public.users VALUES (23, 'user_1778744744832', 2, 509);
INSERT INTO public.users VALUES (12, 'user_1778742930247', 5, 14);
INSERT INTO public.users VALUES (35, 'user_1778745478206', 2, 79);
INSERT INTO public.users VALUES (22, 'user_1778744744833', 5, 117);
INSERT INTO public.users VALUES (15, 'user_1778743272772', 2, 719);
INSERT INTO public.users VALUES (47, 'user_1778746539108', 2, 745);
INSERT INTO public.users VALUES (34, 'user_1778745478207', 5, 458);
INSERT INTO public.users VALUES (14, 'user_1778743272773', 5, 252);
INSERT INTO public.users VALUES (25, 'user_1778744758051', 2, 299);
INSERT INTO public.users VALUES (46, 'user_1778746539109', 5, 377);
INSERT INTO public.users VALUES (17, 'user_1778743918293', 2, 82);
INSERT INTO public.users VALUES (24, 'user_1778744758052', 5, 97);
INSERT INTO public.users VALUES (16, 'user_1778743918294', 5, 8);
INSERT INTO public.users VALUES (37, 'user_1778745695045', 2, 178);
INSERT INTO public.users VALUES (19, 'user_1778744431266', 2, 280);
INSERT INTO public.users VALUES (27, 'user_1778744873134', 2, 80);
INSERT INTO public.users VALUES (36, 'user_1778745695046', 5, 105);
INSERT INTO public.users VALUES (18, 'user_1778744431267', 5, 17);
INSERT INTO public.users VALUES (26, 'user_1778744873135', 5, 149);
INSERT INTO public.users VALUES (21, 'user_1778744546434', 2, 269);
INSERT INTO public.users VALUES (20, 'user_1778744546435', 5, 176);
INSERT INTO public.users VALUES (29, 'user_1778745030919', 2, 309);
INSERT INTO public.users VALUES (39, 'user_1778745794218', 2, 14);
INSERT INTO public.users VALUES (28, 'user_1778745030920', 5, 194);
INSERT INTO public.users VALUES (38, 'user_1778745794219', 5, 32);
INSERT INTO public.users VALUES (31, 'user_1778745135466', 2, 690);
INSERT INTO public.users VALUES (30, 'user_1778745135467', 5, 111);
INSERT INTO public.users VALUES (41, 'user_1778745950927', 2, 97);
INSERT INTO public.users VALUES (33, 'user_1778745219479', 2, 270);
INSERT INTO public.users VALUES (32, 'user_1778745219480', 5, 33);
INSERT INTO public.users VALUES (40, 'user_1778745950928', 5, 73);
INSERT INTO public.users VALUES (43, 'user_1778746158659', 2, 412);
INSERT INTO public.users VALUES (42, 'user_1778746158660', 5, 325);
INSERT INTO public.users VALUES (45, 'user_1778746442350', 2, 104);
INSERT INTO public.users VALUES (44, 'user_1778746442351', 5, 117);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

