--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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
-- Name: t_user; Type: TABLE; Schema: public; Owner: blog
--

CREATE TABLE public.t_user (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255),
    mail character varying(255),
    url character varying(255),
    screen_name character varying(255),
    created timestamp(0) with time zone,
    activated timestamp(0) with time zone,
    logged timestamp(0) with time zone,
    "group" character varying(255),
    auth_code character varying(255)
);


ALTER TABLE public.t_user OWNER TO blog;

--
-- Name: t_user_id_seq; Type: SEQUENCE; Schema: public; Owner: blog
--

ALTER TABLE public.t_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.t_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: t_user; Type: TABLE DATA; Schema: public; Owner: blog
--

COPY public.t_user (id, name, password, mail, url, screen_name, created, activated, logged, "group", auth_code) FROM stdin;
3	admin	admin	admin@admin.com	http://localhost	screenName-val	2019-12-18 00:00:00+00	2019-12-18 00:00:00+00	2019-12-18 00:00:00+00	group-val	authCode-val
\.


--
-- Name: t_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blog
--

SELECT pg_catalog.setval('public.t_user_id_seq', 3, true);


--
-- Name: t_user t_user_pkey; Type: CONSTRAINT; Schema: public; Owner: blog
--

ALTER TABLE ONLY public.t_user
    ADD CONSTRAINT t_user_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
