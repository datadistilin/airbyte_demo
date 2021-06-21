--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: demo_source; Type: DATABASE; Schema: -; Owner: demo_user
--

CREATE DATABASE demo_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE demo_source OWNER TO demo_user;

\connect demo_source

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
-- Name: customers; Type: TABLE; Schema: public; Owner: demo_user
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(32),
    last_name character varying(32)
);


ALTER TABLE public.customers OWNER TO demo_user;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: demo_user
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date,
    status character varying(16)
);


ALTER TABLE public.orders OWNER TO demo_user;

--
-- Name: payments; Type: TABLE; Schema: public; Owner: demo_user
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    order_id integer NOT NULL,
    payment_method character varying(16),
    amount numeric(7,2)
);


ALTER TABLE public.payments OWNER TO demo_user;

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: demo_user
--

COPY public.customers (id, first_name, last_name) FROM stdin;
1	Michael	P.
2	Shawn	M.
3	Kathleen	P.
4	Jimmy	C.
5	Katherine	R.
6	Sarah	R.
7	Martin	M.
8	Frank	R.
9	Jennifer	F.
10	Henry	W.
11	Fred	S.
12	Amy	D.
13	Kathleen	M.
14	Steve	F.
15	Teresa	H.
16	Amanda	H.
17	Kimberly	R.
18	Johnny	K.
19	Virginia	F.
20	Anna	A.
21	Willie	H.
22	Sean	H.
23	Mildred	A.
24	David	G.
25	Victor	H.
26	Aaron	R.
27	Benjamin	B.
28	Lisa	W.
29	Benjamin	K.
30	Christina	W.
31	Jane	G.
32	Thomas	O.
33	Katherine	M.
34	Jennifer	S.
35	Sara	T.
36	Harold	O.
37	Shirley	J.
38	Dennis	J.
39	Louise	W.
40	Maria	A.
41	Gloria	C.
42	Diana	S.
43	Kelly	N.
44	Jane	R.
45	Scott	B.
46	Norma	C.
47	Marie	P.
48	Lillian	C.
49	Judy	N.
50	Billy	L.
51	Howard	R.
52	Laura	F.
53	Anne	B.
54	Rose	M.
55	Nicholas	R.
56	Joshua	K.
57	Paul	W.
58	Kathryn	K.
59	Adam	A.
60	Norma	W.
61	Timothy	R.
62	Elizabeth	P.
63	Edward	G.
64	David	C.
65	Brenda	W.
66	Adam	W.
67	Michael	H.
68	Jesse	E.
69	Janet	P.
70	Helen	F.
71	Gerald	C.
72	Kathryn	O.
73	Alan	B.
74	Harry	A.
75	Andrea	H.
76	Barbara	W.
77	Anne	W.
78	Harry	H.
79	Jack	R.
80	Phillip	H.
81	Shirley	H.
82	Arthur	D.
83	Virginia	R.
84	Christina	R.
85	Theresa	M.
86	Jason	C.
87	Phillip	B.
88	Adam	T.
89	Margaret	J.
90	Paul	P.
91	Todd	W.
92	Willie	O.
93	Frances	R.
94	Gregory	H.
95	Lisa	P.
96	Jacqueline	A.
97	Shirley	D.
98	Nicole	M.
99	Mary	G.
100	Jean	M.
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: demo_user
--

COPY public.orders (id, customer_id, order_date, status) FROM stdin;
1	1	2018-01-01	returned
2	3	2018-01-02	completed
3	94	2018-01-04	completed
4	50	2018-01-05	completed
5	64	2018-01-05	completed
6	54	2018-01-07	completed
7	88	2018-01-09	completed
8	2	2018-01-11	returned
9	53	2018-01-12	completed
10	7	2018-01-14	completed
11	99	2018-01-14	completed
12	59	2018-01-15	completed
13	84	2018-01-17	completed
14	40	2018-01-17	returned
15	25	2018-01-17	completed
16	39	2018-01-18	completed
17	71	2018-01-18	completed
18	64	2018-01-20	returned
19	54	2018-01-22	completed
20	20	2018-01-23	completed
21	71	2018-01-23	completed
22	86	2018-01-24	completed
23	22	2018-01-26	return_pending
24	3	2018-01-27	completed
25	51	2018-01-28	completed
26	32	2018-01-28	completed
27	94	2018-01-29	completed
28	8	2018-01-29	completed
29	57	2018-01-31	completed
30	69	2018-02-02	completed
31	16	2018-02-02	completed
32	28	2018-02-04	completed
33	42	2018-02-04	completed
34	38	2018-02-06	completed
35	80	2018-02-08	completed
36	85	2018-02-10	completed
37	1	2018-02-10	completed
38	51	2018-02-10	completed
39	26	2018-02-11	completed
40	33	2018-02-13	completed
41	99	2018-02-14	completed
42	92	2018-02-16	completed
43	31	2018-02-17	completed
44	66	2018-02-17	completed
45	22	2018-02-17	completed
46	6	2018-02-19	completed
47	50	2018-02-20	completed
48	27	2018-02-21	completed
49	35	2018-02-21	completed
50	51	2018-02-23	completed
51	71	2018-02-24	completed
52	54	2018-02-25	return_pending
53	34	2018-02-26	completed
54	54	2018-02-26	completed
55	18	2018-02-27	completed
56	79	2018-02-28	completed
57	93	2018-03-01	completed
58	22	2018-03-01	completed
59	30	2018-03-02	completed
60	12	2018-03-03	completed
61	63	2018-03-03	completed
62	57	2018-03-05	completed
63	70	2018-03-06	completed
64	13	2018-03-07	completed
65	26	2018-03-08	completed
66	36	2018-03-10	completed
67	79	2018-03-11	completed
68	53	2018-03-11	completed
69	3	2018-03-11	completed
70	8	2018-03-12	completed
71	42	2018-03-12	shipped
72	30	2018-03-14	shipped
73	19	2018-03-16	completed
74	9	2018-03-17	shipped
75	69	2018-03-18	completed
76	25	2018-03-20	completed
77	35	2018-03-21	shipped
78	90	2018-03-23	shipped
79	52	2018-03-23	shipped
80	11	2018-03-23	shipped
81	76	2018-03-23	shipped
82	46	2018-03-24	shipped
83	54	2018-03-24	shipped
84	70	2018-03-26	placed
85	47	2018-03-26	shipped
86	68	2018-03-26	placed
87	46	2018-03-27	placed
88	91	2018-03-27	shipped
89	21	2018-03-28	placed
90	66	2018-03-30	shipped
91	47	2018-03-31	placed
92	84	2018-04-02	placed
93	66	2018-04-03	placed
94	63	2018-04-03	placed
95	27	2018-04-04	placed
96	90	2018-04-06	placed
97	89	2018-04-07	placed
98	41	2018-04-07	placed
99	85	2018-04-09	placed
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: demo_user
--

COPY public.payments (id, order_id, payment_method, amount) FROM stdin;
1	1	credit_card	1000.00
2	2	credit_card	2000.00
3	3	coupon	100.00
4	4	coupon	2500.00
5	5	bank_transfer	1700.00
6	6	credit_card	600.00
7	7	credit_card	1600.00
8	8	credit_card	2300.00
9	9	gift_card	2300.00
10	9	bank_transfer	0.00
11	10	bank_transfer	2600.00
12	11	credit_card	2700.00
13	12	credit_card	100.00
14	13	credit_card	500.00
15	13	bank_transfer	1400.00
16	14	bank_transfer	300.00
17	15	coupon	2200.00
18	16	credit_card	1000.00
19	17	bank_transfer	200.00
20	18	credit_card	500.00
21	18	credit_card	800.00
22	19	gift_card	600.00
23	20	bank_transfer	1500.00
24	21	credit_card	1200.00
25	22	bank_transfer	800.00
26	23	gift_card	2300.00
27	24	coupon	2600.00
28	25	bank_transfer	2000.00
29	25	credit_card	2200.00
30	25	coupon	1600.00
31	26	credit_card	3000.00
32	27	credit_card	2300.00
33	28	bank_transfer	1900.00
34	29	bank_transfer	1200.00
35	30	credit_card	1300.00
36	31	credit_card	1200.00
37	32	credit_card	300.00
38	33	credit_card	2200.00
39	34	bank_transfer	1500.00
40	35	credit_card	2900.00
41	36	bank_transfer	900.00
42	37	credit_card	2300.00
43	38	credit_card	1500.00
44	39	bank_transfer	800.00
45	40	credit_card	1400.00
46	41	credit_card	1700.00
47	42	coupon	1700.00
48	43	gift_card	1800.00
49	44	gift_card	1100.00
50	45	bank_transfer	500.00
51	46	bank_transfer	800.00
52	47	credit_card	2200.00
53	48	bank_transfer	300.00
54	49	credit_card	600.00
55	49	credit_card	900.00
56	50	credit_card	2600.00
57	51	credit_card	2900.00
58	51	credit_card	100.00
59	52	bank_transfer	1500.00
60	53	credit_card	300.00
61	54	credit_card	1800.00
62	54	bank_transfer	1100.00
63	55	credit_card	2900.00
64	56	credit_card	400.00
65	57	bank_transfer	200.00
66	58	coupon	1800.00
67	58	gift_card	600.00
68	59	gift_card	2800.00
69	60	credit_card	400.00
70	61	bank_transfer	1600.00
71	62	gift_card	1400.00
72	63	credit_card	2900.00
73	64	bank_transfer	2600.00
74	65	credit_card	0.00
75	66	credit_card	2800.00
76	67	bank_transfer	400.00
77	67	credit_card	1900.00
78	68	credit_card	1600.00
79	69	credit_card	1900.00
80	70	credit_card	2600.00
81	71	credit_card	500.00
82	72	credit_card	2900.00
83	73	bank_transfer	300.00
84	74	credit_card	3000.00
85	75	credit_card	1900.00
86	76	coupon	200.00
87	77	credit_card	0.00
88	77	bank_transfer	1900.00
89	78	bank_transfer	2600.00
90	79	credit_card	1800.00
91	79	credit_card	900.00
92	80	gift_card	300.00
93	81	coupon	200.00
94	82	credit_card	800.00
95	83	credit_card	100.00
96	84	bank_transfer	2500.00
97	85	bank_transfer	1700.00
98	86	coupon	2300.00
99	87	gift_card	3000.00
100	87	credit_card	2600.00
101	88	credit_card	2900.00
102	89	bank_transfer	2200.00
103	90	bank_transfer	200.00
104	91	credit_card	1900.00
105	92	bank_transfer	1500.00
106	92	coupon	200.00
107	93	gift_card	2600.00
108	94	coupon	700.00
109	95	coupon	2400.00
110	96	gift_card	1700.00
111	97	bank_transfer	1400.00
112	98	bank_transfer	1000.00
113	99	credit_card	2400.00
\.


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: orders fk_customer; Type: FK CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: payments fk_orders; Type: FK CONSTRAINT; Schema: public; Owner: demo_user
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- PostgreSQL database dump complete
--

