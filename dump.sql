--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)

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

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.admin (id, username, roles, password) FROM stdin;
13	Moderator	["ROLE_ADMIN"]	$argon2id$v=19$m=65536,t=4,p=1$NZX5A7OfpQDcxjDcNxanhg$k2QYnFd67T9JIL7wUgRQUoUAl2MLCX22jYadtZw5gcU
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
17	Amsterdam	2019	f	amsterdam-2019
18	Paris	2020	t	paris-2020
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename, state) FROM stdin;
35	17	Lucas	I think this one is going to be moderated.	Lucas@example.com	2023-02-12 08:55:59	\N	submitted
36	18	Meder Sairakunov	My bro, You are the best friend	msairakunov@gmail.com	2023-02-12 09:33:00	97eab40fbf62.jpeg	published
34	17	Fabien	This was a great conference.	fabien@example.com	2023-02-12 08:55:00	\N	published
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20230116122358	2023-01-21 15:04:11	16
DoctrineMigrations\\Version20230121145336	2023-01-21 15:04:11	1
DoctrineMigrations\\Version20230121150549	2023-01-21 15:05:55	9
DoctrineMigrations\\Version20230121151005	2023-01-21 15:10:10	9
DoctrineMigrations\\Version20230121151141	2023-01-21 15:11:55	17
DoctrineMigrations\\Version20230129095904	2023-01-29 09:59:13	42
DoctrineMigrations\\Version20230129120032	2023-01-29 12:00:41	29
DoctrineMigrations\\Version20230212082612	2023-02-12 08:27:59	32
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.admin_id_seq', 13, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.comment_id_seq', 36, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.conference_id_seq', 18, true);


--
-- PostgreSQL database dump complete
--

