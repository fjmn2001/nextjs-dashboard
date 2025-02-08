SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "name", "email", "image_url") VALUES
	('3958dc9e-742f-4377-85e9-fec4b6a6442a', 'Lee Robinson', 'lee@robinson.com', '/customers/lee-robinson.png'),
	('3958dc9e-712f-4377-85e9-fec4b6a6442a', 'Delba de Oliveira', 'delba@oliveira.com', '/customers/delba-de-oliveira.png'),
	('13d07535-c59e-4157-a011-f8d2ef4e0cbb', 'Balazs Orban', 'balazs@orban.com', '/customers/balazs-orban.png'),
	('76d65c26-f784-44a2-ac19-586678f7c2f2', 'Michael Novotny', 'michael@novotny.com', '/customers/michael-novotny.png'),
	('d6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 'Evil Rabbit', 'evil@rabbit.com', '/customers/evil-rabbit.png'),
	('cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 'Amy Burns', 'amy@burns.com', '/customers/amy-burns.png');


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."invoices" ("id", "customer_id", "amount", "status", "date") VALUES
	('8f3460c4-494f-4278-a383-755491ac7918', 'd6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 666, 'pending', '2023-06-27'),
	('d6b71230-7515-4d3d-94b1-02a347d12533', 'd6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 15795, 'pending', '2022-12-06'),
	('ce34cdc1-c772-42dc-897d-b55ab854fbfc', 'cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 1250, 'paid', '2023-06-17'),
	('5788188c-8f89-4b03-bf3c-abff672c8e41', '76d65c26-f784-44a2-ac19-586678f7c2f2', 32545, 'paid', '2023-06-09'),
	('aeb113f4-a0a5-4aa6-b87c-bc3f2d6deb52', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 8546, 'paid', '2023-06-07'),
	('a0b631aa-d38f-4b3e-86fc-6b1427a40fcf', '3958dc9e-712f-4377-85e9-fec4b6a6442a', 500, 'paid', '2023-08-19'),
	('62f4cd7e-e9ac-4765-8c47-3027d1283a87', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 8945, 'paid', '2023-06-03'),
	('7a344e80-4376-4441-952c-cf15c94ac409', '3958dc9e-742f-4377-85e9-fec4b6a6442a', 1000, 'paid', '2022-06-05'),
	('8e7a8564-6c44-44d0-af1f-e04340b6dc11', 'cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 3040, 'paid', '2022-10-29'),
	('376cd244-f0eb-4b32-ae1a-bf120c67ff43', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 34577, 'pending', '2023-08-05'),
	('bd666c51-a839-4dda-aa1a-894f6781a397', '3958dc9e-742f-4377-85e9-fec4b6a6442a', 54246, 'pending', '2023-07-16'),
	('c07ab29f-dc76-4698-b5bf-636c36990e36', '3958dc9e-712f-4377-85e9-fec4b6a6442a', 20348, 'pending', '2022-11-14'),
	('e5124cee-3bdf-4410-b956-c9a0c79e0b05', '76d65c26-f784-44a2-ac19-586678f7c2f2', 44800, 'paid', '2023-09-10');


--
-- Data for Name: revenue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."revenue" ("month", "revenue") VALUES
	('Mar', 2200),
	('Apr', 2500),
	('Feb', 1800),
	('Jan', 2000),
	('May', 2300),
	('Aug', 3700),
	('Oct', 2800),
	('Jun', 3200),
	('Nov', 3000),
	('Sep', 2500),
	('Jul', 3500),
	('Dec', 4800);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "name", "email", "password") VALUES
	('410544b2-4001-4271-9855-fec4b6a6442a', 'User', 'user@nextmail.com', '$2b$10$zPXzbYTXkSvRiiMayaggcuQGQ.Q5lT9OKYWc5SpfxwQY3/4MaRF7O');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
