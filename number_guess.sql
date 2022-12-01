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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 106, 11);
INSERT INTO public.games VALUES (2, 905, 11);
INSERT INTO public.games VALUES (3, 938, 13);
INSERT INTO public.games VALUES (4, 998, 13);
INSERT INTO public.games VALUES (5, 599, 11);
INSERT INTO public.games VALUES (6, 829, 11);
INSERT INTO public.games VALUES (7, 100, 11);
INSERT INTO public.games VALUES (8, 105, 18);
INSERT INTO public.games VALUES (9, 681, 18);
INSERT INTO public.games VALUES (10, 133, 20);
INSERT INTO public.games VALUES (11, 778, 20);
INSERT INTO public.games VALUES (12, 218, 18);
INSERT INTO public.games VALUES (13, 62, 18);
INSERT INTO public.games VALUES (14, 839, 18);
INSERT INTO public.games VALUES (15, 633, 25);
INSERT INTO public.games VALUES (16, 771, 25);
INSERT INTO public.games VALUES (17, 336, 26);
INSERT INTO public.games VALUES (18, 926, 26);
INSERT INTO public.games VALUES (19, 133, 25);
INSERT INTO public.games VALUES (20, 401, 25);
INSERT INTO public.games VALUES (21, 638, 25);
INSERT INTO public.games VALUES (22, 937, 27);
INSERT INTO public.games VALUES (23, 965, 27);
INSERT INTO public.games VALUES (24, 47, 28);
INSERT INTO public.games VALUES (25, 64, 28);
INSERT INTO public.games VALUES (26, 641, 27);
INSERT INTO public.games VALUES (27, 337, 27);
INSERT INTO public.games VALUES (28, 402, 27);
INSERT INTO public.games VALUES (29, 851, 29);
INSERT INTO public.games VALUES (30, 45, 29);
INSERT INTO public.games VALUES (31, 846, 30);
INSERT INTO public.games VALUES (32, 60, 30);
INSERT INTO public.games VALUES (33, 838, 29);
INSERT INTO public.games VALUES (34, 969, 29);
INSERT INTO public.games VALUES (35, 163, 29);
INSERT INTO public.games VALUES (36, 9, 1);
INSERT INTO public.games VALUES (37, 563, 31);
INSERT INTO public.games VALUES (38, 529, 31);
INSERT INTO public.games VALUES (39, 414, 32);
INSERT INTO public.games VALUES (40, 885, 32);
INSERT INTO public.games VALUES (41, 692, 31);
INSERT INTO public.games VALUES (42, 404, 31);
INSERT INTO public.games VALUES (43, 432, 31);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Trenton');
INSERT INTO public.users VALUES (3, 'user_1669931737596');
INSERT INTO public.users VALUES (5, 'user_1669931737595');
INSERT INTO public.users VALUES (11, 'user_1669932379353');
INSERT INTO public.users VALUES (13, 'user_1669932379352');
INSERT INTO public.users VALUES (18, 'user_1669932444487');
INSERT INTO public.users VALUES (20, 'user_1669932444486');
INSERT INTO public.users VALUES (25, 'user_1669932508328');
INSERT INTO public.users VALUES (26, 'user_1669932508327');
INSERT INTO public.users VALUES (27, 'user_1669932525638');
INSERT INTO public.users VALUES (28, 'user_1669932525637');
INSERT INTO public.users VALUES (29, 'user_1669932562980');
INSERT INTO public.users VALUES (30, 'user_1669932562979');
INSERT INTO public.users VALUES (31, 'user_1669932701763');
INSERT INTO public.users VALUES (32, 'user_1669932701762');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

