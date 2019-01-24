--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: komentar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.komentar (
    id_komentar integer NOT NULL,
    isi_komentar text NOT NULL,
    id_user integer NOT NULL
);


ALTER TABLE public.komentar OWNER TO postgres;

--
-- Name: komentar_id_komentar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.komentar_id_komentar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.komentar_id_komentar_seq OWNER TO postgres;

--
-- Name: komentar_id_komentar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.komentar_id_komentar_seq OWNED BY public.komentar.id_komentar;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(40) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    phone_number character varying(12) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: komentar id_komentar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.komentar ALTER COLUMN id_komentar SET DEFAULT nextval('public.komentar_id_komentar_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: komentar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.komentar (id_komentar, isi_komentar, id_user) FROM stdin;
1	barang ready gan?	2
2	bisa gosend hari ini gan?	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, email, phone_number) FROM stdin;
1	Andi	ae2b1fca515949e5d54fb22b8ed95575	andi@gmail.com	0823872844
3	Attacker	ae2b1fca515949e5d54fb22b8ed95575	attacker@gmail.com	082111111111
2	Eko	ae2b1fca515949e5d54fb22b8ed95575	eko@gmail.com	08564771185
\.


--
-- Name: komentar_id_komentar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.komentar_id_komentar_seq', 17, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: komentar komentar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.komentar
    ADD CONSTRAINT komentar_pkey PRIMARY KEY (id_komentar);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

