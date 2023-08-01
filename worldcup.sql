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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name text NOT NULL
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

INSERT INTO public.games VALUES (13, 2018, 'Final', 61, 62, 4, 2);
INSERT INTO public.games VALUES (14, 2018, 'Third Place', 63, 64, 2, 0);
INSERT INTO public.games VALUES (15, 2018, 'Semi-Final', 62, 64, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Semi-Final', 61, 63, 1, 0);
INSERT INTO public.games VALUES (17, 2018, 'Quarter-Final', 62, 65, 3, 2);
INSERT INTO public.games VALUES (18, 2018, 'Quarter-Final', 64, 66, 2, 0);
INSERT INTO public.games VALUES (19, 2018, 'Quarter-Final', 63, 67, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Quarter-Final', 61, 68, 2, 0);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 64, 69, 2, 1);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 66, 70, 1, 0);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 63, 71, 3, 2);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 67, 72, 2, 0);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 62, 73, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 65, 74, 2, 1);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 68, 75, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Eighth-Final', 61, 76, 4, 3);
INSERT INTO public.games VALUES (29, 2014, 'Final', 77, 76, 1, 0);
INSERT INTO public.games VALUES (30, 2014, 'Third Place', 78, 67, 3, 0);
INSERT INTO public.games VALUES (31, 2014, 'Semi-Final', 76, 78, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Semi-Final', 77, 67, 7, 1);
INSERT INTO public.games VALUES (33, 2014, 'Quarter-Final', 78, 79, 1, 0);
INSERT INTO public.games VALUES (34, 2014, 'Quarter-Final', 76, 63, 1, 0);
INSERT INTO public.games VALUES (35, 2014, 'Quarter-Final', 67, 69, 2, 1);
INSERT INTO public.games VALUES (36, 2014, 'Quarter-Final', 77, 61, 1, 0);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 67, 80, 2, 1);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 69, 68, 2, 0);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 61, 81, 2, 0);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 77, 82, 2, 1);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 78, 72, 2, 1);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 79, 83, 2, 1);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 76, 70, 1, 0);
INSERT INTO public.games VALUES (44, 2014, 'Eighth-Final', 63, 84, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (61, 'France');
INSERT INTO public.teams VALUES (62, 'Croatia');
INSERT INTO public.teams VALUES (63, 'Belgium');
INSERT INTO public.teams VALUES (64, 'England');
INSERT INTO public.teams VALUES (65, 'Russia');
INSERT INTO public.teams VALUES (66, 'Sweden');
INSERT INTO public.teams VALUES (67, 'Brazil');
INSERT INTO public.teams VALUES (68, 'Uruguay');
INSERT INTO public.teams VALUES (69, 'Colombia');
INSERT INTO public.teams VALUES (70, 'Switzerland');
INSERT INTO public.teams VALUES (71, 'Japan');
INSERT INTO public.teams VALUES (72, 'Mexico');
INSERT INTO public.teams VALUES (73, 'Denmark');
INSERT INTO public.teams VALUES (74, 'Spain');
INSERT INTO public.teams VALUES (75, 'Portugal');
INSERT INTO public.teams VALUES (76, 'Argentina');
INSERT INTO public.teams VALUES (77, 'Germany');
INSERT INTO public.teams VALUES (78, 'Netherlands');
INSERT INTO public.teams VALUES (79, 'Costa Rica');
INSERT INTO public.teams VALUES (80, 'Chile');
INSERT INTO public.teams VALUES (81, 'Nigeria');
INSERT INTO public.teams VALUES (82, 'Algeria');
INSERT INTO public.teams VALUES (83, 'Greece');
INSERT INTO public.teams VALUES (84, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 84, true);


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

