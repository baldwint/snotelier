--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: forecasts; Type: TABLE; Schema: public; Owner: tkb
--

CREATE TABLE forecasts (
    forecast_id integer NOT NULL,
    date text,
    datetime text,
    datetime_utc time without time zone,
    author text
);


ALTER TABLE forecasts OWNER TO tkb;

--
-- Name: region_index; Type: TABLE; Schema: public; Owner: tkb
--

CREATE TABLE region_index (
    forecast_id integer NOT NULL,
    region text NOT NULL,
    report_id integer
);


ALTER TABLE region_index OWNER TO tkb;

--
-- Name: region_index_forecast_id_seq; Type: SEQUENCE; Schema: public; Owner: tkb
--

CREATE SEQUENCE region_index_forecast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE region_index_forecast_id_seq OWNER TO tkb;

--
-- Name: region_index_forecast_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tkb
--

ALTER SEQUENCE region_index_forecast_id_seq OWNED BY region_index.forecast_id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: tkb
--

CREATE TABLE reports (
    report_id integer NOT NULL,
    datetime text,
    datetime_utc timestamp without time zone,
    author text,
    region text,
    summary text,
    treeline_above text,
    treeline_near text,
    treeline_below text
);


ALTER TABLE reports OWNER TO tkb;

--
-- Name: forecast_id; Type: DEFAULT; Schema: public; Owner: tkb
--

ALTER TABLE ONLY region_index ALTER COLUMN forecast_id SET DEFAULT nextval('region_index_forecast_id_seq'::regclass);


--
-- Data for Name: forecasts; Type: TABLE DATA; Schema: public; Owner: tkb
--

COPY forecasts (forecast_id, date, datetime, datetime_utc, author) FROM stdin;
421	Oct. 2, 2015	11:11 AM PST Tuesday, November 24, 2015	19:11:00	Dennis D'Amico
420	June 25, 2015	2:14 PM PST Wednesday, June 24, 2015	21:14:00	Dennis D'Amico
418	April 28, 2015	9:11 AM PST Monday, April 27, 2015	16:11:00	Kenny Kramer
417	April 26, 2015	6:00 PM PST Saturday, April 25, 2015	01:00:00	Kenny Kramer
416	April 25, 2015	6:00 PM PST Friday, April 24, 2015	01:00:00	Garth Ferber
415	April 21, 2015	10:53 AM PST Monday, April 20, 2015	17:53:00	Dennis D'Amico
414	April 19, 2015	6:00 PM PST Saturday, April 18, 2015	01:00:00	Garth Ferber
413	April 18, 2015	6:00 PM PST Friday, April 17, 2015	01:00:00	Garth Ferber
412	April 17, 2015	6:50 PM PST Thursday, April 16, 2015	01:50:00	Dennis D'Amico
411	April 16, 2015	6:00 PM PST Wednesday, April 15, 2015	01:00:00	Dennis D'Amico
457	Dec. 28, 2015	6:00 PM PST Sunday, December 27, 2015	02:00:00	Dennis D'Amico
410	April 14, 2015	3:56 PM PST Monday, April 13, 2015	22:56:00	Garth Ferber
408	April 12, 2015	6:00 PM PST Saturday, April 11, 2015	01:00:00	Kenny Kramer
407	April 11, 2015	6:00 PM PST Friday, April 10, 2015	01:00:00	Dennis D'Amico
406	April 10, 2015	6:00 PM PST Thursday, April 9, 2015	01:00:00	Dennis D'Amico
405	April 9, 2015	6:00 PM PST Wednesday, April 8, 2015	01:00:00	Garth Ferber
404	April 8, 2015	6:00 PM PST Tuesday, April 7, 2015	01:00:00	Kenny Kramer
403	April 7, 2015	6:00 PM PST Monday, April 6, 2015	01:00:00	Kenny Kramer
402	April 6, 2015	6:00 PM PST Sunday, April 5, 2015	01:00:00	Dennis D'Amico
401	April 5, 2015	6:00 PM PST Saturday, April 4, 2015	01:00:00	Dennis D'Amico
400	April 4, 2015	6:00 PM PST Friday, April 3, 2015	01:00:00	Garth Ferber
399	April 3, 2015	7:09 PM PST Thursday, April 2, 2015	02:09:00	Garth Ferber
398	April 3, 2015	6:00 PM PST Thursday, April 2, 2015	01:00:00	Garth Ferber
397	April 2, 2015	6:20 PM PST Wednesday, April 1, 2015	01:20:00	Kenny Kramer
394	April 1, 2015	6:02 PM PST Tuesday, March 31, 2015	01:02:00	Dennis D'Amico
393	March 31, 2015	7:39 PM PST Monday, March 30, 2015	02:39:00	Dennis D'Amico
391	March 30, 2015	6:00 PM PST Sunday, March 29, 2015	01:00:00	Garth Ferber
388	March 28, 2015	9:01 AM PST Saturday, March 28, 2015	16:01:00	Garth Ferber
386	March 27, 2015	6:00 PM PST Thursday, March 26, 2015	01:00:00	Kenny Kramer
384	March 25, 2015	6:00 PM PST Tuesday, March 24, 2015	01:00:00	Garth Ferber
382	March 24, 2015	6:00 PM PST Monday, March 23, 2015	01:00:00	Garth Ferber
379	March 21, 2015	6:00 PM PST Friday, March 20, 2015	01:00:00	Dennis D'Amico
377	March 19, 2015	6:30 PM PST Wednesday, March 18, 2015	01:30:00	Garth Ferber
375	March 17, 2015	6:00 PM PST Monday, March 16, 2015	01:00:00	Kenny Kramer
372	March 14, 2015	6:00 PM PST Friday, March 13, 2015	01:00:00	Garth Ferber
370	March 13, 2015	6:00 PM PST Thursday, March 12, 2015	01:00:00	Garth Ferber
368	March 11, 2015	6:00 PM PST Tuesday, March 10, 2015	01:00:00	Dennis D'Amico
366	March 9, 2015	6:00 PM PST Sunday, March 8, 2015	01:00:00	Garth Ferber
363	March 6, 2015	6:00 PM PST Thursday, March 5, 2015	02:00:00	Kenny Kramer
361	March 4, 2015	6:00 PM PST Tuesday, March 3, 2015	02:00:00	Garth Ferber
359	March 2, 2015	6:00 PM PST Sunday, March 1, 2015	02:00:00	Kenny Kramer
357	Feb. 28, 2015	6:29 PM PST Friday, February 27, 2015	02:29:00	Dennis D'Amico
354	Feb. 25, 2015	6:00 PM PST Tuesday, February 24, 2015	02:00:00	Kenny Kramer
352	Feb. 23, 2015	6:00 PM PST Sunday, February 22, 2015	02:00:00	Dennis D'Amico
350	Feb. 22, 2015	6:00 PM PST Saturday, February 21, 2015	02:00:00	Dennis D'Amico
347	Feb. 20, 2015	6:00 PM PST Thursday, February 19, 2015	02:00:00	Garth Ferber
345	Feb. 18, 2015	6:00 PM PST Tuesday, February 17, 2015	02:00:00	Dennis D'Amico
342	Feb. 15, 2015	6:00 PM PST Saturday, February 14, 2015	02:00:00	Garth Ferber
340	Feb. 13, 2015	6:00 PM PST Thursday, February 12, 2015	02:00:00	Kenny Kramer
337	Feb. 10, 2015	6:22 AM PST Tuesday, February 10, 2015	14:22:00	Garth Ferber
335	Feb. 10, 2015	6:12 PM PST Monday, February 9, 2015	02:12:00	Garth Ferber
333	Feb. 8, 2015	6:00 PM PST Saturday, February 7, 2015	02:00:00	Kenny Kramer
331	Feb. 6, 2015	6:00 PM PST Thursday, February 5, 2015	02:00:00	Dennis D'Amico
328	Feb. 4, 2015	6:00 PM PST Tuesday, February 3, 2015	02:00:00	Garth Ferber
326	Feb. 2, 2015	6:00 PM PST Sunday, February 1, 2015	02:00:00	Dennis D'Amico
324	Jan. 31, 2015	6:00 PM PST Friday, January 30, 2015	02:00:00	Kenny Kramer
322	Jan. 29, 2015	4:51 PM PST Wednesday, January 28, 2015	00:51:00	Garth Ferber
318	Jan. 26, 2015	6:00 PM PST Sunday, January 25, 2015	02:00:00	Dennis D'Amico
316	Jan. 24, 2015	6:00 PM PST Friday, January 23, 2015	02:00:00	Garth Ferber
314	Jan. 22, 2015	6:00 PM PST Wednesday, January 21, 2015	02:00:00	Garth Ferber
310	Jan. 19, 2015	6:00 PM PST Sunday, January 18, 2015	02:00:00	Garth Ferber
308	Jan. 18, 2015	6:00 PM PST Saturday, January 17, 2015	02:00:00	Garth Ferber
306	Jan. 16, 2015	6:33 AM PST Friday, January 16, 2015	14:33:00	Kenny Kramer
301	Jan. 13, 2015	6:00 PM PST Monday, January 12, 2015	02:00:00	Garth Ferber
299	Jan. 11, 2015	6:00 PM PST Saturday, January 10, 2015	02:00:00	Kenny Kramer
295	Jan. 9, 2015	5:40 PM PST Thursday, January 8, 2015	01:40:00	Dennis D'Amico
292	Jan. 7, 2015	6:00 PM PST Tuesday, January 6, 2015	02:00:00	Kenny Kramer
290	Jan. 5, 2015	5:35 PM PST Sunday, January 4, 2015	01:35:00	Dennis D'Amico
247	May 9, 2014	4:37 PM PST Thursday, May 8, 2014	23:37:00	Dennis D'Amico
244	May 3, 2014	6:04 PM PST Friday, May 2, 2014	01:04:00	Dennis D'Amico
241	April 30, 2014	6:05 PM PST Tuesday, April 29, 2014	01:05:00	Kenny Kramer
238	April 27, 2014	5:23 PM PST Saturday, April 26, 2014	00:23:00	Dennis D'Amico
236	April 25, 2014	9:36 PM PST Thursday, April 24, 2014	04:36:00	Garth Ferber
233	April 23, 2014	8:44 AM PST Wednesday, April 23, 2014	15:44:00	Garth Ferber
231	April 21, 2014	7:30 AM PST Monday, April 21, 2014	14:30:00	Kenny Kramer
229	April 20, 2014	6:00 PM PST Saturday, April 19, 2014	01:00:00	Garth Ferber
227	April 19, 2014	7:42 PM PST Friday, April 18, 2014	02:42:00	Kenny Kramer
224	April 16, 2014	6:00 PM PST Tuesday, April 15, 2014	01:00:00	Garth Ferber
221	April 14, 2014	11:03 AM PST Monday, April 14, 2014	18:03:00	Garth Ferber
218	April 12, 2014	6:00 PM PST Friday, April 11, 2014	01:00:00	Kenny Kramer
216	April 10, 2014	6:00 PM PST Wednesday, April 9, 2014	01:00:00	Garth Ferber
214	April 9, 2014	6:00 PM PST Tuesday, April 8, 2014	01:00:00	Garth Ferber
212	April 7, 2014	6:00 PM PST Sunday, April 6, 2014	01:00:00	Dennis D'Amico
210	April 6, 2014	6:00 PM PST Saturday, April 5, 2014	01:00:00	Kenny Kramer
207	April 4, 2014	3:53 AM PST Friday, April 4, 2014	10:53:00	Garth Ferber
204	April 3, 2014	6:00 PM PST Wednesday, April 2, 2014	01:00:00	Dennis D'Amico
202	April 1, 2014	6:06 PM PST Monday, March 31, 2014	01:06:00	Kenny Kramer
200	March 30, 2014	10:47 AM PST Sunday, March 30, 2014	17:47:00	Garth Ferber
287	Jan. 2, 2015	6:00 PM PST Thursday, January 1, 2015	02:00:00	Garth Ferber
285	Dec. 31, 2014	6:23 PM PST Tuesday, December 30, 2014	02:23:00	Kenny Kramer
282	Dec. 29, 2014	6:00 PM PST Sunday, December 28, 2014	02:00:00	Garth Ferber
280	Dec. 28, 2014	6:00 PM PST Saturday, December 27, 2014	02:00:00	Garth Ferber
278	Dec. 26, 2014	6:00 PM PST Thursday, December 25, 2014	02:00:00	Dennis D'Amico
274	Dec. 24, 2014	6:38 AM PST Tuesday, December 23, 2014	14:38:00	Garth Ferber
272	Dec. 22, 2014	6:00 PM PST Sunday, December 21, 2014	02:00:00	Kenny Kramer
270	Dec. 20, 2014	9:36 PM PST Friday, December 19, 2014	05:36:00	Dennis D'Amico
261	Oct. 25, 2014	8:38 AM PST Wednesday, November 19, 2014	16:38:00	Alex Tokar
258	June 3, 2014	10:11 AM PST Monday, June 2, 2014	17:11:00	Kenny Kramer
256	May 28, 2014	10:57 AM PST Tuesday, May 27, 2014	17:57:00	Dennis D'Amico
254	May 19, 2014	11:42 AM PST Tuesday, May 20, 2014	18:42:00	Dennis D'Amico
251	May 14, 2014	2:30 PM PST Tuesday, May 13, 2014	21:30:00	Dennis D'Amico
249	May 13, 2014	8:15 AM PST Monday, May 12, 2014	15:15:00	Dennis D'Amico
198	March 30, 2014	8:07 AM PST Saturday, March 29, 2014	15:07:00	Garth Ferber
195	March 28, 2014	6:54 PM PST Thursday, March 27, 2014	01:54:00	Dennis D'Amico
193	March 26, 2014	6:00 PM PST Tuesday, March 25, 2014	01:00:00	Garth Ferber
191	March 25, 2014	6:00 PM PST Monday, March 24, 2014	01:00:00	Garth Ferber
189	March 23, 2014	6:45 AM PST Sunday, March 23, 2014	13:45:00	Dennis D'Amico
186	March 21, 2014	6:00 PM PST Thursday, March 20, 2014	01:00:00	Kenny Kramer
184	March 19, 2014	6:00 PM PST Tuesday, March 18, 2014	01:00:00	Dennis D'Amico
181	March 17, 2014	6:00 PM PST Sunday, March 16, 2014	01:00:00	Kenny Kramer
179	March 15, 2014	7:18 PM PST Friday, March 14, 2014	02:18:00	Dennis D'Amico
176	March 12, 2014	6:10 PM PST Tuesday, March 11, 2014	01:10:00	Kenny Kramer
174	March 10, 2014	8:51 PM PST Sunday, March 9, 2014	03:51:00	Garth Ferber
172	March 9, 2014	7:07 AM PST Sunday, March 9, 2014	14:07:00	Garth Ferber
170	March 8, 2014	6:00 PM PST Friday, March 7, 2014	02:00:00	Dennis D'Amico
167	March 6, 2014	9:33 PM PST Wednesday, March 5, 2014	05:33:00	Kenny Kramer
165	March 4, 2014	6:00 PM PST Monday, March 3, 2014	02:00:00	Garth Ferber
163	March 3, 2014	6:11 PM PST Sunday, March 2, 2014	02:11:00	Dennis D'Amico
161	March 2, 2014	12:37 PM PST Sunday, March 2, 2014	20:37:00	Dennis D'Amico
158	Feb. 28, 2014	6:13 PM PST Thursday, February 27, 2014	02:13:00	Dennis D'Amico
156	Feb. 26, 2014	6:32 PM PST Tuesday, February 25, 2014	02:32:00	Kenny Kramer
154	Feb. 24, 2014	6:00 PM PST Sunday, February 23, 2014	02:00:00	Dennis D'Amico
151	Feb. 21, 2014	6:00 PM PST Thursday, February 20, 2014	02:00:00	Garth Ferber
147	Feb. 19, 2014	3:04 PM PST Wednesday, February 19, 2014	23:04:00	Kenny Kramer
145	Feb. 17, 2014	6:00 PM PST Sunday, February 16, 2014	02:00:00	Garth Ferber
142	Feb. 15, 2014	7:32 PM PST Friday, February 14, 2014	03:32:00	Kenny Kramer
140	Feb. 13, 2014	7:02 PM PST Wednesday, February 12, 2014	03:02:00	Dennis D'Amico
137	Feb. 11, 2014	6:00 PM PST Monday, February 10, 2014	02:00:00	Garth Ferber
135	Feb. 9, 2014	8:03 AM PST Sunday, February 9, 2014	16:03:00	Kenny Kramer
133	Feb. 8, 2014	9:05 AM PST Friday, February 7, 2014	17:05:00	Dennis D'Amico
131	Feb. 6, 2014	9:25 AM PST Thursday, February 6, 2014	17:25:00	Dennis D'Amico
129	Feb. 4, 2014	6:14 PM PST Monday, February 3, 2014	02:14:00	Kenny Kramer
123	Feb. 2, 2014	8:44 PM PST Saturday, February 1, 2014	04:44:00	Dennis D'Amico
121	Jan. 31, 2014	6:00 PM PST Thursday, January 30, 2014	02:00:00	Garth Ferber
119	Jan. 29, 2014	8:37 PM PST Tuesday, January 28, 2014	04:37:00	Dennis D'Amico
115	Jan. 26, 2014	6:00 PM PST Saturday, January 25, 2014	02:00:00	Garth Ferber
113	Jan. 24, 2014	6:00 PM PST Thursday, January 23, 2014	02:00:00	Kenny Kramer
246	May 5, 2014	11:05 AM PST Monday, May 5, 2014	18:05:00	Dennis D'Amico
243	May 2, 2014	6:10 PM PST Thursday, May 1, 2014	01:10:00	Dennis D'Amico
109	Jan. 22, 2014	6:00 PM PST Tuesday, January 21, 2014	02:00:00	Garth Ferber
107	Jan. 20, 2014	6:00 PM PST Sunday, January 19, 2014	02:00:00	Kenny Kramer
103	Jan. 17, 2014	6:10 PM PST Thursday, January 16, 2014	02:10:00	Dennis D'Amico
100	Jan. 15, 2014	6:00 PM PST Tuesday, January 14, 2014	02:00:00	Kenny Kramer
98	Jan. 13, 2014	6:22 PM PST Sunday, January 12, 2014	02:22:00	Dennis D'Amico
96	Jan. 12, 2014	6:06 PM PST Saturday, January 11, 2014	02:06:00	Dennis D'Amico
93	Jan. 10, 2014	8:54 AM PST Friday, January 10, 2014	16:54:00	Garth Ferber
89	Jan. 9, 2014	6:00 PM PST Wednesday, January 8, 2014	02:00:00	Kenny Kramer
86	Jan. 7, 2014	5:32 PM PST Monday, January 6, 2014	01:32:00	Dennis D'Amico
84	Jan. 5, 2014	6:00 PM PST Saturday, January 4, 2014	02:00:00	Garth Ferber
82	Jan. 3, 2014	6:00 PM PST Thursday, January 2, 2014	02:00:00	Kenny Kramer
80	Jan. 1, 2014	6:00 PM PST Tuesday, December 31, 2013	02:00:00	Garth Ferber
76	Dec. 29, 2013	6:00 PM PST Saturday, December 28, 2013	02:00:00	Kenny Kramer
71	Dec. 27, 2013	6:00 PM PST Thursday, December 26, 2013	02:00:00	Dennis D'Amico
69	Dec. 25, 2013	6:00 PM PST Tuesday, December 24, 2013	02:00:00	Kenny Kramer
66	Dec. 22, 2013	6:00 PM PST Saturday, December 21, 2013	02:00:00	Garth Ferber
63	Dec. 21, 2013	6:31 PM PST Friday, December 20, 2013	02:31:00	Kenny Kramer
492	Jan. 27, 2016	6:00 PM PST Tuesday, January 26, 2016	02:00:00	Garth Ferber
61	Dec. 20, 2013	6:00 PM PST Thursday, December 19, 2013	02:00:00	Kenny Kramer
58	Dec. 17, 2013	3:47 PM PST Monday, December 16, 2013	23:47:00	Garth Ferber
56	Dec. 16, 2013	6:59 PM PST Sunday, December 15, 2013	02:59:00	Garth Ferber
491	Jan. 26, 2016	6:00 PM PST Monday, January 25, 2016	02:00:00	Garth Ferber
490	Jan. 25, 2016	6:00 PM PST Sunday, January 24, 2016	02:00:00	Garth Ferber
489	Jan. 24, 2016	6:00 PM PST Saturday, January 23, 2016	02:00:00	Kenny Kramer
488	Jan. 23, 2016	9:16 PM PST Friday, January 22, 2016	05:16:00	Kenny Kramer
487	Jan. 22, 2016	6:33 PM PST Thursday, January 21, 2016	02:33:00	Dennis D'Amico
486	Jan. 21, 2016	7:57 AM PST Thursday, January 21, 2016	15:57:00	Dennis D'Amico
485	Jan. 21, 2016	11:43 PM PST Wednesday, January 20, 2016	07:43:00	Alex Tokar
484	Jan. 21, 2016	6:33 PM PST Wednesday, January 20, 2016	02:33:00	Dennis D'Amico
483	Jan. 20, 2016	6:47 PM PST Tuesday, January 19, 2016	02:47:00	Garth Ferber
482	Jan. 19, 2016	6:00 PM PST Monday, January 18, 2016	02:00:00	Kenny Kramer
481	Jan. 18, 2016	6:44 PM PST Sunday, January 17, 2016	02:44:00	Dennis D'Amico
480	Jan. 17, 2016	6:38 PM PST Saturday, January 16, 2016	02:38:00	Dennis D'Amico
479	Jan. 16, 2016	6:16 PM PST Friday, January 15, 2016	02:16:00	Garth Ferber
478	Jan. 15, 2016	3:37 PM PST Friday, January 15, 2016	23:37:00	Garth Ferber
477	Jan. 15, 2016	11:19 PM PST Thursday, January 14, 2016	07:19:00	Kenny Kramer
476	Jan. 14, 2016	6:01 PM PST Wednesday, January 13, 2016	02:01:00	Kenny Kramer
475	Jan. 13, 2016	6:00 PM PST Tuesday, January 12, 2016	02:00:00	Dennis D'Amico
474	Jan. 12, 2016	8:27 AM PST Tuesday, January 12, 2016	16:27:00	Dennis D'Amico
473	Jan. 12, 2016	6:00 PM PST Monday, January 11, 2016	02:00:00	Dennis D'Amico
472	Jan. 11, 2016	6:00 PM PST Sunday, January 10, 2016	02:00:00	Garth Ferber
471	Jan. 10, 2016	6:00 PM PST Saturday, January 9, 2016	02:00:00	Garth Ferber
470	Jan. 9, 2016	6:02 PM PST Friday, January 8, 2016	02:02:00	Kenny Kramer
469	Jan. 8, 2016	6:00 PM PST Thursday, January 7, 2016	02:00:00	Kenny Kramer
468	Jan. 7, 2016	6:04 PM PST Wednesday, January 6, 2016	02:04:00	Dennis D'Amico
467	Jan. 6, 2016	6:18 PM PST Tuesday, January 5, 2016	02:18:00	Garth Ferber
466	Jan. 5, 2016	6:00 PM PST Monday, January 4, 2016	02:00:00	Garth Ferber
465	Jan. 4, 2016	10:29 AM PST Monday, January 4, 2016	18:29:00	Garth Ferber
464	Jan. 4, 2016	6:00 PM PST Sunday, January 3, 2016	02:00:00	Kenny Kramer
463	Jan. 3, 2016	6:00 PM PST Saturday, January 2, 2016	02:00:00	Kenny Kramer
462	Jan. 2, 2016	7:09 PM PST Friday, January 1, 2016	03:09:00	Dennis D'Amico
461	Jan. 1, 2016	6:00 PM PST Thursday, December 31, 2015	02:00:00	Dennis D'Amico
455	Dec. 26, 2015	6:00 PM PST Friday, December 25, 2015	02:00:00	Garth Ferber
453	Dec. 24, 2015	8:06 PM PST Wednesday, December 23, 2015	04:06:00	Garth Ferber
450	Dec. 23, 2015	6:00 PM PST Tuesday, December 22, 2015	02:00:00	Kenny Kramer
448	Dec. 21, 2015	6:25 PM PST Sunday, December 20, 2015	02:25:00	Garth Ferber
446	Dec. 19, 2015	6:00 PM PST Friday, December 18, 2015	02:00:00	Kenny Kramer
443	Dec. 16, 2015	6:00 PM PST Tuesday, December 15, 2015	02:00:00	Garth Ferber
441	Dec. 15, 2015	6:00 PM PST Monday, December 14, 2015	02:00:00	Garth Ferber
439	Dec. 13, 2015	6:00 PM PST Saturday, December 12, 2015	02:00:00	Kenny Kramer
436	Dec. 10, 2015	1:55 PM PST Thursday, December 10, 2015	21:55:00	Dennis D'Amico
434	Dec. 10, 2015	6:00 PM PST Wednesday, December 9, 2015	02:00:00	Garth Ferber
431	Dec. 9, 2015	7:06 PM PST Tuesday, December 8, 2015	03:06:00	Kenny Kramer
54	Dec. 14, 2013	5:17 PM PST Friday, December 13, 2013	01:17:00	Kenny Kramer
52	Dec. 14, 2013	6:00 PM PST Friday, December 13, 2013	02:00:00	Kenny Kramer
50	Dec. 14, 2013	6:00 PM PST Friday, December 13, 2013	02:00:00	Dennis D'Amico
39	Dec. 11, 2013	9:24 PM PST Tuesday, December 10, 2013	05:24:00	Kenny Kramer
37	Dec. 11, 2013	2:36 PM PST Tuesday, December 10, 2013	22:36:00	Kenny Kramer
460	Dec. 31, 2015	6:00 PM PST Wednesday, December 30, 2015	02:00:00	Garth Ferber
459	Dec. 30, 2015	6:10 PM PST Tuesday, December 29, 2015	02:10:00	Kenny Kramer
458	Dec. 29, 2015	6:00 PM PST Monday, December 28, 2015	02:00:00	Kenny Kramer
456	Dec. 27, 2015	6:00 PM PST Saturday, December 26, 2015	02:00:00	Dennis D'Amico
454	Dec. 25, 2015	6:00 PM PST Thursday, December 24, 2015	02:00:00	Garth Ferber
452	Dec. 24, 2015	6:00 PM PST Wednesday, December 23, 2015	02:00:00	Garth Ferber
451	Dec. 23, 2015	8:26 AM PST Wednesday, December 23, 2015	16:26:00	Dennis D'Amico
449	Dec. 22, 2015	6:00 PM PST Monday, December 21, 2015	02:00:00	Kenny Kramer
447	Dec. 20, 2015	6:00 PM PST Saturday, December 19, 2015	02:00:00	Garth Ferber
445	Dec. 18, 2015	6:00 PM PST Thursday, December 17, 2015	02:00:00	Kenny Kramer
444	Dec. 17, 2015	6:53 PM PST Wednesday, December 16, 2015	02:53:00	Dennis D'Amico
442	Dec. 15, 2015	10:11 AM PST Tuesday, December 15, 2015	18:11:00	Garth Ferber
440	Dec. 14, 2015	5:58 PM PST Sunday, December 13, 2015	01:58:00	Kenny Kramer
438	Dec. 12, 2015	6:00 PM PST Friday, December 11, 2015	02:00:00	Dennis D'Amico
437	Dec. 11, 2015	6:21 PM PST Thursday, December 10, 2015	02:21:00	Dennis D'Amico
435	Dec. 10, 2015	1:14 PM PST Thursday, December 10, 2015	21:14:00	Dennis D'Amico
433	Dec. 9, 2015	8:38 AM PST Wednesday, December 9, 2015	16:38:00	Garth Ferber
430	Dec. 8, 2015	6:22 PM PST Monday, December 7, 2015	02:22:00	Kenny Kramer
429	Dec. 7, 2015	8:03 PM PST Sunday, December 6, 2015	04:03:00	Garth Ferber
427	Dec. 6, 2015	11:07 AM PST Sunday, December 6, 2015	19:07:00	Garth Ferber
426	Dec. 6, 2015	9:10 AM PST Sunday, December 6, 2015	17:10:00	Garth Ferber
424	Dec. 6, 2015	6:00 PM PST Saturday, December 5, 2015	02:00:00	Garth Ferber
423	Dec. 5, 2015	6:12 PM PST Friday, December 4, 2015	02:12:00	Dennis D'Amico
392	March 31, 2015	6:00 PM PST Monday, March 30, 2015	01:00:00	Dennis D'Amico
390	March 29, 2015	1:56 PM PST Sunday, March 29, 2015	20:56:00	Garth Ferber
389	March 29, 2015	6:00 PM PST Saturday, March 28, 2015	01:00:00	Garth Ferber
387	March 28, 2015	6:00 PM PST Friday, March 27, 2015	01:00:00	Kenny Kramer
385	March 26, 2015	6:00 PM PST Wednesday, March 25, 2015	01:00:00	Dennis D'Amico
383	March 24, 2015	6:50 AM PST Tuesday, March 24, 2015	13:50:00	Garth Ferber
381	March 23, 2015	6:00 PM PST Sunday, March 22, 2015	01:00:00	Kenny Kramer
380	March 22, 2015	6:00 PM PST Saturday, March 21, 2015	01:00:00	Kenny Kramer
378	March 20, 2015	6:00 PM PST Thursday, March 19, 2015	01:00:00	Dennis D'Amico
376	March 18, 2015	6:00 PM PST Tuesday, March 17, 2015	01:00:00	Kenny Kramer
374	March 16, 2015	10:46 AM PST Monday, March 16, 2015	17:46:00	Kenny Kramer
373	March 15, 2015	6:00 PM PST Saturday, March 14, 2015	01:00:00	Dennis D'Amico
371	March 13, 2015	4:53 AM PST Friday, March 13, 2015	11:53:00	Garth Ferber
369	March 12, 2015	6:05 PM PST Wednesday, March 11, 2015	01:05:00	Kenny Kramer
367	March 10, 2015	6:00 PM PST Monday, March 9, 2015	01:00:00	Dennis D'Amico
365	March 8, 2015	6:00 PM PST Saturday, March 7, 2015	02:00:00	Garth Ferber
364	March 7, 2015	6:00 PM PST Friday, March 6, 2015	02:00:00	Kenny Kramer
362	March 5, 2015	6:00 PM PST Wednesday, March 4, 2015	02:00:00	Garth Ferber
360	March 3, 2015	6:00 PM PST Monday, March 2, 2015	02:00:00	Garth Ferber
358	March 1, 2015	6:00 PM PST Saturday, February 28, 2015	02:00:00	Kenny Kramer
356	Feb. 27, 2015	6:00 PM PST Thursday, February 26, 2015	02:00:00	Dennis D'Amico
355	Feb. 26, 2015	6:00 PM PST Wednesday, February 25, 2015	02:00:00	Dennis D'Amico
353	Feb. 24, 2015	6:00 PM PST Monday, February 23, 2015	02:00:00	Kenny Kramer
351	Feb. 22, 2015	7:23 PM PST Saturday, February 21, 2015	03:23:00	Dennis D'Amico
349	Feb. 21, 2015	6:00 PM PST Friday, February 20, 2015	02:00:00	Garth Ferber
348	Feb. 20, 2015	7:14 AM PST Friday, February 20, 2015	15:14:00	Garth Ferber
346	Feb. 19, 2015	6:00 PM PST Wednesday, February 18, 2015	02:00:00	Dennis D'Amico
344	Feb. 17, 2015	6:00 PM PST Monday, February 16, 2015	02:00:00	Dennis D'Amico
343	Feb. 16, 2015	6:00 PM PST Sunday, February 15, 2015	02:00:00	Garth Ferber
341	Feb. 14, 2015	6:00 PM PST Friday, February 13, 2015	02:00:00	Kenny Kramer
339	Feb. 12, 2015	6:00 PM PST Wednesday, February 11, 2015	02:00:00	Dennis D'Amico
338	Feb. 11, 2015	6:00 PM PST Tuesday, February 10, 2015	02:00:00	Garth Ferber
336	Feb. 10, 2015	4:54 AM PST Tuesday, February 10, 2015	12:54:00	Garth Ferber
334	Feb. 9, 2015	6:00 PM PST Sunday, February 8, 2015	02:00:00	Kenny Kramer
332	Feb. 7, 2015	6:30 PM PST Friday, February 6, 2015	02:30:00	Dennis D'Amico
330	Feb. 5, 2015	1:51 PM PST Thursday, February 5, 2015	21:51:00	Dennis D'Amico
329	Feb. 5, 2015	7:03 PM PST Wednesday, February 4, 2015	03:03:00	Garth Ferber
327	Feb. 3, 2015	6:00 PM PST Monday, February 2, 2015	02:00:00	Kenny Kramer
325	Feb. 1, 2015	6:00 PM PST Saturday, January 31, 2015	02:00:00	Dennis D'Amico
323	Jan. 30, 2015	6:00 PM PST Thursday, January 29, 2015	02:00:00	Garth Ferber
320	Jan. 28, 2015	6:15 PM PST Tuesday, January 27, 2015	02:15:00	Kenny Kramer
319	Jan. 27, 2015	6:59 PM PST Monday, January 26, 2015	02:59:00	Kenny Kramer
317	Jan. 25, 2015	6:00 PM PST Saturday, January 24, 2015	02:00:00	Dennis D'Amico
315	Jan. 23, 2015	6:00 PM PST Thursday, January 22, 2015	02:00:00	Garth Ferber
312	Jan. 21, 2015	5:49 PM PST Tuesday, January 20, 2015	01:49:00	Dennis D'Amico
311	Jan. 20, 2015	6:40 PM PST Monday, January 19, 2015	02:40:00	Dennis D'Amico
309	Jan. 18, 2015	5:00 AM PST Sunday, January 18, 2015	13:00:00	Garth Ferber
307	Jan. 17, 2015	6:12 PM PST Friday, January 16, 2015	02:12:00	Kenny Kramer
305	Jan. 15, 2015	6:00 PM PST Wednesday, January 14, 2015	02:00:00	Dennis D'Amico
298	Jan. 10, 2015	6:00 PM PST Friday, January 9, 2015	02:00:00	Dennis D'Amico
293	Jan. 7, 2015	12:12 PM PST Wednesday, January 7, 2015	20:12:00	Garth Ferber
291	Jan. 6, 2015	1:28 PM PST Tuesday, January 6, 2015	21:28:00	Kenny Kramer
289	Jan. 4, 2015	5:52 PM PST Saturday, January 3, 2015	01:52:00	Dennis D'Amico
284	Dec. 30, 2014	6:00 PM PST Monday, December 29, 2014	02:00:00	Dennis D'Amico
276	Dec. 24, 2014	8:12 PM PST Tuesday, December 23, 2014	04:12:00	Garth Ferber
273	Dec. 23, 2014	6:00 PM PST Monday, December 22, 2014	02:00:00	Garth Ferber
264	Nov. 21, 2014	3:31 PM PST Friday, December 12, 2014	23:31:00	Garth Ferber
262	Nov. 20, 2014	3:03 PM PST Wednesday, November 19, 2014	23:03:00	Kenny Kramer
260	June 21, 2014	1:56 PM PST Friday, June 20, 2014	20:56:00	Dennis D'Amico
255	May 24, 2014	12:44 PM PST Friday, May 23, 2014	19:44:00	Dennis D'Amico
253	May 16, 2014	6:00 PM PST Thursday, May 15, 2014	01:00:00	Garth Ferber
252	May 15, 2014	6:00 PM PST Wednesday, May 14, 2014	01:00:00	Garth Ferber
248	May 10, 2014	4:12 PM PST Friday, May 9, 2014	23:12:00	Garth Ferber
242	May 1, 2014	6:18 PM PST Wednesday, April 30, 2014	01:18:00	Kenny Kramer
240	April 29, 2014	6:00 PM PST Monday, April 28, 2014	01:00:00	Kenny Kramer
237	April 26, 2014	6:13 PM PST Friday, April 25, 2014	01:13:00	Dennis D'Amico
235	April 25, 2014	6:00 PM PST Thursday, April 24, 2014	01:00:00	Garth Ferber
225	April 17, 2014	6:00 PM PST Wednesday, April 16, 2014	01:00:00	Garth Ferber
222	April 15, 2014	6:00 PM PST Monday, April 14, 2014	01:00:00	Garth Ferber
217	April 11, 2014	6:00 PM PST Thursday, April 10, 2014	01:00:00	Dennis D'Amico
215	April 9, 2014	7:54 AM PST Wednesday, April 9, 2014	14:54:00	Garth Ferber
213	April 8, 2014	6:00 PM PST Monday, April 7, 2014	01:00:00	Dennis D'Amico
211	April 6, 2014	6:29 AM PST Sunday, April 6, 2014	13:29:00	Dennis D'Amico
196	March 28, 2014	6:27 AM PST Friday, March 28, 2014	13:27:00	Dennis D'Amico
187	March 22, 2014	6:00 PM PST Friday, March 21, 2014	01:00:00	Kenny Kramer
178	March 14, 2014	6:00 PM PST Thursday, March 13, 2014	01:00:00	Garth Ferber
177	March 13, 2014	6:00 PM PST Wednesday, March 12, 2014	01:00:00	Garth Ferber
175	March 11, 2014	6:21 PM PST Monday, March 10, 2014	01:21:00	Kenny Kramer
168	March 7, 2014	6:00 PM PST Thursday, March 6, 2014	02:00:00	Dennis D'Amico
164	March 3, 2014	6:16 AM PST Monday, March 3, 2014	14:16:00	Garth Ferber
160	March 2, 2014	6:00 PM PST Saturday, March 1, 2014	02:00:00	Kenny Kramer
159	March 1, 2014	12:56 AM PST Saturday, March 1, 2014	08:56:00	Kenny Kramer
157	Feb. 27, 2014	6:31 PM PST Wednesday, February 26, 2014	02:31:00	Dennis D'Amico
153	Feb. 23, 2014	6:00 PM PST Saturday, February 22, 2014	02:00:00	Dennis D'Amico
143	Feb. 16, 2014	6:12 PM PST Saturday, February 15, 2014	02:12:00	Garth Ferber
139	Feb. 12, 2014	6:00 PM PST Tuesday, February 11, 2014	02:00:00	Garth Ferber
122	Feb. 1, 2014	6:00 PM PST Friday, January 31, 2014	02:00:00	Garth Ferber
120	Jan. 30, 2014	6:18 PM PST Wednesday, January 29, 2014	02:18:00	Kenny Kramer
117	Jan. 28, 2014	10:34 AM PST Tuesday, January 28, 2014	18:34:00	Dennis D'Amico
105	Jan. 18, 2014	6:04 PM PST Friday, January 17, 2014	02:04:00	Dennis D'Amico
101	Jan. 16, 2014	10:48 AM PST Thursday, January 16, 2014	18:48:00	Dennis D'Amico
99	Jan. 14, 2014	6:00 PM PST Monday, January 13, 2014	02:00:00	Kenny Kramer
97	Jan. 13, 2014	6:13 PM PST Sunday, January 12, 2014	02:13:00	Dennis D'Amico
95	Jan. 11, 2014	9:17 AM PST Saturday, January 11, 2014	17:17:00	Dennis D'Amico
83	Jan. 4, 2014	6:00 PM PST Friday, January 3, 2014	02:00:00	Kenny Kramer
77	Dec. 30, 2013	6:00 PM PST Sunday, December 29, 2013	02:00:00	Dennis D'Amico
70	Dec. 26, 2013	6:00 PM PST Wednesday, December 25, 2013	02:00:00	Dennis D'Amico
68	Dec. 24, 2013	6:00 PM PST Monday, December 23, 2013	02:00:00	Kenny Kramer
65	Dec. 21, 2013	10:57 AM PST Saturday, December 21, 2013	18:57:00	Garth Ferber
62	Dec. 21, 2013	6:27 PM PST Friday, December 20, 2013	02:27:00	Kenny Kramer
59	Dec. 18, 2013	6:00 PM PST Tuesday, December 17, 2013	02:00:00	Dennis D'Amico
57	Dec. 17, 2013	4:22 AM PST Monday, December 16, 2013	12:22:00	Garth Ferber
55	Dec. 15, 2013	4:50 PM PST Saturday, December 14, 2013	00:50:00	Kenny Kramer
51	Dec. 14, 2013	6:00 PM PST Friday, December 13, 2013	02:00:00	Kenny Kramer
40	Dec. 12, 2013	3:26 PM PST Wednesday, December 11, 2013	23:26:00	Garth Ferber
38	Dec. 11, 2013	2:42 PM PST Tuesday, December 10, 2013	22:42:00	Kenny Kramer
302	Jan. 14, 2015	6:00 PM PST Tuesday, January 13, 2015	02:00:00	Garth Ferber
300	Jan. 12, 2015	6:00 PM PST Sunday, January 11, 2015	02:00:00	Kenny Kramer
294	Jan. 8, 2015	6:00 PM PST Wednesday, January 7, 2015	02:00:00	Garth Ferber
288	Jan. 3, 2015	6:00 PM PST Friday, January 2, 2015	02:00:00	Garth Ferber
286	Jan. 1, 2015	6:00 PM PST Wednesday, December 31, 2014	02:00:00	Kenny Kramer
283	Dec. 29, 2014	12:42 PM PST Monday, December 29, 2014	20:42:00	Dennis D'Amico
281	Dec. 28, 2014	11:42 AM PST Sunday, December 28, 2014	19:42:00	Garth Ferber
279	Dec. 27, 2014	10:36 PM PST Friday, December 26, 2014	06:36:00	Kenny Kramer
277	Dec. 25, 2014	5:39 PM PST Wednesday, December 24, 2014	01:39:00	Dennis D'Amico
271	Dec. 21, 2014	7:02 PM PST Saturday, December 20, 2014	03:02:00	Kenny Kramer
257	May 31, 2014	2:54 PM PST Friday, May 30, 2014	21:54:00	Kenny Kramer
250	May 13, 2014	3:41 PM PST Monday, May 12, 2014	22:41:00	Dennis D'Amico
234	April 24, 2014	6:00 PM PST Wednesday, April 23, 2014	01:00:00	Garth Ferber
232	April 23, 2014	4:50 PM PST Tuesday, April 22, 2014	23:50:00	Dennis D'Amico
230	April 20, 2014	7:07 AM PST Sunday, April 20, 2014	14:07:00	Garth Ferber
228	April 19, 2014	12:41 PM PST Saturday, April 19, 2014	19:41:00	Garth Ferber
226	April 18, 2014	6:00 PM PST Thursday, April 17, 2014	01:00:00	Kenny Kramer
219	April 13, 2014	6:00 PM PST Saturday, April 12, 2014	01:00:00	Kenny Kramer
209	April 5, 2014	6:00 PM PST Friday, April 4, 2014	01:00:00	Garth Ferber
208	April 4, 2014	10:23 AM PST Friday, April 4, 2014	17:23:00	Garth Ferber
206	April 4, 2014	6:00 PM PST Thursday, April 3, 2014	01:00:00	Garth Ferber
203	April 2, 2014	6:00 PM PST Tuesday, April 1, 2014	01:00:00	Kenny Kramer
201	March 31, 2014	6:00 PM PST Sunday, March 30, 2014	01:00:00	Garth Ferber
199	March 30, 2014	6:00 PM PST Saturday, March 29, 2014	01:00:00	Garth Ferber
197	March 29, 2014	6:00 PM PST Friday, March 28, 2014	01:00:00	Dennis D'Amico
194	March 27, 2014	6:00 PM PST Wednesday, March 26, 2014	01:00:00	Kenny Kramer
192	March 26, 2014	10:19 AM PST Tuesday, March 25, 2014	17:19:00	Garth Ferber
190	March 24, 2014	6:19 PM PST Sunday, March 23, 2014	01:19:00	Dennis D'Amico
188	March 23, 2014	6:00 PM PST Saturday, March 22, 2014	01:00:00	Dennis D'Amico
185	March 20, 2014	6:12 PM PST Wednesday, March 19, 2014	01:12:00	Garth Ferber
182	March 18, 2014	6:00 PM PST Monday, March 17, 2014	01:00:00	Dennis D'Amico
180	March 16, 2014	6:00 PM PST Saturday, March 15, 2014	01:00:00	Kenny Kramer
173	March 10, 2014	6:00 PM PST Sunday, March 9, 2014	01:00:00	Garth Ferber
171	March 9, 2014	6:00 PM PST Saturday, March 8, 2014	02:00:00	Garth Ferber
169	March 7, 2014	7:06 PM PST Thursday, March 6, 2014	03:06:00	Dennis D'Amico
166	March 5, 2014	6:00 PM PST Tuesday, March 4, 2014	02:00:00	Garth Ferber
162	March 2, 2014	12:50 PM PST Sunday, March 2, 2014	20:50:00	Dennis D'Amico
155	Feb. 25, 2014	6:00 PM PST Monday, February 24, 2014	02:00:00	Kenny Kramer
152	Feb. 22, 2014	8:35 AM PST Saturday, February 22, 2014	16:35:00	Dennis D'Amico
149	Feb. 20, 2014	8:41 PM PST Wednesday, February 19, 2014	04:41:00	Kenny Kramer
146	Feb. 18, 2014	6:26 PM PST Monday, February 17, 2014	02:26:00	Dennis D'Amico
144	Feb. 17, 2014	12:12 PM PST Sunday, February 16, 2014	20:12:00	Garth Ferber
141	Feb. 14, 2014	6:00 PM PST Thursday, February 13, 2014	02:00:00	Kenny Kramer
138	Feb. 11, 2014	3:21 AM PST Tuesday, February 11, 2014	11:21:00	Garth Ferber
136	Feb. 10, 2014	6:00 PM PST Sunday, February 9, 2014	02:00:00	Kenny Kramer
134	Feb. 8, 2014	6:25 PM PST Friday, February 7, 2014	02:25:00	Dennis D'Amico
132	Feb. 7, 2014	7:10 PM PST Thursday, February 6, 2014	03:10:00	Dennis D'Amico
130	Feb. 5, 2014	6:00 PM PST Tuesday, February 4, 2014	02:00:00	Kenny Kramer
127	Feb. 3, 2014	6:00 PM PST Sunday, February 2, 2014	02:00:00	Dennis D'Amico
126	Feb. 2, 2014	8:49 AM PST Sunday, February 2, 2014	16:49:00	Dennis D'Amico
116	Jan. 27, 2014	6:00 PM PST Sunday, January 26, 2014	02:00:00	Garth Ferber
114	Jan. 25, 2014	6:00 PM PST Friday, January 24, 2014	02:00:00	Kenny Kramer
112	Jan. 23, 2014	6:16 PM PST Wednesday, January 22, 2014	02:16:00	Dennis D'Amico
111	Jan. 23, 2014	6:16 PM PST Wednesday, January 22, 2014	02:16:00	Garth Ferber
108	Jan. 21, 2014	6:00 PM PST Monday, January 20, 2014	02:00:00	Kenny Kramer
106	Jan. 19, 2014	6:00 PM PST Saturday, January 18, 2014	02:00:00	Kenny Kramer
94	Jan. 11, 2014	6:00 PM PST Friday, January 10, 2014	02:00:00	Garth Ferber
92	Jan. 10, 2014	6:00 PM PST Thursday, January 9, 2014	02:00:00	Garth Ferber
87	Jan. 8, 2014	6:00 PM PST Tuesday, January 7, 2014	02:00:00	Dennis D'Amico
85	Jan. 6, 2014	6:00 PM PST Sunday, January 5, 2014	02:00:00	Garth Ferber
81	Jan. 2, 2014	6:00 PM PST Wednesday, January 1, 2014	02:00:00	Garth Ferber
79	Dec. 31, 2013	6:00 PM PST Monday, December 30, 2013	02:00:00	Dennis D'Amico
73	Dec. 28, 2013	6:00 PM PST Friday, December 27, 2013	02:00:00	Garth Ferber
67	Dec. 23, 2013	6:00 PM PST Sunday, December 22, 2013	02:00:00	Garth Ferber
60	Dec. 19, 2013	6:00 PM PST Wednesday, December 18, 2013	02:00:00	Dennis D'Amico
53	Dec. 14, 2013	6:00 PM PST Friday, December 13, 2013	02:00:00	Kenny Kramer
47	Dec. 13, 2013	7:07 PM PST Thursday, December 12, 2013	03:07:00	Dennis D'Amico
\.


--
-- Data for Name: region_index; Type: TABLE DATA; Schema: public; Owner: tkb
--

COPY region_index (forecast_id, region, report_id) FROM stdin;
37	Olympics	73
37	Stevens Pass	73
37	Snoqualmie Pass	73
37	Mt Hood	73
37	White Pass	73
37	WA Cascades near and west of crest - between Snoqualmie and White Pass	73
37	East slopes WA Cascades - between Stevens and Snoqualmie Pass	73
37	WA Cascades near and west of crest - north of Stevens Pass	73
37	WA Cascades near and west of crest - south of White Pass	73
37	East slopes WA Cascades - between Snoqualmie and White Pass	73
37	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	73
37	East slopes WA Cascades - north of Stevens Pass	73
37	East slopes WA Cascades - south of White Pass	73
421	Olympics	1626
421	West Slopes North - Canadian Border to Skagit River	1626
421	West Slopes Central - Skagit River to South of I-90	1626
421	West Slopes South - South of I-90 to Columbia River	1626
421	Stevens Pass	1626
421	Snoqualmie Pass	1626
421	East Slopes North - Canadian Border to Lake Chelan	1626
421	East Slopes Central - Lake Chelan to South of I-90	1626
421	East Slopes South - South of I-90 to Columbia River	1626
421	Mt Hood	1626
420	Olympics	1625
420	West Slopes North - Canadian Border to Skagit River	1625
420	West Slopes Central - Skagit River to South of I-90	1625
420	West Slopes South - South of I-90 to Columbia River	1625
420	Stevens Pass	1625
420	Snoqualmie Pass	1625
420	East Slopes North - Canadian Border to Lake Chelan	1625
420	East Slopes Central - Lake Chelan to South of I-90	1625
420	East Slopes South - South of I-90 to Columbia River	1625
420	Mt Hood	1625
418	Olympics	1620
418	West Slopes North - Canadian Border to Skagit River	1620
418	West Slopes Central - Skagit River to South of I-90	1620
418	West Slopes South - South of I-90 to Columbia River	1620
418	Stevens Pass	1620
418	Snoqualmie Pass	1620
418	East Slopes North - Canadian Border to Lake Chelan	1620
418	East Slopes Central - Lake Chelan to South of I-90	1620
418	East Slopes South - South of I-90 to Columbia River	1620
418	Mt Hood	1620
417	Olympics	1615
417	West Slopes North - Canadian Border to Skagit River	1617
417	West Slopes Central - Skagit River to South of I-90	1617
417	West Slopes South - South of I-90 to Columbia River	1617
417	Stevens Pass	1617
417	Snoqualmie Pass	1617
417	East Slopes North - Canadian Border to Lake Chelan	1618
417	East Slopes Central - Lake Chelan to South of I-90	1618
417	East Slopes South - South of I-90 to Columbia River	1618
417	Mt Hood	1619
416	Olympics	1611
416	West Slopes North - Canadian Border to Skagit River	1610
416	West Slopes Central - Skagit River to South of I-90	1612
416	West Slopes South - South of I-90 to Columbia River	1612
416	Stevens Pass	1612
416	Snoqualmie Pass	1612
416	East Slopes North - Canadian Border to Lake Chelan	1613
416	East Slopes Central - Lake Chelan to South of I-90	1613
416	East Slopes South - South of I-90 to Columbia River	1613
416	Mt Hood	1614
415	Olympics	1605
415	West Slopes North - Canadian Border to Skagit River	1605
415	West Slopes Central - Skagit River to South of I-90	1605
415	West Slopes South - South of I-90 to Columbia River	1605
415	Stevens Pass	1605
415	Snoqualmie Pass	1605
415	East Slopes North - Canadian Border to Lake Chelan	1605
415	East Slopes Central - Lake Chelan to South of I-90	1605
415	East Slopes South - South of I-90 to Columbia River	1605
415	Mt Hood	1605
414	Olympics	1601
414	West Slopes North - Canadian Border to Skagit River	1602
414	West Slopes Central - Skagit River to South of I-90	1602
414	West Slopes South - South of I-90 to Columbia River	1602
414	Stevens Pass	1602
414	Snoqualmie Pass	1602
414	East Slopes North - Canadian Border to Lake Chelan	1603
414	East Slopes Central - Lake Chelan to South of I-90	1603
414	East Slopes South - South of I-90 to Columbia River	1603
414	Mt Hood	1604
413	Olympics	1598
413	West Slopes North - Canadian Border to Skagit River	1597
413	West Slopes Central - Skagit River to South of I-90	1597
413	West Slopes South - South of I-90 to Columbia River	1597
413	Stevens Pass	1597
413	Snoqualmie Pass	1597
413	East Slopes North - Canadian Border to Lake Chelan	1599
413	East Slopes Central - Lake Chelan to South of I-90	1599
413	East Slopes South - South of I-90 to Columbia River	1599
413	Mt Hood	1600
412	Olympics	1596
412	West Slopes North - Canadian Border to Skagit River	1596
412	West Slopes Central - Skagit River to South of I-90	1596
412	West Slopes South - South of I-90 to Columbia River	1596
412	Stevens Pass	1596
412	Snoqualmie Pass	1596
412	East Slopes North - Canadian Border to Lake Chelan	1596
412	East Slopes Central - Lake Chelan to South of I-90	1596
412	East Slopes South - South of I-90 to Columbia River	1596
412	Mt Hood	1596
411	Olympics	1595
411	West Slopes North - Canadian Border to Skagit River	1595
411	West Slopes Central - Skagit River to South of I-90	1595
411	West Slopes South - South of I-90 to Columbia River	1595
411	Stevens Pass	1595
411	Snoqualmie Pass	1595
411	East Slopes North - Canadian Border to Lake Chelan	1595
411	East Slopes Central - Lake Chelan to South of I-90	1595
411	East Slopes South - South of I-90 to Columbia River	1595
411	Mt Hood	1595
492	Olympics	1998
492	West Slopes North - Canadian Border to Skagit River	1999
492	West Slopes Central - Skagit River to South of I-90	1999
492	West Slopes South - South of I-90 to Columbia River	1999
492	Stevens Pass	1999
492	Snoqualmie Pass	1999
492	East Slopes North - Canadian Border to Lake Chelan	2000
492	East Slopes Central - Lake Chelan to South of I-90	2000
492	East Slopes South - South of I-90 to Columbia River	2000
492	Mt Hood	2002
491	Olympics	1993
491	West Slopes North - Canadian Border to Skagit River	1994
491	West Slopes Central - Skagit River to South of I-90	1994
491	West Slopes South - South of I-90 to Columbia River	1994
491	Stevens Pass	1994
491	Snoqualmie Pass	1994
491	East Slopes North - Canadian Border to Lake Chelan	1995
491	East Slopes Central - Lake Chelan to South of I-90	1997
491	East Slopes South - South of I-90 to Columbia River	1997
491	Mt Hood	1996
490	Olympics	1989
490	West Slopes North - Canadian Border to Skagit River	1990
490	West Slopes Central - Skagit River to South of I-90	1990
490	West Slopes South - South of I-90 to Columbia River	1990
490	Stevens Pass	1990
490	Snoqualmie Pass	1990
490	East Slopes North - Canadian Border to Lake Chelan	1991
490	East Slopes Central - Lake Chelan to South of I-90	1991
490	East Slopes South - South of I-90 to Columbia River	1991
490	Mt Hood	1992
489	Olympics	1985
489	West Slopes North - Canadian Border to Skagit River	1986
489	West Slopes Central - Skagit River to South of I-90	1986
489	West Slopes South - South of I-90 to Columbia River	1986
489	Stevens Pass	1986
489	Snoqualmie Pass	1986
489	East Slopes North - Canadian Border to Lake Chelan	1987
489	East Slopes Central - Lake Chelan to South of I-90	1987
489	East Slopes South - South of I-90 to Columbia River	1987
489	Mt Hood	1988
488	Olympics	1980
488	West Slopes North - Canadian Border to Skagit River	1981
488	West Slopes Central - Skagit River to South of I-90	1981
488	West Slopes South - South of I-90 to Columbia River	1981
488	Stevens Pass	1981
488	Snoqualmie Pass	1981
488	East Slopes North - Canadian Border to Lake Chelan	1982
488	East Slopes Central - Lake Chelan to South of I-90	1982
488	East Slopes South - South of I-90 to Columbia River	1982
488	Mt Hood	1984
487	Olympics	1972
487	West Slopes North - Canadian Border to Skagit River	1974
487	West Slopes Central - Skagit River to South of I-90	1974
487	West Slopes South - South of I-90 to Columbia River	1974
487	Stevens Pass	1974
487	Snoqualmie Pass	1974
487	East Slopes North - Canadian Border to Lake Chelan	1975
487	East Slopes Central - Lake Chelan to South of I-90	1975
487	East Slopes South - South of I-90 to Columbia River	1979
487	Mt Hood	1977
486	Olympics	1966
486	West Slopes North - Canadian Border to Skagit River	1967
486	West Slopes Central - Skagit River to South of I-90	1968
486	West Slopes South - South of I-90 to Columbia River	1968
486	Stevens Pass	1968
486	Snoqualmie Pass	1968
486	East Slopes North - Canadian Border to Lake Chelan	1969
486	East Slopes Central - Lake Chelan to South of I-90	1970
486	East Slopes South - South of I-90 to Columbia River	1970
486	Mt Hood	1971
485	Olympics	1960
485	West Slopes North - Canadian Border to Skagit River	1961
485	West Slopes Central - Skagit River to South of I-90	1962
485	West Slopes South - South of I-90 to Columbia River	1962
485	Stevens Pass	1962
485	Snoqualmie Pass	1962
485	East Slopes North - Canadian Border to Lake Chelan	1963
485	East Slopes Central - Lake Chelan to South of I-90	1964
485	East Slopes South - South of I-90 to Columbia River	1964
485	Mt Hood	1965
484	Olympics	1954
484	West Slopes North - Canadian Border to Skagit River	1958
484	West Slopes Central - Skagit River to South of I-90	1955
484	West Slopes South - South of I-90 to Columbia River	1955
484	Stevens Pass	1955
484	Snoqualmie Pass	1955
484	East Slopes North - Canadian Border to Lake Chelan	1959
484	East Slopes Central - Lake Chelan to South of I-90	1956
484	East Slopes South - South of I-90 to Columbia River	1956
484	Mt Hood	1957
483	Olympics	1950
483	West Slopes North - Canadian Border to Skagit River	1951
483	West Slopes Central - Skagit River to South of I-90	1951
483	West Slopes South - South of I-90 to Columbia River	1951
483	Stevens Pass	1951
483	Snoqualmie Pass	1951
483	East Slopes North - Canadian Border to Lake Chelan	1952
483	East Slopes Central - Lake Chelan to South of I-90	1952
483	East Slopes South - South of I-90 to Columbia River	1952
483	Mt Hood	1953
482	Olympics	1946
482	West Slopes North - Canadian Border to Skagit River	1947
481	Olympics	1942
482	West Slopes Central - Skagit River to South of I-90	1947
482	West Slopes South - South of I-90 to Columbia River	1947
482	Stevens Pass	1947
482	Snoqualmie Pass	1947
482	East Slopes North - Canadian Border to Lake Chelan	1948
482	East Slopes Central - Lake Chelan to South of I-90	1948
482	East Slopes South - South of I-90 to Columbia River	1948
482	Mt Hood	1949
480	Olympics	1938
480	West Slopes North - Canadian Border to Skagit River	1939
480	West Slopes Central - Skagit River to South of I-90	1939
480	West Slopes South - South of I-90 to Columbia River	1939
480	Stevens Pass	1939
480	Snoqualmie Pass	1939
480	East Slopes North - Canadian Border to Lake Chelan	1940
480	East Slopes Central - Lake Chelan to South of I-90	1940
480	East Slopes South - South of I-90 to Columbia River	1940
480	Mt Hood	1941
478	Olympics	1928
478	West Slopes North - Canadian Border to Skagit River	1929
478	West Slopes Central - Skagit River to South of I-90	1930
478	West Slopes South - South of I-90 to Columbia River	1930
478	Stevens Pass	1930
478	Snoqualmie Pass	1930
478	East Slopes North - Canadian Border to Lake Chelan	1931
478	East Slopes Central - Lake Chelan to South of I-90	1931
478	East Slopes South - South of I-90 to Columbia River	1931
478	Mt Hood	1932
476	Olympics	1919
476	West Slopes North - Canadian Border to Skagit River	1920
476	West Slopes Central - Skagit River to South of I-90	1920
476	West Slopes South - South of I-90 to Columbia River	1920
476	Stevens Pass	1920
476	Snoqualmie Pass	1920
476	East Slopes North - Canadian Border to Lake Chelan	1921
476	East Slopes Central - Lake Chelan to South of I-90	1921
476	East Slopes South - South of I-90 to Columbia River	1921
476	Mt Hood	1922
474	Olympics	1909
474	West Slopes North - Canadian Border to Skagit River	1910
474	West Slopes Central - Skagit River to South of I-90	1910
474	Stevens Pass	1910
474	Snoqualmie Pass	1910
474	West Slopes South - South of I-90 to Columbia River	1913
474	East Slopes North - Canadian Border to Lake Chelan	1911
474	East Slopes Central - Lake Chelan to South of I-90	1911
474	East Slopes South - South of I-90 to Columbia River	1911
474	Mt Hood	1912
472	Olympics	1901
472	West Slopes North - Canadian Border to Skagit River	1902
472	West Slopes Central - Skagit River to South of I-90	1902
472	West Slopes South - South of I-90 to Columbia River	1902
472	Stevens Pass	1902
472	Snoqualmie Pass	1902
472	East Slopes North - Canadian Border to Lake Chelan	1903
472	East Slopes Central - Lake Chelan to South of I-90	1903
472	East Slopes South - South of I-90 to Columbia River	1903
472	Mt Hood	1904
470	Olympics	1893
470	West Slopes North - Canadian Border to Skagit River	1894
470	West Slopes Central - Skagit River to South of I-90	1894
470	West Slopes South - South of I-90 to Columbia River	1894
470	Stevens Pass	1894
470	Snoqualmie Pass	1894
470	East Slopes North - Canadian Border to Lake Chelan	1895
470	East Slopes Central - Lake Chelan to South of I-90	1895
470	East Slopes South - South of I-90 to Columbia River	1895
470	Mt Hood	1896
468	Olympics	1885
468	West Slopes North - Canadian Border to Skagit River	1886
468	West Slopes Central - Skagit River to South of I-90	1886
468	West Slopes South - South of I-90 to Columbia River	1886
468	Stevens Pass	1886
468	Snoqualmie Pass	1886
468	East Slopes North - Canadian Border to Lake Chelan	1887
468	East Slopes Central - Lake Chelan to South of I-90	1887
468	East Slopes South - South of I-90 to Columbia River	1887
468	Mt Hood	1888
466	Olympics	1874
466	West Slopes North - Canadian Border to Skagit River	1875
466	West Slopes Central - Skagit River to South of I-90	1875
466	Stevens Pass	1875
466	West Slopes South - South of I-90 to Columbia River	1879
466	Snoqualmie Pass	1879
466	East Slopes North - Canadian Border to Lake Chelan	1877
466	East Slopes Central - Lake Chelan to South of I-90	1877
466	East Slopes South - South of I-90 to Columbia River	1877
466	Mt Hood	1878
464	Olympics	1864
464	West Slopes North - Canadian Border to Skagit River	1865
464	West Slopes Central - Skagit River to South of I-90	1865
464	West Slopes South - South of I-90 to Columbia River	1865
464	Stevens Pass	1865
464	Snoqualmie Pass	1865
464	East Slopes North - Canadian Border to Lake Chelan	1866
464	East Slopes Central - Lake Chelan to South of I-90	1866
464	East Slopes South - South of I-90 to Columbia River	1866
464	Mt Hood	1867
481	West Slopes North - Canadian Border to Skagit River	1943
481	West Slopes Central - Skagit River to South of I-90	1943
481	West Slopes South - South of I-90 to Columbia River	1943
481	Stevens Pass	1943
481	Snoqualmie Pass	1943
481	East Slopes North - Canadian Border to Lake Chelan	1944
481	East Slopes Central - Lake Chelan to South of I-90	1944
481	East Slopes South - South of I-90 to Columbia River	1944
481	Mt Hood	1945
479	Olympics	1933
479	West Slopes North - Canadian Border to Skagit River	1935
479	West Slopes Central - Skagit River to South of I-90	1935
479	West Slopes South - South of I-90 to Columbia River	1935
479	Stevens Pass	1935
479	Snoqualmie Pass	1935
479	East Slopes North - Canadian Border to Lake Chelan	1936
479	East Slopes Central - Lake Chelan to South of I-90	1936
479	East Slopes South - South of I-90 to Columbia River	1936
479	Mt Hood	1937
477	Olympics	1923
477	West Slopes North - Canadian Border to Skagit River	1927
477	West Slopes Central - Skagit River to South of I-90	1924
477	West Slopes South - South of I-90 to Columbia River	1924
477	Stevens Pass	1924
477	Snoqualmie Pass	1924
477	East Slopes North - Canadian Border to Lake Chelan	1925
477	East Slopes Central - Lake Chelan to South of I-90	1925
477	East Slopes South - South of I-90 to Columbia River	1925
477	Mt Hood	1926
475	Olympics	1914
475	West Slopes North - Canadian Border to Skagit River	1915
475	West Slopes Central - Skagit River to South of I-90	1915
475	West Slopes South - South of I-90 to Columbia River	1915
475	Stevens Pass	1915
475	Snoqualmie Pass	1915
475	East Slopes North - Canadian Border to Lake Chelan	1917
475	East Slopes Central - Lake Chelan to South of I-90	1917
475	East Slopes South - South of I-90 to Columbia River	1917
475	Mt Hood	1918
473	Olympics	1905
473	West Slopes North - Canadian Border to Skagit River	1906
473	West Slopes Central - Skagit River to South of I-90	1906
473	West Slopes South - South of I-90 to Columbia River	1906
473	Stevens Pass	1906
473	Snoqualmie Pass	1906
473	East Slopes North - Canadian Border to Lake Chelan	1907
473	East Slopes Central - Lake Chelan to South of I-90	1907
473	East Slopes South - South of I-90 to Columbia River	1907
473	Mt Hood	1908
471	Olympics	1897
471	West Slopes North - Canadian Border to Skagit River	1898
471	West Slopes Central - Skagit River to South of I-90	1898
471	West Slopes South - South of I-90 to Columbia River	1898
471	Stevens Pass	1898
471	Snoqualmie Pass	1898
471	East Slopes North - Canadian Border to Lake Chelan	1899
471	East Slopes Central - Lake Chelan to South of I-90	1899
471	East Slopes South - South of I-90 to Columbia River	1899
471	Mt Hood	1900
469	Olympics	1889
469	West Slopes North - Canadian Border to Skagit River	1890
469	West Slopes Central - Skagit River to South of I-90	1890
469	West Slopes South - South of I-90 to Columbia River	1890
469	Stevens Pass	1890
469	Snoqualmie Pass	1890
469	East Slopes North - Canadian Border to Lake Chelan	1891
469	East Slopes Central - Lake Chelan to South of I-90	1891
469	East Slopes South - South of I-90 to Columbia River	1891
469	Mt Hood	1892
467	Olympics	1880
467	West Slopes North - Canadian Border to Skagit River	1881
467	West Slopes Central - Skagit River to South of I-90	1881
467	West Slopes South - South of I-90 to Columbia River	1881
467	Stevens Pass	1881
467	Snoqualmie Pass	1881
467	East Slopes North - Canadian Border to Lake Chelan	1883
467	East Slopes Central - Lake Chelan to South of I-90	1883
467	East Slopes South - South of I-90 to Columbia River	1883
467	Mt Hood	1884
465	Olympics	1868
465	West Slopes North - Canadian Border to Skagit River	1869
465	West Slopes Central - Skagit River to South of I-90	1869
465	Stevens Pass	1869
465	Snoqualmie Pass	1869
465	West Slopes South - South of I-90 to Columbia River	1873
465	East Slopes North - Canadian Border to Lake Chelan	1870
465	East Slopes Central - Lake Chelan to South of I-90	1870
465	East Slopes South - South of I-90 to Columbia River	1870
465	Mt Hood	1871
463	Olympics	1859
463	West Slopes North - Canadian Border to Skagit River	1861
463	West Slopes Central - Skagit River to South of I-90	1861
463	West Slopes South - South of I-90 to Columbia River	1861
463	Stevens Pass	1861
463	Snoqualmie Pass	1861
463	East Slopes North - Canadian Border to Lake Chelan	1862
463	East Slopes Central - Lake Chelan to South of I-90	1862
463	East Slopes South - South of I-90 to Columbia River	1862
463	Mt Hood	1863
462	Olympics	1854
462	West Slopes North - Canadian Border to Skagit River	1858
462	West Slopes Central - Skagit River to South of I-90	1855
462	West Slopes South - South of I-90 to Columbia River	1855
462	Stevens Pass	1855
462	Snoqualmie Pass	1855
462	East Slopes North - Canadian Border to Lake Chelan	1856
462	East Slopes Central - Lake Chelan to South of I-90	1856
366	Stevens Pass	1397
462	East Slopes South - South of I-90 to Columbia River	1856
462	Mt Hood	1857
461	Olympics	1850
461	West Slopes North - Canadian Border to Skagit River	1851
461	West Slopes Central - Skagit River to South of I-90	1851
461	West Slopes South - South of I-90 to Columbia River	1851
461	Stevens Pass	1851
461	Snoqualmie Pass	1851
461	East Slopes North - Canadian Border to Lake Chelan	1852
461	East Slopes Central - Lake Chelan to South of I-90	1852
461	East Slopes South - South of I-90 to Columbia River	1852
461	Mt Hood	1853
460	Olympics	1846
460	West Slopes North - Canadian Border to Skagit River	1847
460	West Slopes Central - Skagit River to South of I-90	1847
460	West Slopes South - South of I-90 to Columbia River	1847
460	Stevens Pass	1847
460	Snoqualmie Pass	1847
460	East Slopes North - Canadian Border to Lake Chelan	1848
460	East Slopes Central - Lake Chelan to South of I-90	1848
460	East Slopes South - South of I-90 to Columbia River	1848
460	Mt Hood	1849
459	Olympics	1842
459	West Slopes North - Canadian Border to Skagit River	1843
459	West Slopes Central - Skagit River to South of I-90	1843
459	West Slopes South - South of I-90 to Columbia River	1843
459	Stevens Pass	1843
459	Snoqualmie Pass	1843
459	East Slopes North - Canadian Border to Lake Chelan	1844
459	East Slopes Central - Lake Chelan to South of I-90	1844
459	East Slopes South - South of I-90 to Columbia River	1844
459	Mt Hood	1845
458	Olympics	1838
458	West Slopes North - Canadian Border to Skagit River	1839
458	West Slopes Central - Skagit River to South of I-90	1839
458	West Slopes South - South of I-90 to Columbia River	1839
458	Stevens Pass	1839
458	Snoqualmie Pass	1839
458	East Slopes North - Canadian Border to Lake Chelan	1840
458	East Slopes Central - Lake Chelan to South of I-90	1840
458	East Slopes South - South of I-90 to Columbia River	1840
458	Mt Hood	1841
457	Olympics	1834
457	West Slopes North - Canadian Border to Skagit River	1835
457	West Slopes Central - Skagit River to South of I-90	1835
457	West Slopes South - South of I-90 to Columbia River	1835
457	Stevens Pass	1835
457	Snoqualmie Pass	1835
457	East Slopes North - Canadian Border to Lake Chelan	1836
457	East Slopes Central - Lake Chelan to South of I-90	1836
457	East Slopes South - South of I-90 to Columbia River	1836
457	Mt Hood	1837
456	Olympics	1830
456	West Slopes North - Canadian Border to Skagit River	1831
456	West Slopes Central - Skagit River to South of I-90	1831
456	West Slopes South - South of I-90 to Columbia River	1831
456	Stevens Pass	1831
456	Snoqualmie Pass	1831
456	East Slopes North - Canadian Border to Lake Chelan	1832
456	East Slopes Central - Lake Chelan to South of I-90	1832
456	East Slopes South - South of I-90 to Columbia River	1832
456	Mt Hood	1833
455	Olympics	1826
455	West Slopes North - Canadian Border to Skagit River	1827
455	West Slopes Central - Skagit River to South of I-90	1827
455	West Slopes South - South of I-90 to Columbia River	1827
455	Stevens Pass	1827
455	Snoqualmie Pass	1827
455	East Slopes North - Canadian Border to Lake Chelan	1828
455	East Slopes Central - Lake Chelan to South of I-90	1828
455	East Slopes South - South of I-90 to Columbia River	1828
455	Mt Hood	1829
454	Olympics	1822
454	West Slopes North - Canadian Border to Skagit River	1823
454	West Slopes Central - Skagit River to South of I-90	1823
454	West Slopes South - South of I-90 to Columbia River	1823
454	Stevens Pass	1823
454	Snoqualmie Pass	1823
454	East Slopes North - Canadian Border to Lake Chelan	1824
454	East Slopes Central - Lake Chelan to South of I-90	1824
454	East Slopes South - South of I-90 to Columbia River	1824
454	Mt Hood	1825
453	Olympics	1818
453	West Slopes North - Canadian Border to Skagit River	1819
453	West Slopes Central - Skagit River to South of I-90	1819
453	West Slopes South - South of I-90 to Columbia River	1819
453	Stevens Pass	1819
453	Snoqualmie Pass	1819
453	East Slopes North - Canadian Border to Lake Chelan	1820
453	East Slopes Central - Lake Chelan to South of I-90	1820
453	East Slopes South - South of I-90 to Columbia River	1820
453	Mt Hood	1821
452	Olympics	1814
452	West Slopes North - Canadian Border to Skagit River	1815
452	West Slopes Central - Skagit River to South of I-90	1815
452	West Slopes South - South of I-90 to Columbia River	1815
452	Stevens Pass	1815
452	Snoqualmie Pass	1815
452	East Slopes North - Canadian Border to Lake Chelan	1816
452	East Slopes Central - Lake Chelan to South of I-90	1816
452	East Slopes South - South of I-90 to Columbia River	1816
452	Mt Hood	1817
451	Olympics	1810
451	West Slopes North - Canadian Border to Skagit River	1811
451	West Slopes Central - Skagit River to South of I-90	1811
451	West Slopes South - South of I-90 to Columbia River	1811
451	Stevens Pass	1811
451	Snoqualmie Pass	1811
450	Olympics	1806
451	East Slopes North - Canadian Border to Lake Chelan	1812
451	East Slopes Central - Lake Chelan to South of I-90	1812
451	East Slopes South - South of I-90 to Columbia River	1812
451	Mt Hood	1813
449	Olympics	1800
449	West Slopes North - Canadian Border to Skagit River	1802
449	West Slopes Central - Skagit River to South of I-90	1802
449	West Slopes South - South of I-90 to Columbia River	1802
449	Stevens Pass	1802
449	Snoqualmie Pass	1802
449	East Slopes North - Canadian Border to Lake Chelan	1804
449	East Slopes Central - Lake Chelan to South of I-90	1804
449	East Slopes South - South of I-90 to Columbia River	1804
449	Mt Hood	1805
447	Olympics	1789
447	West Slopes North - Canadian Border to Skagit River	1790
447	West Slopes Central - Skagit River to South of I-90	1790
447	West Slopes South - South of I-90 to Columbia River	1790
447	Stevens Pass	1790
447	Snoqualmie Pass	1790
447	East Slopes North - Canadian Border to Lake Chelan	1791
447	East Slopes Central - Lake Chelan to South of I-90	1791
447	East Slopes South - South of I-90 to Columbia River	1791
447	Mt Hood	1793
445	Olympics	1778
445	West Slopes North - Canadian Border to Skagit River	1780
445	West Slopes Central - Skagit River to South of I-90	1780
445	West Slopes South - South of I-90 to Columbia River	1780
445	Stevens Pass	1780
445	Snoqualmie Pass	1780
445	East Slopes North - Canadian Border to Lake Chelan	1781
445	East Slopes Central - Lake Chelan to South of I-90	1781
445	East Slopes South - South of I-90 to Columbia River	1781
445	Mt Hood	1784
443	Olympics	1762
443	West Slopes North - Canadian Border to Skagit River	1763
443	West Slopes Central - Skagit River to South of I-90	1763
443	West Slopes South - South of I-90 to Columbia River	1763
443	Stevens Pass	1763
443	Snoqualmie Pass	1763
443	East Slopes North - Canadian Border to Lake Chelan	1764
443	East Slopes Central - Lake Chelan to South of I-90	1768
443	East Slopes South - South of I-90 to Columbia River	1769
443	Mt Hood	1767
450	West Slopes North - Canadian Border to Skagit River	1807
450	West Slopes Central - Skagit River to South of I-90	1807
450	West Slopes South - South of I-90 to Columbia River	1807
450	Stevens Pass	1807
450	Snoqualmie Pass	1807
450	East Slopes North - Canadian Border to Lake Chelan	1808
450	East Slopes Central - Lake Chelan to South of I-90	1808
450	East Slopes South - South of I-90 to Columbia River	1808
450	Mt Hood	1809
448	Olympics	1794
448	West Slopes North - Canadian Border to Skagit River	1795
448	West Slopes Central - Skagit River to South of I-90	1798
448	West Slopes South - South of I-90 to Columbia River	1798
448	Stevens Pass	1798
448	Snoqualmie Pass	1798
448	East Slopes North - Canadian Border to Lake Chelan	1796
448	East Slopes Central - Lake Chelan to South of I-90	1799
448	East Slopes South - South of I-90 to Columbia River	1799
448	Mt Hood	1797
446	Olympics	1785
446	West Slopes North - Canadian Border to Skagit River	1786
446	West Slopes Central - Skagit River to South of I-90	1786
446	West Slopes South - South of I-90 to Columbia River	1786
446	Stevens Pass	1786
446	Snoqualmie Pass	1786
446	East Slopes North - Canadian Border to Lake Chelan	1787
446	East Slopes Central - Lake Chelan to South of I-90	1787
446	East Slopes South - South of I-90 to Columbia River	1787
446	Mt Hood	1788
444	Olympics	1770
444	West Slopes North - Canadian Border to Skagit River	1776
444	West Slopes Central - Skagit River to South of I-90	1771
444	West Slopes South - South of I-90 to Columbia River	1771
444	Stevens Pass	1771
444	Snoqualmie Pass	1771
444	East Slopes North - Canadian Border to Lake Chelan	1772
444	East Slopes Central - Lake Chelan to South of I-90	1773
444	East Slopes South - South of I-90 to Columbia River	1777
444	Mt Hood	1775
442	Olympics	1756
442	West Slopes North - Canadian Border to Skagit River	1757
442	West Slopes Central - Skagit River to South of I-90	1757
442	West Slopes South - South of I-90 to Columbia River	1757
442	Stevens Pass	1757
442	Snoqualmie Pass	1757
442	East Slopes North - Canadian Border to Lake Chelan	1758
442	East Slopes Central - Lake Chelan to South of I-90	1759
442	East Slopes South - South of I-90 to Columbia River	1760
442	Mt Hood	1761
441	Olympics	1746
441	West Slopes North - Canadian Border to Skagit River	1747
441	West Slopes Central - Skagit River to South of I-90	1747
441	West Slopes South - South of I-90 to Columbia River	1747
441	Stevens Pass	1747
441	Snoqualmie Pass	1747
441	East Slopes North - Canadian Border to Lake Chelan	1752
441	East Slopes Central - Lake Chelan to South of I-90	1754
441	East Slopes South - South of I-90 to Columbia River	1755
441	Mt Hood	1751
440	Olympics	1740
440	West Slopes North - Canadian Border to Skagit River	1741
440	West Slopes Central - Skagit River to South of I-90	1741
440	West Slopes South - South of I-90 to Columbia River	1741
440	Stevens Pass	1741
440	Snoqualmie Pass	1741
440	East Slopes North - Canadian Border to Lake Chelan	1742
440	East Slopes Central - Lake Chelan to South of I-90	1743
440	East Slopes South - South of I-90 to Columbia River	1744
440	Mt Hood	1745
439	Olympics	1734
439	West Slopes North - Canadian Border to Skagit River	1735
439	West Slopes Central - Skagit River to South of I-90	1735
439	West Slopes South - South of I-90 to Columbia River	1735
439	Stevens Pass	1735
439	Snoqualmie Pass	1735
439	East Slopes North - Canadian Border to Lake Chelan	1736
439	East Slopes Central - Lake Chelan to South of I-90	1737
439	East Slopes South - South of I-90 to Columbia River	1738
439	Mt Hood	1739
438	Olympics	1728
438	West Slopes North - Canadian Border to Skagit River	1729
438	West Slopes Central - Skagit River to South of I-90	1729
438	West Slopes South - South of I-90 to Columbia River	1729
438	Stevens Pass	1729
438	Snoqualmie Pass	1729
438	East Slopes North - Canadian Border to Lake Chelan	1730
438	East Slopes Central - Lake Chelan to South of I-90	1731
438	East Slopes South - South of I-90 to Columbia River	1732
438	Mt Hood	1733
437	Olympics	1722
437	West Slopes North - Canadian Border to Skagit River	1723
437	West Slopes Central - Skagit River to South of I-90	1723
437	West Slopes South - South of I-90 to Columbia River	1723
437	Stevens Pass	1723
437	Snoqualmie Pass	1723
437	East Slopes North - Canadian Border to Lake Chelan	1724
437	East Slopes Central - Lake Chelan to South of I-90	1725
437	East Slopes South - South of I-90 to Columbia River	1726
437	Mt Hood	1727
436	Olympics	1716
436	West Slopes North - Canadian Border to Skagit River	1717
436	West Slopes Central - Skagit River to South of I-90	1717
436	West Slopes South - South of I-90 to Columbia River	1717
436	Stevens Pass	1717
436	Snoqualmie Pass	1717
436	East Slopes North - Canadian Border to Lake Chelan	1718
436	East Slopes Central - Lake Chelan to South of I-90	1719
435	Olympics	1710
436	East Slopes South - South of I-90 to Columbia River	1720
436	Mt Hood	1721
434	Olympics	1702
434	West Slopes North - Canadian Border to Skagit River	1703
434	West Slopes Central - Skagit River to South of I-90	1703
434	West Slopes South - South of I-90 to Columbia River	1703
434	Stevens Pass	1703
434	Snoqualmie Pass	1703
434	East Slopes North - Canadian Border to Lake Chelan	1704
434	East Slopes Central - Lake Chelan to South of I-90	1708
434	East Slopes South - South of I-90 to Columbia River	1709
434	Mt Hood	1707
431	Olympics	1688
431	West Slopes North - Canadian Border to Skagit River	1689
431	West Slopes Central - Skagit River to South of I-90	1689
431	West Slopes South - South of I-90 to Columbia River	1689
431	Stevens Pass	1689
431	Snoqualmie Pass	1689
431	East Slopes North - Canadian Border to Lake Chelan	1690
431	East Slopes Central - Lake Chelan to South of I-90	1690
431	East Slopes South - South of I-90 to Columbia River	1690
431	Mt Hood	1691
429	Olympics	1674
429	West Slopes North - Canadian Border to Skagit River	1673
429	West Slopes Central - Skagit River to South of I-90	1673
429	Stevens Pass	1677
429	Snoqualmie Pass	1677
429	West Slopes South - South of I-90 to Columbia River	1680
429	East Slopes North - Canadian Border to Lake Chelan	1675
429	East Slopes Central - Lake Chelan to South of I-90	1675
429	East Slopes South - South of I-90 to Columbia River	1679
429	Mt Hood	1676
426	Olympics	1652
426	West Slopes North - Canadian Border to Skagit River	1653
426	West Slopes Central - Skagit River to South of I-90	1653
426	Stevens Pass	1654
426	Snoqualmie Pass	1654
426	West Slopes South - South of I-90 to Columbia River	1655
426	East Slopes North - Canadian Border to Lake Chelan	1656
426	East Slopes Central - Lake Chelan to South of I-90	1656
426	East Slopes South - South of I-90 to Columbia River	1657
426	Mt Hood	1658
423	Olympics	1631
423	West Slopes North - Canadian Border to Skagit River	1627
423	West Slopes Central - Skagit River to South of I-90	1627
423	Stevens Pass	1629
423	Snoqualmie Pass	1629
423	West Slopes South - South of I-90 to Columbia River	1628
423	East Slopes North - Canadian Border to Lake Chelan	1632
423	East Slopes Central - Lake Chelan to South of I-90	1632
423	East Slopes South - South of I-90 to Columbia River	1633
423	Mt Hood	1630
408	Olympics	1586
408	West Slopes North - Canadian Border to Skagit River	1587
408	West Slopes Central - Skagit River to South of I-90	1587
408	West Slopes South - South of I-90 to Columbia River	1587
408	Stevens Pass	1587
408	Snoqualmie Pass	1587
408	East Slopes North - Canadian Border to Lake Chelan	1588
408	East Slopes Central - Lake Chelan to South of I-90	1588
408	East Slopes South - South of I-90 to Columbia River	1588
408	Mt Hood	1589
435	West Slopes North - Canadian Border to Skagit River	1711
435	West Slopes Central - Skagit River to South of I-90	1711
435	West Slopes South - South of I-90 to Columbia River	1711
435	Stevens Pass	1711
435	Snoqualmie Pass	1711
435	East Slopes North - Canadian Border to Lake Chelan	1712
435	East Slopes Central - Lake Chelan to South of I-90	1713
435	East Slopes South - South of I-90 to Columbia River	1714
435	Mt Hood	1715
433	Olympics	1696
433	West Slopes North - Canadian Border to Skagit River	1697
433	West Slopes Central - Skagit River to South of I-90	1697
433	West Slopes South - South of I-90 to Columbia River	1697
433	Stevens Pass	1697
433	Snoqualmie Pass	1697
433	East Slopes North - Canadian Border to Lake Chelan	1700
433	East Slopes Central - Lake Chelan to South of I-90	1701
433	East Slopes South - South of I-90 to Columbia River	1698
433	Mt Hood	1699
430	Olympics	1681
430	West Slopes North - Canadian Border to Skagit River	1682
430	West Slopes Central - Skagit River to South of I-90	1682
430	West Slopes South - South of I-90 to Columbia River	1682
430	Stevens Pass	1682
430	Snoqualmie Pass	1682
430	East Slopes North - Canadian Border to Lake Chelan	1685
430	East Slopes Central - Lake Chelan to South of I-90	1685
430	East Slopes South - South of I-90 to Columbia River	1685
430	Mt Hood	1687
427	Olympics	1659
427	West Slopes North - Canadian Border to Skagit River	1660
427	West Slopes Central - Skagit River to South of I-90	1660
427	Stevens Pass	1661
427	Snoqualmie Pass	1661
427	West Slopes South - South of I-90 to Columbia River	1662
427	East Slopes North - Canadian Border to Lake Chelan	1663
427	East Slopes Central - Lake Chelan to South of I-90	1663
427	East Slopes South - South of I-90 to Columbia River	1664
427	Mt Hood	1665
424	Olympics	1635
424	West Slopes North - Canadian Border to Skagit River	1636
424	West Slopes Central - Skagit River to South of I-90	1636
424	Stevens Pass	1642
424	Snoqualmie Pass	1642
424	West Slopes South - South of I-90 to Columbia River	1643
424	East Slopes North - Canadian Border to Lake Chelan	1639
424	East Slopes Central - Lake Chelan to South of I-90	1639
424	East Slopes South - South of I-90 to Columbia River	1644
424	Mt Hood	1641
410	Olympics	1594
410	West Slopes North - Canadian Border to Skagit River	1594
410	West Slopes Central - Skagit River to South of I-90	1594
410	West Slopes South - South of I-90 to Columbia River	1594
410	Stevens Pass	1594
410	Snoqualmie Pass	1594
410	East Slopes North - Canadian Border to Lake Chelan	1594
410	East Slopes Central - Lake Chelan to South of I-90	1594
410	East Slopes South - South of I-90 to Columbia River	1594
410	Mt Hood	1594
407	Olympics	1582
407	West Slopes North - Canadian Border to Skagit River	1583
407	West Slopes Central - Skagit River to South of I-90	1583
407	West Slopes South - South of I-90 to Columbia River	1583
407	Stevens Pass	1583
407	Snoqualmie Pass	1583
407	East Slopes North - Canadian Border to Lake Chelan	1584
407	East Slopes Central - Lake Chelan to South of I-90	1584
407	East Slopes South - South of I-90 to Columbia River	1584
407	Mt Hood	1585
406	Olympics	1578
406	West Slopes North - Canadian Border to Skagit River	1579
406	West Slopes Central - Skagit River to South of I-90	1579
406	West Slopes South - South of I-90 to Columbia River	1579
406	Stevens Pass	1579
406	Snoqualmie Pass	1579
406	East Slopes North - Canadian Border to Lake Chelan	1580
406	East Slopes Central - Lake Chelan to South of I-90	1580
406	East Slopes South - South of I-90 to Columbia River	1580
406	Mt Hood	1581
405	Olympics	1574
405	West Slopes North - Canadian Border to Skagit River	1575
405	West Slopes Central - Skagit River to South of I-90	1575
405	West Slopes South - South of I-90 to Columbia River	1575
405	Stevens Pass	1575
405	Snoqualmie Pass	1575
405	East Slopes North - Canadian Border to Lake Chelan	1576
405	East Slopes Central - Lake Chelan to South of I-90	1576
405	East Slopes South - South of I-90 to Columbia River	1576
405	Mt Hood	1577
404	Olympics	1570
404	West Slopes North - Canadian Border to Skagit River	1571
404	West Slopes Central - Skagit River to South of I-90	1571
404	West Slopes South - South of I-90 to Columbia River	1571
404	Stevens Pass	1571
404	Snoqualmie Pass	1571
404	East Slopes North - Canadian Border to Lake Chelan	1572
404	East Slopes Central - Lake Chelan to South of I-90	1572
404	East Slopes South - South of I-90 to Columbia River	1572
404	Mt Hood	1573
403	Olympics	1566
403	West Slopes North - Canadian Border to Skagit River	1567
403	West Slopes Central - Skagit River to South of I-90	1567
403	West Slopes South - South of I-90 to Columbia River	1567
403	Stevens Pass	1567
403	Snoqualmie Pass	1567
403	East Slopes North - Canadian Border to Lake Chelan	1568
403	East Slopes Central - Lake Chelan to South of I-90	1568
402	Olympics	1562
403	East Slopes South - South of I-90 to Columbia River	1568
403	Mt Hood	1569
401	Olympics	1558
401	West Slopes North - Canadian Border to Skagit River	1559
401	West Slopes Central - Skagit River to South of I-90	1559
401	West Slopes South - South of I-90 to Columbia River	1559
401	Stevens Pass	1559
401	Snoqualmie Pass	1559
401	East Slopes North - Canadian Border to Lake Chelan	1560
401	East Slopes Central - Lake Chelan to South of I-90	1560
401	East Slopes South - South of I-90 to Columbia River	1560
401	Mt Hood	1561
394	Olympics	1525
394	West Slopes North - Canadian Border to Skagit River	1526
394	West Slopes South - South of I-90 to Columbia River	1526
394	West Slopes Central - Skagit River to South of I-90	1529
394	Stevens Pass	1529
394	Snoqualmie Pass	1529
394	East Slopes North - Canadian Border to Lake Chelan	1527
394	East Slopes Central - Lake Chelan to South of I-90	1527
394	East Slopes South - South of I-90 to Columbia River	1527
394	Mt Hood	1528
392	Olympics	1516
392	West Slopes North - Canadian Border to Skagit River	1517
392	West Slopes Central - Skagit River to South of I-90	1517
392	West Slopes South - South of I-90 to Columbia River	1517
392	Stevens Pass	1517
392	Snoqualmie Pass	1517
392	East Slopes North - Canadian Border to Lake Chelan	1519
392	East Slopes Central - Lake Chelan to South of I-90	1519
392	East Slopes South - South of I-90 to Columbia River	1519
392	Mt Hood	1520
390	Olympics	1505
390	West Slopes North - Canadian Border to Skagit River	1509
390	West Slopes Central - Skagit River to South of I-90	1506
390	West Slopes South - South of I-90 to Columbia River	1506
390	Stevens Pass	1506
390	Snoqualmie Pass	1506
390	East Slopes North - Canadian Border to Lake Chelan	1507
390	East Slopes Central - Lake Chelan to South of I-90	1507
390	East Slopes South - South of I-90 to Columbia River	1507
390	Mt Hood	1508
388	Olympics	1497
388	West Slopes North - Canadian Border to Skagit River	1498
388	West Slopes Central - Skagit River to South of I-90	1498
388	West Slopes South - South of I-90 to Columbia River	1498
388	Stevens Pass	1498
388	Snoqualmie Pass	1498
388	East Slopes North - Canadian Border to Lake Chelan	1499
388	East Slopes Central - Lake Chelan to South of I-90	1499
388	East Slopes South - South of I-90 to Columbia River	1499
388	Mt Hood	1500
386	Olympics	1488
386	West Slopes North - Canadian Border to Skagit River	1489
386	West Slopes Central - Skagit River to South of I-90	1489
386	West Slopes South - South of I-90 to Columbia River	1489
386	Stevens Pass	1489
386	Snoqualmie Pass	1489
386	East Slopes North - Canadian Border to Lake Chelan	1491
386	East Slopes Central - Lake Chelan to South of I-90	1491
386	East Slopes South - South of I-90 to Columbia River	1491
386	Mt Hood	1492
384	Olympics	1478
384	West Slopes North - Canadian Border to Skagit River	1479
384	West Slopes Central - Skagit River to South of I-90	1479
384	West Slopes South - South of I-90 to Columbia River	1479
384	Stevens Pass	1479
384	Snoqualmie Pass	1479
384	East Slopes North - Canadian Border to Lake Chelan	1481
384	East Slopes Central - Lake Chelan to South of I-90	1481
384	East Slopes South - South of I-90 to Columbia River	1481
384	Mt Hood	1482
383	Olympics	1473
383	West Slopes North - Canadian Border to Skagit River	1474
383	West Slopes Central - Skagit River to South of I-90	1474
383	Stevens Pass	1474
383	Snoqualmie Pass	1474
383	West Slopes South - South of I-90 to Columbia River	1477
383	East Slopes North - Canadian Border to Lake Chelan	1475
383	East Slopes Central - Lake Chelan to South of I-90	1475
383	East Slopes South - South of I-90 to Columbia River	1475
383	Mt Hood	1476
381	Olympics	1465
381	West Slopes North - Canadian Border to Skagit River	1466
381	West Slopes Central - Skagit River to South of I-90	1466
381	West Slopes South - South of I-90 to Columbia River	1466
381	Stevens Pass	1466
381	Snoqualmie Pass	1466
381	East Slopes North - Canadian Border to Lake Chelan	1467
381	East Slopes Central - Lake Chelan to South of I-90	1467
381	East Slopes South - South of I-90 to Columbia River	1467
381	Mt Hood	1468
379	Olympics	1455
379	West Slopes North - Canadian Border to Skagit River	1457
379	West Slopes Central - Skagit River to South of I-90	1457
379	West Slopes South - South of I-90 to Columbia River	1457
379	Stevens Pass	1457
379	Snoqualmie Pass	1457
379	East Slopes North - Canadian Border to Lake Chelan	1458
379	East Slopes Central - Lake Chelan to South of I-90	1458
379	East Slopes South - South of I-90 to Columbia River	1458
379	Mt Hood	1460
377	Olympics	1444
377	West Slopes North - Canadian Border to Skagit River	1445
377	West Slopes Central - Skagit River to South of I-90	1448
377	West Slopes South - South of I-90 to Columbia River	1448
377	Stevens Pass	1448
377	Snoqualmie Pass	1448
366	Snoqualmie Pass	1397
402	West Slopes North - Canadian Border to Skagit River	1563
402	West Slopes Central - Skagit River to South of I-90	1563
402	West Slopes South - South of I-90 to Columbia River	1563
402	Stevens Pass	1563
402	Snoqualmie Pass	1563
402	East Slopes North - Canadian Border to Lake Chelan	1564
402	East Slopes Central - Lake Chelan to South of I-90	1564
402	East Slopes South - South of I-90 to Columbia River	1564
402	Mt Hood	1565
400	Olympics	1554
400	West Slopes North - Canadian Border to Skagit River	1555
400	West Slopes Central - Skagit River to South of I-90	1555
400	West Slopes South - South of I-90 to Columbia River	1555
400	Stevens Pass	1555
400	Snoqualmie Pass	1555
400	East Slopes North - Canadian Border to Lake Chelan	1556
400	East Slopes Central - Lake Chelan to South of I-90	1556
400	East Slopes South - South of I-90 to Columbia River	1556
400	Mt Hood	1557
399	Olympics	1550
399	West Slopes North - Canadian Border to Skagit River	1551
399	West Slopes Central - Skagit River to South of I-90	1551
399	West Slopes South - South of I-90 to Columbia River	1551
399	Stevens Pass	1551
399	Snoqualmie Pass	1551
399	East Slopes North - Canadian Border to Lake Chelan	1552
399	East Slopes Central - Lake Chelan to South of I-90	1552
399	East Slopes South - South of I-90 to Columbia River	1552
399	Mt Hood	1553
398	Olympics	1546
398	West Slopes North - Canadian Border to Skagit River	1547
398	West Slopes Central - Skagit River to South of I-90	1547
398	West Slopes South - South of I-90 to Columbia River	1547
398	Stevens Pass	1547
398	Snoqualmie Pass	1547
398	East Slopes North - Canadian Border to Lake Chelan	1548
398	East Slopes Central - Lake Chelan to South of I-90	1548
398	East Slopes South - South of I-90 to Columbia River	1548
398	Mt Hood	1549
397	Olympics	1541
397	West Slopes North - Canadian Border to Skagit River	1542
397	West Slopes Central - Skagit River to South of I-90	1542
397	West Slopes South - South of I-90 to Columbia River	1542
397	Stevens Pass	1542
397	Snoqualmie Pass	1542
397	East Slopes North - Canadian Border to Lake Chelan	1544
397	East Slopes Central - Lake Chelan to South of I-90	1544
397	East Slopes South - South of I-90 to Columbia River	1544
397	Mt Hood	1545
393	Olympics	1521
393	West Slopes North - Canadian Border to Skagit River	1522
393	West Slopes Central - Skagit River to South of I-90	1522
393	West Slopes South - South of I-90 to Columbia River	1522
393	Stevens Pass	1522
393	Snoqualmie Pass	1522
393	East Slopes North - Canadian Border to Lake Chelan	1523
393	East Slopes Central - Lake Chelan to South of I-90	1523
393	East Slopes South - South of I-90 to Columbia River	1523
393	Mt Hood	1524
391	Olympics	1510
391	West Slopes North - Canadian Border to Skagit River	1511
391	West Slopes Central - Skagit River to South of I-90	1515
391	West Slopes South - South of I-90 to Columbia River	1515
391	Stevens Pass	1515
391	Snoqualmie Pass	1515
391	East Slopes North - Canadian Border to Lake Chelan	1513
391	East Slopes Central - Lake Chelan to South of I-90	1513
391	East Slopes South - South of I-90 to Columbia River	1513
391	Mt Hood	1514
389	Olympics	1501
389	West Slopes North - Canadian Border to Skagit River	1502
389	West Slopes Central - Skagit River to South of I-90	1502
389	West Slopes South - South of I-90 to Columbia River	1502
389	Stevens Pass	1502
389	Snoqualmie Pass	1502
389	East Slopes North - Canadian Border to Lake Chelan	1503
389	East Slopes Central - Lake Chelan to South of I-90	1503
389	East Slopes South - South of I-90 to Columbia River	1503
389	Mt Hood	1504
387	Olympics	1493
387	West Slopes North - Canadian Border to Skagit River	1494
387	West Slopes Central - Skagit River to South of I-90	1494
387	West Slopes South - South of I-90 to Columbia River	1494
387	Stevens Pass	1494
387	Snoqualmie Pass	1494
387	East Slopes North - Canadian Border to Lake Chelan	1495
387	East Slopes Central - Lake Chelan to South of I-90	1495
387	East Slopes South - South of I-90 to Columbia River	1495
387	Mt Hood	1496
385	Olympics	1483
385	West Slopes North - Canadian Border to Skagit River	1484
385	West Slopes Central - Skagit River to South of I-90	1484
385	Stevens Pass	1484
385	Snoqualmie Pass	1484
385	West Slopes South - South of I-90 to Columbia River	1487
385	East Slopes North - Canadian Border to Lake Chelan	1485
385	East Slopes Central - Lake Chelan to South of I-90	1485
385	East Slopes South - South of I-90 to Columbia River	1485
385	Mt Hood	1486
382	Olympics	1469
382	West Slopes North - Canadian Border to Skagit River	1470
382	West Slopes Central - Skagit River to South of I-90	1470
382	West Slopes South - South of I-90 to Columbia River	1470
382	Stevens Pass	1470
382	Snoqualmie Pass	1470
382	East Slopes North - Canadian Border to Lake Chelan	1471
382	East Slopes Central - Lake Chelan to South of I-90	1471
365	Olympics	1392
382	East Slopes South - South of I-90 to Columbia River	1471
382	Mt Hood	1472
380	Olympics	1461
380	West Slopes North - Canadian Border to Skagit River	1462
380	West Slopes Central - Skagit River to South of I-90	1462
380	West Slopes South - South of I-90 to Columbia River	1462
380	Stevens Pass	1462
380	Snoqualmie Pass	1462
380	East Slopes North - Canadian Border to Lake Chelan	1463
380	East Slopes Central - Lake Chelan to South of I-90	1463
380	East Slopes South - South of I-90 to Columbia River	1463
380	Mt Hood	1464
378	Olympics	1449
378	West Slopes North - Canadian Border to Skagit River	1450
378	West Slopes Central - Skagit River to South of I-90	1451
378	West Slopes South - South of I-90 to Columbia River	1451
378	Stevens Pass	1451
378	Snoqualmie Pass	1451
378	East Slopes North - Canadian Border to Lake Chelan	1454
378	East Slopes Central - Lake Chelan to South of I-90	1452
378	East Slopes South - South of I-90 to Columbia River	1452
378	Mt Hood	1453
377	East Slopes North - Canadian Border to Lake Chelan	1446
377	East Slopes Central - Lake Chelan to South of I-90	1446
377	East Slopes South - South of I-90 to Columbia River	1446
377	Mt Hood	1447
376	Olympics	1439
376	West Slopes North - Canadian Border to Skagit River	1440
376	West Slopes Central - Skagit River to South of I-90	1440
376	West Slopes South - South of I-90 to Columbia River	1440
376	Stevens Pass	1440
376	Snoqualmie Pass	1440
376	East Slopes North - Canadian Border to Lake Chelan	1441
376	East Slopes Central - Lake Chelan to South of I-90	1441
376	East Slopes South - South of I-90 to Columbia River	1441
376	Mt Hood	1443
375	Olympics	1434
375	West Slopes North - Canadian Border to Skagit River	1435
375	West Slopes Central - Skagit River to South of I-90	1435
375	West Slopes South - South of I-90 to Columbia River	1435
375	Stevens Pass	1435
375	Snoqualmie Pass	1435
375	East Slopes North - Canadian Border to Lake Chelan	1436
375	East Slopes Central - Lake Chelan to South of I-90	1437
375	East Slopes South - South of I-90 to Columbia River	1437
375	Mt Hood	1438
374	Olympics	1433
374	West Slopes North - Canadian Border to Skagit River	1429
374	West Slopes Central - Skagit River to South of I-90	1429
374	West Slopes South - South of I-90 to Columbia River	1429
374	Stevens Pass	1429
374	Snoqualmie Pass	1429
374	East Slopes North - Canadian Border to Lake Chelan	1430
374	East Slopes Central - Lake Chelan to South of I-90	1432
374	East Slopes South - South of I-90 to Columbia River	1432
374	Mt Hood	1431
373	Olympics	1424
373	West Slopes North - Canadian Border to Skagit River	1425
373	West Slopes Central - Skagit River to South of I-90	1425
373	West Slopes South - South of I-90 to Columbia River	1425
373	Stevens Pass	1425
373	Snoqualmie Pass	1425
373	East Slopes North - Canadian Border to Lake Chelan	1426
373	East Slopes Central - Lake Chelan to South of I-90	1426
373	East Slopes South - South of I-90 to Columbia River	1426
373	Mt Hood	1427
372	Olympics	1420
372	West Slopes North - Canadian Border to Skagit River	1421
372	West Slopes Central - Skagit River to South of I-90	1421
372	West Slopes South - South of I-90 to Columbia River	1421
372	Stevens Pass	1421
372	Snoqualmie Pass	1421
372	East Slopes North - Canadian Border to Lake Chelan	1422
372	East Slopes Central - Lake Chelan to South of I-90	1422
372	East Slopes South - South of I-90 to Columbia River	1422
372	Mt Hood	1423
371	Olympics	1416
371	West Slopes North - Canadian Border to Skagit River	1417
371	West Slopes Central - Skagit River to South of I-90	1417
371	West Slopes South - South of I-90 to Columbia River	1417
371	Stevens Pass	1417
371	Snoqualmie Pass	1417
371	East Slopes North - Canadian Border to Lake Chelan	1418
371	East Slopes Central - Lake Chelan to South of I-90	1418
371	East Slopes South - South of I-90 to Columbia River	1418
371	Mt Hood	1419
370	Olympics	1412
370	West Slopes North - Canadian Border to Skagit River	1413
370	West Slopes Central - Skagit River to South of I-90	1413
370	West Slopes South - South of I-90 to Columbia River	1413
370	Stevens Pass	1413
370	Snoqualmie Pass	1413
370	East Slopes North - Canadian Border to Lake Chelan	1414
370	East Slopes Central - Lake Chelan to South of I-90	1414
370	East Slopes South - South of I-90 to Columbia River	1414
370	Mt Hood	1415
369	Olympics	1408
369	West Slopes North - Canadian Border to Skagit River	1409
369	West Slopes Central - Skagit River to South of I-90	1409
369	West Slopes South - South of I-90 to Columbia River	1409
369	Stevens Pass	1409
369	Snoqualmie Pass	1409
369	East Slopes North - Canadian Border to Lake Chelan	1410
369	East Slopes Central - Lake Chelan to South of I-90	1410
369	East Slopes South - South of I-90 to Columbia River	1410
369	Mt Hood	1411
368	Olympics	1404
368	West Slopes North - Canadian Border to Skagit River	1405
368	West Slopes Central - Skagit River to South of I-90	1405
368	West Slopes South - South of I-90 to Columbia River	1405
368	Stevens Pass	1405
368	Snoqualmie Pass	1405
368	East Slopes North - Canadian Border to Lake Chelan	1406
368	East Slopes Central - Lake Chelan to South of I-90	1406
368	East Slopes South - South of I-90 to Columbia River	1406
368	Mt Hood	1407
367	Olympics	1400
367	West Slopes North - Canadian Border to Skagit River	1401
367	West Slopes Central - Skagit River to South of I-90	1401
367	West Slopes South - South of I-90 to Columbia River	1401
367	Stevens Pass	1401
367	Snoqualmie Pass	1401
367	East Slopes North - Canadian Border to Lake Chelan	1402
367	East Slopes Central - Lake Chelan to South of I-90	1402
367	East Slopes South - South of I-90 to Columbia River	1402
367	Mt Hood	1403
366	Olympics	1396
366	West Slopes North - Canadian Border to Skagit River	1397
366	West Slopes Central - Skagit River to South of I-90	1397
366	West Slopes South - South of I-90 to Columbia River	1397
366	East Slopes North - Canadian Border to Lake Chelan	1398
366	East Slopes Central - Lake Chelan to South of I-90	1398
366	East Slopes South - South of I-90 to Columbia River	1398
366	Mt Hood	1399
364	Olympics	1388
364	West Slopes North - Canadian Border to Skagit River	1389
364	West Slopes Central - Skagit River to South of I-90	1389
364	West Slopes South - South of I-90 to Columbia River	1389
364	Stevens Pass	1389
364	Snoqualmie Pass	1389
364	East Slopes North - Canadian Border to Lake Chelan	1390
364	East Slopes Central - Lake Chelan to South of I-90	1390
364	East Slopes South - South of I-90 to Columbia River	1390
364	Mt Hood	1391
361	Olympics	1373
361	West Slopes North - Canadian Border to Skagit River	1374
361	West Slopes Central - Skagit River to South of I-90	1374
361	Stevens Pass	1374
361	West Slopes South - South of I-90 to Columbia River	1378
361	Snoqualmie Pass	1378
361	East Slopes North - Canadian Border to Lake Chelan	1376
361	East Slopes Central - Lake Chelan to South of I-90	1376
361	East Slopes South - South of I-90 to Columbia River	1376
361	Mt Hood	1377
359	Olympics	1361
359	West Slopes North - Canadian Border to Skagit River	1362
359	West Slopes Central - Skagit River to South of I-90	1362
359	Stevens Pass	1362
359	West Slopes South - South of I-90 to Columbia River	1363
359	Snoqualmie Pass	1363
359	East Slopes North - Canadian Border to Lake Chelan	1364
359	East Slopes Central - Lake Chelan to South of I-90	1364
359	East Slopes South - South of I-90 to Columbia River	1364
359	Mt Hood	1366
365	West Slopes North - Canadian Border to Skagit River	1393
365	West Slopes Central - Skagit River to South of I-90	1393
365	West Slopes South - South of I-90 to Columbia River	1393
365	Stevens Pass	1393
365	Snoqualmie Pass	1393
365	East Slopes North - Canadian Border to Lake Chelan	1394
365	East Slopes Central - Lake Chelan to South of I-90	1394
365	East Slopes South - South of I-90 to Columbia River	1394
365	Mt Hood	1395
363	Olympics	1384
363	West Slopes North - Canadian Border to Skagit River	1385
363	West Slopes Central - Skagit River to South of I-90	1385
363	West Slopes South - South of I-90 to Columbia River	1385
363	Stevens Pass	1385
363	Snoqualmie Pass	1385
363	East Slopes North - Canadian Border to Lake Chelan	1386
363	East Slopes Central - Lake Chelan to South of I-90	1386
363	East Slopes South - South of I-90 to Columbia River	1386
363	Mt Hood	1387
362	Olympics	1379
362	West Slopes North - Canadian Border to Skagit River	1380
362	West Slopes Central - Skagit River to South of I-90	1380
362	West Slopes South - South of I-90 to Columbia River	1380
362	Stevens Pass	1380
362	Snoqualmie Pass	1380
362	East Slopes North - Canadian Border to Lake Chelan	1382
362	East Slopes Central - Lake Chelan to South of I-90	1382
362	East Slopes South - South of I-90 to Columbia River	1382
362	Mt Hood	1383
360	Olympics	1367
360	West Slopes North - Canadian Border to Skagit River	1368
360	West Slopes Central - Skagit River to South of I-90	1368
360	Stevens Pass	1368
360	West Slopes South - South of I-90 to Columbia River	1372
360	Snoqualmie Pass	1372
360	East Slopes North - Canadian Border to Lake Chelan	1370
360	East Slopes Central - Lake Chelan to South of I-90	1370
360	East Slopes South - South of I-90 to Columbia River	1370
360	Mt Hood	1371
358	Olympics	1354
358	West Slopes North - Canadian Border to Skagit River	1356
358	West Slopes Central - Skagit River to South of I-90	1356
358	Stevens Pass	1356
358	West Slopes South - South of I-90 to Columbia River	1357
358	Snoqualmie Pass	1357
358	East Slopes North - Canadian Border to Lake Chelan	1358
358	East Slopes Central - Lake Chelan to South of I-90	1359
358	East Slopes South - South of I-90 to Columbia River	1359
358	Mt Hood	1360
357	Olympics	1347
357	West Slopes North - Canadian Border to Skagit River	1352
357	West Slopes Central - Skagit River to South of I-90	1348
357	Stevens Pass	1348
357	West Slopes South - South of I-90 to Columbia River	1349
357	Snoqualmie Pass	1349
357	East Slopes North - Canadian Border to Lake Chelan	1353
357	East Slopes Central - Lake Chelan to South of I-90	1350
357	East Slopes South - South of I-90 to Columbia River	1350
357	Mt Hood	1351
356	Olympics	1342
356	West Slopes North - Canadian Border to Skagit River	1346
356	West Slopes Central - Skagit River to South of I-90	1346
356	Stevens Pass	1346
356	Snoqualmie Pass	1346
356	West Slopes South - South of I-90 to Columbia River	1343
356	East Slopes North - Canadian Border to Lake Chelan	1344
356	East Slopes Central - Lake Chelan to South of I-90	1344
356	East Slopes South - South of I-90 to Columbia River	1344
356	Mt Hood	1345
355	Olympics	1338
355	West Slopes North - Canadian Border to Skagit River	1339
355	West Slopes Central - Skagit River to South of I-90	1339
355	West Slopes South - South of I-90 to Columbia River	1339
355	Stevens Pass	1339
355	Snoqualmie Pass	1339
355	East Slopes North - Canadian Border to Lake Chelan	1340
355	East Slopes Central - Lake Chelan to South of I-90	1340
355	East Slopes South - South of I-90 to Columbia River	1340
355	Mt Hood	1341
354	Olympics	1334
354	West Slopes North - Canadian Border to Skagit River	1335
354	West Slopes Central - Skagit River to South of I-90	1335
354	West Slopes South - South of I-90 to Columbia River	1335
354	Stevens Pass	1335
354	Snoqualmie Pass	1335
354	East Slopes North - Canadian Border to Lake Chelan	1336
354	East Slopes Central - Lake Chelan to South of I-90	1336
354	East Slopes South - South of I-90 to Columbia River	1336
354	Mt Hood	1337
353	Olympics	1330
353	West Slopes North - Canadian Border to Skagit River	1331
353	West Slopes Central - Skagit River to South of I-90	1331
353	West Slopes South - South of I-90 to Columbia River	1331
353	Stevens Pass	1331
353	Snoqualmie Pass	1331
353	East Slopes North - Canadian Border to Lake Chelan	1332
353	East Slopes Central - Lake Chelan to South of I-90	1332
353	East Slopes South - South of I-90 to Columbia River	1332
353	Mt Hood	1333
352	Olympics	1326
352	West Slopes North - Canadian Border to Skagit River	1327
352	West Slopes Central - Skagit River to South of I-90	1327
352	West Slopes South - South of I-90 to Columbia River	1327
352	Stevens Pass	1327
352	Snoqualmie Pass	1327
352	East Slopes North - Canadian Border to Lake Chelan	1328
352	East Slopes Central - Lake Chelan to South of I-90	1328
351	Olympics	1322
352	East Slopes South - South of I-90 to Columbia River	1328
352	Mt Hood	1329
350	Olympics	1317
350	West Slopes North - Canadian Border to Skagit River	1319
350	West Slopes Central - Skagit River to South of I-90	1319
350	West Slopes South - South of I-90 to Columbia River	1319
350	Stevens Pass	1319
350	Snoqualmie Pass	1319
350	East Slopes North - Canadian Border to Lake Chelan	1320
350	East Slopes Central - Lake Chelan to South of I-90	1320
350	East Slopes South - South of I-90 to Columbia River	1320
350	Mt Hood	1321
348	Olympics	1306
348	West Slopes North - Canadian Border to Skagit River	1310
348	West Slopes Central - Skagit River to South of I-90	1310
348	Stevens Pass	1310
348	Snoqualmie Pass	1310
348	West Slopes South - South of I-90 to Columbia River	1307
348	East Slopes North - Canadian Border to Lake Chelan	1308
348	East Slopes Central - Lake Chelan to South of I-90	1308
348	East Slopes South - South of I-90 to Columbia River	1308
348	Mt Hood	1309
345	Olympics	1294
345	West Slopes North - Canadian Border to Skagit River	1295
345	West Slopes Central - Skagit River to South of I-90	1295
345	West Slopes South - South of I-90 to Columbia River	1295
345	Stevens Pass	1295
345	Snoqualmie Pass	1295
345	East Slopes North - Canadian Border to Lake Chelan	1296
345	East Slopes Central - Lake Chelan to South of I-90	1296
345	East Slopes South - South of I-90 to Columbia River	1296
345	Mt Hood	1297
343	Olympics	1283
343	West Slopes North - Canadian Border to Skagit River	1284
343	West Slopes Central - Skagit River to South of I-90	1284
343	West Slopes South - South of I-90 to Columbia River	1284
343	Stevens Pass	1284
343	Snoqualmie Pass	1284
343	East Slopes North - Canadian Border to Lake Chelan	1285
343	East Slopes Central - Lake Chelan to South of I-90	1288
343	East Slopes South - South of I-90 to Columbia River	1288
343	Mt Hood	1287
339	Olympics	1262
339	West Slopes North - Canadian Border to Skagit River	1263
339	West Slopes Central - Skagit River to South of I-90	1263
339	West Slopes South - South of I-90 to Columbia River	1263
339	Stevens Pass	1263
339	Snoqualmie Pass	1263
339	East Slopes North - Canadian Border to Lake Chelan	1264
339	East Slopes Central - Lake Chelan to South of I-90	1265
339	East Slopes South - South of I-90 to Columbia River	1265
339	Mt Hood	1266
337	Olympics	1249
337	West Slopes North - Canadian Border to Skagit River	1250
337	West Slopes Central - Skagit River to South of I-90	1250
337	Stevens Pass	1250
337	Snoqualmie Pass	1250
337	West Slopes South - South of I-90 to Columbia River	1251
337	East Slopes North - Canadian Border to Lake Chelan	1252
337	East Slopes Central - Lake Chelan to South of I-90	1253
337	East Slopes South - South of I-90 to Columbia River	1253
337	Mt Hood	1254
335	Olympics	1237
335	West Slopes North - Canadian Border to Skagit River	1238
335	West Slopes Central - Skagit River to South of I-90	1238
335	West Slopes South - South of I-90 to Columbia River	1238
335	Stevens Pass	1238
335	Snoqualmie Pass	1238
335	East Slopes North - Canadian Border to Lake Chelan	1239
335	East Slopes Central - Lake Chelan to South of I-90	1242
335	East Slopes South - South of I-90 to Columbia River	1242
335	Mt Hood	1241
333	Olympics	1227
333	West Slopes North - Canadian Border to Skagit River	1228
333	West Slopes Central - Skagit River to South of I-90	1228
333	West Slopes South - South of I-90 to Columbia River	1228
333	Stevens Pass	1228
333	Snoqualmie Pass	1228
333	East Slopes North - Canadian Border to Lake Chelan	1229
333	East Slopes Central - Lake Chelan to South of I-90	1230
333	East Slopes South - South of I-90 to Columbia River	1230
333	Mt Hood	1231
331	Olympics	1214
331	West Slopes North - Canadian Border to Skagit River	1215
331	West Slopes Central - Skagit River to South of I-90	1216
331	West Slopes South - South of I-90 to Columbia River	1216
331	Stevens Pass	1216
331	Snoqualmie Pass	1216
331	East Slopes North - Canadian Border to Lake Chelan	1217
331	East Slopes Central - Lake Chelan to South of I-90	1220
331	East Slopes South - South of I-90 to Columbia River	1220
331	Mt Hood	1219
329	Olympics	1201
329	West Slopes North - Canadian Border to Skagit River	1202
329	West Slopes Central - Skagit River to South of I-90	1202
329	West Slopes South - South of I-90 to Columbia River	1202
329	Stevens Pass	1202
329	Snoqualmie Pass	1202
329	East Slopes North - Canadian Border to Lake Chelan	1203
329	East Slopes Central - Lake Chelan to South of I-90	1207
329	East Slopes South - South of I-90 to Columbia River	1207
329	Mt Hood	1205
328	Olympics	1195
328	West Slopes North - Canadian Border to Skagit River	1196
328	West Slopes Central - Skagit River to South of I-90	1196
328	West Slopes South - South of I-90 to Columbia River	1196
328	Stevens Pass	1196
328	Snoqualmie Pass	1196
311	Olympics	1091
351	West Slopes North - Canadian Border to Skagit River	1323
351	West Slopes Central - Skagit River to South of I-90	1323
351	West Slopes South - South of I-90 to Columbia River	1323
351	Stevens Pass	1323
351	Snoqualmie Pass	1323
351	East Slopes North - Canadian Border to Lake Chelan	1324
351	East Slopes Central - Lake Chelan to South of I-90	1324
351	East Slopes South - South of I-90 to Columbia River	1324
351	Mt Hood	1325
349	Olympics	1311
349	West Slopes North - Canadian Border to Skagit River	1316
349	West Slopes Central - Skagit River to South of I-90	1312
349	West Slopes South - South of I-90 to Columbia River	1312
349	Stevens Pass	1312
349	Snoqualmie Pass	1312
349	East Slopes North - Canadian Border to Lake Chelan	1314
349	East Slopes Central - Lake Chelan to South of I-90	1314
349	East Slopes South - South of I-90 to Columbia River	1314
349	Mt Hood	1315
347	Olympics	1302
347	West Slopes North - Canadian Border to Skagit River	1303
347	West Slopes Central - Skagit River to South of I-90	1303
347	West Slopes South - South of I-90 to Columbia River	1303
347	Stevens Pass	1303
347	Snoqualmie Pass	1303
347	East Slopes North - Canadian Border to Lake Chelan	1304
347	East Slopes Central - Lake Chelan to South of I-90	1304
347	East Slopes South - South of I-90 to Columbia River	1304
347	Mt Hood	1305
346	Olympics	1298
346	West Slopes North - Canadian Border to Skagit River	1299
346	West Slopes Central - Skagit River to South of I-90	1299
346	West Slopes South - South of I-90 to Columbia River	1299
346	Stevens Pass	1299
346	Snoqualmie Pass	1299
346	East Slopes North - Canadian Border to Lake Chelan	1300
346	East Slopes Central - Lake Chelan to South of I-90	1300
346	East Slopes South - South of I-90 to Columbia River	1300
346	Mt Hood	1301
344	Olympics	1289
344	West Slopes North - Canadian Border to Skagit River	1290
344	West Slopes Central - Skagit River to South of I-90	1290
344	West Slopes South - South of I-90 to Columbia River	1290
344	Stevens Pass	1290
344	Snoqualmie Pass	1290
344	East Slopes North - Canadian Border to Lake Chelan	1291
344	East Slopes Central - Lake Chelan to South of I-90	1291
344	East Slopes South - South of I-90 to Columbia River	1291
344	Mt Hood	1293
342	Olympics	1277
342	West Slopes North - Canadian Border to Skagit River	1278
342	West Slopes Central - Skagit River to South of I-90	1278
342	West Slopes South - South of I-90 to Columbia River	1278
342	Stevens Pass	1278
342	Snoqualmie Pass	1278
342	East Slopes North - Canadian Border to Lake Chelan	1279
342	East Slopes Central - Lake Chelan to South of I-90	1282
342	East Slopes South - South of I-90 to Columbia River	1282
342	Mt Hood	1281
341	Olympics	1272
341	West Slopes North - Canadian Border to Skagit River	1273
341	West Slopes Central - Skagit River to South of I-90	1273
341	West Slopes South - South of I-90 to Columbia River	1273
341	Stevens Pass	1273
341	Snoqualmie Pass	1273
341	East Slopes North - Canadian Border to Lake Chelan	1274
341	East Slopes Central - Lake Chelan to South of I-90	1275
341	East Slopes South - South of I-90 to Columbia River	1275
341	Mt Hood	1276
340	Olympics	1267
340	West Slopes North - Canadian Border to Skagit River	1268
340	West Slopes Central - Skagit River to South of I-90	1268
340	West Slopes South - South of I-90 to Columbia River	1268
340	Stevens Pass	1268
340	Snoqualmie Pass	1268
340	East Slopes North - Canadian Border to Lake Chelan	1269
340	East Slopes Central - Lake Chelan to South of I-90	1270
340	East Slopes South - South of I-90 to Columbia River	1270
340	Mt Hood	1271
338	Olympics	1255
338	West Slopes North - Canadian Border to Skagit River	1256
338	West Slopes Central - Skagit River to South of I-90	1256
338	West Slopes South - South of I-90 to Columbia River	1256
338	Stevens Pass	1256
338	Snoqualmie Pass	1256
338	East Slopes North - Canadian Border to Lake Chelan	1258
338	East Slopes Central - Lake Chelan to South of I-90	1261
338	East Slopes South - South of I-90 to Columbia River	1261
338	Mt Hood	1260
336	Olympics	1243
336	West Slopes North - Canadian Border to Skagit River	1244
336	West Slopes Central - Skagit River to South of I-90	1244
336	Stevens Pass	1244
336	Snoqualmie Pass	1244
336	West Slopes South - South of I-90 to Columbia River	1248
336	East Slopes North - Canadian Border to Lake Chelan	1245
336	East Slopes Central - Lake Chelan to South of I-90	1246
336	East Slopes South - South of I-90 to Columbia River	1246
336	Mt Hood	1247
334	Olympics	1232
334	West Slopes North - Canadian Border to Skagit River	1233
334	West Slopes Central - Skagit River to South of I-90	1233
334	West Slopes South - South of I-90 to Columbia River	1233
334	Stevens Pass	1233
334	Snoqualmie Pass	1233
334	East Slopes North - Canadian Border to Lake Chelan	1234
334	East Slopes Central - Lake Chelan to South of I-90	1235
311	Stevens Pass	1095
334	East Slopes South - South of I-90 to Columbia River	1235
334	Mt Hood	1236
332	Olympics	1221
332	West Slopes North - Canadian Border to Skagit River	1223
332	West Slopes Central - Skagit River to South of I-90	1223
332	West Slopes South - South of I-90 to Columbia River	1223
332	Stevens Pass	1223
332	Snoqualmie Pass	1223
332	East Slopes North - Canadian Border to Lake Chelan	1224
332	East Slopes Central - Lake Chelan to South of I-90	1225
332	East Slopes South - South of I-90 to Columbia River	1225
332	Mt Hood	1226
330	Olympics	1208
330	West Slopes North - Canadian Border to Skagit River	1213
330	West Slopes Central - Skagit River to South of I-90	1209
330	West Slopes South - South of I-90 to Columbia River	1209
330	Stevens Pass	1209
330	Snoqualmie Pass	1209
330	East Slopes North - Canadian Border to Lake Chelan	1210
330	East Slopes Central - Lake Chelan to South of I-90	1211
330	East Slopes South - South of I-90 to Columbia River	1211
330	Mt Hood	1212
327	Olympics	1190
327	West Slopes North - Canadian Border to Skagit River	1191
327	West Slopes Central - Skagit River to South of I-90	1192
327	West Slopes South - South of I-90 to Columbia River	1192
327	Stevens Pass	1192
327	Snoqualmie Pass	1192
327	East Slopes North - Canadian Border to Lake Chelan	1193
327	East Slopes Central - Lake Chelan to South of I-90	1193
327	East Slopes South - South of I-90 to Columbia River	1193
327	Mt Hood	1194
325	Olympics	1180
325	West Slopes North - Canadian Border to Skagit River	1181
325	West Slopes Central - Skagit River to South of I-90	1181
325	West Slopes South - South of I-90 to Columbia River	1181
325	Stevens Pass	1181
325	Snoqualmie Pass	1181
325	East Slopes North - Canadian Border to Lake Chelan	1182
325	East Slopes Central - Lake Chelan to South of I-90	1182
325	East Slopes South - South of I-90 to Columbia River	1182
325	Mt Hood	1184
323	Olympics	1169
323	West Slopes North - Canadian Border to Skagit River	1170
323	West Slopes Central - Skagit River to South of I-90	1170
323	West Slopes South - South of I-90 to Columbia River	1170
323	Stevens Pass	1170
323	Snoqualmie Pass	1170
323	East Slopes North - Canadian Border to Lake Chelan	1171
323	East Slopes Central - Lake Chelan to South of I-90	1171
323	East Slopes South - South of I-90 to Columbia River	1174
323	Mt Hood	1173
328	East Slopes North - Canadian Border to Lake Chelan	1198
328	East Slopes Central - Lake Chelan to South of I-90	1198
328	East Slopes South - South of I-90 to Columbia River	1200
328	Mt Hood	1199
326	Olympics	1185
326	West Slopes North - Canadian Border to Skagit River	1189
326	West Slopes Central - Skagit River to South of I-90	1186
326	West Slopes South - South of I-90 to Columbia River	1186
326	Stevens Pass	1186
326	Snoqualmie Pass	1186
326	East Slopes North - Canadian Border to Lake Chelan	1187
326	East Slopes Central - Lake Chelan to South of I-90	1187
326	East Slopes South - South of I-90 to Columbia River	1187
326	Mt Hood	1188
324	Olympics	1175
324	West Slopes North - Canadian Border to Skagit River	1176
324	West Slopes Central - Skagit River to South of I-90	1176
324	West Slopes South - South of I-90 to Columbia River	1176
324	Stevens Pass	1176
324	Snoqualmie Pass	1176
324	East Slopes North - Canadian Border to Lake Chelan	1177
324	East Slopes Central - Lake Chelan to South of I-90	1177
324	East Slopes South - South of I-90 to Columbia River	1178
324	Mt Hood	1179
322	Olympics	1161
322	West Slopes North - Canadian Border to Skagit River	1162
322	West Slopes Central - Skagit River to South of I-90	1162
322	West Slopes South - South of I-90 to Columbia River	1162
322	Stevens Pass	1162
322	Snoqualmie Pass	1162
322	East Slopes North - Canadian Border to Lake Chelan	1164
322	East Slopes Central - Lake Chelan to South of I-90	1164
322	East Slopes South - South of I-90 to Columbia River	1168
322	Mt Hood	1166
320	Olympics	1148
320	West Slopes North - Canadian Border to Skagit River	1149
320	West Slopes Central - Skagit River to South of I-90	1149
320	Stevens Pass	1149
320	Snoqualmie Pass	1149
320	West Slopes South - South of I-90 to Columbia River	1150
320	East Slopes North - Canadian Border to Lake Chelan	1151
320	East Slopes Central - Lake Chelan to South of I-90	1151
320	East Slopes South - South of I-90 to Columbia River	1152
320	Mt Hood	1153
319	Olympics	1142
319	West Slopes North - Canadian Border to Skagit River	1143
319	West Slopes Central - Skagit River to South of I-90	1143
319	Stevens Pass	1143
319	Snoqualmie Pass	1143
319	West Slopes South - South of I-90 to Columbia River	1144
319	East Slopes North - Canadian Border to Lake Chelan	1145
319	East Slopes Central - Lake Chelan to South of I-90	1145
319	East Slopes South - South of I-90 to Columbia River	1146
319	Mt Hood	1147
318	Olympics	1135
318	West Slopes North - Canadian Border to Skagit River	1136
318	West Slopes Central - Skagit River to South of I-90	1136
318	Stevens Pass	1136
318	Snoqualmie Pass	1136
318	West Slopes South - South of I-90 to Columbia River	1137
318	East Slopes North - Canadian Border to Lake Chelan	1138
318	East Slopes Central - Lake Chelan to South of I-90	1138
318	East Slopes South - South of I-90 to Columbia River	1140
318	Mt Hood	1141
317	Olympics	1128
317	West Slopes North - Canadian Border to Skagit River	1129
317	West Slopes Central - Skagit River to South of I-90	1129
317	Stevens Pass	1129
317	Snoqualmie Pass	1129
317	West Slopes South - South of I-90 to Columbia River	1130
317	East Slopes North - Canadian Border to Lake Chelan	1131
317	East Slopes Central - Lake Chelan to South of I-90	1132
317	East Slopes South - South of I-90 to Columbia River	1133
317	Mt Hood	1134
316	Olympics	1119
316	West Slopes North - Canadian Border to Skagit River	1120
316	West Slopes Central - Skagit River to South of I-90	1120
316	Stevens Pass	1120
316	Snoqualmie Pass	1120
316	West Slopes South - South of I-90 to Columbia River	1125
316	East Slopes North - Canadian Border to Lake Chelan	1122
316	East Slopes Central - Lake Chelan to South of I-90	1126
316	East Slopes South - South of I-90 to Columbia River	1127
316	Mt Hood	1124
315	Olympics	1110
315	West Slopes North - Canadian Border to Skagit River	1111
315	West Slopes Central - Skagit River to South of I-90	1111
315	Stevens Pass	1111
315	Snoqualmie Pass	1111
315	West Slopes South - South of I-90 to Columbia River	1117
315	East Slopes North - Canadian Border to Lake Chelan	1113
315	East Slopes Central - Lake Chelan to South of I-90	1113
315	East Slopes South - South of I-90 to Columbia River	1118
315	Mt Hood	1115
314	Olympics	1102
314	West Slopes North - Canadian Border to Skagit River	1104
314	West Slopes Central - Skagit River to South of I-90	1104
314	West Slopes South - South of I-90 to Columbia River	1104
314	Snoqualmie Pass	1104
314	Stevens Pass	1109
314	East Slopes North - Canadian Border to Lake Chelan	1105
314	East Slopes Central - Lake Chelan to South of I-90	1108
314	East Slopes South - South of I-90 to Columbia River	1108
314	Mt Hood	1107
312	Olympics	1096
312	Stevens Pass	1097
312	West Slopes North - Canadian Border to Skagit River	1098
312	West Slopes Central - Skagit River to South of I-90	1098
312	West Slopes South - South of I-90 to Columbia River	1098
312	Snoqualmie Pass	1098
312	East Slopes North - Canadian Border to Lake Chelan	1099
312	East Slopes Central - Lake Chelan to South of I-90	1101
312	East Slopes South - South of I-90 to Columbia River	1101
312	Mt Hood	1100
308	Olympics	1077
308	West Slopes North - Canadian Border to Skagit River	1078
308	West Slopes Central - Skagit River to South of I-90	1078
308	West Slopes South - South of I-90 to Columbia River	1078
308	Stevens Pass	1078
308	Snoqualmie Pass	1078
308	East Slopes North - Canadian Border to Lake Chelan	1079
308	East Slopes Central - Lake Chelan to South of I-90	1079
308	East Slopes South - South of I-90 to Columbia River	1079
308	Mt Hood	1080
307	Olympics	1073
307	West Slopes North - Canadian Border to Skagit River	1074
307	West Slopes Central - Skagit River to South of I-90	1074
307	West Slopes South - South of I-90 to Columbia River	1074
307	Stevens Pass	1074
307	Snoqualmie Pass	1074
307	East Slopes North - Canadian Border to Lake Chelan	1075
307	East Slopes Central - Lake Chelan to South of I-90	1075
307	East Slopes South - South of I-90 to Columbia River	1075
307	Mt Hood	1076
305	Olympics	1063
305	West Slopes North - Canadian Border to Skagit River	1064
305	West Slopes Central - Skagit River to South of I-90	1064
305	West Slopes South - South of I-90 to Columbia River	1064
305	Stevens Pass	1064
305	Snoqualmie Pass	1064
305	East Slopes North - Canadian Border to Lake Chelan	1065
305	East Slopes South - South of I-90 to Columbia River	1065
305	East Slopes Central - Lake Chelan to South of I-90	1066
305	Mt Hood	1067
301	Olympics	1051
301	West Slopes North - Canadian Border to Skagit River	1052
301	West Slopes Central - Skagit River to South of I-90	1052
301	West Slopes South - South of I-90 to Columbia River	1052
301	Stevens Pass	1052
301	Snoqualmie Pass	1052
301	East Slopes North - Canadian Border to Lake Chelan	1053
301	East Slopes South - South of I-90 to Columbia River	1053
301	East Slopes Central - Lake Chelan to South of I-90	1056
301	Mt Hood	1055
299	Olympics	1041
299	West Slopes North - Canadian Border to Skagit River	1042
299	West Slopes Central - Skagit River to South of I-90	1042
299	West Slopes South - South of I-90 to Columbia River	1042
299	Stevens Pass	1042
299	Snoqualmie Pass	1042
299	East Slopes North - Canadian Border to Lake Chelan	1043
299	East Slopes South - South of I-90 to Columbia River	1043
299	East Slopes Central - Lake Chelan to South of I-90	1044
299	Mt Hood	1045
298	Olympics	1036
298	West Slopes North - Canadian Border to Skagit River	1037
298	West Slopes Central - Skagit River to South of I-90	1037
298	West Slopes South - South of I-90 to Columbia River	1037
298	Stevens Pass	1037
298	Snoqualmie Pass	1037
298	East Slopes North - Canadian Border to Lake Chelan	1038
298	East Slopes South - South of I-90 to Columbia River	1038
298	East Slopes Central - Lake Chelan to South of I-90	1040
298	Mt Hood	1039
293	Olympics	1020
293	West Slopes North - Canadian Border to Skagit River	1021
293	West Slopes Central - Skagit River to South of I-90	1021
293	West Slopes South - South of I-90 to Columbia River	1021
293	Stevens Pass	1021
293	Snoqualmie Pass	1021
293	East Slopes North - Canadian Border to Lake Chelan	1022
293	East Slopes Central - Lake Chelan to South of I-90	1022
293	East Slopes South - South of I-90 to Columbia River	1022
293	Mt Hood	1023
291	Olympics	1011
291	West Slopes North - Canadian Border to Skagit River	1015
291	West Slopes Central - Skagit River to South of I-90	1015
291	West Slopes South - South of I-90 to Columbia River	1015
291	Stevens Pass	1015
291	Snoqualmie Pass	1015
291	East Slopes North - Canadian Border to Lake Chelan	1013
291	East Slopes Central - Lake Chelan to South of I-90	1013
291	East Slopes South - South of I-90 to Columbia River	1013
291	Mt Hood	1014
289	Olympics	1003
289	West Slopes North - Canadian Border to Skagit River	1004
289	West Slopes Central - Skagit River to South of I-90	1004
289	West Slopes South - South of I-90 to Columbia River	1004
289	Stevens Pass	1004
289	Snoqualmie Pass	1004
289	East Slopes North - Canadian Border to Lake Chelan	1005
289	East Slopes Central - Lake Chelan to South of I-90	1005
289	East Slopes South - South of I-90 to Columbia River	1005
289	Mt Hood	1006
311	West Slopes North - Canadian Border to Skagit River	1092
311	West Slopes Central - Skagit River to South of I-90	1092
311	West Slopes South - South of I-90 to Columbia River	1092
311	Snoqualmie Pass	1092
311	East Slopes North - Canadian Border to Lake Chelan	1093
311	East Slopes Central - Lake Chelan to South of I-90	1093
311	East Slopes South - South of I-90 to Columbia River	1093
311	Mt Hood	1094
310	Olympics	1086
310	West Slopes North - Canadian Border to Skagit River	1087
310	West Slopes Central - Skagit River to South of I-90	1087
310	West Slopes South - South of I-90 to Columbia River	1087
310	Stevens Pass	1087
310	Snoqualmie Pass	1087
310	East Slopes North - Canadian Border to Lake Chelan	1089
310	East Slopes Central - Lake Chelan to South of I-90	1089
310	East Slopes South - South of I-90 to Columbia River	1089
310	Mt Hood	1090
309	Olympics	1081
309	West Slopes North - Canadian Border to Skagit River	1082
309	West Slopes Central - Skagit River to South of I-90	1082
309	West Slopes South - South of I-90 to Columbia River	1082
309	Snoqualmie Pass	1082
309	Stevens Pass	1085
309	East Slopes North - Canadian Border to Lake Chelan	1083
309	East Slopes Central - Lake Chelan to South of I-90	1083
309	East Slopes South - South of I-90 to Columbia River	1083
309	Mt Hood	1084
306	Olympics	1068
306	West Slopes North - Canadian Border to Skagit River	1069
306	West Slopes Central - Skagit River to South of I-90	1069
306	West Slopes South - South of I-90 to Columbia River	1069
306	Stevens Pass	1069
306	Snoqualmie Pass	1069
306	East Slopes North - Canadian Border to Lake Chelan	1070
306	East Slopes Central - Lake Chelan to South of I-90	1070
306	East Slopes South - South of I-90 to Columbia River	1070
306	Mt Hood	1072
302	Olympics	1057
302	West Slopes North - Canadian Border to Skagit River	1058
302	West Slopes Central - Skagit River to South of I-90	1058
302	West Slopes South - South of I-90 to Columbia River	1058
302	Stevens Pass	1058
302	Snoqualmie Pass	1058
302	East Slopes North - Canadian Border to Lake Chelan	1059
302	East Slopes South - South of I-90 to Columbia River	1059
302	East Slopes Central - Lake Chelan to South of I-90	1062
302	Mt Hood	1061
300	Olympics	1046
300	West Slopes North - Canadian Border to Skagit River	1047
300	West Slopes Central - Skagit River to South of I-90	1047
300	West Slopes South - South of I-90 to Columbia River	1047
300	Stevens Pass	1047
300	Snoqualmie Pass	1047
300	East Slopes North - Canadian Border to Lake Chelan	1048
300	East Slopes South - South of I-90 to Columbia River	1048
300	East Slopes Central - Lake Chelan to South of I-90	1049
300	Mt Hood	1050
295	Olympics	1028
295	West Slopes North - Canadian Border to Skagit River	1029
295	West Slopes Central - Skagit River to South of I-90	1029
295	West Slopes South - South of I-90 to Columbia River	1029
295	Stevens Pass	1029
295	Snoqualmie Pass	1029
295	East Slopes North - Canadian Border to Lake Chelan	1030
295	East Slopes Central - Lake Chelan to South of I-90	1030
295	East Slopes South - South of I-90 to Columbia River	1030
295	Mt Hood	1031
294	Olympics	1024
294	West Slopes North - Canadian Border to Skagit River	1025
294	West Slopes Central - Skagit River to South of I-90	1025
294	West Slopes South - South of I-90 to Columbia River	1025
294	Stevens Pass	1025
294	Snoqualmie Pass	1025
294	East Slopes North - Canadian Border to Lake Chelan	1026
294	East Slopes Central - Lake Chelan to South of I-90	1026
294	East Slopes South - South of I-90 to Columbia River	1026
294	Mt Hood	1027
292	Olympics	1016
292	West Slopes North - Canadian Border to Skagit River	1017
292	West Slopes Central - Skagit River to South of I-90	1017
292	West Slopes South - South of I-90 to Columbia River	1017
292	Stevens Pass	1017
292	Snoqualmie Pass	1017
292	East Slopes North - Canadian Border to Lake Chelan	1018
292	East Slopes Central - Lake Chelan to South of I-90	1018
292	East Slopes South - South of I-90 to Columbia River	1018
292	Mt Hood	1019
290	Olympics	1007
290	West Slopes North - Canadian Border to Skagit River	1008
290	West Slopes Central - Skagit River to South of I-90	1008
290	West Slopes South - South of I-90 to Columbia River	1008
290	Stevens Pass	1008
290	Snoqualmie Pass	1008
290	East Slopes North - Canadian Border to Lake Chelan	1009
290	East Slopes Central - Lake Chelan to South of I-90	1009
290	East Slopes South - South of I-90 to Columbia River	1009
290	Mt Hood	1010
288	Olympics	999
288	West Slopes North - Canadian Border to Skagit River	1000
288	West Slopes Central - Skagit River to South of I-90	1000
288	West Slopes South - South of I-90 to Columbia River	1000
288	Stevens Pass	1000
288	Snoqualmie Pass	1000
288	East Slopes North - Canadian Border to Lake Chelan	1001
288	East Slopes Central - Lake Chelan to South of I-90	1001
288	East Slopes South - South of I-90 to Columbia River	1001
288	Mt Hood	1002
287	Olympics	995
287	West Slopes North - Canadian Border to Skagit River	996
287	West Slopes Central - Skagit River to South of I-90	996
287	West Slopes South - South of I-90 to Columbia River	996
287	Stevens Pass	996
287	Snoqualmie Pass	996
287	East Slopes North - Canadian Border to Lake Chelan	997
287	East Slopes Central - Lake Chelan to South of I-90	997
287	East Slopes South - South of I-90 to Columbia River	997
287	Mt Hood	998
284	Olympics	975
284	West Slopes North - Canadian Border to Skagit River	981
284	Stevens Pass	976
284	West Slopes Central - Skagit River to South of I-90	980
284	West Slopes South - South of I-90 to Columbia River	980
284	Snoqualmie Pass	980
284	East Slopes North - Canadian Border to Lake Chelan	977
284	East Slopes Central - Lake Chelan to South of I-90	977
284	East Slopes South - South of I-90 to Columbia River	978
284	Mt Hood	979
282	Olympics	965
282	West Slopes North - Canadian Border to Skagit River	966
282	West Slopes Central - Skagit River to South of I-90	966
282	West Slopes South - South of I-90 to Columbia River	966
282	Stevens Pass	966
282	Snoqualmie Pass	966
282	East Slopes North - Canadian Border to Lake Chelan	967
282	East Slopes Central - Lake Chelan to South of I-90	967
282	East Slopes South - South of I-90 to Columbia River	968
282	Mt Hood	969
280	Olympics	955
280	West Slopes North - Canadian Border to Skagit River	956
280	West Slopes Central - Skagit River to South of I-90	956
280	West Slopes South - South of I-90 to Columbia River	956
280	Stevens Pass	956
280	Snoqualmie Pass	956
280	East Slopes North - Canadian Border to Lake Chelan	957
280	East Slopes Central - Lake Chelan to South of I-90	957
280	East Slopes South - South of I-90 to Columbia River	958
280	Mt Hood	959
278	Olympics	945
278	West Slopes North - Canadian Border to Skagit River	946
278	West Slopes Central - Skagit River to South of I-90	946
278	West Slopes South - South of I-90 to Columbia River	946
278	Stevens Pass	946
278	Snoqualmie Pass	946
278	East Slopes North - Canadian Border to Lake Chelan	947
278	East Slopes Central - Lake Chelan to South of I-90	947
278	East Slopes South - South of I-90 to Columbia River	948
278	Mt Hood	949
276	Olympics	933
276	West Slopes North - Canadian Border to Skagit River	934
276	West Slopes Central - Skagit River to South of I-90	934
276	West Slopes South - South of I-90 to Columbia River	934
276	Stevens Pass	934
276	Snoqualmie Pass	934
276	East Slopes North - Canadian Border to Lake Chelan	936
276	East Slopes Central - Lake Chelan to South of I-90	936
276	East Slopes South - South of I-90 to Columbia River	939
276	Mt Hood	938
273	Olympics	913
273	West Slopes North - Canadian Border to Skagit River	915
273	West Slopes Central - Skagit River to South of I-90	917
273	West Slopes South - South of I-90 to Columbia River	917
273	Stevens Pass	917
273	Snoqualmie Pass	917
273	East Slopes North - Canadian Border to Lake Chelan	919
273	East Slopes Central - Lake Chelan to South of I-90	919
273	East Slopes South - South of I-90 to Columbia River	914
273	Mt Hood	920
272	Olympics	908
272	West Slopes North - Canadian Border to Skagit River	909
272	West Slopes Central - Skagit River to South of I-90	909
272	West Slopes South - South of I-90 to Columbia River	909
272	Stevens Pass	909
272	Snoqualmie Pass	909
272	East Slopes North - Canadian Border to Lake Chelan	910
272	East Slopes Central - Lake Chelan to South of I-90	910
272	East Slopes South - South of I-90 to Columbia River	911
272	Mt Hood	912
270	Olympics	898
270	West Slopes North - Canadian Border to Skagit River	895
270	West Slopes South - South of I-90 to Columbia River	895
270	West Slopes Central - Skagit River to South of I-90	897
270	Stevens Pass	897
270	Snoqualmie Pass	897
270	East Slopes North - Canadian Border to Lake Chelan	901
270	East Slopes Central - Lake Chelan to South of I-90	901
270	East Slopes South - South of I-90 to Columbia River	900
270	Mt Hood	899
264	Olympics	890
264	West Slopes North - Canadian Border to Skagit River	890
264	West Slopes Central - Skagit River to South of I-90	890
264	West Slopes South - South of I-90 to Columbia River	890
264	Stevens Pass	890
264	Snoqualmie Pass	890
264	East Slopes North - Canadian Border to Lake Chelan	890
264	East Slopes Central - Lake Chelan to South of I-90	890
264	East Slopes South - South of I-90 to Columbia River	890
264	Mt Hood	890
262	Olympics	888
262	West Slopes North - Canadian Border to Skagit River	888
262	West Slopes Central - Skagit River to South of I-90	888
262	West Slopes South - South of I-90 to Columbia River	888
262	Stevens Pass	888
262	Snoqualmie Pass	888
262	East Slopes North - Canadian Border to Lake Chelan	888
262	East Slopes Central - Lake Chelan to South of I-90	888
286	Olympics	989
286	West Slopes North - Canadian Border to Skagit River	992
286	West Slopes Central - Skagit River to South of I-90	992
286	West Slopes South - South of I-90 to Columbia River	992
286	Stevens Pass	992
286	Snoqualmie Pass	992
286	East Slopes North - Canadian Border to Lake Chelan	993
286	East Slopes Central - Lake Chelan to South of I-90	993
286	East Slopes South - South of I-90 to Columbia River	993
286	Mt Hood	994
285	Olympics	982
285	West Slopes North - Canadian Border to Skagit River	983
285	Stevens Pass	984
285	West Slopes Central - Skagit River to South of I-90	985
285	West Slopes South - South of I-90 to Columbia River	985
285	Snoqualmie Pass	985
285	East Slopes North - Canadian Border to Lake Chelan	986
285	East Slopes Central - Lake Chelan to South of I-90	986
285	East Slopes South - South of I-90 to Columbia River	986
285	Mt Hood	988
283	Olympics	970
283	West Slopes North - Canadian Border to Skagit River	971
283	West Slopes Central - Skagit River to South of I-90	971
283	West Slopes South - South of I-90 to Columbia River	971
283	Stevens Pass	971
283	Snoqualmie Pass	971
283	East Slopes North - Canadian Border to Lake Chelan	972
283	East Slopes Central - Lake Chelan to South of I-90	972
283	East Slopes South - South of I-90 to Columbia River	973
283	Mt Hood	974
281	Olympics	960
281	West Slopes North - Canadian Border to Skagit River	961
281	West Slopes Central - Skagit River to South of I-90	961
281	West Slopes South - South of I-90 to Columbia River	961
281	Stevens Pass	961
281	Snoqualmie Pass	961
281	East Slopes North - Canadian Border to Lake Chelan	962
281	East Slopes Central - Lake Chelan to South of I-90	962
281	East Slopes South - South of I-90 to Columbia River	963
281	Mt Hood	964
279	Olympics	950
279	West Slopes North - Canadian Border to Skagit River	951
279	West Slopes Central - Skagit River to South of I-90	951
279	West Slopes South - South of I-90 to Columbia River	951
279	Stevens Pass	951
279	Snoqualmie Pass	951
279	East Slopes North - Canadian Border to Lake Chelan	952
279	East Slopes Central - Lake Chelan to South of I-90	952
279	East Slopes South - South of I-90 to Columbia River	953
279	Mt Hood	954
277	Olympics	940
277	West Slopes North - Canadian Border to Skagit River	941
277	West Slopes Central - Skagit River to South of I-90	941
277	West Slopes South - South of I-90 to Columbia River	941
277	Stevens Pass	941
277	Snoqualmie Pass	941
277	East Slopes North - Canadian Border to Lake Chelan	942
277	East Slopes Central - Lake Chelan to South of I-90	942
277	East Slopes South - South of I-90 to Columbia River	943
277	Mt Hood	944
274	Olympics	921
274	West Slopes North - Canadian Border to Skagit River	922
274	West Slopes Central - Skagit River to South of I-90	923
274	West Slopes South - South of I-90 to Columbia River	923
274	Stevens Pass	923
274	Snoqualmie Pass	923
274	East Slopes North - Canadian Border to Lake Chelan	924
274	East Slopes Central - Lake Chelan to South of I-90	924
274	East Slopes South - South of I-90 to Columbia River	925
274	Mt Hood	926
271	Olympics	902
271	West Slopes North - Canadian Border to Skagit River	904
271	West Slopes Central - Skagit River to South of I-90	904
271	West Slopes South - South of I-90 to Columbia River	904
271	Stevens Pass	904
271	Snoqualmie Pass	904
271	East Slopes North - Canadian Border to Lake Chelan	905
271	East Slopes Central - Lake Chelan to South of I-90	905
271	East Slopes South - South of I-90 to Columbia River	906
271	Mt Hood	907
261	Olympics	887
261	West Slopes North - Canadian Border to Skagit River	887
261	West Slopes Central - Skagit River to South of I-90	887
261	West Slopes South - South of I-90 to Columbia River	887
261	Stevens Pass	887
261	Snoqualmie Pass	887
261	East Slopes North - Canadian Border to Lake Chelan	887
261	East Slopes Central - Lake Chelan to South of I-90	887
261	East Slopes South - South of I-90 to Columbia River	887
261	Mt Hood	887
257	Olympics	883
257	Stevens Pass	883
257	Snoqualmie Pass	883
257	Mt Hood	883
257	White Pass	883
257	WA Cascades near and west of crest - between Snoqualmie and White Pass	883
257	East slopes WA Cascades - between Stevens and Snoqualmie Pass	883
257	WA Cascades near and west of crest - north of Stevens Pass	883
257	WA Cascades near and west of crest - south of White Pass	883
257	East slopes WA Cascades - between Snoqualmie and White Pass	883
257	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	883
257	East slopes WA Cascades - north of Stevens Pass	883
257	East slopes WA Cascades - south of White Pass	883
254	Olympics	880
254	Stevens Pass	880
254	Snoqualmie Pass	880
254	Mt Hood	880
254	White Pass	880
249	East slopes WA Cascades - between Snoqualmie and White Pass	870
262	East Slopes South - South of I-90 to Columbia River	888
262	Mt Hood	888
260	Olympics	886
260	Stevens Pass	886
260	Snoqualmie Pass	886
260	Mt Hood	886
260	White Pass	886
260	WA Cascades near and west of crest - between Snoqualmie and White Pass	886
260	East slopes WA Cascades - between Stevens and Snoqualmie Pass	886
260	WA Cascades near and west of crest - north of Stevens Pass	886
260	WA Cascades near and west of crest - south of White Pass	886
260	East slopes WA Cascades - between Snoqualmie and White Pass	886
260	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	886
260	East slopes WA Cascades - north of Stevens Pass	886
260	East slopes WA Cascades - south of White Pass	886
258	Olympics	884
258	Stevens Pass	884
258	Snoqualmie Pass	884
258	Mt Hood	884
258	White Pass	884
258	WA Cascades near and west of crest - between Snoqualmie and White Pass	884
258	East slopes WA Cascades - between Stevens and Snoqualmie Pass	884
258	WA Cascades near and west of crest - north of Stevens Pass	884
258	WA Cascades near and west of crest - south of White Pass	884
258	East slopes WA Cascades - between Snoqualmie and White Pass	884
258	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	884
258	East slopes WA Cascades - north of Stevens Pass	884
258	East slopes WA Cascades - south of White Pass	884
256	Olympics	882
256	Stevens Pass	882
256	Snoqualmie Pass	882
256	Mt Hood	882
256	White Pass	882
256	WA Cascades near and west of crest - between Snoqualmie and White Pass	882
256	East slopes WA Cascades - between Stevens and Snoqualmie Pass	882
256	WA Cascades near and west of crest - north of Stevens Pass	882
256	WA Cascades near and west of crest - south of White Pass	882
256	East slopes WA Cascades - between Snoqualmie and White Pass	882
256	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	882
256	East slopes WA Cascades - north of Stevens Pass	882
256	East slopes WA Cascades - south of White Pass	882
255	Olympics	881
255	Stevens Pass	881
255	Snoqualmie Pass	881
255	Mt Hood	881
255	White Pass	881
255	WA Cascades near and west of crest - between Snoqualmie and White Pass	881
255	East slopes WA Cascades - between Stevens and Snoqualmie Pass	881
255	WA Cascades near and west of crest - north of Stevens Pass	881
255	WA Cascades near and west of crest - south of White Pass	881
255	East slopes WA Cascades - between Snoqualmie and White Pass	881
255	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	881
255	East slopes WA Cascades - north of Stevens Pass	881
255	East slopes WA Cascades - south of White Pass	881
253	Olympics	878
253	Stevens Pass	878
253	Snoqualmie Pass	878
253	Mt Hood	878
253	White Pass	878
253	WA Cascades near and west of crest - between Snoqualmie and White Pass	878
253	East slopes WA Cascades - between Stevens and Snoqualmie Pass	878
253	WA Cascades near and west of crest - north of Stevens Pass	878
253	WA Cascades near and west of crest - south of White Pass	878
253	East slopes WA Cascades - between Snoqualmie and White Pass	878
253	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	878
253	East slopes WA Cascades - north of Stevens Pass	878
253	East slopes WA Cascades - south of White Pass	878
252	Stevens Pass	875
252	Snoqualmie Pass	875
252	Mt Hood	875
252	WA Cascades near and west of crest - north of Stevens Pass	875
252	WA Cascades near and west of crest - south of White Pass	875
252	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	875
252	White Pass	875
252	WA Cascades near and west of crest - between Snoqualmie and White Pass	875
252	Olympics	877
252	East slopes WA Cascades - between Snoqualmie and White Pass	877
252	East slopes WA Cascades - north of Stevens Pass	877
252	East slopes WA Cascades - south of White Pass	877
252	East slopes WA Cascades - between Stevens and Snoqualmie Pass	877
251	Stevens Pass	873
251	Snoqualmie Pass	873
251	Mt Hood	873
251	WA Cascades near and west of crest - north of Stevens Pass	873
251	WA Cascades near and west of crest - south of White Pass	873
251	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	873
251	White Pass	873
251	WA Cascades near and west of crest - between Snoqualmie and White Pass	873
251	Olympics	874
251	East slopes WA Cascades - between Snoqualmie and White Pass	874
251	East slopes WA Cascades - north of Stevens Pass	874
251	East slopes WA Cascades - south of White Pass	874
251	East slopes WA Cascades - between Stevens and Snoqualmie Pass	874
249	Olympics	870
249	Stevens Pass	870
249	Snoqualmie Pass	870
249	Mt Hood	870
249	White Pass	870
249	WA Cascades near and west of crest - between Snoqualmie and White Pass	870
249	East slopes WA Cascades - between Stevens and Snoqualmie Pass	870
249	WA Cascades near and west of crest - north of Stevens Pass	870
249	WA Cascades near and west of crest - south of White Pass	870
254	WA Cascades near and west of crest - between Snoqualmie and White Pass	880
254	East slopes WA Cascades - between Stevens and Snoqualmie Pass	880
254	WA Cascades near and west of crest - north of Stevens Pass	880
254	WA Cascades near and west of crest - south of White Pass	880
254	East slopes WA Cascades - between Snoqualmie and White Pass	880
254	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	880
254	East slopes WA Cascades - north of Stevens Pass	880
254	East slopes WA Cascades - south of White Pass	880
250	Stevens Pass	872
250	Snoqualmie Pass	872
250	Mt Hood	872
250	WA Cascades near and west of crest - north of Stevens Pass	872
250	WA Cascades near and west of crest - south of White Pass	872
250	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	872
250	White Pass	872
250	WA Cascades near and west of crest - between Snoqualmie and White Pass	872
250	Olympics	871
250	East slopes WA Cascades - between Snoqualmie and White Pass	871
250	East slopes WA Cascades - north of Stevens Pass	871
250	East slopes WA Cascades - south of White Pass	871
250	East slopes WA Cascades - between Stevens and Snoqualmie Pass	871
249	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	870
249	East slopes WA Cascades - north of Stevens Pass	870
249	East slopes WA Cascades - south of White Pass	870
248	Olympics	869
248	Stevens Pass	869
248	Snoqualmie Pass	869
248	Mt Hood	869
248	White Pass	869
248	WA Cascades near and west of crest - between Snoqualmie and White Pass	869
248	East slopes WA Cascades - between Stevens and Snoqualmie Pass	869
248	WA Cascades near and west of crest - north of Stevens Pass	869
248	WA Cascades near and west of crest - south of White Pass	869
248	East slopes WA Cascades - between Snoqualmie and White Pass	869
248	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	869
248	East slopes WA Cascades - north of Stevens Pass	869
248	East slopes WA Cascades - south of White Pass	869
247	Olympics	868
247	Stevens Pass	868
247	Snoqualmie Pass	868
247	Mt Hood	868
247	White Pass	868
247	WA Cascades near and west of crest - between Snoqualmie and White Pass	868
247	East slopes WA Cascades - between Stevens and Snoqualmie Pass	868
247	WA Cascades near and west of crest - north of Stevens Pass	868
247	WA Cascades near and west of crest - south of White Pass	868
247	East slopes WA Cascades - between Snoqualmie and White Pass	868
247	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	868
247	East slopes WA Cascades - north of Stevens Pass	868
247	East slopes WA Cascades - south of White Pass	868
246	Olympics	867
246	Stevens Pass	867
246	Snoqualmie Pass	867
246	Mt Hood	867
246	White Pass	867
246	WA Cascades near and west of crest - between Snoqualmie and White Pass	867
246	East slopes WA Cascades - between Stevens and Snoqualmie Pass	867
246	WA Cascades near and west of crest - north of Stevens Pass	867
246	WA Cascades near and west of crest - south of White Pass	867
246	East slopes WA Cascades - between Snoqualmie and White Pass	867
246	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	867
246	East slopes WA Cascades - north of Stevens Pass	867
246	East slopes WA Cascades - south of White Pass	867
244	Olympics	862
244	Stevens Pass	862
244	Snoqualmie Pass	862
244	Mt Hood	862
244	White Pass	862
244	WA Cascades near and west of crest - between Snoqualmie and White Pass	862
244	WA Cascades near and west of crest - north of Stevens Pass	862
244	WA Cascades near and west of crest - south of White Pass	862
244	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	862
244	East slopes WA Cascades - north of Stevens Pass	864
244	East slopes WA Cascades - south of White Pass	864
244	East slopes WA Cascades - between Stevens and Snoqualmie Pass	864
244	East slopes WA Cascades - between Snoqualmie and White Pass	864
243	Olympics	859
243	Stevens Pass	859
243	Snoqualmie Pass	859
243	Mt Hood	859
243	White Pass	859
243	WA Cascades near and west of crest - between Snoqualmie and White Pass	859
243	WA Cascades near and west of crest - north of Stevens Pass	859
243	WA Cascades near and west of crest - south of White Pass	859
243	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	859
243	East slopes WA Cascades - north of Stevens Pass	860
243	East slopes WA Cascades - south of White Pass	860
243	East slopes WA Cascades - between Stevens and Snoqualmie Pass	860
243	East slopes WA Cascades - between Snoqualmie and White Pass	860
242	Olympics	856
242	Stevens Pass	856
242	Snoqualmie Pass	856
242	White Pass	856
242	WA Cascades near and west of crest - between Snoqualmie and White Pass	856
242	WA Cascades near and west of crest - north of Stevens Pass	856
242	WA Cascades near and west of crest - south of White Pass	856
242	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	856
242	East slopes WA Cascades - north of Stevens Pass	857
242	East slopes WA Cascades - south of White Pass	857
242	East slopes WA Cascades - between Stevens and Snoqualmie Pass	857
242	East slopes WA Cascades - between Snoqualmie and White Pass	857
242	Mt Hood	858
241	Olympics	853
241	Stevens Pass	853
241	Snoqualmie Pass	853
241	White Pass	853
241	WA Cascades near and west of crest - between Snoqualmie and White Pass	853
241	WA Cascades near and west of crest - north of Stevens Pass	853
241	WA Cascades near and west of crest - south of White Pass	853
241	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	853
241	East slopes WA Cascades - north of Stevens Pass	854
241	East slopes WA Cascades - south of White Pass	854
241	East slopes WA Cascades - between Stevens and Snoqualmie Pass	854
241	East slopes WA Cascades - between Snoqualmie and White Pass	854
241	Mt Hood	855
240	Olympics	849
240	Stevens Pass	849
240	Snoqualmie Pass	849
240	White Pass	849
240	WA Cascades near and west of crest - between Snoqualmie and White Pass	849
240	WA Cascades near and west of crest - north of Stevens Pass	849
240	WA Cascades near and west of crest - south of White Pass	849
238	Olympics	840
240	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	849
240	East slopes WA Cascades - north of Stevens Pass	851
240	East slopes WA Cascades - south of White Pass	851
240	East slopes WA Cascades - between Stevens and Snoqualmie Pass	851
240	East slopes WA Cascades - between Snoqualmie and White Pass	851
240	Mt Hood	852
237	Olympics	836
237	Stevens Pass	836
237	Snoqualmie Pass	836
237	White Pass	836
237	WA Cascades near and west of crest - between Snoqualmie and White Pass	836
237	WA Cascades near and west of crest - north of Stevens Pass	836
237	WA Cascades near and west of crest - south of White Pass	836
237	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	836
237	East slopes WA Cascades - north of Stevens Pass	838
237	East slopes WA Cascades - south of White Pass	838
237	East slopes WA Cascades - between Stevens and Snoqualmie Pass	838
237	East slopes WA Cascades - between Snoqualmie and White Pass	838
237	Mt Hood	839
235	Olympics	830
235	Stevens Pass	830
235	Snoqualmie Pass	830
235	Mt Hood	830
235	White Pass	830
235	WA Cascades near and west of crest - between Snoqualmie and White Pass	830
235	WA Cascades near and west of crest - north of Stevens Pass	830
235	WA Cascades near and west of crest - south of White Pass	830
235	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	830
235	East slopes WA Cascades - north of Stevens Pass	833
235	East slopes WA Cascades - south of White Pass	833
235	East slopes WA Cascades - between Stevens and Snoqualmie Pass	833
235	East slopes WA Cascades - between Snoqualmie and White Pass	833
233	Olympics	823
233	Stevens Pass	823
233	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	823
233	East slopes WA Cascades - north of Stevens Pass	823
233	WA Cascades near and west of crest - north of Stevens Pass	823
233	East slopes WA Cascades - between Stevens and Snoqualmie Pass	823
233	Snoqualmie Pass	821
233	WA Cascades near and west of crest - south of White Pass	821
233	White Pass	821
233	East slopes WA Cascades - between Snoqualmie and White Pass	821
233	WA Cascades near and west of crest - between Snoqualmie and White Pass	821
233	East slopes WA Cascades - south of White Pass	821
233	Mt Hood	824
231	Olympics	818
231	Stevens Pass	818
231	Snoqualmie Pass	818
231	Mt Hood	818
231	White Pass	818
231	WA Cascades near and west of crest - between Snoqualmie and White Pass	818
231	East slopes WA Cascades - between Stevens and Snoqualmie Pass	818
231	WA Cascades near and west of crest - north of Stevens Pass	818
231	WA Cascades near and west of crest - south of White Pass	818
231	East slopes WA Cascades - between Snoqualmie and White Pass	818
231	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	818
231	East slopes WA Cascades - north of Stevens Pass	818
231	East slopes WA Cascades - south of White Pass	818
229	Stevens Pass	814
229	Snoqualmie Pass	814
229	WA Cascades near and west of crest - north of Stevens Pass	814
229	WA Cascades near and west of crest - south of White Pass	814
229	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	814
229	White Pass	814
229	WA Cascades near and west of crest - between Snoqualmie and White Pass	814
229	Olympics	815
229	Mt Hood	815
229	East slopes WA Cascades - between Snoqualmie and White Pass	815
229	East slopes WA Cascades - north of Stevens Pass	815
229	East slopes WA Cascades - south of White Pass	815
229	East slopes WA Cascades - between Stevens and Snoqualmie Pass	815
227	Stevens Pass	810
227	Snoqualmie Pass	810
227	WA Cascades near and west of crest - north of Stevens Pass	810
227	WA Cascades near and west of crest - south of White Pass	810
227	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	810
227	White Pass	810
227	WA Cascades near and west of crest - between Snoqualmie and White Pass	810
227	Olympics	811
227	Mt Hood	811
227	East slopes WA Cascades - between Snoqualmie and White Pass	811
227	East slopes WA Cascades - north of Stevens Pass	811
227	East slopes WA Cascades - south of White Pass	811
227	East slopes WA Cascades - between Stevens and Snoqualmie Pass	811
225	Olympics	808
225	Stevens Pass	808
225	Snoqualmie Pass	808
225	Mt Hood	808
225	White Pass	808
225	WA Cascades near and west of crest - between Snoqualmie and White Pass	808
225	East slopes WA Cascades - between Stevens and Snoqualmie Pass	808
225	WA Cascades near and west of crest - north of Stevens Pass	808
225	WA Cascades near and west of crest - south of White Pass	808
225	East slopes WA Cascades - between Snoqualmie and White Pass	808
225	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	808
225	East slopes WA Cascades - north of Stevens Pass	808
225	East slopes WA Cascades - south of White Pass	808
222	Olympics	805
222	Stevens Pass	805
222	Snoqualmie Pass	805
222	Mt Hood	805
222	White Pass	805
212	Stevens Pass	771
238	Stevens Pass	840
238	Snoqualmie Pass	840
238	White Pass	840
238	WA Cascades near and west of crest - north of Stevens Pass	840
238	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	840
238	WA Cascades near and west of crest - between Snoqualmie and White Pass	843
238	WA Cascades near and west of crest - south of White Pass	843
238	East slopes WA Cascades - north of Stevens Pass	844
238	East slopes WA Cascades - south of White Pass	844
238	East slopes WA Cascades - between Stevens and Snoqualmie Pass	844
238	East slopes WA Cascades - between Snoqualmie and White Pass	844
238	Mt Hood	842
236	Olympics	834
236	Stevens Pass	834
236	Snoqualmie Pass	834
236	Mt Hood	834
236	White Pass	834
236	WA Cascades near and west of crest - between Snoqualmie and White Pass	834
236	WA Cascades near and west of crest - north of Stevens Pass	834
236	WA Cascades near and west of crest - south of White Pass	834
236	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	834
236	East slopes WA Cascades - north of Stevens Pass	835
236	East slopes WA Cascades - south of White Pass	835
236	East slopes WA Cascades - between Stevens and Snoqualmie Pass	835
236	East slopes WA Cascades - between Snoqualmie and White Pass	835
234	Olympics	828
234	Stevens Pass	828
234	Snoqualmie Pass	828
234	WA Cascades near and west of crest - north of Stevens Pass	828
234	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	828
234	Mt Hood	827
234	White Pass	827
234	WA Cascades near and west of crest - between Snoqualmie and White Pass	827
234	WA Cascades near and west of crest - south of White Pass	827
234	East slopes WA Cascades - north of Stevens Pass	829
234	East slopes WA Cascades - south of White Pass	829
234	East slopes WA Cascades - between Stevens and Snoqualmie Pass	829
234	East slopes WA Cascades - between Snoqualmie and White Pass	829
232	Mt Hood	820
232	Olympics	819
232	Stevens Pass	819
232	Snoqualmie Pass	819
232	White Pass	819
232	WA Cascades near and west of crest - between Snoqualmie and White Pass	819
232	East slopes WA Cascades - between Stevens and Snoqualmie Pass	819
232	WA Cascades near and west of crest - north of Stevens Pass	819
232	WA Cascades near and west of crest - south of White Pass	819
232	East slopes WA Cascades - between Snoqualmie and White Pass	819
232	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	819
232	East slopes WA Cascades - north of Stevens Pass	819
232	East slopes WA Cascades - south of White Pass	819
230	Stevens Pass	816
230	Snoqualmie Pass	816
230	WA Cascades near and west of crest - north of Stevens Pass	816
230	WA Cascades near and west of crest - south of White Pass	816
230	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	816
230	White Pass	816
230	WA Cascades near and west of crest - between Snoqualmie and White Pass	816
230	Olympics	817
230	Mt Hood	817
230	East slopes WA Cascades - between Snoqualmie and White Pass	817
230	East slopes WA Cascades - north of Stevens Pass	817
230	East slopes WA Cascades - south of White Pass	817
230	East slopes WA Cascades - between Stevens and Snoqualmie Pass	817
228	Stevens Pass	812
228	Snoqualmie Pass	812
228	WA Cascades near and west of crest - north of Stevens Pass	812
228	WA Cascades near and west of crest - south of White Pass	812
228	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	812
228	White Pass	812
228	WA Cascades near and west of crest - between Snoqualmie and White Pass	812
228	Olympics	813
228	Mt Hood	813
228	East slopes WA Cascades - between Snoqualmie and White Pass	813
228	East slopes WA Cascades - north of Stevens Pass	813
228	East slopes WA Cascades - south of White Pass	813
228	East slopes WA Cascades - between Stevens and Snoqualmie Pass	813
226	Olympics	809
226	Stevens Pass	809
226	Snoqualmie Pass	809
226	Mt Hood	809
226	White Pass	809
226	WA Cascades near and west of crest - between Snoqualmie and White Pass	809
226	East slopes WA Cascades - between Stevens and Snoqualmie Pass	809
226	WA Cascades near and west of crest - north of Stevens Pass	809
226	WA Cascades near and west of crest - south of White Pass	809
226	East slopes WA Cascades - between Snoqualmie and White Pass	809
226	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	809
226	East slopes WA Cascades - north of Stevens Pass	809
226	East slopes WA Cascades - south of White Pass	809
224	Olympics	807
224	Stevens Pass	807
224	Snoqualmie Pass	807
224	Mt Hood	807
224	White Pass	807
224	WA Cascades near and west of crest - between Snoqualmie and White Pass	807
224	East slopes WA Cascades - between Stevens and Snoqualmie Pass	807
224	WA Cascades near and west of crest - north of Stevens Pass	807
224	WA Cascades near and west of crest - south of White Pass	807
224	East slopes WA Cascades - between Snoqualmie and White Pass	807
224	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	807
224	East slopes WA Cascades - north of Stevens Pass	807
224	East slopes WA Cascades - south of White Pass	807
219	Olympics	800
219	Stevens Pass	801
219	Snoqualmie Pass	801
219	WA Cascades near and west of crest - north of Stevens Pass	801
219	WA Cascades near and west of crest - south of White Pass	801
219	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	801
219	White Pass	801
219	WA Cascades near and west of crest - between Snoqualmie and White Pass	801
219	East slopes WA Cascades - north of Stevens Pass	802
219	East slopes WA Cascades - south of White Pass	802
219	East slopes WA Cascades - between Stevens and Snoqualmie Pass	802
219	East slopes WA Cascades - between Snoqualmie and White Pass	802
219	Mt Hood	803
222	WA Cascades near and west of crest - between Snoqualmie and White Pass	805
222	East slopes WA Cascades - between Stevens and Snoqualmie Pass	805
222	WA Cascades near and west of crest - north of Stevens Pass	805
222	WA Cascades near and west of crest - south of White Pass	805
222	East slopes WA Cascades - between Snoqualmie and White Pass	805
222	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	805
222	East slopes WA Cascades - north of Stevens Pass	805
222	East slopes WA Cascades - south of White Pass	805
221	Olympics	804
221	Stevens Pass	804
221	Snoqualmie Pass	804
221	Mt Hood	804
221	White Pass	804
221	WA Cascades near and west of crest - between Snoqualmie and White Pass	804
221	East slopes WA Cascades - between Stevens and Snoqualmie Pass	804
221	WA Cascades near and west of crest - north of Stevens Pass	804
221	WA Cascades near and west of crest - south of White Pass	804
221	East slopes WA Cascades - between Snoqualmie and White Pass	804
221	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	804
221	East slopes WA Cascades - north of Stevens Pass	804
221	East slopes WA Cascades - south of White Pass	804
218	Olympics	796
218	Stevens Pass	797
218	Snoqualmie Pass	797
218	WA Cascades near and west of crest - north of Stevens Pass	797
218	WA Cascades near and west of crest - south of White Pass	797
218	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	797
218	White Pass	797
218	WA Cascades near and west of crest - between Snoqualmie and White Pass	797
218	East slopes WA Cascades - north of Stevens Pass	798
218	East slopes WA Cascades - south of White Pass	798
218	East slopes WA Cascades - between Stevens and Snoqualmie Pass	798
218	East slopes WA Cascades - between Snoqualmie and White Pass	798
218	Mt Hood	799
217	Olympics	792
217	Stevens Pass	793
217	Snoqualmie Pass	793
217	WA Cascades near and west of crest - north of Stevens Pass	793
217	WA Cascades near and west of crest - south of White Pass	793
217	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	793
217	White Pass	793
217	WA Cascades near and west of crest - between Snoqualmie and White Pass	793
217	East slopes WA Cascades - north of Stevens Pass	794
217	East slopes WA Cascades - south of White Pass	794
217	East slopes WA Cascades - between Stevens and Snoqualmie Pass	794
217	East slopes WA Cascades - between Snoqualmie and White Pass	794
217	Mt Hood	795
216	Olympics	788
216	Stevens Pass	789
216	Snoqualmie Pass	789
216	WA Cascades near and west of crest - north of Stevens Pass	789
216	WA Cascades near and west of crest - south of White Pass	789
216	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	789
216	White Pass	789
216	WA Cascades near and west of crest - between Snoqualmie and White Pass	789
216	East slopes WA Cascades - north of Stevens Pass	790
216	East slopes WA Cascades - south of White Pass	790
216	East slopes WA Cascades - between Stevens and Snoqualmie Pass	790
216	East slopes WA Cascades - between Snoqualmie and White Pass	790
216	Mt Hood	791
215	Olympics	784
215	Stevens Pass	785
215	Snoqualmie Pass	785
215	WA Cascades near and west of crest - north of Stevens Pass	785
215	WA Cascades near and west of crest - south of White Pass	785
215	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	785
215	White Pass	785
215	WA Cascades near and west of crest - between Snoqualmie and White Pass	785
215	East slopes WA Cascades - north of Stevens Pass	786
215	East slopes WA Cascades - south of White Pass	786
215	East slopes WA Cascades - between Stevens and Snoqualmie Pass	786
215	East slopes WA Cascades - between Snoqualmie and White Pass	786
215	Mt Hood	787
214	Olympics	779
214	Stevens Pass	780
214	Snoqualmie Pass	780
214	WA Cascades near and west of crest - north of Stevens Pass	780
214	WA Cascades near and west of crest - south of White Pass	780
214	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	780
214	White Pass	780
214	WA Cascades near and west of crest - between Snoqualmie and White Pass	780
214	East slopes WA Cascades - north of Stevens Pass	782
214	East slopes WA Cascades - south of White Pass	782
214	East slopes WA Cascades - between Stevens and Snoqualmie Pass	782
214	East slopes WA Cascades - between Snoqualmie and White Pass	782
214	Mt Hood	783
213	Olympics	774
213	WA Cascades near and west of crest - north of Stevens Pass	778
213	Stevens Pass	775
213	Snoqualmie Pass	775
213	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	775
213	WA Cascades near and west of crest - between Snoqualmie and White Pass	775
213	White Pass	775
213	WA Cascades near and west of crest - south of White Pass	775
213	East slopes WA Cascades - north of Stevens Pass	776
213	East slopes WA Cascades - south of White Pass	776
213	East slopes WA Cascades - between Stevens and Snoqualmie Pass	776
213	East slopes WA Cascades - between Snoqualmie and White Pass	776
213	Mt Hood	777
212	Olympics	770
212	Snoqualmie Pass	771
212	WA Cascades near and west of crest - north of Stevens Pass	771
212	WA Cascades near and west of crest - south of White Pass	771
212	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	771
212	White Pass	771
212	WA Cascades near and west of crest - between Snoqualmie and White Pass	771
212	East slopes WA Cascades - north of Stevens Pass	772
212	East slopes WA Cascades - south of White Pass	772
212	East slopes WA Cascades - between Stevens and Snoqualmie Pass	772
212	East slopes WA Cascades - between Snoqualmie and White Pass	772
212	Mt Hood	773
209	Olympics	758
209	Stevens Pass	759
209	Snoqualmie Pass	759
209	WA Cascades near and west of crest - north of Stevens Pass	759
209	WA Cascades near and west of crest - south of White Pass	759
209	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	759
209	White Pass	759
209	WA Cascades near and west of crest - between Snoqualmie and White Pass	759
209	East slopes WA Cascades - north of Stevens Pass	761
209	East slopes WA Cascades - south of White Pass	761
209	East slopes WA Cascades - between Stevens and Snoqualmie Pass	761
209	East slopes WA Cascades - between Snoqualmie and White Pass	761
209	Mt Hood	760
208	Olympics	754
208	Stevens Pass	755
208	Snoqualmie Pass	755
208	WA Cascades near and west of crest - north of Stevens Pass	755
208	WA Cascades near and west of crest - south of White Pass	755
208	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	755
208	White Pass	755
208	WA Cascades near and west of crest - between Snoqualmie and White Pass	755
208	Mt Hood	756
208	East slopes WA Cascades - north of Stevens Pass	757
208	East slopes WA Cascades - south of White Pass	757
208	East slopes WA Cascades - between Stevens and Snoqualmie Pass	757
208	East slopes WA Cascades - between Snoqualmie and White Pass	757
206	Olympics	746
206	Stevens Pass	747
206	Snoqualmie Pass	747
206	WA Cascades near and west of crest - north of Stevens Pass	747
206	WA Cascades near and west of crest - south of White Pass	747
206	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	747
206	White Pass	747
206	WA Cascades near and west of crest - between Snoqualmie and White Pass	747
206	Mt Hood	749
206	East slopes WA Cascades - north of Stevens Pass	748
206	East slopes WA Cascades - south of White Pass	748
206	East slopes WA Cascades - between Stevens and Snoqualmie Pass	748
206	East slopes WA Cascades - between Snoqualmie and White Pass	748
203	Olympics	734
203	Stevens Pass	735
203	Snoqualmie Pass	735
203	WA Cascades near and west of crest - north of Stevens Pass	735
203	WA Cascades near and west of crest - south of White Pass	735
203	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	735
203	White Pass	735
203	WA Cascades near and west of crest - between Snoqualmie and White Pass	735
203	East slopes WA Cascades - north of Stevens Pass	736
203	East slopes WA Cascades - south of White Pass	736
203	East slopes WA Cascades - between Stevens and Snoqualmie Pass	736
203	East slopes WA Cascades - between Snoqualmie and White Pass	736
203	Mt Hood	737
201	Olympics	726
201	Stevens Pass	727
201	Snoqualmie Pass	727
201	WA Cascades near and west of crest - north of Stevens Pass	727
201	WA Cascades near and west of crest - south of White Pass	727
201	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	727
201	White Pass	727
201	WA Cascades near and west of crest - between Snoqualmie and White Pass	727
201	East slopes WA Cascades - south of White Pass	728
201	East slopes WA Cascades - north of Stevens Pass	728
201	East slopes WA Cascades - between Snoqualmie and White Pass	728
201	East slopes WA Cascades - between Stevens and Snoqualmie Pass	728
201	Mt Hood	729
199	Olympics	718
199	Stevens Pass	719
199	Snoqualmie Pass	719
199	WA Cascades near and west of crest - north of Stevens Pass	719
199	WA Cascades near and west of crest - south of White Pass	719
199	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	719
199	White Pass	719
199	WA Cascades near and west of crest - between Snoqualmie and White Pass	719
199	East slopes WA Cascades - north of Stevens Pass	720
199	East slopes WA Cascades - south of White Pass	720
199	East slopes WA Cascades - between Stevens and Snoqualmie Pass	720
199	East slopes WA Cascades - between Snoqualmie and White Pass	720
199	Mt Hood	721
197	Olympics	707
197	WA Cascades near and west of crest - north of Stevens Pass	712
197	Stevens Pass	709
197	Snoqualmie Pass	709
197	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	709
197	WA Cascades near and west of crest - between Snoqualmie and White Pass	709
197	White Pass	709
197	WA Cascades near and west of crest - south of White Pass	709
197	East slopes WA Cascades - north of Stevens Pass	710
197	East slopes WA Cascades - south of White Pass	710
197	East slopes WA Cascades - between Stevens and Snoqualmie Pass	710
211	Olympics	766
211	Stevens Pass	767
211	Snoqualmie Pass	767
211	WA Cascades near and west of crest - north of Stevens Pass	767
211	WA Cascades near and west of crest - south of White Pass	767
211	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	767
211	White Pass	767
211	WA Cascades near and west of crest - between Snoqualmie and White Pass	767
211	East slopes WA Cascades - north of Stevens Pass	768
211	East slopes WA Cascades - south of White Pass	768
211	East slopes WA Cascades - between Stevens and Snoqualmie Pass	768
211	East slopes WA Cascades - between Snoqualmie and White Pass	768
211	Mt Hood	769
210	Olympics	762
210	Stevens Pass	763
210	Snoqualmie Pass	763
210	WA Cascades near and west of crest - north of Stevens Pass	763
210	WA Cascades near and west of crest - south of White Pass	763
210	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	763
210	White Pass	763
210	WA Cascades near and west of crest - between Snoqualmie and White Pass	763
210	East slopes WA Cascades - north of Stevens Pass	764
210	East slopes WA Cascades - south of White Pass	764
210	East slopes WA Cascades - between Stevens and Snoqualmie Pass	764
210	East slopes WA Cascades - between Snoqualmie and White Pass	764
210	Mt Hood	765
207	Olympics	750
207	Stevens Pass	751
207	Snoqualmie Pass	751
207	WA Cascades near and west of crest - north of Stevens Pass	751
207	WA Cascades near and west of crest - south of White Pass	751
207	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	751
207	White Pass	751
207	WA Cascades near and west of crest - between Snoqualmie and White Pass	751
207	Mt Hood	752
207	East slopes WA Cascades - north of Stevens Pass	753
207	East slopes WA Cascades - south of White Pass	753
207	East slopes WA Cascades - between Stevens and Snoqualmie Pass	753
207	East slopes WA Cascades - between Snoqualmie and White Pass	753
204	Olympics	738
204	Stevens Pass	739
204	Snoqualmie Pass	739
204	WA Cascades near and west of crest - north of Stevens Pass	739
204	WA Cascades near and west of crest - south of White Pass	739
204	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	739
204	White Pass	739
204	WA Cascades near and west of crest - between Snoqualmie and White Pass	739
204	East slopes WA Cascades - north of Stevens Pass	740
204	East slopes WA Cascades - south of White Pass	740
204	East slopes WA Cascades - between Stevens and Snoqualmie Pass	740
204	East slopes WA Cascades - between Snoqualmie and White Pass	740
204	Mt Hood	741
202	Olympics	730
202	Stevens Pass	731
202	Snoqualmie Pass	731
202	WA Cascades near and west of crest - north of Stevens Pass	731
202	WA Cascades near and west of crest - south of White Pass	731
202	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	731
202	White Pass	731
202	WA Cascades near and west of crest - between Snoqualmie and White Pass	731
202	East slopes WA Cascades - north of Stevens Pass	732
202	East slopes WA Cascades - south of White Pass	732
202	East slopes WA Cascades - between Stevens and Snoqualmie Pass	732
202	East slopes WA Cascades - between Snoqualmie and White Pass	732
202	Mt Hood	733
200	Olympics	722
200	Stevens Pass	723
200	Snoqualmie Pass	723
200	WA Cascades near and west of crest - north of Stevens Pass	723
200	WA Cascades near and west of crest - south of White Pass	723
200	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	723
200	White Pass	723
200	WA Cascades near and west of crest - between Snoqualmie and White Pass	723
200	East slopes WA Cascades - north of Stevens Pass	724
200	East slopes WA Cascades - south of White Pass	724
200	East slopes WA Cascades - between Stevens and Snoqualmie Pass	724
200	East slopes WA Cascades - between Snoqualmie and White Pass	724
200	Mt Hood	725
198	Olympics	713
198	Stevens Pass	714
198	Snoqualmie Pass	714
198	WA Cascades near and west of crest - north of Stevens Pass	714
198	WA Cascades near and west of crest - south of White Pass	714
198	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	714
198	White Pass	714
198	WA Cascades near and west of crest - between Snoqualmie and White Pass	714
198	East slopes WA Cascades - north of Stevens Pass	716
198	East slopes WA Cascades - south of White Pass	716
198	East slopes WA Cascades - between Stevens and Snoqualmie Pass	716
198	East slopes WA Cascades - between Snoqualmie and White Pass	716
198	Mt Hood	717
196	Olympics	702
196	WA Cascades near and west of crest - north of Stevens Pass	703
196	Stevens Pass	704
196	Snoqualmie Pass	704
196	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	704
196	WA Cascades near and west of crest - between Snoqualmie and White Pass	704
196	White Pass	704
196	WA Cascades near and west of crest - south of White Pass	704
196	East slopes WA Cascades - north of Stevens Pass	705
196	East slopes WA Cascades - south of White Pass	705
197	East slopes WA Cascades - between Snoqualmie and White Pass	710
197	Mt Hood	711
195	Olympics	697
195	WA Cascades near and west of crest - north of Stevens Pass	701
195	Stevens Pass	698
195	Snoqualmie Pass	698
195	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	698
195	WA Cascades near and west of crest - between Snoqualmie and White Pass	698
195	White Pass	698
195	WA Cascades near and west of crest - south of White Pass	698
195	East slopes WA Cascades - north of Stevens Pass	699
195	East slopes WA Cascades - south of White Pass	699
195	East slopes WA Cascades - between Stevens and Snoqualmie Pass	699
195	East slopes WA Cascades - between Snoqualmie and White Pass	699
195	Mt Hood	700
194	Olympics	693
194	Stevens Pass	694
194	Snoqualmie Pass	694
194	WA Cascades near and west of crest - north of Stevens Pass	694
194	WA Cascades near and west of crest - south of White Pass	694
194	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	694
194	White Pass	694
194	WA Cascades near and west of crest - between Snoqualmie and White Pass	694
194	East slopes WA Cascades - north of Stevens Pass	695
194	East slopes WA Cascades - south of White Pass	695
194	East slopes WA Cascades - between Stevens and Snoqualmie Pass	695
194	East slopes WA Cascades - between Snoqualmie and White Pass	695
194	Mt Hood	696
192	Olympics	685
192	Stevens Pass	686
192	Snoqualmie Pass	686
192	WA Cascades near and west of crest - north of Stevens Pass	686
192	WA Cascades near and west of crest - south of White Pass	686
192	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	686
192	White Pass	686
192	WA Cascades near and west of crest - between Snoqualmie and White Pass	686
192	East slopes WA Cascades - north of Stevens Pass	687
192	East slopes WA Cascades - south of White Pass	687
192	East slopes WA Cascades - between Stevens and Snoqualmie Pass	687
192	East slopes WA Cascades - between Snoqualmie and White Pass	687
192	Mt Hood	688
196	East slopes WA Cascades - between Stevens and Snoqualmie Pass	705
196	East slopes WA Cascades - between Snoqualmie and White Pass	705
196	Mt Hood	706
193	Olympics	689
193	Stevens Pass	690
193	Snoqualmie Pass	690
193	WA Cascades near and west of crest - north of Stevens Pass	690
193	WA Cascades near and west of crest - south of White Pass	690
193	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	690
193	White Pass	690
193	WA Cascades near and west of crest - between Snoqualmie and White Pass	690
193	East slopes WA Cascades - north of Stevens Pass	691
193	East slopes WA Cascades - south of White Pass	691
193	East slopes WA Cascades - between Stevens and Snoqualmie Pass	691
193	East slopes WA Cascades - between Snoqualmie and White Pass	691
193	Mt Hood	692
191	Olympics	681
191	Stevens Pass	682
191	Snoqualmie Pass	682
191	WA Cascades near and west of crest - north of Stevens Pass	682
191	WA Cascades near and west of crest - south of White Pass	682
191	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	682
191	White Pass	682
191	WA Cascades near and west of crest - between Snoqualmie and White Pass	682
191	East slopes WA Cascades - north of Stevens Pass	683
191	East slopes WA Cascades - south of White Pass	683
191	East slopes WA Cascades - between Stevens and Snoqualmie Pass	683
191	East slopes WA Cascades - between Snoqualmie and White Pass	683
191	Mt Hood	684
190	Olympics	677
190	Stevens Pass	678
190	Snoqualmie Pass	678
190	WA Cascades near and west of crest - north of Stevens Pass	678
190	WA Cascades near and west of crest - south of White Pass	678
190	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	678
190	White Pass	678
190	WA Cascades near and west of crest - between Snoqualmie and White Pass	678
190	East slopes WA Cascades - north of Stevens Pass	679
190	East slopes WA Cascades - south of White Pass	679
190	East slopes WA Cascades - between Stevens and Snoqualmie Pass	679
190	East slopes WA Cascades - between Snoqualmie and White Pass	679
190	Mt Hood	680
189	Olympics	673
189	Stevens Pass	674
189	Snoqualmie Pass	674
189	WA Cascades near and west of crest - north of Stevens Pass	674
189	WA Cascades near and west of crest - south of White Pass	674
189	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	674
189	White Pass	674
189	WA Cascades near and west of crest - between Snoqualmie and White Pass	674
189	East slopes WA Cascades - north of Stevens Pass	675
189	East slopes WA Cascades - south of White Pass	675
189	East slopes WA Cascades - between Stevens and Snoqualmie Pass	675
189	East slopes WA Cascades - between Snoqualmie and White Pass	675
189	Mt Hood	676
188	Olympics	669
188	Stevens Pass	670
188	Snoqualmie Pass	670
188	WA Cascades near and west of crest - north of Stevens Pass	670
188	WA Cascades near and west of crest - south of White Pass	670
188	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	670
188	White Pass	670
188	WA Cascades near and west of crest - between Snoqualmie and White Pass	670
188	East slopes WA Cascades - north of Stevens Pass	671
188	East slopes WA Cascades - south of White Pass	671
188	East slopes WA Cascades - between Stevens and Snoqualmie Pass	671
188	East slopes WA Cascades - between Snoqualmie and White Pass	671
188	Mt Hood	672
187	Olympics	665
187	Stevens Pass	666
187	Snoqualmie Pass	666
187	WA Cascades near and west of crest - north of Stevens Pass	666
187	WA Cascades near and west of crest - south of White Pass	666
187	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	666
187	White Pass	666
187	WA Cascades near and west of crest - between Snoqualmie and White Pass	666
187	East slopes WA Cascades - north of Stevens Pass	667
187	East slopes WA Cascades - south of White Pass	667
187	East slopes WA Cascades - between Stevens and Snoqualmie Pass	667
187	East slopes WA Cascades - between Snoqualmie and White Pass	667
187	Mt Hood	668
186	Olympics	661
186	Stevens Pass	662
186	Snoqualmie Pass	662
186	WA Cascades near and west of crest - north of Stevens Pass	662
186	WA Cascades near and west of crest - south of White Pass	662
186	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	662
186	White Pass	662
186	WA Cascades near and west of crest - between Snoqualmie and White Pass	662
186	East slopes WA Cascades - north of Stevens Pass	663
186	East slopes WA Cascades - south of White Pass	663
186	East slopes WA Cascades - between Stevens and Snoqualmie Pass	663
186	East slopes WA Cascades - between Snoqualmie and White Pass	663
186	Mt Hood	664
185	Olympics	654
185	Stevens Pass	655
185	Snoqualmie Pass	655
185	WA Cascades near and west of crest - north of Stevens Pass	655
185	WA Cascades near and west of crest - south of White Pass	655
185	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	655
185	White Pass	655
184	Olympics	648
185	WA Cascades near and west of crest - between Snoqualmie and White Pass	655
185	East slopes WA Cascades - north of Stevens Pass	657
185	East slopes WA Cascades - south of White Pass	657
185	East slopes WA Cascades - between Stevens and Snoqualmie Pass	657
185	East slopes WA Cascades - between Snoqualmie and White Pass	657
185	Mt Hood	659
182	Olympics	640
182	Stevens Pass	641
182	Snoqualmie Pass	641
182	WA Cascades near and west of crest - north of Stevens Pass	641
182	WA Cascades near and west of crest - south of White Pass	641
182	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	641
182	White Pass	641
182	WA Cascades near and west of crest - between Snoqualmie and White Pass	641
182	East slopes WA Cascades - north of Stevens Pass	642
182	East slopes WA Cascades - south of White Pass	642
182	East slopes WA Cascades - between Stevens and Snoqualmie Pass	642
182	East slopes WA Cascades - between Snoqualmie and White Pass	642
182	Mt Hood	643
180	Olympics	630
180	Stevens Pass	631
180	Snoqualmie Pass	631
180	WA Cascades near and west of crest - north of Stevens Pass	631
180	WA Cascades near and west of crest - south of White Pass	631
180	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	631
180	White Pass	631
180	WA Cascades near and west of crest - between Snoqualmie and White Pass	631
180	East slopes WA Cascades - north of Stevens Pass	633
180	East slopes WA Cascades - south of White Pass	633
180	East slopes WA Cascades - between Stevens and Snoqualmie Pass	633
180	East slopes WA Cascades - between Snoqualmie and White Pass	633
180	Mt Hood	635
174	Olympics	604
174	Stevens Pass	605
174	Snoqualmie Pass	605
174	WA Cascades near and west of crest - north of Stevens Pass	605
174	WA Cascades near and west of crest - south of White Pass	605
174	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	605
174	White Pass	605
174	WA Cascades near and west of crest - between Snoqualmie and White Pass	605
174	East slopes WA Cascades - north of Stevens Pass	606
174	East slopes WA Cascades - south of White Pass	606
174	East slopes WA Cascades - between Stevens and Snoqualmie Pass	606
174	East slopes WA Cascades - between Snoqualmie and White Pass	606
174	Mt Hood	607
173	Olympics	600
173	Stevens Pass	601
173	Snoqualmie Pass	601
173	WA Cascades near and west of crest - north of Stevens Pass	601
173	WA Cascades near and west of crest - south of White Pass	601
173	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	601
173	White Pass	601
173	WA Cascades near and west of crest - between Snoqualmie and White Pass	601
173	East slopes WA Cascades - north of Stevens Pass	602
173	East slopes WA Cascades - south of White Pass	602
173	East slopes WA Cascades - between Stevens and Snoqualmie Pass	602
173	East slopes WA Cascades - between Snoqualmie and White Pass	602
173	Mt Hood	603
171	Olympics	591
171	Stevens Pass	593
171	Snoqualmie Pass	593
171	WA Cascades near and west of crest - north of Stevens Pass	593
171	WA Cascades near and west of crest - south of White Pass	593
171	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	593
171	White Pass	593
171	WA Cascades near and west of crest - between Snoqualmie and White Pass	593
171	East slopes WA Cascades - north of Stevens Pass	594
171	East slopes WA Cascades - south of White Pass	594
171	East slopes WA Cascades - between Stevens and Snoqualmie Pass	594
171	East slopes WA Cascades - between Snoqualmie and White Pass	594
171	Mt Hood	595
169	Olympics	582
169	Stevens Pass	583
169	Snoqualmie Pass	583
169	WA Cascades near and west of crest - north of Stevens Pass	583
169	WA Cascades near and west of crest - south of White Pass	583
169	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	583
169	White Pass	583
169	WA Cascades near and west of crest - between Snoqualmie and White Pass	583
169	East slopes WA Cascades - north of Stevens Pass	584
169	East slopes WA Cascades - south of White Pass	584
169	East slopes WA Cascades - between Stevens and Snoqualmie Pass	584
169	East slopes WA Cascades - between Snoqualmie and White Pass	584
169	Mt Hood	585
166	Olympics	570
166	Stevens Pass	571
166	Snoqualmie Pass	571
166	WA Cascades near and west of crest - north of Stevens Pass	571
166	WA Cascades near and west of crest - south of White Pass	571
166	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	571
166	White Pass	571
166	WA Cascades near and west of crest - between Snoqualmie and White Pass	571
166	East slopes WA Cascades - north of Stevens Pass	572
166	East slopes WA Cascades - south of White Pass	572
166	East slopes WA Cascades - between Stevens and Snoqualmie Pass	572
166	East slopes WA Cascades - between Snoqualmie and White Pass	572
166	Mt Hood	573
163	Olympics	553
163	Stevens Pass	555
163	Snoqualmie Pass	555
163	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	555
155	Stevens Pass	514
184	WA Cascades near and west of crest - north of Stevens Pass	649
184	Stevens Pass	652
184	Snoqualmie Pass	652
184	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	652
184	WA Cascades near and west of crest - between Snoqualmie and White Pass	652
184	White Pass	652
184	WA Cascades near and west of crest - south of White Pass	652
184	East slopes WA Cascades - between Stevens and Snoqualmie Pass	650
184	East slopes WA Cascades - between Snoqualmie and White Pass	650
184	East slopes WA Cascades - south of White Pass	650
184	East slopes WA Cascades - north of Stevens Pass	653
184	Mt Hood	651
181	Olympics	636
181	Stevens Pass	637
181	Snoqualmie Pass	637
181	WA Cascades near and west of crest - north of Stevens Pass	637
181	WA Cascades near and west of crest - south of White Pass	637
181	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	637
181	White Pass	637
181	WA Cascades near and west of crest - between Snoqualmie and White Pass	637
181	East slopes WA Cascades - north of Stevens Pass	638
181	East slopes WA Cascades - south of White Pass	638
181	East slopes WA Cascades - between Stevens and Snoqualmie Pass	638
181	East slopes WA Cascades - between Snoqualmie and White Pass	638
181	Mt Hood	639
179	Olympics	624
179	Stevens Pass	628
179	WA Cascades near and west of crest - north of Stevens Pass	628
179	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	628
179	Snoqualmie Pass	625
179	WA Cascades near and west of crest - south of White Pass	625
179	White Pass	625
179	WA Cascades near and west of crest - between Snoqualmie and White Pass	625
179	East slopes WA Cascades - north of Stevens Pass	626
179	East slopes WA Cascades - between Stevens and Snoqualmie Pass	629
179	East slopes WA Cascades - between Snoqualmie and White Pass	629
179	East slopes WA Cascades - south of White Pass	629
179	Mt Hood	627
178	Olympics	620
178	Stevens Pass	621
178	Snoqualmie Pass	621
178	WA Cascades near and west of crest - north of Stevens Pass	621
178	WA Cascades near and west of crest - south of White Pass	621
178	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	621
178	White Pass	621
178	WA Cascades near and west of crest - between Snoqualmie and White Pass	621
178	East slopes WA Cascades - north of Stevens Pass	622
178	East slopes WA Cascades - south of White Pass	622
178	East slopes WA Cascades - between Stevens and Snoqualmie Pass	622
178	East slopes WA Cascades - between Snoqualmie and White Pass	622
178	Mt Hood	623
177	Olympics	616
177	Stevens Pass	617
177	Snoqualmie Pass	617
177	WA Cascades near and west of crest - north of Stevens Pass	617
177	WA Cascades near and west of crest - south of White Pass	617
177	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	617
177	White Pass	617
177	WA Cascades near and west of crest - between Snoqualmie and White Pass	617
177	East slopes WA Cascades - north of Stevens Pass	618
177	East slopes WA Cascades - south of White Pass	618
177	East slopes WA Cascades - between Stevens and Snoqualmie Pass	618
177	East slopes WA Cascades - between Snoqualmie and White Pass	618
177	Mt Hood	619
176	Olympics	612
176	Stevens Pass	613
176	Snoqualmie Pass	613
176	WA Cascades near and west of crest - north of Stevens Pass	613
176	WA Cascades near and west of crest - south of White Pass	613
176	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	613
176	White Pass	613
176	WA Cascades near and west of crest - between Snoqualmie and White Pass	613
176	East slopes WA Cascades - north of Stevens Pass	614
176	East slopes WA Cascades - south of White Pass	614
176	East slopes WA Cascades - between Stevens and Snoqualmie Pass	614
176	East slopes WA Cascades - between Snoqualmie and White Pass	614
176	Mt Hood	615
175	Olympics	608
175	Stevens Pass	609
175	Snoqualmie Pass	609
175	WA Cascades near and west of crest - north of Stevens Pass	609
175	WA Cascades near and west of crest - south of White Pass	609
175	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	609
175	White Pass	609
175	WA Cascades near and west of crest - between Snoqualmie and White Pass	609
175	East slopes WA Cascades - north of Stevens Pass	610
175	East slopes WA Cascades - south of White Pass	610
175	East slopes WA Cascades - between Stevens and Snoqualmie Pass	610
175	East slopes WA Cascades - between Snoqualmie and White Pass	610
175	Mt Hood	611
172	Olympics	596
172	Stevens Pass	597
172	Snoqualmie Pass	597
172	WA Cascades near and west of crest - north of Stevens Pass	597
172	WA Cascades near and west of crest - south of White Pass	597
172	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	597
172	White Pass	597
172	WA Cascades near and west of crest - between Snoqualmie and White Pass	597
172	East slopes WA Cascades - north of Stevens Pass	598
172	East slopes WA Cascades - south of White Pass	598
172	East slopes WA Cascades - between Stevens and Snoqualmie Pass	598
172	East slopes WA Cascades - between Snoqualmie and White Pass	598
172	Mt Hood	599
170	Olympics	586
170	WA Cascades near and west of crest - north of Stevens Pass	590
170	Stevens Pass	587
170	Snoqualmie Pass	587
170	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	587
170	WA Cascades near and west of crest - between Snoqualmie and White Pass	587
170	White Pass	587
170	WA Cascades near and west of crest - south of White Pass	587
170	East slopes WA Cascades - north of Stevens Pass	588
170	East slopes WA Cascades - south of White Pass	588
170	East slopes WA Cascades - between Stevens and Snoqualmie Pass	588
170	East slopes WA Cascades - between Snoqualmie and White Pass	588
170	Mt Hood	589
168	Olympics	578
168	Stevens Pass	579
168	Snoqualmie Pass	579
168	WA Cascades near and west of crest - north of Stevens Pass	579
168	WA Cascades near and west of crest - south of White Pass	579
168	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	579
168	White Pass	579
168	WA Cascades near and west of crest - between Snoqualmie and White Pass	579
168	East slopes WA Cascades - north of Stevens Pass	580
168	East slopes WA Cascades - south of White Pass	580
168	East slopes WA Cascades - between Stevens and Snoqualmie Pass	580
168	East slopes WA Cascades - between Snoqualmie and White Pass	580
168	Mt Hood	581
167	Olympics	574
167	Stevens Pass	575
167	Snoqualmie Pass	575
167	WA Cascades near and west of crest - north of Stevens Pass	575
167	WA Cascades near and west of crest - south of White Pass	575
167	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	575
167	White Pass	575
167	WA Cascades near and west of crest - between Snoqualmie and White Pass	575
167	East slopes WA Cascades - north of Stevens Pass	576
167	East slopes WA Cascades - south of White Pass	576
167	East slopes WA Cascades - between Stevens and Snoqualmie Pass	576
167	East slopes WA Cascades - between Snoqualmie and White Pass	576
167	Mt Hood	577
165	Olympics	566
165	Stevens Pass	567
165	Snoqualmie Pass	567
165	WA Cascades near and west of crest - north of Stevens Pass	567
165	WA Cascades near and west of crest - south of White Pass	567
165	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	567
165	White Pass	567
165	WA Cascades near and west of crest - between Snoqualmie and White Pass	567
165	East slopes WA Cascades - north of Stevens Pass	568
165	East slopes WA Cascades - south of White Pass	568
165	East slopes WA Cascades - between Stevens and Snoqualmie Pass	568
165	East slopes WA Cascades - between Snoqualmie and White Pass	568
165	Mt Hood	569
164	Olympics	560
164	Stevens Pass	561
164	Snoqualmie Pass	561
164	WA Cascades near and west of crest - north of Stevens Pass	561
164	WA Cascades near and west of crest - south of White Pass	561
164	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	561
164	White Pass	561
164	WA Cascades near and west of crest - between Snoqualmie and White Pass	561
164	East slopes WA Cascades - north of Stevens Pass	563
164	East slopes WA Cascades - south of White Pass	563
164	East slopes WA Cascades - between Stevens and Snoqualmie Pass	563
164	East slopes WA Cascades - between Snoqualmie and White Pass	563
164	Mt Hood	564
163	WA Cascades near and west of crest - north of Stevens Pass	555
163	White Pass	559
163	WA Cascades near and west of crest - between Snoqualmie and White Pass	559
163	WA Cascades near and west of crest - south of White Pass	559
163	East slopes WA Cascades - north of Stevens Pass	557
163	East slopes WA Cascades - south of White Pass	557
163	East slopes WA Cascades - between Stevens and Snoqualmie Pass	557
163	East slopes WA Cascades - between Snoqualmie and White Pass	557
163	Mt Hood	558
162	Olympics	547
162	Stevens Pass	548
162	Snoqualmie Pass	548
162	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	548
162	WA Cascades near and west of crest - north of Stevens Pass	548
162	White Pass	549
162	WA Cascades near and west of crest - between Snoqualmie and White Pass	549
162	WA Cascades near and west of crest - south of White Pass	549
162	East slopes WA Cascades - north of Stevens Pass	550
162	East slopes WA Cascades - between Stevens and Snoqualmie Pass	550
162	East slopes WA Cascades - between Snoqualmie and White Pass	551
162	East slopes WA Cascades - south of White Pass	551
162	Mt Hood	552
161	Olympics	540
161	Stevens Pass	544
161	Snoqualmie Pass	544
161	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	544
161	WA Cascades near and west of crest - north of Stevens Pass	544
161	White Pass	541
161	WA Cascades near and west of crest - between Snoqualmie and White Pass	541
161	WA Cascades near and west of crest - south of White Pass	541
161	East slopes WA Cascades - between Stevens and Snoqualmie Pass	546
161	East slopes WA Cascades - north of Stevens Pass	546
161	East slopes WA Cascades - between Snoqualmie and White Pass	542
161	East slopes WA Cascades - south of White Pass	542
161	Mt Hood	543
160	Olympics	536
160	Stevens Pass	537
160	Snoqualmie Pass	537
160	WA Cascades near and west of crest - north of Stevens Pass	537
160	WA Cascades near and west of crest - south of White Pass	537
160	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	537
160	White Pass	537
160	WA Cascades near and west of crest - between Snoqualmie and White Pass	537
160	East slopes WA Cascades - north of Stevens Pass	538
160	East slopes WA Cascades - south of White Pass	538
160	East slopes WA Cascades - between Stevens and Snoqualmie Pass	538
160	East slopes WA Cascades - between Snoqualmie and White Pass	538
160	Mt Hood	539
159	Olympics	532
159	Stevens Pass	533
159	Snoqualmie Pass	533
159	WA Cascades near and west of crest - north of Stevens Pass	533
159	WA Cascades near and west of crest - south of White Pass	533
159	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	533
159	White Pass	533
159	WA Cascades near and west of crest - between Snoqualmie and White Pass	533
159	East slopes WA Cascades - north of Stevens Pass	534
159	East slopes WA Cascades - south of White Pass	534
159	East slopes WA Cascades - between Stevens and Snoqualmie Pass	534
159	East slopes WA Cascades - between Snoqualmie and White Pass	534
159	Mt Hood	535
158	Olympics	527
158	Stevens Pass	528
158	Snoqualmie Pass	528
158	WA Cascades near and west of crest - north of Stevens Pass	528
158	WA Cascades near and west of crest - south of White Pass	528
158	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	528
158	White Pass	528
158	WA Cascades near and west of crest - between Snoqualmie and White Pass	528
158	East slopes WA Cascades - north of Stevens Pass	530
158	East slopes WA Cascades - south of White Pass	530
158	East slopes WA Cascades - between Stevens and Snoqualmie Pass	530
158	East slopes WA Cascades - between Snoqualmie and White Pass	530
158	Mt Hood	531
157	Olympics	522
157	Stevens Pass	523
157	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	523
157	White Pass	523
157	WA Cascades near and west of crest - between Snoqualmie and White Pass	523
157	WA Cascades near and west of crest - north of Stevens Pass	523
157	WA Cascades near and west of crest - south of White Pass	523
157	Snoqualmie Pass	524
157	East slopes WA Cascades - north of Stevens Pass	525
157	East slopes WA Cascades - south of White Pass	525
157	East slopes WA Cascades - between Stevens and Snoqualmie Pass	525
157	East slopes WA Cascades - between Snoqualmie and White Pass	525
157	Mt Hood	526
156	Olympics	517
156	Stevens Pass	518
156	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	518
156	White Pass	518
156	WA Cascades near and west of crest - between Snoqualmie and White Pass	518
156	WA Cascades near and west of crest - north of Stevens Pass	518
156	WA Cascades near and west of crest - south of White Pass	518
156	Snoqualmie Pass	521
156	East slopes WA Cascades - north of Stevens Pass	519
156	East slopes WA Cascades - south of White Pass	519
156	East slopes WA Cascades - between Stevens and Snoqualmie Pass	519
156	East slopes WA Cascades - between Snoqualmie and White Pass	519
156	Mt Hood	520
155	Olympics	513
155	Snoqualmie Pass	514
155	WA Cascades near and west of crest - north of Stevens Pass	514
155	WA Cascades near and west of crest - south of White Pass	514
155	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	514
155	White Pass	514
155	WA Cascades near and west of crest - between Snoqualmie and White Pass	514
155	East slopes WA Cascades - north of Stevens Pass	515
155	East slopes WA Cascades - south of White Pass	515
155	East slopes WA Cascades - between Stevens and Snoqualmie Pass	515
155	East slopes WA Cascades - between Snoqualmie and White Pass	515
155	Mt Hood	516
154	Olympics	509
154	Stevens Pass	510
154	Snoqualmie Pass	510
154	WA Cascades near and west of crest - north of Stevens Pass	510
154	WA Cascades near and west of crest - south of White Pass	510
154	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	510
154	White Pass	510
154	WA Cascades near and west of crest - between Snoqualmie and White Pass	510
154	East slopes WA Cascades - north of Stevens Pass	511
154	East slopes WA Cascades - south of White Pass	511
154	East slopes WA Cascades - between Stevens and Snoqualmie Pass	511
154	East slopes WA Cascades - between Snoqualmie and White Pass	511
154	Mt Hood	512
152	Olympics	501
152	Stevens Pass	502
152	Snoqualmie Pass	502
152	WA Cascades near and west of crest - north of Stevens Pass	502
152	WA Cascades near and west of crest - south of White Pass	502
152	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	502
152	White Pass	502
152	WA Cascades near and west of crest - between Snoqualmie and White Pass	502
152	East slopes WA Cascades - north of Stevens Pass	503
152	East slopes WA Cascades - south of White Pass	503
152	East slopes WA Cascades - between Stevens and Snoqualmie Pass	503
152	East slopes WA Cascades - between Snoqualmie and White Pass	503
152	Mt Hood	504
149	Olympics	485
149	Stevens Pass	486
149	Snoqualmie Pass	486
149	WA Cascades near and west of crest - north of Stevens Pass	486
149	WA Cascades near and west of crest - south of White Pass	486
149	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	486
149	White Pass	486
149	WA Cascades near and west of crest - between Snoqualmie and White Pass	486
149	East slopes WA Cascades - north of Stevens Pass	487
149	East slopes WA Cascades - between Stevens and Snoqualmie Pass	487
149	East slopes WA Cascades - between Snoqualmie and White Pass	488
149	East slopes WA Cascades - south of White Pass	488
149	Mt Hood	489
146	Olympics	471
146	Stevens Pass	472
146	Snoqualmie Pass	472
146	WA Cascades near and west of crest - north of Stevens Pass	472
146	WA Cascades near and west of crest - south of White Pass	472
146	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	472
146	White Pass	472
146	WA Cascades near and west of crest - between Snoqualmie and White Pass	472
146	East slopes WA Cascades - north of Stevens Pass	473
146	East slopes WA Cascades - south of White Pass	473
146	East slopes WA Cascades - between Stevens and Snoqualmie Pass	473
146	East slopes WA Cascades - between Snoqualmie and White Pass	473
146	Mt Hood	474
144	Olympics	463
144	Stevens Pass	464
144	Snoqualmie Pass	464
144	WA Cascades near and west of crest - north of Stevens Pass	464
144	WA Cascades near and west of crest - south of White Pass	464
144	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	464
144	White Pass	464
144	WA Cascades near and west of crest - between Snoqualmie and White Pass	464
144	East slopes WA Cascades - north of Stevens Pass	465
144	East slopes WA Cascades - south of White Pass	465
144	East slopes WA Cascades - between Stevens and Snoqualmie Pass	465
144	East slopes WA Cascades - between Snoqualmie and White Pass	465
144	Mt Hood	466
141	Olympics	452
141	Stevens Pass	452
141	Snoqualmie Pass	452
141	White Pass	452
141	WA Cascades near and west of crest - between Snoqualmie and White Pass	452
141	WA Cascades near and west of crest - north of Stevens Pass	452
141	WA Cascades near and west of crest - south of White Pass	452
141	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	452
141	East slopes WA Cascades - north of Stevens Pass	454
141	East slopes WA Cascades - south of White Pass	454
141	East slopes WA Cascades - between Stevens and Snoqualmie Pass	454
141	East slopes WA Cascades - between Snoqualmie and White Pass	454
141	Mt Hood	455
140	Stevens Pass	448
140	Snoqualmie Pass	448
140	WA Cascades near and west of crest - north of Stevens Pass	448
140	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	448
140	White Pass	448
140	Olympics	451
140	WA Cascades near and west of crest - between Snoqualmie and White Pass	451
140	WA Cascades near and west of crest - south of White Pass	451
140	East slopes WA Cascades - north of Stevens Pass	449
140	East slopes WA Cascades - south of White Pass	449
140	East slopes WA Cascades - between Stevens and Snoqualmie Pass	449
153	Olympics	505
153	Stevens Pass	506
153	Snoqualmie Pass	506
153	WA Cascades near and west of crest - north of Stevens Pass	506
153	WA Cascades near and west of crest - south of White Pass	506
153	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	506
153	White Pass	506
153	WA Cascades near and west of crest - between Snoqualmie and White Pass	506
153	East slopes WA Cascades - north of Stevens Pass	507
153	East slopes WA Cascades - south of White Pass	507
153	East slopes WA Cascades - between Stevens and Snoqualmie Pass	507
153	East slopes WA Cascades - between Snoqualmie and White Pass	507
153	Mt Hood	508
151	Olympics	500
151	Stevens Pass	496
151	Snoqualmie Pass	496
151	WA Cascades near and west of crest - north of Stevens Pass	496
151	WA Cascades near and west of crest - south of White Pass	496
151	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	496
151	White Pass	496
151	WA Cascades near and west of crest - between Snoqualmie and White Pass	496
151	East slopes WA Cascades - north of Stevens Pass	497
151	East slopes WA Cascades - south of White Pass	497
151	East slopes WA Cascades - between Stevens and Snoqualmie Pass	497
151	East slopes WA Cascades - between Snoqualmie and White Pass	497
151	Mt Hood	499
147	Olympics	475
147	Stevens Pass	476
147	Snoqualmie Pass	476
147	WA Cascades near and west of crest - north of Stevens Pass	476
147	WA Cascades near and west of crest - south of White Pass	476
147	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	476
147	White Pass	476
147	WA Cascades near and west of crest - between Snoqualmie and White Pass	476
147	East slopes WA Cascades - north of Stevens Pass	477
147	East slopes WA Cascades - between Stevens and Snoqualmie Pass	477
147	East slopes WA Cascades - between Snoqualmie and White Pass	479
147	East slopes WA Cascades - south of White Pass	479
147	Mt Hood	478
145	Olympics	467
145	Stevens Pass	468
145	Snoqualmie Pass	468
145	WA Cascades near and west of crest - north of Stevens Pass	468
145	WA Cascades near and west of crest - south of White Pass	468
145	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	468
145	White Pass	468
145	WA Cascades near and west of crest - between Snoqualmie and White Pass	468
145	East slopes WA Cascades - north of Stevens Pass	469
145	East slopes WA Cascades - south of White Pass	469
145	East slopes WA Cascades - between Stevens and Snoqualmie Pass	469
145	East slopes WA Cascades - between Snoqualmie and White Pass	469
145	Mt Hood	470
143	Olympics	462
143	Stevens Pass	459
143	Snoqualmie Pass	459
143	WA Cascades near and west of crest - north of Stevens Pass	459
143	WA Cascades near and west of crest - south of White Pass	459
143	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	459
143	White Pass	459
143	WA Cascades near and west of crest - between Snoqualmie and White Pass	459
143	East slopes WA Cascades - north of Stevens Pass	460
143	East slopes WA Cascades - south of White Pass	460
143	East slopes WA Cascades - between Stevens and Snoqualmie Pass	460
143	East slopes WA Cascades - between Snoqualmie and White Pass	460
143	Mt Hood	461
142	Olympics	456
142	Stevens Pass	456
142	Snoqualmie Pass	456
142	White Pass	456
142	WA Cascades near and west of crest - between Snoqualmie and White Pass	456
142	WA Cascades near and west of crest - north of Stevens Pass	456
142	WA Cascades near and west of crest - south of White Pass	456
142	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	456
142	East slopes WA Cascades - south of White Pass	457
142	East slopes WA Cascades - north of Stevens Pass	457
142	East slopes WA Cascades - between Snoqualmie and White Pass	457
142	East slopes WA Cascades - between Stevens and Snoqualmie Pass	457
142	Mt Hood	458
139	Olympics	443
139	Stevens Pass	444
139	Snoqualmie Pass	444
139	WA Cascades near and west of crest - north of Stevens Pass	444
139	WA Cascades near and west of crest - south of White Pass	444
139	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	444
139	White Pass	444
139	WA Cascades near and west of crest - between Snoqualmie and White Pass	444
139	East slopes WA Cascades - north of Stevens Pass	445
139	East slopes WA Cascades - south of White Pass	445
139	East slopes WA Cascades - between Stevens and Snoqualmie Pass	445
139	East slopes WA Cascades - between Snoqualmie and White Pass	445
139	Mt Hood	446
137	Olympics	435
137	Stevens Pass	436
137	Snoqualmie Pass	436
137	WA Cascades near and west of crest - north of Stevens Pass	436
137	WA Cascades near and west of crest - south of White Pass	436
137	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	436
137	White Pass	436
137	WA Cascades near and west of crest - between Snoqualmie and White Pass	436
137	East slopes WA Cascades - north of Stevens Pass	437
137	East slopes WA Cascades - south of White Pass	437
140	East slopes WA Cascades - between Snoqualmie and White Pass	449
140	Mt Hood	450
138	Olympics	439
138	Stevens Pass	440
138	Snoqualmie Pass	440
138	WA Cascades near and west of crest - north of Stevens Pass	440
138	WA Cascades near and west of crest - south of White Pass	440
138	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	440
138	White Pass	440
138	WA Cascades near and west of crest - between Snoqualmie and White Pass	440
138	East slopes WA Cascades - north of Stevens Pass	441
138	East slopes WA Cascades - south of White Pass	441
138	East slopes WA Cascades - between Stevens and Snoqualmie Pass	441
138	East slopes WA Cascades - between Snoqualmie and White Pass	441
138	Mt Hood	442
136	Olympics	431
136	Stevens Pass	432
136	Snoqualmie Pass	432
136	WA Cascades near and west of crest - north of Stevens Pass	432
136	WA Cascades near and west of crest - south of White Pass	432
136	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	432
136	White Pass	432
136	WA Cascades near and west of crest - between Snoqualmie and White Pass	432
136	East slopes WA Cascades - north of Stevens Pass	433
136	East slopes WA Cascades - south of White Pass	433
136	East slopes WA Cascades - between Stevens and Snoqualmie Pass	433
136	East slopes WA Cascades - between Snoqualmie and White Pass	433
136	Mt Hood	434
134	Olympics	421
134	Stevens Pass	422
134	Snoqualmie Pass	422
134	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	422
134	White Pass	423
134	WA Cascades near and west of crest - south of White Pass	423
134	WA Cascades near and west of crest - north of Stevens Pass	423
134	WA Cascades near and west of crest - between Snoqualmie and White Pass	423
134	East slopes WA Cascades - north of Stevens Pass	424
134	East slopes WA Cascades - south of White Pass	424
134	East slopes WA Cascades - between Stevens and Snoqualmie Pass	424
134	East slopes WA Cascades - between Snoqualmie and White Pass	424
134	Mt Hood	425
132	Olympics	411
132	Stevens Pass	412
132	Snoqualmie Pass	412
132	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	412
132	White Pass	415
132	WA Cascades near and west of crest - south of White Pass	415
132	WA Cascades near and west of crest - north of Stevens Pass	415
132	WA Cascades near and west of crest - between Snoqualmie and White Pass	415
132	East slopes WA Cascades - north of Stevens Pass	413
132	East slopes WA Cascades - south of White Pass	413
132	East slopes WA Cascades - between Stevens and Snoqualmie Pass	413
132	East slopes WA Cascades - between Snoqualmie and White Pass	413
132	Mt Hood	414
130	Stevens Pass	403
130	Snoqualmie Pass	403
130	WA Cascades near and west of crest - north of Stevens Pass	403
130	WA Cascades near and west of crest - south of White Pass	403
130	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	403
130	White Pass	403
130	WA Cascades near and west of crest - between Snoqualmie and White Pass	403
130	Olympics	404
130	East slopes WA Cascades - north of Stevens Pass	405
130	East slopes WA Cascades - south of White Pass	405
130	East slopes WA Cascades - between Stevens and Snoqualmie Pass	405
130	East slopes WA Cascades - between Snoqualmie and White Pass	405
130	Mt Hood	406
127	Stevens Pass	388
127	Snoqualmie Pass	388
127	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	388
127	WA Cascades near and west of crest - between Snoqualmie and White Pass	388
127	White Pass	388
127	WA Cascades near and west of crest - south of White Pass	388
127	WA Cascades near and west of crest - north of Stevens Pass	389
127	Olympics	390
127	East slopes WA Cascades - north of Stevens Pass	391
127	East slopes WA Cascades - south of White Pass	391
127	East slopes WA Cascades - between Stevens and Snoqualmie Pass	391
127	East slopes WA Cascades - between Snoqualmie and White Pass	391
127	Mt Hood	392
137	East slopes WA Cascades - between Stevens and Snoqualmie Pass	437
137	East slopes WA Cascades - between Snoqualmie and White Pass	437
137	Mt Hood	438
135	Olympics	426
135	Stevens Pass	427
135	Snoqualmie Pass	427
135	WA Cascades near and west of crest - north of Stevens Pass	427
135	WA Cascades near and west of crest - south of White Pass	427
135	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	427
135	White Pass	427
135	WA Cascades near and west of crest - between Snoqualmie and White Pass	427
135	East slopes WA Cascades - north of Stevens Pass	429
135	East slopes WA Cascades - south of White Pass	429
135	East slopes WA Cascades - between Stevens and Snoqualmie Pass	429
135	East slopes WA Cascades - between Snoqualmie and White Pass	429
135	Mt Hood	430
133	Olympics	416
133	Stevens Pass	417
133	Snoqualmie Pass	417
133	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	417
133	White Pass	418
133	WA Cascades near and west of crest - south of White Pass	418
133	WA Cascades near and west of crest - north of Stevens Pass	418
133	WA Cascades near and west of crest - between Snoqualmie and White Pass	418
133	East slopes WA Cascades - north of Stevens Pass	419
133	East slopes WA Cascades - south of White Pass	419
133	East slopes WA Cascades - between Stevens and Snoqualmie Pass	419
133	East slopes WA Cascades - between Snoqualmie and White Pass	419
133	Mt Hood	420
131	Olympics	408
131	Stevens Pass	407
131	Snoqualmie Pass	407
131	WA Cascades near and west of crest - north of Stevens Pass	407
131	WA Cascades near and west of crest - south of White Pass	407
131	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	407
131	White Pass	407
131	WA Cascades near and west of crest - between Snoqualmie and White Pass	407
131	East slopes WA Cascades - north of Stevens Pass	409
131	East slopes WA Cascades - south of White Pass	409
131	East slopes WA Cascades - between Stevens and Snoqualmie Pass	409
131	East slopes WA Cascades - between Snoqualmie and White Pass	409
131	Mt Hood	410
129	Stevens Pass	398
129	Snoqualmie Pass	398
129	WA Cascades near and west of crest - north of Stevens Pass	398
129	WA Cascades near and west of crest - south of White Pass	398
129	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	398
129	White Pass	398
129	WA Cascades near and west of crest - between Snoqualmie and White Pass	398
129	Olympics	400
129	East slopes WA Cascades - north of Stevens Pass	401
129	East slopes WA Cascades - south of White Pass	401
129	East slopes WA Cascades - between Stevens and Snoqualmie Pass	401
129	East slopes WA Cascades - between Snoqualmie and White Pass	401
129	Mt Hood	402
126	Stevens Pass	383
126	Snoqualmie Pass	383
126	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	383
126	WA Cascades near and west of crest - between Snoqualmie and White Pass	383
126	White Pass	383
126	WA Cascades near and west of crest - south of White Pass	383
126	WA Cascades near and west of crest - north of Stevens Pass	384
126	Olympics	387
126	East slopes WA Cascades - north of Stevens Pass	385
126	East slopes WA Cascades - south of White Pass	385
126	East slopes WA Cascades - between Stevens and Snoqualmie Pass	385
126	East slopes WA Cascades - between Snoqualmie and White Pass	385
126	Mt Hood	386
123	Olympics	370
123	Stevens Pass	370
123	Snoqualmie Pass	370
123	White Pass	370
123	WA Cascades near and west of crest - south of White Pass	370
123	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	370
123	WA Cascades near and west of crest - between Snoqualmie and White Pass	370
123	WA Cascades near and west of crest - north of Stevens Pass	374
123	East slopes WA Cascades - north of Stevens Pass	372
123	East slopes WA Cascades - south of White Pass	372
123	East slopes WA Cascades - between Stevens and Snoqualmie Pass	372
123	East slopes WA Cascades - between Snoqualmie and White Pass	372
123	Mt Hood	373
122	Olympics	366
122	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	366
122	White Pass	366
122	WA Cascades near and west of crest - between Snoqualmie and White Pass	366
122	WA Cascades near and west of crest - north of Stevens Pass	366
122	WA Cascades near and west of crest - south of White Pass	366
122	Stevens Pass	367
122	Snoqualmie Pass	367
122	East slopes WA Cascades - north of Stevens Pass	368
122	East slopes WA Cascades - south of White Pass	368
122	East slopes WA Cascades - between Stevens and Snoqualmie Pass	368
122	East slopes WA Cascades - between Snoqualmie and White Pass	368
122	Mt Hood	369
121	Olympics	359
121	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	359
121	White Pass	359
121	WA Cascades near and west of crest - between Snoqualmie and White Pass	359
121	WA Cascades near and west of crest - north of Stevens Pass	359
121	WA Cascades near and west of crest - south of White Pass	359
121	Stevens Pass	363
121	Snoqualmie Pass	363
121	East slopes WA Cascades - north of Stevens Pass	364
121	East slopes WA Cascades - south of White Pass	364
121	East slopes WA Cascades - between Stevens and Snoqualmie Pass	364
121	East slopes WA Cascades - between Snoqualmie and White Pass	364
121	Mt Hood	365
119	Olympics	352
119	Stevens Pass	352
119	Snoqualmie Pass	352
119	White Pass	352
119	WA Cascades near and west of crest - between Snoqualmie and White Pass	352
119	WA Cascades near and west of crest - north of Stevens Pass	352
119	WA Cascades near and west of crest - south of White Pass	352
119	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	352
119	East slopes WA Cascades - north of Stevens Pass	353
119	East slopes WA Cascades - south of White Pass	353
119	East slopes WA Cascades - between Stevens and Snoqualmie Pass	353
119	East slopes WA Cascades - between Snoqualmie and White Pass	353
119	Mt Hood	354
116	Olympics	343
116	Stevens Pass	343
116	Snoqualmie Pass	343
116	White Pass	343
116	WA Cascades near and west of crest - between Snoqualmie and White Pass	343
116	WA Cascades near and west of crest - north of Stevens Pass	343
116	WA Cascades near and west of crest - south of White Pass	343
116	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	343
116	East slopes WA Cascades - north of Stevens Pass	344
116	East slopes WA Cascades - south of White Pass	344
116	East slopes WA Cascades - between Stevens and Snoqualmie Pass	344
116	East slopes WA Cascades - between Snoqualmie and White Pass	344
116	Mt Hood	345
114	Olympics	335
114	Stevens Pass	335
114	Snoqualmie Pass	335
114	White Pass	335
114	WA Cascades near and west of crest - between Snoqualmie and White Pass	335
114	WA Cascades near and west of crest - north of Stevens Pass	335
114	WA Cascades near and west of crest - south of White Pass	335
114	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	335
114	East slopes WA Cascades - north of Stevens Pass	336
114	East slopes WA Cascades - south of White Pass	336
114	East slopes WA Cascades - between Stevens and Snoqualmie Pass	336
114	East slopes WA Cascades - between Snoqualmie and White Pass	336
114	Mt Hood	337
112	Olympics	329
112	Stevens Pass	329
112	Snoqualmie Pass	329
112	White Pass	329
112	WA Cascades near and west of crest - between Snoqualmie and White Pass	329
112	WA Cascades near and west of crest - north of Stevens Pass	329
112	WA Cascades near and west of crest - south of White Pass	329
112	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	329
112	East slopes WA Cascades - north of Stevens Pass	330
112	East slopes WA Cascades - south of White Pass	330
112	East slopes WA Cascades - between Stevens and Snoqualmie Pass	330
112	East slopes WA Cascades - between Snoqualmie and White Pass	330
112	Mt Hood	331
111	Olympics	326
111	Stevens Pass	326
111	Snoqualmie Pass	326
111	White Pass	326
111	WA Cascades near and west of crest - between Snoqualmie and White Pass	326
111	WA Cascades near and west of crest - north of Stevens Pass	326
111	WA Cascades near and west of crest - south of White Pass	326
111	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	326
111	East slopes WA Cascades - north of Stevens Pass	327
111	East slopes WA Cascades - south of White Pass	327
111	East slopes WA Cascades - between Stevens and Snoqualmie Pass	327
111	East slopes WA Cascades - between Snoqualmie and White Pass	327
111	Mt Hood	328
108	Olympics	315
108	Stevens Pass	315
108	Snoqualmie Pass	315
108	White Pass	315
108	WA Cascades near and west of crest - between Snoqualmie and White Pass	315
108	WA Cascades near and west of crest - north of Stevens Pass	315
108	WA Cascades near and west of crest - south of White Pass	315
108	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	315
108	East slopes WA Cascades - north of Stevens Pass	316
108	East slopes WA Cascades - south of White Pass	316
108	East slopes WA Cascades - between Stevens and Snoqualmie Pass	316
108	East slopes WA Cascades - between Snoqualmie and White Pass	316
108	Mt Hood	317
106	Olympics	309
106	Stevens Pass	309
106	Snoqualmie Pass	309
106	White Pass	309
106	WA Cascades near and west of crest - between Snoqualmie and White Pass	309
106	WA Cascades near and west of crest - north of Stevens Pass	309
106	WA Cascades near and west of crest - south of White Pass	309
106	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	309
106	East slopes WA Cascades - north of Stevens Pass	310
106	East slopes WA Cascades - south of White Pass	310
106	East slopes WA Cascades - between Stevens and Snoqualmie Pass	310
106	East slopes WA Cascades - between Snoqualmie and White Pass	310
106	Mt Hood	311
103	Olympics	299
103	Stevens Pass	299
103	Snoqualmie Pass	299
103	White Pass	299
103	WA Cascades near and west of crest - between Snoqualmie and White Pass	299
85	Snoqualmie Pass	227
120	Olympics	355
120	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	355
120	White Pass	355
120	WA Cascades near and west of crest - between Snoqualmie and White Pass	355
120	WA Cascades near and west of crest - north of Stevens Pass	355
120	WA Cascades near and west of crest - south of White Pass	355
120	Stevens Pass	358
120	Snoqualmie Pass	358
120	East slopes WA Cascades - north of Stevens Pass	356
120	East slopes WA Cascades - south of White Pass	356
120	East slopes WA Cascades - between Stevens and Snoqualmie Pass	356
120	East slopes WA Cascades - between Snoqualmie and White Pass	356
120	Mt Hood	357
117	Olympics	346
117	Stevens Pass	346
117	Snoqualmie Pass	346
117	White Pass	346
117	WA Cascades near and west of crest - between Snoqualmie and White Pass	346
117	WA Cascades near and west of crest - north of Stevens Pass	346
117	WA Cascades near and west of crest - south of White Pass	346
117	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	346
117	East slopes WA Cascades - north of Stevens Pass	347
117	East slopes WA Cascades - south of White Pass	347
117	East slopes WA Cascades - between Stevens and Snoqualmie Pass	347
117	East slopes WA Cascades - between Snoqualmie and White Pass	347
117	Mt Hood	348
115	Olympics	338
115	Stevens Pass	338
115	Snoqualmie Pass	338
115	White Pass	338
115	WA Cascades near and west of crest - between Snoqualmie and White Pass	338
115	WA Cascades near and west of crest - north of Stevens Pass	338
115	WA Cascades near and west of crest - south of White Pass	338
115	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	338
115	East slopes WA Cascades - north of Stevens Pass	341
115	East slopes WA Cascades - south of White Pass	341
115	East slopes WA Cascades - between Stevens and Snoqualmie Pass	341
115	East slopes WA Cascades - between Snoqualmie and White Pass	341
115	Mt Hood	342
113	Olympics	332
113	Stevens Pass	332
113	Snoqualmie Pass	332
113	White Pass	332
113	WA Cascades near and west of crest - between Snoqualmie and White Pass	332
113	WA Cascades near and west of crest - north of Stevens Pass	332
113	WA Cascades near and west of crest - south of White Pass	332
113	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	332
113	East slopes WA Cascades - north of Stevens Pass	333
113	East slopes WA Cascades - south of White Pass	333
113	East slopes WA Cascades - between Stevens and Snoqualmie Pass	333
113	East slopes WA Cascades - between Snoqualmie and White Pass	333
113	Mt Hood	334
109	Olympics	318
109	Stevens Pass	318
109	Snoqualmie Pass	318
109	White Pass	318
109	WA Cascades near and west of crest - between Snoqualmie and White Pass	318
109	WA Cascades near and west of crest - north of Stevens Pass	318
109	WA Cascades near and west of crest - south of White Pass	318
109	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	318
109	East slopes WA Cascades - north of Stevens Pass	321
109	East slopes WA Cascades - south of White Pass	321
109	East slopes WA Cascades - between Stevens and Snoqualmie Pass	321
109	East slopes WA Cascades - between Snoqualmie and White Pass	321
109	Mt Hood	322
107	Olympics	312
107	Stevens Pass	312
107	Snoqualmie Pass	312
107	White Pass	312
107	WA Cascades near and west of crest - between Snoqualmie and White Pass	312
107	WA Cascades near and west of crest - north of Stevens Pass	312
107	WA Cascades near and west of crest - south of White Pass	312
107	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	312
107	East slopes WA Cascades - north of Stevens Pass	313
107	East slopes WA Cascades - south of White Pass	313
107	East slopes WA Cascades - between Stevens and Snoqualmie Pass	313
107	East slopes WA Cascades - between Snoqualmie and White Pass	313
107	Mt Hood	314
105	Olympics	306
105	Stevens Pass	306
105	Snoqualmie Pass	306
105	White Pass	306
105	WA Cascades near and west of crest - between Snoqualmie and White Pass	306
105	WA Cascades near and west of crest - north of Stevens Pass	306
105	WA Cascades near and west of crest - south of White Pass	306
105	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	306
105	East slopes WA Cascades - north of Stevens Pass	307
105	East slopes WA Cascades - south of White Pass	307
105	East slopes WA Cascades - between Stevens and Snoqualmie Pass	307
105	East slopes WA Cascades - between Snoqualmie and White Pass	307
105	Mt Hood	308
101	Olympics	288
101	Stevens Pass	288
101	Snoqualmie Pass	288
101	White Pass	288
101	WA Cascades near and west of crest - between Snoqualmie and White Pass	288
101	WA Cascades near and west of crest - north of Stevens Pass	288
101	WA Cascades near and west of crest - south of White Pass	288
101	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	288
101	East slopes WA Cascades - north of Stevens Pass	292
101	East slopes WA Cascades - between Stevens and Snoqualmie Pass	292
103	WA Cascades near and west of crest - north of Stevens Pass	299
103	WA Cascades near and west of crest - south of White Pass	299
103	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	299
103	East slopes WA Cascades - north of Stevens Pass	300
103	East slopes WA Cascades - south of White Pass	300
103	East slopes WA Cascades - between Stevens and Snoqualmie Pass	300
103	East slopes WA Cascades - between Snoqualmie and White Pass	300
103	Mt Hood	302
100	Olympics	284
100	Stevens Pass	284
100	Snoqualmie Pass	284
100	White Pass	284
100	WA Cascades near and west of crest - between Snoqualmie and White Pass	284
100	WA Cascades near and west of crest - north of Stevens Pass	284
100	WA Cascades near and west of crest - south of White Pass	284
100	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	284
100	East slopes WA Cascades - north of Stevens Pass	285
100	East slopes WA Cascades - between Stevens and Snoqualmie Pass	285
100	East slopes WA Cascades - south of White Pass	286
100	East slopes WA Cascades - between Snoqualmie and White Pass	286
100	Mt Hood	287
98	Olympics	276
98	Stevens Pass	276
98	Snoqualmie Pass	276
98	White Pass	276
98	WA Cascades near and west of crest - between Snoqualmie and White Pass	276
98	WA Cascades near and west of crest - north of Stevens Pass	276
98	WA Cascades near and west of crest - south of White Pass	276
98	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	276
98	East slopes WA Cascades - north of Stevens Pass	277
98	East slopes WA Cascades - between Stevens and Snoqualmie Pass	277
98	East slopes WA Cascades - between Snoqualmie and White Pass	278
98	East slopes WA Cascades - south of White Pass	278
98	Mt Hood	279
96	Olympics	268
96	Stevens Pass	268
96	Snoqualmie Pass	268
96	White Pass	268
96	WA Cascades near and west of crest - between Snoqualmie and White Pass	268
96	WA Cascades near and west of crest - north of Stevens Pass	268
96	WA Cascades near and west of crest - south of White Pass	268
96	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	268
96	East slopes WA Cascades - between Stevens and Snoqualmie Pass	269
96	East slopes WA Cascades - north of Stevens Pass	269
96	East slopes WA Cascades - between Snoqualmie and White Pass	271
96	East slopes WA Cascades - south of White Pass	271
96	Mt Hood	270
94	Olympics	260
94	Stevens Pass	260
94	Snoqualmie Pass	260
94	White Pass	260
94	WA Cascades near and west of crest - between Snoqualmie and White Pass	260
94	WA Cascades near and west of crest - north of Stevens Pass	260
94	WA Cascades near and west of crest - south of White Pass	260
94	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	260
94	East slopes WA Cascades - north of Stevens Pass	263
94	East slopes WA Cascades - south of White Pass	263
94	East slopes WA Cascades - between Stevens and Snoqualmie Pass	263
94	East slopes WA Cascades - between Snoqualmie and White Pass	263
94	Mt Hood	264
92	Olympics	251
92	Stevens Pass	251
92	Snoqualmie Pass	251
92	White Pass	251
92	WA Cascades near and west of crest - between Snoqualmie and White Pass	251
92	WA Cascades near and west of crest - north of Stevens Pass	251
92	WA Cascades near and west of crest - south of White Pass	251
92	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	251
92	Mt Hood	255
92	East slopes WA Cascades - north of Stevens Pass	256
92	East slopes WA Cascades - south of White Pass	256
92	East slopes WA Cascades - between Stevens and Snoqualmie Pass	256
92	East slopes WA Cascades - between Snoqualmie and White Pass	256
89	Olympics	243
89	Stevens Pass	243
89	Snoqualmie Pass	243
89	White Pass	243
89	WA Cascades near and west of crest - between Snoqualmie and White Pass	243
89	WA Cascades near and west of crest - north of Stevens Pass	243
89	WA Cascades near and west of crest - south of White Pass	243
89	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	243
89	East slopes WA Cascades - north of Stevens Pass	244
89	East slopes WA Cascades - between Stevens and Snoqualmie Pass	244
89	East slopes WA Cascades - between Snoqualmie and White Pass	245
89	East slopes WA Cascades - south of White Pass	245
89	Mt Hood	246
87	Olympics	235
87	Stevens Pass	235
87	Snoqualmie Pass	235
87	White Pass	235
87	WA Cascades near and west of crest - between Snoqualmie and White Pass	235
87	WA Cascades near and west of crest - north of Stevens Pass	235
87	WA Cascades near and west of crest - south of White Pass	235
87	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	235
87	East slopes WA Cascades - north of Stevens Pass	236
87	East slopes WA Cascades - between Stevens and Snoqualmie Pass	236
87	East slopes WA Cascades - between Snoqualmie and White Pass	238
87	East slopes WA Cascades - south of White Pass	238
87	Mt Hood	237
85	Olympics	227
85	Stevens Pass	227
101	East slopes WA Cascades - between Snoqualmie and White Pass	293
101	East slopes WA Cascades - south of White Pass	293
101	Mt Hood	294
99	Olympics	280
99	Stevens Pass	280
99	Snoqualmie Pass	280
99	White Pass	280
99	WA Cascades near and west of crest - between Snoqualmie and White Pass	280
99	WA Cascades near and west of crest - north of Stevens Pass	280
99	WA Cascades near and west of crest - south of White Pass	280
99	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	280
99	East slopes WA Cascades - north of Stevens Pass	281
99	East slopes WA Cascades - between Stevens and Snoqualmie Pass	281
99	East slopes WA Cascades - between Snoqualmie and White Pass	282
99	East slopes WA Cascades - south of White Pass	282
99	Mt Hood	283
97	Olympics	272
97	Stevens Pass	272
97	Snoqualmie Pass	272
97	White Pass	272
97	WA Cascades near and west of crest - between Snoqualmie and White Pass	272
97	WA Cascades near and west of crest - north of Stevens Pass	272
97	WA Cascades near and west of crest - south of White Pass	272
97	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	272
97	East slopes WA Cascades - north of Stevens Pass	273
97	East slopes WA Cascades - between Stevens and Snoqualmie Pass	273
97	East slopes WA Cascades - between Snoqualmie and White Pass	274
97	East slopes WA Cascades - south of White Pass	274
97	Mt Hood	275
95	Olympics	265
95	Stevens Pass	265
95	Snoqualmie Pass	265
95	White Pass	265
95	WA Cascades near and west of crest - between Snoqualmie and White Pass	265
95	WA Cascades near and west of crest - north of Stevens Pass	265
95	WA Cascades near and west of crest - south of White Pass	265
95	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	265
95	East slopes WA Cascades - north of Stevens Pass	266
95	East slopes WA Cascades - south of White Pass	266
95	East slopes WA Cascades - between Stevens and Snoqualmie Pass	266
95	East slopes WA Cascades - between Snoqualmie and White Pass	266
95	Mt Hood	267
93	Olympics	257
93	Stevens Pass	257
93	Snoqualmie Pass	257
93	White Pass	257
93	WA Cascades near and west of crest - between Snoqualmie and White Pass	257
93	WA Cascades near and west of crest - north of Stevens Pass	257
93	WA Cascades near and west of crest - south of White Pass	257
93	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	257
93	Mt Hood	258
93	East slopes WA Cascades - north of Stevens Pass	259
93	East slopes WA Cascades - south of White Pass	259
93	East slopes WA Cascades - between Stevens and Snoqualmie Pass	259
93	East slopes WA Cascades - between Snoqualmie and White Pass	259
86	Olympics	232
86	Stevens Pass	232
86	Snoqualmie Pass	232
86	White Pass	232
86	WA Cascades near and west of crest - between Snoqualmie and White Pass	232
86	WA Cascades near and west of crest - north of Stevens Pass	232
86	WA Cascades near and west of crest - south of White Pass	232
86	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	232
86	East slopes WA Cascades - north of Stevens Pass	233
86	East slopes WA Cascades - south of White Pass	233
86	East slopes WA Cascades - between Stevens and Snoqualmie Pass	233
86	East slopes WA Cascades - between Snoqualmie and White Pass	233
86	Mt Hood	234
85	White Pass	227
85	WA Cascades near and west of crest - between Snoqualmie and White Pass	227
85	WA Cascades near and west of crest - north of Stevens Pass	227
85	WA Cascades near and west of crest - south of White Pass	227
85	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	227
85	East slopes WA Cascades - north of Stevens Pass	230
85	East slopes WA Cascades - south of White Pass	230
85	East slopes WA Cascades - between Stevens and Snoqualmie Pass	230
85	East slopes WA Cascades - between Snoqualmie and White Pass	230
85	Mt Hood	231
84	Olympics	222
84	Stevens Pass	222
84	Snoqualmie Pass	222
84	White Pass	222
84	WA Cascades near and west of crest - between Snoqualmie and White Pass	222
84	WA Cascades near and west of crest - north of Stevens Pass	222
84	WA Cascades near and west of crest - south of White Pass	222
84	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	222
84	East slopes WA Cascades - north of Stevens Pass	225
84	East slopes WA Cascades - south of White Pass	225
84	East slopes WA Cascades - between Stevens and Snoqualmie Pass	225
84	East slopes WA Cascades - between Snoqualmie and White Pass	225
84	Mt Hood	226
83	Olympics	219
83	Stevens Pass	219
83	Snoqualmie Pass	219
83	White Pass	219
83	WA Cascades near and west of crest - between Snoqualmie and White Pass	219
83	WA Cascades near and west of crest - north of Stevens Pass	219
83	WA Cascades near and west of crest - south of White Pass	219
83	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	219
83	East slopes WA Cascades - north of Stevens Pass	220
83	East slopes WA Cascades - south of White Pass	220
83	East slopes WA Cascades - between Stevens and Snoqualmie Pass	220
83	East slopes WA Cascades - between Snoqualmie and White Pass	220
83	Mt Hood	221
82	Olympics	216
82	Stevens Pass	216
82	Snoqualmie Pass	216
82	White Pass	216
82	WA Cascades near and west of crest - between Snoqualmie and White Pass	216
82	WA Cascades near and west of crest - north of Stevens Pass	216
82	WA Cascades near and west of crest - south of White Pass	216
82	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	216
82	East slopes WA Cascades - north of Stevens Pass	217
82	East slopes WA Cascades - south of White Pass	217
82	East slopes WA Cascades - between Stevens and Snoqualmie Pass	217
82	East slopes WA Cascades - between Snoqualmie and White Pass	217
82	Mt Hood	218
81	Olympics	209
81	WA Cascades near and west of crest - north of Stevens Pass	213
81	Stevens Pass	210
81	Snoqualmie Pass	210
81	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	210
81	WA Cascades near and west of crest - between Snoqualmie and White Pass	210
81	White Pass	210
81	WA Cascades near and west of crest - south of White Pass	210
81	East slopes WA Cascades - north of Stevens Pass	211
81	East slopes WA Cascades - south of White Pass	211
81	East slopes WA Cascades - between Stevens and Snoqualmie Pass	211
81	East slopes WA Cascades - between Snoqualmie and White Pass	211
81	Mt Hood	212
80	Olympics	206
80	Stevens Pass	203
80	Snoqualmie Pass	203
80	WA Cascades near and west of crest - north of Stevens Pass	203
80	WA Cascades near and west of crest - south of White Pass	203
80	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	203
80	White Pass	203
80	WA Cascades near and west of crest - between Snoqualmie and White Pass	203
80	East slopes WA Cascades - north of Stevens Pass	207
80	East slopes WA Cascades - south of White Pass	207
80	East slopes WA Cascades - between Stevens and Snoqualmie Pass	207
80	East slopes WA Cascades - between Snoqualmie and White Pass	207
80	Mt Hood	208
79	Olympics	198
79	Stevens Pass	199
79	Snoqualmie Pass	199
79	WA Cascades near and west of crest - north of Stevens Pass	199
79	WA Cascades near and west of crest - south of White Pass	199
79	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	199
79	White Pass	199
79	WA Cascades near and west of crest - between Snoqualmie and White Pass	199
79	East slopes WA Cascades - north of Stevens Pass	200
79	East slopes WA Cascades - south of White Pass	200
79	East slopes WA Cascades - between Stevens and Snoqualmie Pass	200
79	East slopes WA Cascades - between Snoqualmie and White Pass	200
79	Mt Hood	201
77	Olympics	190
77	Stevens Pass	191
77	Snoqualmie Pass	191
77	WA Cascades near and west of crest - north of Stevens Pass	191
77	WA Cascades near and west of crest - south of White Pass	191
77	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	191
77	White Pass	191
77	WA Cascades near and west of crest - between Snoqualmie and White Pass	191
77	East slopes WA Cascades - north of Stevens Pass	192
77	East slopes WA Cascades - south of White Pass	192
77	East slopes WA Cascades - between Stevens and Snoqualmie Pass	192
77	East slopes WA Cascades - between Snoqualmie and White Pass	192
77	Mt Hood	193
70	Olympics	161
70	Stevens Pass	162
70	Snoqualmie Pass	162
70	WA Cascades near and west of crest - north of Stevens Pass	162
70	WA Cascades near and west of crest - south of White Pass	162
70	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	162
70	White Pass	162
70	WA Cascades near and west of crest - between Snoqualmie and White Pass	162
70	East slopes WA Cascades - north of Stevens Pass	163
70	East slopes WA Cascades - south of White Pass	163
70	East slopes WA Cascades - between Stevens and Snoqualmie Pass	163
70	East slopes WA Cascades - between Snoqualmie and White Pass	163
70	Mt Hood	164
68	Olympics	155
68	Stevens Pass	155
68	Snoqualmie Pass	155
68	Mt Hood	155
68	White Pass	155
68	WA Cascades near and west of crest - between Snoqualmie and White Pass	155
68	WA Cascades near and west of crest - north of Stevens Pass	155
68	WA Cascades near and west of crest - south of White Pass	155
68	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	155
68	East slopes WA Cascades - north of Stevens Pass	156
68	East slopes WA Cascades - south of White Pass	156
68	East slopes WA Cascades - between Stevens and Snoqualmie Pass	156
68	East slopes WA Cascades - between Snoqualmie and White Pass	156
66	Olympics	148
66	Stevens Pass	148
66	Snoqualmie Pass	148
66	Mt Hood	148
66	White Pass	148
66	WA Cascades near and west of crest - between Snoqualmie and White Pass	148
66	WA Cascades near and west of crest - north of Stevens Pass	148
66	WA Cascades near and west of crest - south of White Pass	148
66	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	148
66	East slopes WA Cascades - north of Stevens Pass	151
66	East slopes WA Cascades - south of White Pass	151
66	East slopes WA Cascades - between Stevens and Snoqualmie Pass	151
66	East slopes WA Cascades - between Snoqualmie and White Pass	151
65	Olympics	145
65	Stevens Pass	145
65	Snoqualmie Pass	145
65	White Pass	145
65	WA Cascades near and west of crest - between Snoqualmie and White Pass	145
65	WA Cascades near and west of crest - north of Stevens Pass	145
65	WA Cascades near and west of crest - south of White Pass	145
65	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	145
65	East slopes WA Cascades - north of Stevens Pass	146
65	East slopes WA Cascades - south of White Pass	146
65	East slopes WA Cascades - between Stevens and Snoqualmie Pass	146
65	East slopes WA Cascades - between Snoqualmie and White Pass	146
65	Mt Hood	147
62	Olympics	138
62	Stevens Pass	138
62	Snoqualmie Pass	138
62	Mt Hood	138
62	White Pass	138
62	WA Cascades near and west of crest - between Snoqualmie and White Pass	138
62	WA Cascades near and west of crest - north of Stevens Pass	138
62	WA Cascades near and west of crest - south of White Pass	138
62	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	138
62	East slopes WA Cascades - north of Stevens Pass	139
62	East slopes WA Cascades - south of White Pass	139
62	East slopes WA Cascades - between Stevens and Snoqualmie Pass	139
62	East slopes WA Cascades - between Snoqualmie and White Pass	139
61	Olympics	136
61	Stevens Pass	136
61	Snoqualmie Pass	136
61	Mt Hood	136
61	White Pass	136
61	WA Cascades near and west of crest - between Snoqualmie and White Pass	136
61	WA Cascades near and west of crest - north of Stevens Pass	136
61	WA Cascades near and west of crest - south of White Pass	136
61	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	136
61	East slopes WA Cascades - north of Stevens Pass	137
61	East slopes WA Cascades - south of White Pass	137
61	East slopes WA Cascades - between Stevens and Snoqualmie Pass	137
61	East slopes WA Cascades - between Snoqualmie and White Pass	137
59	Olympics	132
59	Stevens Pass	132
59	Snoqualmie Pass	132
59	Mt Hood	132
59	White Pass	132
59	WA Cascades near and west of crest - between Snoqualmie and White Pass	132
59	East slopes WA Cascades - between Stevens and Snoqualmie Pass	132
59	WA Cascades near and west of crest - north of Stevens Pass	132
59	WA Cascades near and west of crest - south of White Pass	132
59	East slopes WA Cascades - between Snoqualmie and White Pass	132
59	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	132
59	East slopes WA Cascades - north of Stevens Pass	132
59	East slopes WA Cascades - south of White Pass	132
57	Olympics	125
57	Stevens Pass	125
57	Snoqualmie Pass	125
57	Mt Hood	125
57	White Pass	125
57	WA Cascades near and west of crest - south of White Pass	125
57	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	125
57	WA Cascades near and west of crest - between Snoqualmie and White Pass	125
57	WA Cascades near and west of crest - north of Stevens Pass	127
57	East slopes WA Cascades - north of Stevens Pass	126
76	Olympics	186
76	Stevens Pass	187
76	Snoqualmie Pass	187
76	WA Cascades near and west of crest - north of Stevens Pass	187
76	WA Cascades near and west of crest - south of White Pass	187
76	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	187
76	White Pass	187
76	WA Cascades near and west of crest - between Snoqualmie and White Pass	187
76	East slopes WA Cascades - north of Stevens Pass	189
76	East slopes WA Cascades - south of White Pass	189
76	East slopes WA Cascades - between Stevens and Snoqualmie Pass	189
76	East slopes WA Cascades - between Snoqualmie and White Pass	189
76	Mt Hood	188
73	Olympics	174
73	Stevens Pass	175
73	Snoqualmie Pass	175
73	WA Cascades near and west of crest - north of Stevens Pass	175
73	WA Cascades near and west of crest - south of White Pass	175
73	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	175
73	White Pass	175
73	WA Cascades near and west of crest - between Snoqualmie and White Pass	175
73	East slopes WA Cascades - north of Stevens Pass	176
73	East slopes WA Cascades - south of White Pass	176
73	East slopes WA Cascades - between Stevens and Snoqualmie Pass	176
73	East slopes WA Cascades - between Snoqualmie and White Pass	176
73	Mt Hood	177
71	Olympics	165
71	Stevens Pass	166
71	Snoqualmie Pass	166
71	WA Cascades near and west of crest - north of Stevens Pass	166
71	WA Cascades near and west of crest - south of White Pass	166
71	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	166
71	White Pass	166
71	WA Cascades near and west of crest - between Snoqualmie and White Pass	166
71	East slopes WA Cascades - north of Stevens Pass	167
71	East slopes WA Cascades - south of White Pass	167
71	East slopes WA Cascades - between Stevens and Snoqualmie Pass	167
71	East slopes WA Cascades - between Snoqualmie and White Pass	167
71	Mt Hood	168
69	Olympics	157
69	Stevens Pass	160
69	Snoqualmie Pass	160
69	WA Cascades near and west of crest - north of Stevens Pass	160
69	WA Cascades near and west of crest - south of White Pass	160
69	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	160
69	White Pass	160
69	WA Cascades near and west of crest - between Snoqualmie and White Pass	160
69	East slopes WA Cascades - north of Stevens Pass	159
69	East slopes WA Cascades - south of White Pass	159
69	East slopes WA Cascades - between Stevens and Snoqualmie Pass	159
69	East slopes WA Cascades - between Snoqualmie and White Pass	159
69	Mt Hood	158
67	Olympics	152
67	Stevens Pass	152
67	Snoqualmie Pass	152
67	Mt Hood	152
67	White Pass	152
67	WA Cascades near and west of crest - between Snoqualmie and White Pass	152
67	WA Cascades near and west of crest - north of Stevens Pass	152
67	WA Cascades near and west of crest - south of White Pass	152
67	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	152
67	East slopes WA Cascades - north of Stevens Pass	154
67	East slopes WA Cascades - south of White Pass	154
67	East slopes WA Cascades - between Stevens and Snoqualmie Pass	154
67	East slopes WA Cascades - between Snoqualmie and White Pass	154
63	Olympics	140
63	Stevens Pass	140
63	Snoqualmie Pass	140
63	Mt Hood	140
63	White Pass	140
63	WA Cascades near and west of crest - between Snoqualmie and White Pass	140
63	WA Cascades near and west of crest - north of Stevens Pass	140
63	WA Cascades near and west of crest - south of White Pass	140
63	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	140
63	East slopes WA Cascades - north of Stevens Pass	141
63	East slopes WA Cascades - south of White Pass	141
63	East slopes WA Cascades - between Stevens and Snoqualmie Pass	141
63	East slopes WA Cascades - between Snoqualmie and White Pass	141
60	Olympics	134
60	Stevens Pass	134
60	Snoqualmie Pass	134
60	Mt Hood	134
60	White Pass	134
60	WA Cascades near and west of crest - between Snoqualmie and White Pass	134
60	WA Cascades near and west of crest - north of Stevens Pass	134
60	WA Cascades near and west of crest - south of White Pass	134
60	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	134
60	East slopes WA Cascades - north of Stevens Pass	135
60	East slopes WA Cascades - south of White Pass	135
60	East slopes WA Cascades - between Stevens and Snoqualmie Pass	135
60	East slopes WA Cascades - between Snoqualmie and White Pass	135
58	Olympics	128
58	Stevens Pass	128
58	Snoqualmie Pass	128
58	White Pass	128
58	WA Cascades near and west of crest - between Snoqualmie and White Pass	128
58	East slopes WA Cascades - between Stevens and Snoqualmie Pass	128
58	WA Cascades near and west of crest - north of Stevens Pass	128
58	WA Cascades near and west of crest - south of White Pass	128
58	East slopes WA Cascades - between Snoqualmie and White Pass	128
58	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	128
58	East slopes WA Cascades - north of Stevens Pass	128
58	East slopes WA Cascades - south of White Pass	128
58	Mt Hood	131
56	Olympics	122
56	Stevens Pass	122
56	Snoqualmie Pass	122
56	Mt Hood	122
56	White Pass	122
56	WA Cascades near and west of crest - between Snoqualmie and White Pass	122
56	WA Cascades near and west of crest - north of Stevens Pass	122
56	WA Cascades near and west of crest - south of White Pass	122
56	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	122
56	East slopes WA Cascades - north of Stevens Pass	124
56	East slopes WA Cascades - south of White Pass	124
56	East slopes WA Cascades - between Stevens and Snoqualmie Pass	124
56	East slopes WA Cascades - between Snoqualmie and White Pass	124
53	Stevens Pass	112
53	Snoqualmie Pass	112
53	WA Cascades near and west of crest - north of Stevens Pass	112
53	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	112
53	White Pass	112
53	Olympics	113
53	WA Cascades near and west of crest - between Snoqualmie and White Pass	113
53	WA Cascades near and west of crest - south of White Pass	113
53	Mt Hood	114
53	East slopes WA Cascades - north of Stevens Pass	114
53	East slopes WA Cascades - south of White Pass	114
53	East slopes WA Cascades - between Stevens and Snoqualmie Pass	114
53	East slopes WA Cascades - between Snoqualmie and White Pass	114
47	Stevens Pass	93
47	Snoqualmie Pass	93
47	WA Cascades near and west of crest - north of Stevens Pass	93
47	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	93
47	White Pass	93
47	Olympics	95
47	WA Cascades near and west of crest - between Snoqualmie and White Pass	95
47	WA Cascades near and west of crest - south of White Pass	95
47	Mt Hood	96
47	East slopes WA Cascades - north of Stevens Pass	96
47	East slopes WA Cascades - south of White Pass	96
47	East slopes WA Cascades - between Stevens and Snoqualmie Pass	96
47	East slopes WA Cascades - between Snoqualmie and White Pass	96
39	Olympics	75
39	Stevens Pass	75
39	Snoqualmie Pass	75
39	Mt Hood	75
39	White Pass	75
39	WA Cascades near and west of crest - between Snoqualmie and White Pass	75
39	East slopes WA Cascades - between Stevens and Snoqualmie Pass	75
39	WA Cascades near and west of crest - north of Stevens Pass	75
39	WA Cascades near and west of crest - south of White Pass	75
39	East slopes WA Cascades - between Snoqualmie and White Pass	75
39	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	75
39	East slopes WA Cascades - north of Stevens Pass	75
39	East slopes WA Cascades - south of White Pass	75
57	East slopes WA Cascades - south of White Pass	126
57	East slopes WA Cascades - between Stevens and Snoqualmie Pass	126
57	East slopes WA Cascades - between Snoqualmie and White Pass	126
55	Olympics	118
55	Stevens Pass	118
55	Snoqualmie Pass	118
55	Mt Hood	118
55	White Pass	118
55	WA Cascades near and west of crest - between Snoqualmie and White Pass	118
55	WA Cascades near and west of crest - north of Stevens Pass	118
55	WA Cascades near and west of crest - south of White Pass	118
55	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	118
55	East slopes WA Cascades - north of Stevens Pass	121
55	East slopes WA Cascades - south of White Pass	121
55	East slopes WA Cascades - between Stevens and Snoqualmie Pass	121
55	East slopes WA Cascades - between Snoqualmie and White Pass	121
54	Stevens Pass	115
54	Snoqualmie Pass	115
54	WA Cascades near and west of crest - north of Stevens Pass	115
54	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	115
54	White Pass	115
54	Olympics	116
54	WA Cascades near and west of crest - between Snoqualmie and White Pass	116
54	WA Cascades near and west of crest - south of White Pass	116
54	Mt Hood	117
54	East slopes WA Cascades - north of Stevens Pass	117
54	East slopes WA Cascades - south of White Pass	117
54	East slopes WA Cascades - between Stevens and Snoqualmie Pass	117
54	East slopes WA Cascades - between Snoqualmie and White Pass	117
52	Stevens Pass	109
52	Snoqualmie Pass	109
52	WA Cascades near and west of crest - north of Stevens Pass	109
52	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	109
52	White Pass	109
52	Olympics	110
52	WA Cascades near and west of crest - between Snoqualmie and White Pass	110
52	WA Cascades near and west of crest - south of White Pass	110
52	Mt Hood	111
52	East slopes WA Cascades - north of Stevens Pass	111
52	East slopes WA Cascades - south of White Pass	111
52	East slopes WA Cascades - between Stevens and Snoqualmie Pass	111
52	East slopes WA Cascades - between Snoqualmie and White Pass	111
51	Stevens Pass	106
51	Snoqualmie Pass	106
51	WA Cascades near and west of crest - north of Stevens Pass	106
51	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	106
51	White Pass	106
51	Olympics	107
51	WA Cascades near and west of crest - between Snoqualmie and White Pass	107
51	WA Cascades near and west of crest - south of White Pass	107
51	Mt Hood	108
51	East slopes WA Cascades - north of Stevens Pass	108
51	East slopes WA Cascades - south of White Pass	108
51	East slopes WA Cascades - between Stevens and Snoqualmie Pass	108
51	East slopes WA Cascades - between Snoqualmie and White Pass	108
50	Stevens Pass	103
50	Snoqualmie Pass	103
50	WA Cascades near and west of crest - north of Stevens Pass	103
50	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	103
50	White Pass	103
50	Olympics	104
50	WA Cascades near and west of crest - between Snoqualmie and White Pass	104
50	WA Cascades near and west of crest - south of White Pass	104
50	Mt Hood	105
50	East slopes WA Cascades - north of Stevens Pass	105
50	East slopes WA Cascades - south of White Pass	105
50	East slopes WA Cascades - between Stevens and Snoqualmie Pass	105
50	East slopes WA Cascades - between Snoqualmie and White Pass	105
40	Olympics	76
40	Stevens Pass	76
40	Snoqualmie Pass	76
40	Mt Hood	76
40	White Pass	76
40	WA Cascades near and west of crest - between Snoqualmie and White Pass	76
40	WA Cascades near and west of crest - north of Stevens Pass	76
40	WA Cascades near and west of crest - south of White Pass	76
40	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	76
40	East slopes WA Cascades - north of Stevens Pass	77
40	East slopes WA Cascades - south of White Pass	77
40	East slopes WA Cascades - between Stevens and Snoqualmie Pass	77
40	East slopes WA Cascades - between Snoqualmie and White Pass	77
38	Olympics	74
38	Stevens Pass	74
38	Snoqualmie Pass	74
38	Mt Hood	74
38	White Pass	74
38	WA Cascades near and west of crest - between Snoqualmie and White Pass	74
38	East slopes WA Cascades - between Stevens and Snoqualmie Pass	74
38	WA Cascades near and west of crest - north of Stevens Pass	74
38	WA Cascades near and west of crest - south of White Pass	74
38	East slopes WA Cascades - between Snoqualmie and White Pass	74
38	WA Cascades near and west of crest - between Stevens and Snoqualmie Pass	74
38	East slopes WA Cascades - north of Stevens Pass	74
38	East slopes WA Cascades - south of White Pass	74
\.


--
-- Name: region_index_forecast_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tkb
--

SELECT pg_catalog.setval('region_index_forecast_id_seq', 313, true);


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: tkb
--

COPY reports (report_id, datetime, datetime_utc, author, region, summary, treeline_above, treeline_near, treeline_below) FROM stdin;
2002	6:00 PM PST Tuesday, January 26, 2016	2016-01-27 02:00:00	Garth Ferber	Mt Hood	At Mt Hood the main problem should continue to be loose wet avalanches on Wednesday. Watch for wet surface snow deeper than a few inches and pinwheels or roller balls that usually precede loose wet avalanches.	Moderate	Moderate	Moderate
2000	6:00 PM PST Tuesday, January 26, 2016	2016-01-27 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A variety of avalanche problems remains possible along the east slopes on Wednesday. Take time to be familiar with the forecast for the area you wish to visit.	Considerable	Moderate	Moderate
1999	6:00 PM PST Tuesday, January 26, 2016	2016-01-27 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Along the west slopes the main problem should continue to be loose wet avalanches on Wednesday. Watch for wet surface snow deeper than a few inches and pinwheels or roller balls that usually precede loose wet avalanches.	Considerable	Considerable	Moderate
1998	6:00 PM PST Tuesday, January 26, 2016	2016-01-27 02:00:00	Garth Ferber	Olympics	In the Olympics the main problem should continue to be loose wet avalanches on Wednesday. Watch for wet surface snow deeper than a few inches and pinwheels or roller balls that usually precede loose wet avalanches.	Moderate	Moderate	Moderate
1997	6:00 PM PST Monday, January 25, 2016	2016-01-26 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	A variety of avalanche problems seems possible on Tuesday. Take time to be familiar with the forecast for the area you wish to visit.	Considerable	Moderate	Moderate
1996	6:00 PM PST Monday, January 25, 2016	2016-01-26 02:00:00	Garth Ferber	Mt Hood	It looks like a mild wet day at Mt Hood Tuesday. Watch for wet surface snow deeper than a few inches and pinwheels or roller balls that usually precede loose wet avalanches.	Considerable	Considerable	Moderate
1995	6:00 PM PST Monday, January 25, 2016	2016-01-26 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A variety of avalanche problems seems possible on Tuesday. Take time to be familiar with the forecast for the area you wish to visit.	Considerable	Moderate	Moderate
1994	6:00 PM PST Monday, January 25, 2016	2016-01-26 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A variety of avalanche problems seems possible on Tuesday. Take time to be familiar with the forecast for the area you wish to visit.	Considerable	Considerable	Moderate
1993	6:00 PM PST Monday, January 25, 2016	2016-01-26 02:00:00	Garth Ferber	Olympics	It looks like a mild wet day in the Olympics on Tuesday. Watch for wet surface snow deeper than a few inches and pinwheels or roller balls that usually precede loose wet avalanches.	Considerable	Moderate	Moderate
1992	6:00 PM PST Sunday, January 24, 2016	2016-01-25 02:00:00	Garth Ferber	Mt Hood	Take time to identify features where wind loading has occurred and go around them and watch for sun effects on steep solar slopes.	Moderate	Moderate	Moderate
1991	6:00 PM PST Sunday, January 24, 2016	2016-01-25 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Take time to identify features where wind loading has occurred and go around them and watch for sun effects on steep solar slopes. Conservative decision-making is also advised until the persistent slab problem can be ruled out.	Considerable	Moderate	Moderate
1990	6:00 PM PST Sunday, January 24, 2016	2016-01-25 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Take time to identify features where wind loading has occurred and go around them and watch for sun effects on steep solar slopes. Conservative decision-making is also advised until the persistent slab problem can be ruled out.	Moderate	Moderate	Moderate
1989	6:00 PM PST Sunday, January 24, 2016	2016-01-25 02:00:00	Garth Ferber	Olympics	Take time to identify features where wind loading has occurred and go around them and watch for sun effects on steep solar slopes.	Moderate	Moderate	Low
1988	6:00 PM PST Saturday, January 23, 2016	2016-01-24 02:00:00	Kenny Kramer	Mt Hood	Watch for recent shallow wind slabs that may have formed on the lee, northerly-easterly aspects below ridges, mainly near and above treeline.	Moderate	Moderate	Moderate
1987	6:00 PM PST Saturday, January 23, 2016	2016-01-24 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for recent shallow wind slabs that may have formed on the lee, northerly aspects below ridges, mainly near and above treeline. \n\nContinued conservative decision-making remains wise travel advice, until the persistent slab problems can be ruled out.	Considerable	Considerable	Moderate
1986	6:00 PM PST Saturday, January 23, 2016	2016-01-24 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Watch for recent shallow wind slabs that may have formed on the lee, northerly aspects below ridges, mainly near and above treeline. \n\nContinued conservative decision-making remains wise travel advice, until the persistent slab problems can be ruled out.	Moderate	Moderate	Moderate
1985	6:00 PM PST Saturday, January 23, 2016	2016-01-24 02:00:00	Kenny Kramer	Olympics	Watch for recent shallow wind slabs that may have formed on the lee, northerly aspects below ridges, mainly near and above treeline.	Moderate	Moderate	Low
1984	9:16 PM PST Friday, January 22, 2016	2016-01-23 05:16:00	Kenny Kramer	Mt Hood	Watch for recent shallow wind slabs that may have formed on the lee, northerly-easterly aspects below ridges, mainly near and above treeline.	Moderate	Moderate	Moderate
1982	9:16 PM PST Friday, January 22, 2016	2016-01-23 05:16:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Improving trend, however, continued cautious routefinding and conservative decision-making remain the proper travel advice, until the persistent slab problems can be ruled out.	Considerable	Considerable	Considerable
1981	9:16 PM PST Friday, January 22, 2016	2016-01-23 05:16:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Continued cautious routefinding and conservative decision-making remain the proper travel advice, until the persistent slab problems can be ruled out, especially in areas that did not receive heavy rain..	Considerable	Moderate	Moderate
1980	9:16 PM PST Friday, January 22, 2016	2016-01-23 05:16:00	Kenny Kramer	Olympics	Watch for recent shallow wind slabs that may have formed on the lee, northerly aspects below ridges, mainly near and above treeline.	Moderate	Moderate	Moderate
1979	6:33 PM PST Thursday, January 21, 2016	2016-01-22 02:33:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	In the northeast and centraleast Cascades, light to moderate snowfall Thursday night through Friday morning and a slow warming trend should gradually stress and load buried weak layers, potentially resulting in large and destructive avalanches. A natural avalanche cycle may occur Thursday night through Friday morning. The danger should be lower in the southeast Cascades, where less recent snowfall was received.	Considerable	Considerable	Considerable
1744	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	Evaluate terrain and snow carefully and avoid steep terrain suspected of being wind loaded, especially above treeline.	Moderate	Moderate	Low
1977	6:33 PM PST Thursday, January 21, 2016	2016-01-22 02:33:00	Dennis D'Amico	Mt Hood	Loose wet avalanches should be the main avalanche problem Friday with plenty of wet snow in the upper snowpack. Natural avalanches are unlikely but human triggered avalanches are possible on steeper slopes. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences.	Moderate	Moderate	Moderate
1974	6:33 PM PST Thursday, January 21, 2016	2016-01-22 02:33:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Loose wet avalanches should be the main avalanche problem Friday with plenty of wet snow in the upper snowpack. Natural wet loose avalanches are possible but human triggered wet loose avalanches should be likely on steeper slopes. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences. Travel conservatively Friday until more information is known about lingering persistent weak layers across the west slopes and Passes.	Considerable	Considerable	Considerable
1971	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	Mt Hood	A variety of avalanche problems on Thursday will present dangerous conditions in all elevation bands at Mt. Hood. If you venture out Thursday, use conservative decision making and terrain selection.	Considerable	Considerable	Considerable
1969	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Moderate snowfall on Thursday for the northeast Cascades and a slow warming trend should gradually stress and load buried weak layers, potentially resulting in large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday, especially near and above treeline where wind loaded slopes should tip the balance for natural avalanches from possible to likely.	High	High	Considerable
1967	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Heavy rain and warming should cause a natural avalanche cycle in the Mt. Baker area and an avalanche warning has been issued for Thursday. Some avalanches may step down to buried weak layers, leading to large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday.	High	High	High
1965	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	Mt Hood	A variety of avalanche problems on Thursday will present dangerous conditions in all elevation bands at Mt. Hood. If you venture out Thursday, use conservative decision making and terrain selection.	Considerable	Considerable	Considerable
1963	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	East Slopes North - Canadian Border to Lake Chelan	Moderate snowfall on Thursday for the northeast Cascades and a slow warming trend should gradually stress and load buried weak layers, potentially resulting in large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday, especially near and above treeline where wind loaded slopes should tip the balance for natural avalanches from possible to likely.	High	High	Considerable
1961	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	West Slopes North - Canadian Border to Skagit River	Heavy rain and warming should cause a natural avalanche cycle in the Mt. Baker area and an avalanche warning has been issued for Thursday. Some avalanches may step down to buried weak layers, leading to large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday.	High	High	High
1959	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Moderate snowfall on Thursday for the northeast Cascades and a slow warming trend should gradually stress and load buried weak layers, potentially resulting in large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday, especially near and above treeline where wind loaded slopes should tip the balance for natural avalanches from possible to likely.	High	High	Considerable
1958	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Heavy rain and warming should cause a natural avalanche cycle in the Mt. Baker area and an avalanche warning has been issued for Thursday. Some avalanches may step down to buried weak layers, leading to large and destructive avalanches. Travel in backcountry terrain is not recommended Thursday.	High	High	High
1956	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Shallow new or lingering storm or wind slabs or small loose wet avalanches could step down to areas where persistent weak layers are reactive resulting in large avalanches in specific areas.  If you venture out, use conservative decision making and slope selection to stay safe Thursday.	Considerable	Considerable	Considerable
1954	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	Olympics	Loose wet avalanches will become likely on Thursday due to rainfall. Loose wet avalanches are likely to be small and confined to steeper slopes in all elevation bands in the Hurricane Ridge area. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences. Larger and more dangerous avalanches are more likely outside the Hurricane Ridge area on the SW slopes of the Olympics due to heavier rain.	Moderate	Moderate	Moderate
1951	6:47 PM PST Tuesday, January 19, 2016	2016-01-20 02:47:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New wind and storm slab is most likely in the central and south Cascades on Wednesday. A potential lingering persistent weak layer also makes conservative decision-making and cautious routefinding is essential.	Considerable	Considerable	Considerable
1949	6:00 PM PST Monday, January 18, 2016	2016-01-19 02:00:00	Kenny Kramer	Mt Hood	Dangerous wind slabs may be large to very large on Tuesday. While some of these may be difficult to human trigger, it may be possible to release large avalanches if triggered from a shallow area of the slab. Dangerous avalanche conditions exist, making conservative decision-making and cautious route-finding is essential.	Considerable	Considerable	Moderate
1947	6:00 PM PST Monday, January 18, 2016	2016-01-19 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Even with an overall stabilizing trend on Tuesday, dangerous avalanche conditions exist. The tricky nature of persistent layers necessitates conservative decision-making and cautious route-finding is essential. ?	Considerable	Considerable	Considerable
1945	6:44 PM PST Sunday, January 17, 2016	2016-01-18 02:44:00	Dennis D'Amico	Mt Hood	Even with an overall stabilizing trend on Monday, dangerous avalanche conditions will exist on lee wind-loaded slopes and where storm slabs remain sensitive to human triggering. Take it slow on Monday and evaluate the snowpack as you travel conservatively through the terrain.	Considerable	Considerable	Considerable
1942	6:44 PM PST Sunday, January 17, 2016	2016-01-18 02:44:00	Dennis D'Amico	Olympics	Even with an overall stabilizing trend on Monday, dangerous avalanche conditions may persist on lee wind-loaded slopes above treeline and where storm slabs remain sensitive to human triggering. Take it slow on Monday and evaluate the snowpack as you travel conservatively through the terrain.	Considerable	Moderate	Moderate
1975	6:33 PM PST Thursday, January 21, 2016	2016-01-22 02:33:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	In the northeast and centraleast Cascades, light to moderate snowfall Thursday night through Friday morning and a slow warming trend should gradually stress and load buried weak layers, potentially resulting in large and destructive avalanches. A natural avalanche cycle may occur Thursday night through Friday morning. Travel in backcountry terrain is not recommended Friday due to dangerous avalanche conditions.	High	High	High
1972	6:33 PM PST Thursday, January 21, 2016	2016-01-22 02:33:00	Dennis D'Amico	Olympics	Loose wet avalanches should be the main avalanche problem Friday with plenty of wet snow in the upper snowpack. Natural avalanches are unlikely but human triggered avalanches are possible on steeper slopes. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences.	Moderate	Moderate	Moderate
1970	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Shallow new or lingering storm or wind slabs or small loose wet avalanches could step down to areas where persistent weak layers are reactive resulting in large avalanches in specific areas.  If you venture out, use conservative decision making and slope selection to stay safe Thursday.	Considerable	Considerable	Considerable
1968	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	An avalanche warning for HIGH danger is in effect for all along the west slopes and the Cascade Passes on Thursday.  Backcountry travel is not recommended an all avalanche terrain should be avoided.	High	High	High
1966	7:57 AM PST Thursday, January 21, 2016	2016-01-21 15:57:00	Dennis D'Amico	Olympics	Loose wet avalanches will become likely on Thursday due to rainfall. Loose wet avalanches are likely to be small and confined to steeper slopes in all elevation bands in the Hurricane Ridge area. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences. Larger and more dangerous avalanches are more likely outside the Hurricane Ridge area on the SW slopes of the Olympics due to heavier rain.	Moderate	Moderate	Moderate
1964	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	East Slopes Central - Lake Chelan to South of I-90	Shallow new or lingering storm or wind slabs or small loose wet avalanches could step down to areas where persistent weak layers are reactive resulting in large avalanches in specific areas.  If you venture out, use conservative decision making and slope selection to stay safe Thursday.	Considerable	Considerable	Considerable
1962	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	West Slopes Central - Skagit River to South of I-90	The avalanche forecast will be tricky for the south and central Cascades. Rainfall should not be nearly as heavy in this area versus the north Cascades. However, shallow new or lingering storm or wind slabs or small loose wet avalanches could step down to areas where persistent weak layers are reactive resulting in large avalanches in specific areas.  If you venture out, use conservative decision making and slope selection to stay safe Thursday.	Considerable	Considerable	Considerable
1960	11:43 PM PST Wednesday, January 20, 2016	2016-01-21 07:43:00	Alex Tokar	Olympics	Loose wet avalanches will become likely on Thursday due to rainfall. Loose wet avalanches are likely to be small and confined to steeper slopes in all elevation bands in the Hurricane Ridge area. Be especially wary near terrain traps, where even a small avalanche could have unintended consequences. Larger and more dangerous avalanches are more likely outside the Hurricane Ridge area on the SW slopes of the Olympics due to heavier rain.	Moderate	Moderate	Moderate
1957	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	Mt Hood	A variety of avalanche problems on Thursday will present dangerous conditions in all elevation bands at Mt. Hood. If you venture out Thursday, use conservative decision making and terrain selection.	Considerable	Considerable	Considerable
1955	6:33 PM PST Wednesday, January 20, 2016	2016-01-21 02:33:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	The avalanche forecast will be tricky for the south and central Cascades. Rainfall should not be nearly as heavy in this area versus the north Cascades. However, shallow new or lingering storm or wind slabs or small loose wet avalanches could step down to areas where persistent weak layers are reactive resulting in large avalanches in specific areas.  If you venture out, use conservative decision making and slope selection to stay safe Thursday.	Considerable	Considerable	Considerable
1953	6:47 PM PST Tuesday, January 19, 2016	2016-01-20 02:47:00	Garth Ferber	Mt Hood	Back country travel is not recommended near and above tree line Wednesday at Mt Hood at least until there is more information. Dangerous avalanche conditions are also expected below treeline Wednesday at least until there is more information.	High	High	Considerable
1952	6:47 PM PST Tuesday, January 19, 2016	2016-01-20 02:47:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	New wind and storm slab is most likely in the central and south Cascades on Wednesday. A potential lingering persistent weak layer also makes conservative decision-making and cautious routefinding is essential.	Considerable	Considerable	Considerable
1950	6:47 PM PST Tuesday, January 19, 2016	2016-01-20 02:47:00	Garth Ferber	Olympics	Previous wind slab is the most likely problem on Wednesday. Evaluate the snowpack carefully and identify terrain features of concern such as convex rollovers and slopes that may have received recent wind deposited snow.	Moderate	Moderate	Moderate
1948	6:00 PM PST Monday, January 18, 2016	2016-01-19 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Even with an overall stabilizing trend on Tuesday, dangerous avalanche conditions exist. The tricky nature of persistent layers necessitates conservative decision-making and cautious route-finding is essential.	Considerable	Considerable	Considerable
1946	6:00 PM PST Monday, January 18, 2016	2016-01-19 02:00:00	Kenny Kramer	Olympics	Even with an overall stabilizing trend on Tuesday, dangerous avalanche conditions may persist on lee wind-loaded slopes above treeline and where storm slabs remain possible for human triggering. Evaluate the snowpack carefully and identify terrain features of concern, such as convex rollovers and slopes that may have received recent wind deposited snow.	Moderate	Moderate	Moderate
1944	6:44 PM PST Sunday, January 17, 2016	2016-01-18 02:44:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Even with an overall stabilizing trend on Monday, dangerous avalanche conditions will exist on lee wind-loaded slopes and where storm slabs become sensitive to human triggering. Slabs could step down to persistent weak layers producing large and deadly avalanches. Take it slow on Monday and evaluate the snowpack as you travel conservatively through the terrain.	Considerable	Considerable	Considerable
1800	6:00 PM PST Monday, December 21, 2015	2015-12-22 02:00:00	Kenny Kramer	Olympics	New storm slab and wind slab are likely with new wind slab mainly forming on lee slopes ranging from N-SE facing.	Considerable	Considerable	Moderate
1943	6:44 PM PST Sunday, January 17, 2016	2016-01-18 02:44:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Even with an overall stabilizing trend on Monday, dangerous avalanche conditions will exist on lee wind-loaded slopes and where storm slabs remain sensitive to human triggering. Slabs could step down to persistent weak layers producing large and deadly avalanches. Take it slow on Monday and evaluate the snowpack as you travel conservatively through the terrain.	Considerable	Considerable	Considerable
1941	6:38 PM PST Saturday, January 16, 2016	2016-01-17 02:38:00	Dennis D'Amico	Mt Hood	Backcountry travel in avalanche terrain near and above treeline at Mt. Hood is not recommended on Sunday. Careful snowpack evaluation, cautious route finding and conservative decision-making will be essential below treeline.	High	High	Considerable
1940	6:38 PM PST Saturday, January 16, 2016	2016-01-17 02:38:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected along the east slopes Sunday. Stay conservative with your terrain choices on Sunday with the notion that human triggered avalanches are likely.	Considerable	Considerable	Considerable
1939	6:38 PM PST Saturday, January 16, 2016	2016-01-17 02:38:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Backcountry travel in avalanche terrain along the Cascade west slopes is not recommended on Sunday due to a variety of avalanche problems. An avalanche warning has been issued for the Cascade west slopes for Sunday with High danger forecast for all three elevation bands.	High	High	High
1938	6:38 PM PST Saturday, January 16, 2016	2016-01-17 02:38:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions are expected at Hurricane Ridge on Sunday, especially near and above treeline. Careful snowpack evaluation, cautious route finding and conservative decision-making will be essential.	Considerable	Considerable	Moderate
1937	6:16 PM PST Friday, January 15, 2016	2016-01-16 02:16:00	Garth Ferber	Mt Hood	Back country travel in avalanche terrain at Mt Hood is not recommended on Saturday. An avalanche warning has been issued Mt Hood for Saturday.	High	High	High
1936	6:16 PM PST Friday, January 15, 2016	2016-01-16 02:16:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Back country travel in avalanche terrain near and above tree line along the Cascade east slopes is not recommended on Saturday.	High	High	Considerable
1935	6:16 PM PST Friday, January 15, 2016	2016-01-16 02:16:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Back country travel in avalanche terrain along the Cascade west slopes is not recommended on Saturday. An avalanche warning has been issued for the Cascade west slopes for Saturday.	High	High	High
1933	6:16 PM PST Friday, January 15, 2016	2016-01-16 02:16:00	Garth Ferber	Olympics	Dangerous avalanche conditions are expected at Hurricane on Saturday. Careful snowpack evaluation, cautious route finding and conservative decision-making will be essential.	Considerable	Considerable	Moderate
1932	3:37 PM PST Friday, January 15, 2016	2016-01-15 23:37:00	Garth Ferber	Mt Hood	A greater avalanche danger is expected at Mt Hood on Friday than in the Washington Cascades. Careful snowpack evaluation, cautious route finding and conservative decision making should be essential at Mt Hood on Friday.	Considerable	Considerable	Considerable
1931	3:37 PM PST Friday, January 15, 2016	2016-01-15 23:37:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Moderate	Low
1930	3:37 PM PST Friday, January 15, 2016	2016-01-15 23:37:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Moderate	Moderate
1929	3:37 PM PST Friday, January 15, 2016	2016-01-15 23:37:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A significant buried weak layer is present in the terrain on sun sheltered slopes above 5000'. This layer will produce avalanches with the additional load of a single skier or rider that could bury, injure or kill. These avalanches can be remotely triggered, propagate around and beyond the natural confines in the terrain, and run on slopes lower in angle than where we usually see avalanche activity.	Considerable	Considerable	Low
1928	3:37 PM PST Friday, January 15, 2016	2016-01-15 23:37:00	Garth Ferber	Olympics	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Low	Low
1927	11:19 PM PST Thursday, January 14, 2016	2016-01-15 07:19:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	A significant buried weak layer is present in the terrain on sun, sheltered slopes above 5000'. This layer will produce avalanches with the additional load of a single skier or rider that could bury, injure or kill. These avalanches can be remotely triggered, propagate around and beyond the natural confines in the terrain, and run on slopes lower in angle than where we usually see avalanche activity.	Considerable	Considerable	Low
1926	11:19 PM PST Thursday, January 14, 2016	2016-01-15 07:19:00	Kenny Kramer	Mt Hood	A greater avalanche danger is expected at Mt Hood on Friday than in the Washington Cascades. Careful snowpack evaluation, cautious route finding and conservative decision making should be essential at Mt Hood on Friday.	Considerable	Considerable	Considerable
1925	11:19 PM PST Thursday, January 14, 2016	2016-01-15 07:19:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Moderate	Low
1924	11:19 PM PST Thursday, January 14, 2016	2016-01-15 07:19:00	Kenny Kramer	West Slopes Central - Skagit River to South of I-90	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Moderate	Moderate
1923	11:19 PM PST Thursday, January 14, 2016	2016-01-15 07:19:00	Kenny Kramer	Olympics	Mostly light amounts of new snow Friday are not expected to cause a great change in snow conditions. Adjust your plans if you are out and find more than a few inches of new snow on Friday.	Moderate	Low	Low
1922	6:01 PM PST Wednesday, January 13, 2016	2016-01-14 02:01:00	Kenny Kramer	Mt Hood	The avalanche danger should gradually increase through the day Thursday as new storm snow is deposited and wind slabs begin forming on the lee, higher elevation terrain. Cautious route-finding and terrain selection will be essential Thursday at higher elevations near or above treeline to stay safe and avoid storm related avalanche problems.	Considerable	Moderate	Moderate
443	6:00 PM PST Tuesday, February 11, 2014	2014-02-12 02:00:00	Garth Ferber	Olympics	Travel in avalanche terrain is not recommended in the Olympics near and above treeline Wednesday.	High	High	Considerable
1921	6:01 PM PST Wednesday, January 13, 2016	2016-01-14 02:01:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger should improve through the afternoon as storm and wind slab instabilities further stabilize. Evaluate wind loaded slopes carefully and choose more moderately angled slopes to minimize storm related avalanche problems.	Moderate	Moderate	Low
1919	6:01 PM PST Wednesday, January 13, 2016	2016-01-14 02:01:00	Kenny Kramer	Olympics	The avalanche danger should improve through the afternoon as storm and wind slab instabilities further stabilize. Evaluate wind loaded slopes carefully and choose more moderately angled slopes to minimize storm related avalanche problems.	Moderate	Moderate	Low
1917	6:00 PM PST Tuesday, January 12, 2016	2016-01-13 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger should remain elevated in the morning with a slow decreasing trend through the afternoon as storm instabilities begin to stabilize. Cautious route-finding and terrain selection will be essential on Wednesday to stay safe and avoid storm related avalanche problems.	Considerable	Considerable	Considerable
1914	6:00 PM PST Tuesday, January 12, 2016	2016-01-13 02:00:00	Dennis D'Amico	Olympics	The avalanche danger should remain elevated in the morning with a slow decreasing trend through the afternoon as storm instabilities begin to stabilize. Evaluate wind loaded slopes carefully and choose more moderately angled slopes to minimize storm related avalanche problems.	Considerable	Moderate	Moderate
1912	8:27 AM PST Tuesday, January 12, 2016	2016-01-12 16:27:00	Dennis D'Amico	Mt Hood	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard. Look for a rapidly increasing avalanche hazard Tuesday night!	Considerable	Considerable	Moderate
1910	8:27 AM PST Tuesday, January 12, 2016	2016-01-12 16:27:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard.	Moderate	Moderate	Moderate
1907	6:00 PM PST Monday, January 11, 2016	2016-01-12 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard.	Moderate	Moderate	Moderate
1905	6:00 PM PST Monday, January 11, 2016	2016-01-12 02:00:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions are expected in all elevation bands by Tuesday afternoon with human triggered avalanches becoming likely as the storm intensity increases.	Considerable	Considerable	Considerable
1903	6:00 PM PST Sunday, January 10, 2016	2016-01-11 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	New small shallow storm and wind slab seems possible by the end of the day on Monday mainly above treeline. Evaluate snow and terrain carefully on Monday. Adjust your plans if winds are stronger or new snowfall is heavier than expected.	Moderate	Low	Low
1901	6:00 PM PST Sunday, January 10, 2016	2016-01-11 02:00:00	Garth Ferber	Olympics	New small shallow storm and wind slab seems possible by the end of the day on Monday at Hurricane. Evaluate snow and terrain carefully on Monday. Adjust your plans if winds are stronger or new snowfall is heavier than expected.	Moderate	Low	Low
1899	6:00 PM PST Saturday, January 9, 2016	2016-01-10 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The main problem on Sunday should be loose wet avalanches. It is a bit hard to say how extensive the loose wet avalanches will be so pay close attention to snow conditions if you venture out on Sunday.	Moderate	Moderate	Moderate
1897	6:00 PM PST Saturday, January 9, 2016	2016-01-10 02:00:00	Garth Ferber	Olympics	The main problem on Sunday should be loose wet avalanches. It is a bit hard to say how extensive the loose wet avalanches will be so pay close attention to snow conditions if you venture out on Sunday.	Moderate	Moderate	Moderate
1895	6:02 PM PST Friday, January 8, 2016	2016-01-09 02:02:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for melting and weakening of surface snow on solar aspects. Avoid steep slopes at higher elevations suspected of wind deposited snow. Wind slab avalanches should become less sensitive, but remain possible to trigger on specific terrain features.	Moderate	Moderate	Low
1893	6:02 PM PST Friday, January 8, 2016	2016-01-09 02:02:00	Kenny Kramer	Olympics	Watch for shallow wet snow on steep sun exposed terrain and be mindful of cornices as these are likely to weaken during the warmest part of the day.	Moderate	Low	Low
1890	6:00 PM PST Thursday, January 7, 2016	2016-01-08 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Moderate E-SE winds in the Paradise, Crystal, and Snoqualmie areas may have built recent shallow wind slabs Tuesday and Wednesday in the near and above treeline zones. Look for signs of firmer wind transported snow that can indicate wind slab layers.\n\nNewly formed wind slab is more likely in the Snoqualmie Pass area and south, near and above treeline, on a variety of aspects.	Moderate	Moderate	Moderate
1888	6:04 PM PST Wednesday, January 6, 2016	2016-01-07 02:04:00	Dennis D'Amico	Mt Hood	In specific areas, where the most recent storm snow has bonded poorly to the underlying crust, small human-triggered slab avalanches will be possible. Before committing to a slope, think about the consequences of the terrain if even a small avalanche occurred.	Moderate	Moderate	Moderate
1886	6:04 PM PST Wednesday, January 6, 2016	2016-01-07 02:04:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	In specific areas, where the most recent storm snow is more cohesive, small human-triggered slab avalanches will be possible. Before committing to a slope, think about the consequences of the terrain if even a small avalanche occurred. Newly formed wind slab is more likely in the Snoqualmie Pass area and south, near and above treeline, on a variety of aspects.	Moderate	Moderate	Moderate
1884	6:18 PM PST Tuesday, January 5, 2016	2016-01-06 02:18:00	Garth Ferber	Mt Hood	A variety of avalanche problems are expected on Wednesday including storm slab, wind slab and loose wet snow avalanches. Evaluate snow and terrain carefully at Mt Hood on Wednesday.	Moderate	Moderate	Moderate
1881	6:18 PM PST Tuesday, January 5, 2016	2016-01-06 02:18:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A variety of avalanche problems are expected on Wednesday. Dangerous avalanche conditions are possible on Wednesday due to likely new storm slab and potential weak layers from around New Years. This forecast errs on the side of caution until more information becomes available.	Considerable	Considerable	Considerable
1710	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	Olympics	Evaluate snow and terrain carefully Thursday. Change your plans if you find yourself in unexpectedly prolonged stormy weather.	Moderate	Moderate	Low
1920	6:01 PM PST Wednesday, January 13, 2016	2016-01-14 02:01:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The avalanche danger should improve through the afternoon as storm and wind slab instabilities further stabilize. Evaluate wind loaded slopes carefully and choose more moderately angled slopes to minimize storm related avalanche problems.	Considerable	Moderate	Low
1918	6:00 PM PST Tuesday, January 12, 2016	2016-01-13 02:00:00	Dennis D'Amico	Mt Hood	The avalanche danger should remain elevated in the morning with a slow decreasing trend through the afternoon as storm instabilities begin to stabilize. Cautious route-finding and terrain selection will be essential on Wednesday to stay safe and avoid storm related avalanche problems.	Considerable	Considerable	Considerable
1915	6:00 PM PST Tuesday, January 12, 2016	2016-01-13 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger should remain elevated in the morning with a slow decreasing trend through the afternoon as storm instabilities begin to stabilize. Cautious route-finding and terrain selection will be essential on Wednesday to stay safe and avoid storm related avalanche problems.	Considerable	Considerable	Considerable
1913	8:27 AM PST Tuesday, January 12, 2016	2016-01-12 16:27:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Dangerous avalanche conditions are expected by Tuesday afternoon as storm and wind slab avalanches become likely as snowfall rates and transport winds increase later in the day. Travel wisely by planning for the deteriorating conditions.	Considerable	Considerable	Considerable
1911	8:27 AM PST Tuesday, January 12, 2016	2016-01-12 16:27:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard.	Moderate	Moderate	Moderate
1909	8:27 AM PST Tuesday, January 12, 2016	2016-01-12 16:27:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions are expected in all elevation bands by Tuesday afternoon with human triggered avalanches becoming likely as the storm intensity increases.	Considerable	Considerable	Considerable
1908	6:00 PM PST Monday, January 11, 2016	2016-01-12 02:00:00	Dennis D'Amico	Mt Hood	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard. Look for a rapidly increasing avalanche hazard Tuesday night!	Considerable	Moderate	Moderate
1906	6:00 PM PST Monday, January 11, 2016	2016-01-12 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm and wind slab avalanches are possible by Tuesday afternoon as snowfall rates and transport winds increase later in the day. If storm conditions develop faster than expected, change your travel plans accordingly for the increased hazard.	Moderate	Moderate	Moderate
1904	6:00 PM PST Sunday, January 10, 2016	2016-01-11 02:00:00	Garth Ferber	Mt Hood	New small shallow storm and wind slab seem possible by the end of the day at Mt Hood on Monday. Evaluate snow and terrain carefully on Monday. Adjust your plans if winds are stronger or new snowfall is heavier than expected.	Moderate	Moderate	Low
1902	6:00 PM PST Sunday, January 10, 2016	2016-01-11 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New small shallow storm and wind slab seems possible by the end of the day on Monday. Evaluate snow and terrain carefully on Monday. Adjust your plans if winds are stronger or new snowfall is heavier than expected.	Moderate	Moderate	Low
1900	6:00 PM PST Saturday, January 9, 2016	2016-01-10 02:00:00	Garth Ferber	Mt Hood	The main problem on Sunday should be loose wet avalanches. It is a bit hard to say how extensive the loose wet avalanches will be so pay close attention to snow conditions if you venture out on Sunday.	Moderate	Moderate	Moderate
1898	6:00 PM PST Saturday, January 9, 2016	2016-01-10 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The main problem on Sunday should be loose wet avalanches. It is a bit hard to say how extensive the loose wet avalanches will be so pay close attention to snow conditions if you venture out on Sunday.	Moderate	Moderate	Moderate
1896	6:02 PM PST Friday, January 8, 2016	2016-01-09 02:02:00	Kenny Kramer	Mt Hood	Avoid steep slopes at higher elevations suspected of wind deposited snow. Wind slab avalanches should be shallow in nature, but remain possible to trigger on specific terrain features.	Moderate	Moderate	Low
1894	6:02 PM PST Friday, January 8, 2016	2016-01-09 02:02:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Watch for shallow wet snow on steep sun exposed terrain and be mindful of cornices as these are likely to weaken during the warmest part of the day.  Older wind slabs may still be lurking in isolated higher elevation areas.	Moderate	Moderate	Low
1892	6:00 PM PST Thursday, January 7, 2016	2016-01-08 02:00:00	Kenny Kramer	Mt Hood	Watch for melting and weakening of surface snow on solar aspects. Avoid steep slopes at higher elevations suspected of wind deposited snow. Wind slab avalanches should become less sensitive, but remain possible to trigger on specific terrain features.	Moderate	Moderate	Low
1891	6:00 PM PST Thursday, January 7, 2016	2016-01-08 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for melting and weakening of surface snow on solar aspects. Avoid steep slopes at higher elevations suspected of wind deposited snow. Wind slab avalanches should become less sensitive, but remain possible to trigger on specific terrain features.	Moderate	Moderate	Moderate
1889	6:00 PM PST Thursday, January 7, 2016	2016-01-08 02:00:00	Kenny Kramer	Olympics	Watch for shallow wet snow on steep sun exposed terrain and be mindful of cornices as these are likely to weaken during the warmest part of the day.	Moderate	Low	Low
1887	6:04 PM PST Wednesday, January 6, 2016	2016-01-07 02:04:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	In specific areas, where the most recent storm snow is more cohesive, small human-triggered slab avalanches will be possible. Before committing to a slope, think about the consequences of the terrain if even a small avalanche occurred. New wind slab will most likely be found in the central and southeast zones near and above treeline.	Moderate	Moderate	Moderate
1885	6:04 PM PST Wednesday, January 6, 2016	2016-01-07 02:04:00	Dennis D'Amico	Olympics	In specific areas, where the most recent storm snow is more cohesive, small human-triggered slab avalanches will be possible. Before committing to a slope, think about the consequences of the terrain if even a small avalanche occurred.  Small loose wet avalanches should be less likely Thursday, but will still be possible on direct, steep, solar aspects.	Moderate	Moderate	Moderate
1799	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	There should be a big difference in the weather and avalanche conditions between the north and south Cascades on Monday. The most dangerous conditions should be seen in the central to south Cascades.	High	Considerable	Considerable
1883	6:18 PM PST Tuesday, January 5, 2016	2016-01-06 02:18:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A variety of avalanche problems are expected on Wednesday. Dangerous avalanche conditions are possible on Wednesday due to likely new storm slab and potential weak layers from around New Years. This forecast errs on the side of caution until more information becomes available.	Considerable	Considerable	Considerable
1880	6:18 PM PST Tuesday, January 5, 2016	2016-01-06 02:18:00	Garth Ferber	Olympics	Older wind slab and possible loose wet avalanches should be the main problems to watch for at Hurricane on Wednesday.	Moderate	Moderate	Low
1878	6:00 PM PST Monday, January 4, 2016	2016-01-05 02:00:00	Garth Ferber	Mt Hood	Wind slab will need to watched for on on Tuesday a variety of aspects. New shallow storm slab will also be possible on Tuesday.	Moderate	Moderate	Low
1875	6:00 PM PST Monday, January 4, 2016	2016-01-05 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New snow further accumulating on possible buried surface hoar and near surface faceted snow from around New Years will need to watched for on Tuesday. Wind slab will also need to watched for on a variety of aspects.	Moderate	Moderate	Low
1873	10:29 AM PST Monday, January 4, 2016	2016-01-04 18:29:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	Heightened avalanche danger will apply specifically to wind-loaded slopes near and above treeline where recent east winds have built wind slab on a variety of aspects. Watch for terrain traps, where being caught in even a small avalanche could have major consequences.	Considerable	Considerable	Moderate
1870	10:29 AM PST Monday, January 4, 2016	2016-01-04 18:29:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline and for terrain traps on steeper slopes throughout the terrain.	Moderate	Low	Low
1868	10:29 AM PST Monday, January 4, 2016	2016-01-04 18:29:00	Garth Ferber	Olympics	Wind slab formed last weekend should be stubborn to trigger except in isolated areas, but continue to watch for these layers.	Moderate	Low	Low
1866	6:00 PM PST Sunday, January 3, 2016	2016-01-04 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline and for terrain traps on steeper slopes throughout the terrain.	Moderate	Low	Low
1864	6:00 PM PST Sunday, January 3, 2016	2016-01-04 02:00:00	Kenny Kramer	Olympics	Wind slab formed last weekend should be stubborn to trigger except in isolated areas, but continue to watch for these layers.	Moderate	Low	Low
1862	6:00 PM PST Saturday, January 2, 2016	2016-01-03 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline and for terrain traps on steeper slopes throughout the terrain.	Moderate	Low	Low
1859	6:00 PM PST Saturday, January 2, 2016	2016-01-03 02:00:00	Kenny Kramer	Olympics	Heightened avalanche danger should be specific to steeper solar slopes where loose wet avalanches are possible. Wind slab formed last weekend should be unlikely to trigger except in isolated areas.	Moderate	Moderate	Low
1857	7:09 PM PST Friday, January 1, 2016	2016-01-02 03:09:00	Dennis D'Amico	Mt Hood	Heightened avalanche danger should be specific to wind-loaded slopes at all elevation bands where recent east winds continue to build new wind slab.	Moderate	Moderate	Low
1855	7:09 PM PST Friday, January 1, 2016	2016-01-02 03:09:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Heightened avalanche danger will apply specifically for wind-loaded slopes near and above treeline where recent east winds continue to build new wind slab on a variety of aspects. If you find the right wind loaded slope, you will likely trigger a small slab avalanche. Terrain selection matters, so be very aware where you might end up if caught in even a small avalanche.	Moderate	Moderate	Low
1853	6:00 PM PST Thursday, December 31, 2015	2016-01-01 02:00:00	Dennis D'Amico	Mt Hood	Heightened avalanche danger should be specific to wind-loaded slopes at all elevation bands where recent east winds continue to build new wind slab.	Moderate	Moderate	Moderate
1851	6:00 PM PST Thursday, December 31, 2015	2016-01-01 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Heightened avalanche danger should be specific to wind-loaded slopes near and above treeline where recent east winds continue to build new wind slab. Loose wet avalanches are possible on steeper solar slopes, predominately away from the Cascade Passes and especially in the north Cascades.	Moderate	Moderate	Low
1849	6:00 PM PST Wednesday, December 30, 2015	2015-12-31 02:00:00	Garth Ferber	Mt Hood	A MODERATE danger means human triggered avalanches are possible. Watch mainly for possible wind slab on a variety of aspects and for possible loose wet avalanches on steep solar slopes. Watch out for dangerous tree bombs and stay in sight of your partner.	Moderate	Moderate	Low
1879	6:00 PM PST Monday, January 4, 2016	2016-01-05 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	New snow further accumulating on possible buried surface hoar and near surface faceted snow from around New Years will need to watched on Tuesday. Wind slab will also need to watched for on a variety of aspects.	Considerable	Considerable	Moderate
1877	6:00 PM PST Monday, January 4, 2016	2016-01-05 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline. New storm slab layers could be reactive where new accumulations become more than a few inches over surface hoar and near surface faceted snow.	Moderate	Moderate	Low
1874	6:00 PM PST Monday, January 4, 2016	2016-01-05 02:00:00	Garth Ferber	Olympics	Older wind slab will need to watched for mainly near ridges on Tuesday. Any new snowfall may form small shallow areas of storm slab.	Moderate	Low	Low
1871	10:29 AM PST Monday, January 4, 2016	2016-01-04 18:29:00	Garth Ferber	Mt Hood	Heightened avalanche danger should be specific to wind-loaded slopes at all elevation bands where recent east winds continue to build new wind slab.	Moderate	Moderate	Low
1869	10:29 AM PST Monday, January 4, 2016	2016-01-04 18:29:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Heightened avalanche danger will apply specifically to wind-loaded slopes near and above treeline where recent east winds have built wind slab on a variety of aspects. Watch for terrain traps, where being caught in even a small avalanche could have major consequences.	Moderate	Moderate	Low
1867	6:00 PM PST Sunday, January 3, 2016	2016-01-04 02:00:00	Kenny Kramer	Mt Hood	Heightened avalanche danger should be specific to wind-loaded slopes at all elevation bands where recent east winds continue to build new wind slab.	Moderate	Moderate	Low
1865	6:00 PM PST Sunday, January 3, 2016	2016-01-04 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Heightened avalanche danger will apply specifically to wind-loaded slopes near and above treeline where recent east winds have built wind slab on a variety of aspects. Watch for terrain traps, where being caught in even a small avalanche could have major consequences.	Moderate	Moderate	Low
1863	6:00 PM PST Saturday, January 2, 2016	2016-01-03 02:00:00	Kenny Kramer	Mt Hood	Heightened avalanche danger should be specific to wind-loaded slopes at all elevation bands where recent east winds continue to build new wind slab.	Moderate	Moderate	Low
1861	6:00 PM PST Saturday, January 2, 2016	2016-01-03 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Heightened avalanche danger will apply specifically to wind-loaded slopes near and above treeline where recent east winds have built wind slab on a variety of aspects. Terrain selection matters, so be very aware where you might end up if caught in even a small avalanche.	Moderate	Moderate	Low
1858	7:09 PM PST Friday, January 1, 2016	2016-01-02 03:09:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	On Saturday, expect a decreasing likelihood for small loose wet avalanches even on solar slopes. Wind slab should be isolated to lee aspects above treeline.	Moderate	Low	Low
1856	7:09 PM PST Friday, January 1, 2016	2016-01-02 03:09:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline and for small loose avalanches near terrain traps on steeper slopes throughout the terrain.	Moderate	Low	Low
1854	7:09 PM PST Friday, January 1, 2016	2016-01-02 03:09:00	Dennis D'Amico	Olympics	Heightened avalanche danger should be specific to steeper solar slopes where loose wet avalanches are possible. Wind slab formed last weekend should be unlikely to trigger except in isolated areas.	Moderate	Moderate	Low
1852	6:00 PM PST Thursday, December 31, 2015	2016-01-01 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for isolated areas of wind slab primarily on north through southeast aspects above treeline and for small loose avalanches near terrain traps on steeper slopes throughout the terrain.	Moderate	Low	Low
1850	6:00 PM PST Thursday, December 31, 2015	2016-01-01 02:00:00	Dennis D'Amico	Olympics	Heightened avalanche danger should be specific to steeper solar slopes where loose wet avalanches are possible by mid-day. Wind slab formed last weekend should be unlikely to trigger except in isolated areas.	Moderate	Moderate	Low
1848	6:00 PM PST Wednesday, December 30, 2015	2015-12-31 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A MODERATE danger means human triggered avalanches are possible. Watch mainly for possible wind slab mainly on north to southeast aspects and for possible loose wet avalanches on steep solar slopes.	Moderate	Moderate	Low
1847	6:00 PM PST Wednesday, December 30, 2015	2015-12-31 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A MODERATE danger means human triggered avalanches are possible. Watch mainly for possible wind slab on a variety of aspects and for possible loose wet avalanches on steep solar slopes. Watch out for dangerous tree bombs and stay in sight of your partner.	Moderate	Moderate	Low
1846	6:00 PM PST Wednesday, December 30, 2015	2015-12-31 02:00:00	Garth Ferber	Olympics	A MODERATE danger means human triggered avalanches are possible. Watch mainly for possible wind slab on north to southeast aspects and for possible loose wet avalanches on steep solar slopes. Avoid venturing onto and below recent large cornices.	Moderate	Moderate	Low
1845	6:10 PM PST Tuesday, December 29, 2015	2015-12-30 02:10:00	Kenny Kramer	Mt Hood	Wind slabs should be found on a variety of aspects, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Low
1844	6:10 PM PST Tuesday, December 29, 2015	2015-12-30 02:10:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Wind slabs should be more difficult to trigger, but not impossible Wednesday. Watch for local wind slabs on NW through SE aspects, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Low
1843	6:10 PM PST Tuesday, December 29, 2015	2015-12-30 02:10:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The recent wind slab should be gaining strength and become more difficult to trigger, however not impossible. Expect localized wind slab conditions on a variety of aspects, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Low
1798	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	There should be a big difference in the weather and avalanche conditions between the north and south Cascades on Monday. The most dangerous conditions should be seen in the central to south Cascades.	High	Considerable	Considerable
1842	6:10 PM PST Tuesday, December 29, 2015	2015-12-30 02:10:00	Kenny Kramer	Olympics	Wind slabs may still be possible to human triggering Wednesday, but are becoming more difficult with each day. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still deep in places with possible large tree wells lurking, so stick near your partner in the trees. Also avoid recent large cornices.	Moderate	Moderate	Low
1840	6:00 PM PST Monday, December 28, 2015	2015-12-29 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Wind slabs should be more difficult to trigger, but not impossible Tuesday. Be wary of wind slabs on NW through SE aspects, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1838	6:00 PM PST Monday, December 28, 2015	2015-12-29 02:00:00	Kenny Kramer	Olympics	Wind slabs may still be sensitive to human triggering Tuesday. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees. Also avoid recent large cornices.	Moderate	Moderate	Moderate
1836	6:00 PM PST Sunday, December 27, 2015	2015-12-28 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Be wary of wind slabs on NW through SE aspects Monday, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1834	6:00 PM PST Sunday, December 27, 2015	2015-12-28 02:00:00	Dennis D'Amico	Olympics	Storm and wind slabs may be sensitive to human triggering Monday. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1832	6:00 PM PST Saturday, December 26, 2015	2015-12-27 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Lingering wind slabs instabilities will continue to slowly settle on Sunday. Watch for sensitive wind-loaded slopes especially near and above treeline, and be wary of terrain traps where even a small loose dry avalanche could have unintended consquences.	Moderate	Moderate	Moderate
1830	6:00 PM PST Saturday, December 26, 2015	2015-12-27 02:00:00	Dennis D'Amico	Olympics	Lingering storm and wind slabs instabilities will continue to settle on Sunday. Watch for sensitive wind-loaded slopes especially near and above treeline, and stick near your partner to help mitigate the deadly risk of deep snow immersion below treeline.	Moderate	Moderate	Moderate
1828	6:00 PM PST Friday, December 25, 2015	2015-12-26 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A consolidating and stabilizing trend will continue on Saturday. Remember to discuss plans and maintain visual contact with your partners.	Moderate	Moderate	Moderate
1826	6:00 PM PST Friday, December 25, 2015	2015-12-26 02:00:00	Garth Ferber	Olympics	A consolidating and stabilizing trend will continue on Saturday. Remember to discuss plans and maintain visual contact with your partners.	Moderate	Moderate	Moderate
1824	6:00 PM PST Thursday, December 24, 2015	2015-12-25 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A consolidating and stabilizing trend should begin by Friday. But recent wind slab, storm slab and loose dry snow will all still be key features to avoid on Thursday.	Considerable	Moderate	Moderate
1822	6:00 PM PST Thursday, December 24, 2015	2015-12-25 02:00:00	Garth Ferber	Olympics	A consolidating and stabilizing trend should begin by Friday. But recent wind slab, storm slab, loose dry snow and tree wells will all still be key features to avoid on Thursday.	Considerable	Moderate	Moderate
1820	8:06 PM PST Wednesday, December 23, 2015	2015-12-24 04:06:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Further wind and storm storm slab and wind slab are likely Wednesday but also watch for where a small loose dry avalanche could have unintended consequences such as knocking you off your feet and into a terrain trap like creeks or trees.	Considerable	Considerable	Moderate
1818	8:06 PM PST Wednesday, December 23, 2015	2015-12-24 04:06:00	Garth Ferber	Olympics	New or recent wind slab should be most likely on lee north to southeast facing slopes. Storm slab or loose dry avalanches in non-wind affected terrain mean you need to use extra caution around terrain traps.	Considerable	Considerable	Moderate
1816	6:00 PM PST Wednesday, December 23, 2015	2015-12-24 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Further wind and storm storm slab and wind slab are likely Wednesday but also watch for where a small loose dry avalanche could have unintended consequences such as knocking you off your feet and into a terrain trap like creeks or trees.	Considerable	Considerable	Moderate
1814	6:00 PM PST Wednesday, December 23, 2015	2015-12-24 02:00:00	Garth Ferber	Olympics	New or recent wind slab should be most likely on lee north to southeast facing slopes. Storm slab or loose dry avalanches in non-wind affected terrain mean you need to use extra caution around terrain traps.	Considerable	Considerable	Moderate
1812	8:26 AM PST Wednesday, December 23, 2015	2015-12-23 16:26:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from NW-SE facing, especially by afternoon as wind speeds increase. Loose dry avalanches in non-wind affected terrain will be difficult to manage on steeper slopes, so use extra caution around terrain traps.	Considerable	Considerable	Moderate
1810	8:26 AM PST Wednesday, December 23, 2015	2015-12-23 16:26:00	Dennis D'Amico	Olympics	New storm slab and wind slab are likely with new wind slab mainly forming on lee slopes ranging from N-SE facing. Loose dry avalanches in non-wind affected terrain will be difficult to manage on steeper slopes so use extra caution around terrain traps.	Considerable	Considerable	Moderate
1808	6:00 PM PST Tuesday, December 22, 2015	2015-12-23 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from NW-SE facing, especially by afternoon as wind speeds increase.	Considerable	Considerable	Moderate
1806	6:00 PM PST Tuesday, December 22, 2015	2015-12-23 02:00:00	Kenny Kramer	Olympics	New storm slab and wind slab are likely with new wind slab mainly forming on lee slopes ranging from N-SE facing.	Considerable	Considerable	Moderate
1804	6:00 PM PST Monday, December 21, 2015	2015-12-22 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	New or existing storm slab and wind slab are likely Tuesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as the next storm increases.	Considerable	Considerable	Moderate
1841	6:00 PM PST Monday, December 28, 2015	2015-12-29 02:00:00	Kenny Kramer	Mt Hood	Wind slabs should be found on a variety of aspects Monday, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1839	6:00 PM PST Monday, December 28, 2015	2015-12-29 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The recent wind slab should be gaining strength and become more difficult to trigger, however not impossible. Expect some wind slab conditions on a variety of aspects Tuesday, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1837	6:00 PM PST Sunday, December 27, 2015	2015-12-28 02:00:00	Dennis D'Amico	Mt Hood	Wind slabs should be found on a variety of aspects Monday, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1835	6:00 PM PST Sunday, December 27, 2015	2015-12-28 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	New wind slab should be found on a variety of aspects Monday, mainly near and above treeline. Remember MODERATE danger means human triggered avalanches are possible. Recent unconsolidated storm snow is still very deep in places with possible large tree wells lurking, so stick near your partner in the trees.	Moderate	Moderate	Moderate
1833	6:00 PM PST Saturday, December 26, 2015	2015-12-27 02:00:00	Dennis D'Amico	Mt Hood	Lingering storm and wind slabs instabilities will continue to settle on Sunday. Watch for sensitive wind-loaded slopes especially near and above treeline, and stick near your partner to help mitigate the deadly risk of deep snow immersion below treeline.	Considerable	Moderate	Moderate
1831	6:00 PM PST Saturday, December 26, 2015	2015-12-27 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Lingering storm and wind slabs instabilities will continue to settle on Sunday. Watch for sensitive wind-loaded slopes especially near and above treeline, and stick near your partner to help mitigate the deadly risk of deep snow immersion below treeline.	Considerable	Moderate	Moderate
1829	6:00 PM PST Friday, December 25, 2015	2015-12-26 02:00:00	Garth Ferber	Mt Hood	A consolidating and stabilizing trend will continue on Saturday. Remember to discuss plans and maintain visual contact with your partners.	Considerable	Moderate	Moderate
1827	6:00 PM PST Friday, December 25, 2015	2015-12-26 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A consolidating and stabilizing trend will continue on Saturday. Remember to discuss plans and maintain visual contact with your partners.	Considerable	Moderate	Moderate
1825	6:00 PM PST Thursday, December 24, 2015	2015-12-25 02:00:00	Garth Ferber	Mt Hood	A consolidating and stabilizing trend should begin by Friday. But recent wind slab, storm slab, loose dry snow and tree wells will all still be key features to avoid on Thursday.	Considerable	Considerable	Moderate
1823	6:00 PM PST Thursday, December 24, 2015	2015-12-25 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A consolidating and stabilizing trend should begin by Friday. But recent wind slab, storm slab, loose dry snow and tree wells will all still be key features to avoid on Thursday.	Considerable	Considerable	Moderate
1821	8:06 PM PST Wednesday, December 23, 2015	2015-12-24 04:06:00	Garth Ferber	Mt Hood	Storm slab, wind slab, cornices and deep unconsolidated snow are all key features to plan to avoid on Thursday.	Considerable	Considerable	Considerable
1819	8:06 PM PST Wednesday, December 23, 2015	2015-12-24 04:06:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Storm slab, wind slab, cornices and deep unconsolidated snow are all key features to plan to avoid on Thursday.	Considerable	Considerable	Considerable
1817	6:00 PM PST Wednesday, December 23, 2015	2015-12-24 02:00:00	Garth Ferber	Mt Hood	Back country travel is not recommended above treeline at Mt Hood on Thursday. Dangerous avalanche conditions are expected in the near and below treeline.	High	Considerable	Considerable
1815	6:00 PM PST Wednesday, December 23, 2015	2015-12-24 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Storm slab, wind slab, cornices and deep unconsolidated snow are all key features to plan to avoid on Thursday.	Considerable	Considerable	Considerable
1813	8:26 AM PST Wednesday, December 23, 2015	2015-12-23 16:26:00	Dennis D'Amico	Mt Hood	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as wind speeds increase. Loose dry avalanches in non-wind affected terrain will be difficult to manage on steeper slopes, so use extra caution around terrain traps.	Considerable	Considerable	Considerable
1811	8:26 AM PST Wednesday, December 23, 2015	2015-12-23 16:26:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as wind speeds increase. Loose dry avalanches in non-wind affected terrain will be difficult to manage on steeper slopes, so use extra caution around terrain traps.	Considerable	Considerable	Considerable
1809	6:00 PM PST Tuesday, December 22, 2015	2015-12-23 02:00:00	Kenny Kramer	Mt Hood	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as wind speeds increase.	Considerable	Considerable	Considerable
1807	6:00 PM PST Tuesday, December 22, 2015	2015-12-23 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Another round of storm slab and wind slab are likely Wednesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as wind speeds increase.	Considerable	Considerable	Considerable
1805	6:00 PM PST Monday, December 21, 2015	2015-12-22 02:00:00	Kenny Kramer	Mt Hood	New or existing storm slab and wind slab are likely Tuesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as the next storm increases.	Considerable	Considerable	Considerable
1802	6:00 PM PST Monday, December 21, 2015	2015-12-22 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	New or existing storm slab and wind slab are likely Tuesday, with new wind slab mainly forming on lee slopes ranging from N-SE facing, especially by afternoon as the next storm increases.	Considerable	Considerable	Considerable
1797	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	Mt Hood	A storm with strong shifting winds, heavy snow and rapid loading is expected at Mt Hood on Monday. Back country travel is not recommended above and near treeline at Mt Hood on Monday.	High	High	Considerable
1796	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	There should be a big difference in the weather and avalanche conditions between the north and south Cascades on Monday. The most dangerous conditions should be seen in the central to south Cascades.	Considerable	Considerable	Moderate
1794	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	Olympics	New storm slab and wind slab are likely depending a lot on the changeable weather pattern on Monday.	Considerable	Considerable	Moderate
1791	6:00 PM PST Saturday, December 19, 2015	2015-12-20 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected in the above and near treeline along the east slopes on Sunday with careful snowpack evaluation and cautious route finding essential.	Considerable	Considerable	Moderate
1789	6:00 PM PST Saturday, December 19, 2015	2015-12-20 02:00:00	Garth Ferber	Olympics	Dangerous avalanche conditions are expected in the above and near treeline at Hurricane on Sunday with careful snowpack evaluation and cautious route finding essential.	Considerable	Considerable	Moderate
1787	6:00 PM PST Friday, December 18, 2015	2015-12-19 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions should persist Saturday above treeline, though be improving. Best to be particularly cautious, especially near and above treeline, avoiding steep or wind loaded slopes, watching for sensitive storm layers and wind slab deposits.	Considerable	Moderate	Moderate
1785	6:00 PM PST Friday, December 18, 2015	2015-12-19 02:00:00	Kenny Kramer	Olympics	Avoid travel on or below recent large cornices found along ridges, mainly N-NE facing. Give a wide berth and avoid travel on slopes below. Also, watch for wind slab formation on isolated terrain features.	Moderate	Moderate	Moderate
1781	6:00 PM PST Thursday, December 17, 2015	2015-12-18 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Cautious route-finding will be essential Friday if you travel in the near and above treeline bands. Best to limit objectives by avoiding steep or wind loaded slopes, watching for sensitive storm layers and wind slab deposits. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Friday	Considerable	Considerable	Moderate
1778	6:00 PM PST Thursday, December 17, 2015	2015-12-18 02:00:00	Kenny Kramer	Olympics	Dangerous avalanche conditions are expected early Friday, mainly near and above treeline. Best to limit objectives by avoiding steep and wind loaded slopes, watching for sensitive storm layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Friday.	Considerable	Considerable	Moderate
1776	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Reign in your objectives later in the day if conditions deteriorate faster than forecast in the north Cascades. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Moderate	Moderate
1773	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Dangerous avalanche conditions are expected by Thursday afternoon. Reign in your objectives later in the day as snowfall and winds increase by avoiding steep and wind loaded slopes, watching for sensitive storm layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Considerable	Moderate
1771	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Dangerous avalanche conditions are expected by Thursday afternoon. Reign in your objectives later in the day as snowfall and winds increase by avoiding steep and wind loaded slopes, watching for sensitive storm layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Considerable	Moderate
1770	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions are expected by Thursday afternoon. Reign in your objectives later in the day as snowfall and winds increase by avoiding steep and wind loaded slopes, watching for sensitive storm layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Considerable	Considerable
1768	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Moderate	Moderate	Moderate
1764	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Moderate	Moderate	Low
1762	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	Olympics	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Moderate	Moderate	Low
1760	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1758	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1756	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	Olympics	Pay extra attention if you see winds transporting snow and find more than a few inches of snowfall on Tuesday.	Moderate	Moderate	Low
1754	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1751	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	Mt Hood	Previous layers will gradually stabilize on Tuesday but wind slab could still be triggered on previous lee slopes. Pay extra attention if you see winds transporting recent snow to new lee slopes.	Considerable	Moderate	Moderate
1746	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	Olympics	Pay extra attention if you see winds transporting snow and find more than a few inches of snowfall on Tuesday.	Moderate	Moderate	Moderate
345	6:00 PM PST Sunday, January 26, 2014	2014-01-27 02:00:00	Garth Ferber	Mt Hood	The Bottom Line: Generally safe conditions should be seen on Monday. Use normal caution on lee shaded slopes.	Low	Low	Low
1795	6:25 PM PST Sunday, December 20, 2015	2015-12-21 02:25:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	There should be a big difference in the weather and avalanche conditions between the north and south Cascades on Monday. The most dangerous conditions should be seen in the central to south Cascades.	Considerable	Considerable	Considerable
1793	6:00 PM PST Saturday, December 19, 2015	2015-12-20 02:00:00	Garth Ferber	Mt Hood	Dangerous avalanche conditions are expected on Sunday with large storm or wind slab avalanches expected in some areas. Careful snow pack evaluation and cautious route finding will be necessary on Sunday.	Considerable	Considerable	Considerable
1790	6:00 PM PST Saturday, December 19, 2015	2015-12-20 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions are expected on Sunday with large avalanches expected in some areas. Careful snow pack evaluation and cautious route finding will be necessary on Sunday.	Considerable	Considerable	Considerable
1788	6:00 PM PST Friday, December 18, 2015	2015-12-19 02:00:00	Kenny Kramer	Mt Hood	Dangerous avalanche conditions should persist Saturday above treeline, though be improving. Best to be particularly cautious, especially near and above treeline, avoiding steep or wind loaded slopes, watching for sensitive storm layers and wind slab deposits.	Considerable	Moderate	Moderate
1786	6:00 PM PST Friday, December 18, 2015	2015-12-19 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions should persist Saturday, though be improving. Best to be particularly cautious, especially near and above treeline, avoiding steep or wind loaded slopes, watching for sensitive storm layers and wind slab deposits.	Considerable	Moderate	Moderate
1784	6:00 PM PST Thursday, December 17, 2015	2015-12-18 02:00:00	Kenny Kramer	Mt Hood	Dangerous avalanche conditions are expected Friday, near and above treeline. Best to limit objectives by avoiding steep or wind loaded slopes, watching for sensitive wind and storm slab layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Friday.	Considerable	Considerable	Moderate
1780	6:00 PM PST Thursday, December 17, 2015	2015-12-18 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions are expected Friday, especially near and above treeline. Best to limit objectives by avoiding steep or wind loaded slopes, watching for sensitive storm layers and wind slab deposits. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Friday.	Considerable	Considerable	Moderate
1777	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Dangerous avalanche conditions are expected by Thursday afternoon. Reign in your objectives later in the day as snowfall and winds increase by avoiding steep and wind loaded slopes, watching for sensitive storm layers. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Considerable	Moderate
1775	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	Mt Hood	Travel in avalanche terrain is not recommended Thursday, especially near and above treeline where larger and more dangerous avalanches are possible.	High	High	Considerable
1772	6:53 PM PST Wednesday, December 16, 2015	2015-12-17 02:53:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Cautious route-finding will be essential Thursday if you travel into the near and above treeline bands Thursday. Reign in your objectives later in the day if conditions deteriorate faster than forecast. Recent and newly wind loaded slopes in the near and above treeline zone should be found on a variety of aspects Thursday.	Considerable	Considerable	Moderate
1769	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Moderate	Moderate	Low
1767	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	Mt Hood	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Considerable	Considerable	Considerable
1763	6:00 PM PST Tuesday, December 15, 2015	2015-12-16 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Previous wind and storm slab layers from the weekend should be the main concerns on Wednesday. Greater caution would be necessary if the weak front Tuesday night and Wednesday morning brings more snow than expected.	Moderate	Moderate	Low
1761	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	Mt Hood	Previous layers will gradually stabilize on Tuesday but wind slab could still be triggered on previous lee slopes. Pay extra attention if you see winds transporting recent snow to new lee slopes.	Considerable	Moderate	Moderate
1759	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1757	10:11 AM PST Tuesday, December 15, 2015	2015-12-15 18:11:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Pay extra attention if you see winds transporting snow and find more than a few inches of snowfall on Tuesday.	Moderate	Moderate	Low
1755	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1752	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Pay extra attention if you see winds transporting snow and find more that a few inches of new snowfall on Tuesday.	Moderate	Moderate	Moderate
1747	6:00 PM PST Monday, December 14, 2015	2015-12-15 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Pay extra attention if you see winds transporting snow and find more than a few inches of snowfall on Tuesday.	Moderate	Moderate	Moderate
1745	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	Mt Hood	The strong storms Saturday and Sunday have created widespread new storm layers and new unstable wind slab on many lee slopes, especially near ridges. Travel conservatively by staying off or below steeper slopes and avoid wind loaded terrain, especially but not limited to N-SE facing terrain.	Considerable	Considerable	Moderate
1743	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	Travel conservatively by staying off steeper slopes and avoiding the wind loaded terrain near and above treeline.  Persistent slabs now seem unlikely to trigger in the East-Central Zone, but we will wait for confirmation before dropping this avalanche problem, as they have high consequences.	Moderate	Moderate	Moderate
1742	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Travel conservatively by staying off steeper slopes and avoiding the wind loaded terrain near and above treeline.  Persistent slabs now seem unlikely to trigger in the NE zone, but we will wait for confirmation before dropping this avalanche problem, as they have high consequences.	Considerable	Moderate	Moderate
1739	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	Mt Hood	The strong storm Saturday should have created widespread new storm layers and new unstable wind slab on lee slopes near ridges by Sunday with further snowfall and strong winds expected during the day Sunday. Travel in avalanche terrain near and above treeline is not recommended Sunday.	High	High	Considerable
1737	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	Travel conservatively by staying off steeper slopes and avoiding the wind loaded terrain near and above treeline. The above treeline winds are forecast to remain strong Sunday, don't underestimate the rapid loading that can occur at higher elevations.	Considerable	Moderate	Moderate
1735	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The strong storm Saturday should have created widespread new storm layers and new unstable wind slab on lee slopes near ridges by Sunday with further snowfall and winds expected during the day Sunday. Travel conservatively by staying off or below steeper slopes and avoid wind loaded north and east facing terrain.	Considerable	Considerable	Moderate
1733	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	Mt Hood	Expect deteriorating snow stability as the day progresses and the storm really takes hold. Travel conservatively by staying off steeper slopes and avoiding wind loaded terrain near and above treeline, especially later in the day. The above treeline winds are forecast to be quite strong Saturday afternoon, so don't underestimate the rapid loading occurring at higher elevations.	Considerable	Considerable	Moderate
1731	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Travel conservatively by staying off steeper slopes and avoiding wind loaded terrain near and above treeline, especially later in the day. The above treeline winds are forecast to be quite strong Saturday afternoon, so don't underestimate the rapid loading occurring at higher elevations. Persistent slabs are still possible to trigger in the CE zone, although there is still a fair amount of uncertainty regarding how spatially extensive this problem remains. Look for obvious clues like whumpfing or shooting cracks as evidence that persistent slab potential exists.	Considerable	Considerable	Considerable
1730	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Travel conservatively by staying off steeper slopes and avoiding wind loaded terrain near and above treeline, especially later in the day. The above treeline winds are forecast to be quite strong Saturday afternoon, so don't underestimate the rapid loading occurring at higher elevations. Persistent slabs now seem unlikely to trigger in the NE zone, but we will wait for more information before dropping this avalanche problem as they still have high consequences.	Considerable	Considerable	Moderate
1728	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	Olympics	Expect deteriorating snow stability as the day progresses and the storm really takes hold. Travel conservatively by staying off steeper slopes and avoiding wind loaded northerly terrain, especially later in the day,	Considerable	Considerable	Considerable
1726	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Recent storm concerns should decrease through the day Friday, but watch for sensitive wind slab, especially on lee N through SE slopes near and above treeline.	Moderate	Moderate	Low
1724	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Recent storm concerns should slowly decrease through the day Friday, but watch for sensitive wind slab, especially on lee N through SE slopes near and above treeline. Persistent slabs now seem unlikely to trigger in the NE zone, but we will wait for more information before dropping this avalanche problem as they still have high consequences.	Considerable	Considerable	Moderate
1722	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	Olympics	Storm concerns should decrease through the day Friday, but watch for sensitive new storm and wind slab, especially on lee N through SE slopes near and above treeline. Careful route-finding and snow evaluation will be essential.	Considerable	Moderate	Moderate
1720	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Persistent weak layers are likely to linger in the northeast zone with a transition to the north central and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Moderate	Moderate	Low
1741	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The strong storm Saturday, and subsequent additional snowfall Sunday should maintain widespread wind and storm slab layers on lee slopes near ridges Monday. Travel conservatively by staying off or below steeper slopes and avoid wind loaded terrain, especially but not limited to northwest through southeast facing terrain.	Considerable	Considerable	Moderate
1740	5:58 PM PST Sunday, December 13, 2015	2015-12-14 01:58:00	Kenny Kramer	Olympics	The strong storm Saturday, and subsequent additional snowfall Sunday should maintain widespread wind and storm slab layers on lee slopes near ridges Monday. Travel conservatively by staying off or below steeper slopes and avoid wind loaded terrain, especially but not limited to northwest through southeast facing terrain.	Considerable	Moderate	Moderate
1738	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	Travel conservatively by staying off steeper slopes and avoiding the wind loaded terrain near and above treeline. The above treeline winds are forecast to remain strong Sunday, don't underestimate the rapid loading that can occur at higher elevations.	Moderate	Moderate	Low
1736	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Travel conservatively by staying off steeper slopes and avoiding the wind loaded terrain near and above treeline. The above treeline winds are forecast to remain strong Sunday, don't underestimate the rapid loading that can occur at higher elevations. Persistent slabs now seem unlikely to trigger in the NE zone, but we will wait for confirmation before dropping this avalanche problem, as they have high consequences.	Considerable	Considerable	Moderate
1734	6:00 PM PST Saturday, December 12, 2015	2015-12-13 02:00:00	Kenny Kramer	Olympics	The strong storm Saturday should have created widespread new storm layers and new unstable wind slab on lee slopes near ridges by Sunday with further snowfall and winds expected during the day Sunday. Travel conservatively by staying off or below steeper slopes and avoid wind loaded north and east facing terrain.	Considerable	Considerable	Moderate
1732	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	New storm and wind avalanche problems should slowly increase through Saturday afternoon. Watch for sensitive wind slab, especially on lee NW through E slopes near and above treeline.	Moderate	Moderate	Low
1729	6:00 PM PST Friday, December 11, 2015	2015-12-12 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Expect deteriorating snow stability as the day progresses and the storm really takes hold. Travel conservatively by staying off steeper slopes and avoiding wind loaded terrain near and above treeline, especially later in the day. The above treeline winds are forecast to be quite strong Saturday afternoon, so don't underestimate the rapid loading occurring at higher elevations.	Considerable	Considerable	Moderate
1727	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	Mt Hood	New storm slab will be the primary avalanche problem Friday due to potentially unstable storm layers. Lingering wind slab from Thursday and Thursday night on lee N through SE slopes will be a secondary avalanche problem near and above treeline. Use extra caution if traveling into the above treeline zone (alpine) as there have not been any recent observations from this elevation band.	Considerable	Considerable	Moderate
1725	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Persistent slabs are still possible to trigger in the CE zone, although there is still a fair amount of uncertainty regarding how spatially extensive this problem remains. Look for obvious clues like whumpfing or shooting cracks as evidence that persistent slab potential exists. Give this deadly avalanche problem the respect it deserves and continue to play it conservatively. Recent wind and storm slab will be secondary concerns.	Considerable	Considerable	Considerable
1723	6:21 PM PST Thursday, December 10, 2015	2015-12-11 02:21:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Recent storm concerns should decrease through the day Friday, but watch for sensitive wind slab, especially on lee N through SE slopes near and above treeline. Careful route-finding and snow evaluation will be essential.	Considerable	Moderate	Moderate
1721	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	Mt Hood	Mt Hood should get more snow that the Washington Cascades on Thursday. You may find dangerous avalanche conditions in the alpine.	Considerable	Moderate	Low
1719	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Persistent weak layers are likely to linger in the northeast zone with a transition to the central east and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Considerable	Considerable	Moderate
1718	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Persistent weak layers are likely to linger in the northeast zone with a transition to the central east and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Considerable	Considerable	Moderate
1717	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Quick update for increased storm and wind slab avalanche hazards along the west slopes of the Cascades. Only the danger rating has been changed for Day 1.	Considerable	Considerable	Moderate
1716	1:55 PM PST Thursday, December 10, 2015	2015-12-10 21:55:00	Dennis D'Amico	Olympics	Evaluate snow and terrain carefully Thursday. Change your plans if you find yourself in unexpectedly prolonged stormy weather.	Moderate	Moderate	Low
1715	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	Mt Hood	Mt Hood should get more snow that the Washington Cascades on Thursday. You may find dangerous avalanche conditions in the alpine.	Considerable	Moderate	Low
1714	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Persistent weak layers are likely to linger in the northeast zone with a transition to the north central and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Moderate	Moderate	Low
1713	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Persistent weak layers are likely to linger in the northeast zone with a transition to the central east and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Moderate	Moderate	Moderate
1712	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Persistent weak layers are likely to linger in the northeast zone with a transition to the central east and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Considerable	Considerable	Moderate
1711	1:14 PM PST Thursday, December 10, 2015	2015-12-10 21:14:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Quick update for increased storm and wind slab avalanche hazards along the west slopes of the Cascades. Only the danger rating has been changed for Day 1.	Considerable	Considerable	Moderate
1709	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Persistent weak layers are likely to linger in the northeast zone with a transition to the north central and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Moderate	Moderate	Low
1704	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Persistent weak layers are likely to linger in the northeast zone with a transition to the north central and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Considerable	Considerable	Moderate
1702	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	Olympics	Evaluate snow and terrain carefully Thursday. Change your plans if you find yourself in unexpectedly prolonged stormy weather.	Moderate	Moderate	Low
1700	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Back country travel is still not recommended in the northeast zone on Wednesday. Conditions are also still very uncertain in the central east zone on Wednesday.	High	Considerable	Moderate
1698	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline. Remain vigilant regarding the potential persistent slab problem until it can be safely ruled out.	Moderate	Moderate	Moderate
1696	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	Olympics	New shallow wind slab will be the focus on Wednesday at Hurricane Ridge as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Moderate
1690	7:06 PM PST Tuesday, December 8, 2015	2015-12-09 03:06:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline. Remain vigilant regarding the potential persistent slab problem until it can be safely ruled out.	Moderate	Moderate	Moderate
1688	7:06 PM PST Tuesday, December 8, 2015	2015-12-09 03:06:00	Kenny Kramer	Olympics	New shallow wind slab will be the focus on Wednesday at Hurricane Ridge as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Moderate
1685	6:22 PM PST Monday, December 7, 2015	2015-12-08 02:22:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Don't take this snowpack for granted just because a week ago we may have had a bomber hard crust and a very shallow snowpack. Think about using your first your early season backcountry trips to test your gear, practice rescue and transceiver techniques with your partner and maybe stay in more protective shallow angled terrain. It's a long season and there will be plenty of time to get after it safely under more favorable snowpack conditions.	High	Considerable	Moderate
1681	6:22 PM PST Monday, December 7, 2015	2015-12-08 02:22:00	Kenny Kramer	Olympics	Tuesday should be another wet day at Hurricane, with periods of heavy precipitation. Careful snow evaluation and cautious route finding should be essential if you venture into avalanche terrain.	Considerable	Moderate	Moderate
1680	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	This weather and snowpack scenario better get everyone's attention because it is a great set up for avalanches!	High	Considerable	Considerable
1677	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	Stevens Pass	This weather and snowpack scenario better get everyone's attention because it is a great set up for avalanches! Persistent slab may also be present at Stevens and Snoqualmie Passes.	High	High	Considerable
1675	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Storms will continue to cross the Northwest Sunday night and Monday. This will cause new slab or maintain persistant slab avalanche conditions along the Cascades east slopes especially in the northeast and north central zones.	High	Considerable	Moderate
1665	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	Mt Hood	New small storm and wind slab above treeline should be the focus on Sunday at Mt Hood.	Moderate	Moderate	Low
1663	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	High	Considerable	Moderate
1662	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline on Sunday.	High	Considerable	Moderate
1660	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline in the Mt Baker area on Sunday.	High	High	Considerable
1658	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	Mt Hood	New small storm and wind slab above treeline should be the focus on Sunday at Mt Hood.	Moderate	Moderate	Low
1656	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	High	Considerable	Moderate
1561	6:00 PM PST Saturday, April 4, 2015	2015-04-05 01:00:00	Dennis D'Amico	Mt Hood	Generally good stability is expected Sunday, but evaluate lee slopes near and above treeline for local wind slab and be aware of small loose avalanches that could be problematic near terrain traps.	Moderate	Low	Low
1708	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Persistent weak layers are likely to linger in the northeast zone with a transition to the north central and southeast zone. Persistent weak layers are dangerous and cause large, rapidly propagating avalanches.	Moderate	Moderate	Moderate
1707	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	Mt Hood	Mt Hood should get more snow that the Washington Cascades on Thursday. You may find dangerous avalanche conditions in the alpine.	Considerable	Moderate	Low
1703	6:00 PM PST Wednesday, December 9, 2015	2015-12-10 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Evaluate snow and terrain carefully Thursday. Change your plans if you find yourself in unexpectedly prolonged stormy weather.	Moderate	Moderate	Low
1701	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Back country travel is still not recommended in the northeast zone on Wednesday. Conditions are also still very uncertain in the central east zone on Wednesday.	Considerable	Considerable	Moderate
1699	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	Mt Hood	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Low
1697	8:38 AM PST Wednesday, December 9, 2015	2015-12-09 16:38:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Moderate
1691	7:06 PM PST Tuesday, December 8, 2015	2015-12-09 03:06:00	Kenny Kramer	Mt Hood	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Low
1689	7:06 PM PST Tuesday, December 8, 2015	2015-12-09 03:06:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	New shallow wind slab will be the focus on Wednesday as the previous wet snowpack begins to strengthen and refreeze. Careful snow evaluation and cautious route finding should be essential if you venture above treeline.	Moderate	Moderate	Moderate
1687	6:22 PM PST Monday, December 7, 2015	2015-12-08 02:22:00	Kenny Kramer	Mt Hood	Dangerous wet snow or reactive wet slab avalanches are expected near and above treeline Tuesday on Mt Hood.	Considerable	Considerable	Low
1682	6:22 PM PST Monday, December 7, 2015	2015-12-08 02:22:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Don't take this snowpack for granted just because a week ago we may have had a bomber hard crust and a very shallow snowpack. Think about using your first your early season backcountry trips to test your gear, practice rescue and transceiver techniques with your partner and maybe stay in more protective shallow angled terrain. It's a long season and there will be plenty of time to get after it safely under more favorable snowpack conditions.	High	High	Considerable
1679	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Storms will continue to cross the Northwest Sunday night and Monday. This will cause new slab or maintain persistant slab avalanche conditions along the Cascades east slopes especially in the northeast and north central zones.	Considerable	Moderate	Low
1676	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	Mt Hood	New more reactive wind and storm slab in the alpine should be the focus on Monday at Mt Hood	Considerable	Moderate	Low
1674	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	Olympics	Monday should become a wet day at Hurricane. Careful snow evaluation and cautious route finding should be essential if you venture into the alpine.	Considerable	Moderate	Moderate
1673	8:03 PM PST Sunday, December 6, 2015	2015-12-07 04:03:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	This weather and snowpack scenario better get everyone's attention because it is a great set up for avalanches!	High	High	Considerable
1664	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	Considerable	Moderate	Low
1661	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	Stevens Pass	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline.Extra caution is needed in the Stevens and Snoqualmie Pass areas due to an unusual and potentially dangerous persistent weak layer.	High	Considerable	Moderate
1659	11:07 AM PST Sunday, December 6, 2015	2015-12-06 19:07:00	Garth Ferber	Olympics	Strong frontal systems will be moving across the Northwest this weekend and next week. Be prepared to change your plans especially if conditions are worse than expected.	Considerable	Moderate	Moderate
1657	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	Considerable	Moderate	Low
1655	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline on Sunday.	High	Considerable	Moderate
1653	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline in the Mt Baker area on Sunday.	High	High	Considerable
1644	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	Moderate	Moderate	Low
1654	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	Stevens Pass	Back country early season conditions are changing fast! The forecast has been updated early Sunday morning for dangerous conditions. Back country travel is not recommended Sunday near and above treeline.Extra caution is needed in the Stevens and Snoqualmie Pass areas due to an unusual and potentially dangerous persistent weak layer.	High	Considerable	Moderate
1652	9:10 AM PST Sunday, December 6, 2015	2015-12-06 17:10:00	Garth Ferber	Olympics	Strong frontal systems will be moving across the Northwest this weekend and next week. Be prepared to change your plans especially if conditions are worse than expected.	Considerable	Moderate	Moderate
1642	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	Stevens Pass	New slab layers are expected along the west slopes by Sunday. Extra caution is needed in the Stevens and Snoqualmie Pass areas due to an unusual and potentially dangerous persistent weak layer.	Considerable	Considerable	Moderate
1639	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Beware of potentially dangerous persistent slab this weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	High	Considerable	Moderate
1635	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	Olympics	Strong frontal systems will be moving across the Northwest this weekend and next week. Be prepared to change your plans especially if conditions are worse than expected.	Considerable	Moderate	Moderate
1631	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	Olympics	Deteriorating conditions along with increasingly dangerous avalanche conditions are forecast by Saturday afternoon. The terrain you started your day with may not be safe on the way out, so choose your travel plan wisely.	Considerable	Considerable	Moderate
1629	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	Stevens Pass	Recent observations have identified a reactive persistent weak layer in the Stevens Pass area. This is a dangerous setup heading into the weekend!  Persistent slabs are likely to be human triggered in open areas near treeline where the persistent weak layer was buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing.	Considerable	Considerable	Moderate
1627	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Deteriorating conditions along with increasingly dangerous avalanche conditions are forecast by Saturday afternoon.  The terrain you started your day with may not be safe on the way out, so choose your travel plan wisely.	Considerable	Considerable	Moderate
1625	2:14 PM PST Wednesday, June 24, 2015	2015-06-24 21:14:00	Dennis D'Amico	Olympics	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
1619	6:00 PM PST Saturday, April 25, 2015	2015-04-26 01:00:00	Kenny Kramer	Mt Hood	Don't underestimate the effects of the strong April sun, which can make avalanches touchy Sunday, especially in areas of heavier storm snowfall.	Moderate	Moderate	Low
1617	6:00 PM PST Saturday, April 25, 2015	2015-04-26 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Don't underestimate the effects of the strong April sun, which can make avalanches touchy Sunday, especially in areas of heavier storm snowfall.	Moderate	Moderate	Low
1614	6:00 PM PST Friday, April 24, 2015	2015-04-25 01:00:00	Garth Ferber	Mt Hood	Don't underestimate the effects of the increasing strong April sun which can make avalanches touchy on Saturday in areas of heavier storm snowfall.	Considerable	Moderate	Low
1612	6:00 PM PST Friday, April 24, 2015	2015-04-25 01:00:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Don't underestimate the effects of the increasing strong April sun which can make avalanches touchy on Saturday in areas of heavier storm snowfall.	Considerable	Moderate	Low
1610	6:00 PM PST Friday, April 24, 2015	2015-04-25 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Don't underestimate the effects of the increasing strong April sun which can make avalanches touchy on Saturday in areas of heavier storm snowfall.	High	Considerable	Moderate
1604	6:00 PM PST Saturday, April 18, 2015	2015-04-19 01:00:00	Garth Ferber	Mt Hood	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures especially during the midday and afternoon hours on Sunday.	Considerable	Considerable	Moderate
1602	6:00 PM PST Saturday, April 18, 2015	2015-04-19 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures especially during the midday and afternoon hours on Sunday.	Considerable	Considerable	Moderate
1599	6:00 PM PST Friday, April 17, 2015	2015-04-18 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures mainly during the midday and afternoon hours.	Considerable	Moderate	Low
1597	6:00 PM PST Friday, April 17, 2015	2015-04-18 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures mainly during the midday and afternoon hours.	Considerable	Considerable	Moderate
1595	6:00 PM PST Wednesday, April 15, 2015	2015-04-16 01:00:00	Dennis D'Amico	Olympics	Expect a sharp increase in the avalanche danger as you travel above treeline Thursday:  A warm and sunny day will make natural and skier triggered loose wet avalanches likely and bring an increased risk of cornice failure. Wind slab may linger on lee slopes above treeline, with shifting winds earlier in the week redistributing recent snow to many aspects.	\N	\N	\N
1589	6:00 PM PST Saturday, April 11, 2015	2015-04-12 01:00:00	Kenny Kramer	Mt Hood	Human triggered slides are likely on wind loaded aspects above tree-line. Increasing sun or filtered sun may quickly destabilize recent snow on sun exposed slopes. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Moderate	Moderate
1560	6:00 PM PST Saturday, April 4, 2015	2015-04-05 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Generally good stability is expected Sunday, but evaluate lee slopes near and especially above treeline for local wind slab and be aware of small loose avalanches that could be problematic near terrain traps.	Moderate	Low	Low
1643	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	Strong frontal systems will be moving across the Northwest this weekend and next week. Be prepared to change your plans especially if conditions are worse than expected.	Considerable	Considerable	Moderate
1641	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	Mt Hood	New storm and wind slab above treeline should be the focus on Sunday at Mt Hood.	Considerable	Moderate	Low
1636	6:00 PM PST Saturday, December 5, 2015	2015-12-06 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Strong frontal systems will be moving across the Northwest this weekend and next week. Be prepared to change your plans especially if conditions are worse than expected.	High	Considerable	Considerable
1633	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Lingering wind slab on lee NW through SE aspects and shallow new storm slabs are possible on Saturday mainly in the near and above treeline elevation bands.	Moderate	Moderate	Low
1632	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	This is a potentially dangerous setup heading into the weekend! Persistent slabs may be human triggered where persistent weak layers were buried intact. Stay on low angled slopes and watch and listen for obvious clues like shooting cracks and whumpfing. Use caution until more information is obtained about PWLs throughout the east slopes.	Considerable	Considerable	Moderate
1630	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	Mt Hood	Lingering storm and wind slabs on lee N through SE aspects are possible on Saturday in the near and above treeline elevation bands.	Moderate	Moderate	Low
1628	6:12 PM PST Friday, December 4, 2015	2015-12-05 02:12:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Lingering wind slab on lee NW through SE aspects and shallow new storm slabs are possible on Saturday mainly in the near and above treeline elevation bands.	Moderate	Moderate	Low
1626	11:11 AM PST Tuesday, November 24, 2015	2015-11-24 19:11:00	Dennis D'Amico	Olympics	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
1620	9:11 AM PST Monday, April 27, 2015	2015-04-27 16:11:00	Kenny Kramer	Olympics	The last daily NWAC forecasts for this season were issued on Saturday, April 11th. For the remainder of April, NWAC forecasts will be issued on April 17th, 18th, 24th and 25th to provide coverage those weekends. At any time this spring, blog posts and Special Avalanche Advisories will be issued if unusual or unusually severe avalanche conditions are expected.\n\nNWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
1618	6:00 PM PST Saturday, April 25, 2015	2015-04-26 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Don't underestimate the effects of the strong April sun, which can make avalanches touchy Sunday, especially in areas of heavier storm snowfall.	Moderate	Low	Low
1615	6:00 PM PST Saturday, April 25, 2015	2015-04-26 01:00:00	Kenny Kramer	Olympics	Don't underestimate the effects of the strong April sun, which can make avalanches touchy Sunday, especially in areas of heavier storm snowfall.	Moderate	Low	Low
1613	6:00 PM PST Friday, April 24, 2015	2015-04-25 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Don't underestimate the effects of the increasing strong April sun which can make avalanches touchy on Saturday in areas of heavier storm snowfall.	Moderate	Low	Low
1611	6:00 PM PST Friday, April 24, 2015	2015-04-25 01:00:00	Garth Ferber	Olympics	Don't underestimate the effects of the increasing strong April sun which can make avalanches touchy on Saturday in areas of heavier storm snowfall.	Moderate	Low	Low
1605	10:53 AM PST Monday, April 20, 2015	2015-04-20 17:53:00	Dennis D'Amico	Olympics	The last daily NWAC forecasts for this season were issued on Saturday, April 11th. For the remainder of April, NWAC forecasts will be issued on April 17th, 18th, 24th and 25th to provide coverage those weekends. At any time this spring, blog posts and Special Avalanche Advisories will be issued if unusual or unusually severe avalanche conditions are expected.\n\nThe last forecast issued Sat Apr 18th can be found here: http://www.nwac.us/avalanche-forecast/avalanche-forecast/414/\n\nNWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
1603	6:00 PM PST Saturday, April 18, 2015	2015-04-19 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures especially during the midday and afternoon hours on Sunday.	Considerable	Moderate	Low
1601	6:00 PM PST Saturday, April 18, 2015	2015-04-19 01:00:00	Garth Ferber	Olympics	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures especially during the midday and afternoon hours on Sunday.	Considerable	Moderate	Low
1600	6:00 PM PST Friday, April 17, 2015	2015-04-18 01:00:00	Garth Ferber	Mt Hood	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures mainly during the midday and afternoon hours.	Considerable	Considerable	Moderate
1598	6:00 PM PST Friday, April 17, 2015	2015-04-18 01:00:00	Garth Ferber	Olympics	The snowpack is in transition from winter to spring conditions in the Olympics and Cascades. This should keep the focus on likely loose wet avalanches and possible cornice failures mainly during the midday and afternoon hours.	Considerable	Moderate	Low
1596	6:50 PM PST Thursday, April 16, 2015	2015-04-17 01:50:00	Dennis D'Amico	Olympics	Slight cooling, increased cloud cover and increasing winds will lower the avalanche danger Friday afternoon. The mostly likely window for natural and skier triggered loose wet avalanches and cornice failure will be late morning through mid-day on Friday.	\N	\N	\N
1587	6:00 PM PST Saturday, April 11, 2015	2015-04-12 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Human triggered slides are likely on wind loaded aspects above tree-line. Increasing sun or filtered sun may quickly destabilize recent snow on sun exposed slopes. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Moderate	Moderate
1594	3:56 PM PST Monday, April 13, 2015	2015-04-13 22:56:00	Garth Ferber	Olympics	Please see the NWAC blog here for a post regarding weather and avalanche conditions on Tuesday and Wednesday, April 14th and 15th.\n\nThe last daily NWAC forecasts for this season were issued on Saturday, April 11th. For the remainder of April, NWAC forecasts will be issued on April 17th, 18th, 24th and 25th to provide coverage those weekends. At any time this spring, blog posts and Special Avalanche Advisories will be issued if unusual or unusually severe avalanche conditions are expected.\n\nNWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
1588	6:00 PM PST Saturday, April 11, 2015	2015-04-12 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Keep your terrain selection conservative Sunday: Human triggered slides are likely on wind loaded aspects above tree-line, which also happens to be the elevation bands with solid snowcover. Shower intensity and sunbreaks will locally mix in loose wet and storm slab avalanche potential. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Moderate	Moderate
1586	6:00 PM PST Saturday, April 11, 2015	2015-04-12 01:00:00	Kenny Kramer	Olympics	Dangerous storm related avalanche hazards will generally be confined to the above treeline zone with enough of a snowpack to pose an avalanche threat. Watch for recent cornice formations along ridges and on slopes below especially during the warmest part of the day.	Considerable	Moderate	Moderate
1584	6:00 PM PST Friday, April 10, 2015	2015-04-11 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Keep your terrain selection conservative Saturday: Human triggered slides are likely on wind loaded aspects near and above tree-line, which also happens to be the elevation bands with solid snowcover. Shower intensity and sunbreaks will locally mix in loose wet and storm slab avalanche potential. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Considerable	Moderate
1585	6:00 PM PST Friday, April 10, 2015	2015-04-11 01:00:00	Dennis D'Amico	Mt Hood	Keep your terrain selection conservative Saturday: Human triggered slides are likely on wind loaded aspects near and above tree-line, which also happens to be the elevation bands with solid snowcover. Shower intensity and sunbreaks will locally mix in loose wet and storm slab avalanche potential. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Considerable	Moderate
1583	6:00 PM PST Friday, April 10, 2015	2015-04-11 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Keep your terrain selection conservative Saturday: Human triggered slides are likely on wind loaded aspects near and above tree-line, which also happens to be the elevation bands with solid snowcover. Shower intensity and sunbreaks will locally mix in loose wet and storm slab avalanche potential. Choose more moderate and less wind affected terrain and safely enjoy a taste of winter.	Considerable	Considerable	Moderate
1582	6:00 PM PST Friday, April 10, 2015	2015-04-11 01:00:00	Dennis D'Amico	Olympics	Dangerous storm related avalanche hazards will generally be confined to the above treeline zone or in near treeline locations with enough of a snowpack to pose an avalanche threat.	Considerable	Moderate	Low
1581	6:00 PM PST Thursday, April 9, 2015	2015-04-10 01:00:00	Dennis D'Amico	Mt Hood	It's the calm before the weekend storm: Friday's avalanche concerns should be limited to small and localized pockets of wind slab on lee aspects and small wet loose on solar aspects.	Moderate	Moderate	Low
1580	6:00 PM PST Thursday, April 9, 2015	2015-04-10 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The main avalanche problem should be possible small loose wet avalanches on solar slopes. Use caution on slopes below cornices and on ridges where it can be hard to know if a cornice is present.	Moderate	Low	Low
1579	6:00 PM PST Thursday, April 9, 2015	2015-04-10 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	It's the calm before the weekend storm: Friday's avalanche concerns should be limited to small and localized pockets of wind slab on lee aspects and small wet loose on solar aspects with both problems found mainly above treeline.	Moderate	Low	Low
1578	6:00 PM PST Thursday, April 9, 2015	2015-04-10 01:00:00	Dennis D'Amico	Olympics	Shallow new wind or storm slab avalanches are possible on the highest peaks in the Olympics by Friday afternoon.	Moderate	Low	Low
1577	6:00 PM PST Wednesday, April 8, 2015	2015-04-09 01:00:00	Garth Ferber	Mt Hood	The main avalanche problem at Mt Hood should be possible small loose wet avalanches on solar slopes. But isolated storm slab may still be found on slopes mainly above treeline where there has been recent heavier snow showers.	Moderate	Moderate	Moderate
1576	6:00 PM PST Wednesday, April 8, 2015	2015-04-09 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The main avalanche problem should be possible small loose wet avalanches on solar slopes. Use caution on slopes below cornices and on ridges where it can be hard to know if a cornice is present.	Moderate	Low	Low
1575	6:00 PM PST Wednesday, April 8, 2015	2015-04-09 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The main avalanche problem should be possible small loose wet avalanches on solar slopes. Use caution on slopes below cornices and on ridges where it can be hard to know if a cornice is present.	Moderate	Moderate	Low
1574	6:00 PM PST Wednesday, April 8, 2015	2015-04-09 01:00:00	Garth Ferber	Olympics	The main avalanche problem should be possible small loose wet avalanches on solar slopes on the highest peaks of the Olympics.	Moderate	Low	Low
1573	6:00 PM PST Tuesday, April 7, 2015	2015-04-08 01:00:00	Kenny Kramer	Mt Hood	Recent snowfall followed by likely increasing sunshine Wednesday could make for increasing avalanche danger on Mt. Hood, so be aware of quickly changing surface snow instability.	Moderate	Moderate	Moderate
1572	6:00 PM PST Tuesday, April 7, 2015	2015-04-08 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Due to a fair amount of uncertainty with the weather forecast, a moderate hazard rating will be forecast above treeline, however watch for local areas that have received greater recent snowfall where a locally greater danger may exist.	Moderate	Low	Low
1571	6:00 PM PST Tuesday, April 7, 2015	2015-04-08 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Due to the recent showery weather pattern, a wide variation may exist in new snow amounts. The moderate hazard rating will be maintained near and above treeline across the Cascades for new storm snow problems, but watch for areas with greater new snow as having a potentially higher local danger.	Moderate	Moderate	Low
1570	6:00 PM PST Tuesday, April 7, 2015	2015-04-08 01:00:00	Kenny Kramer	Olympics	Watch for generally small avalanches involving new storm snow on a variety of aspects and mainly above treeline.	Moderate	Low	Low
1569	6:00 PM PST Monday, April 6, 2015	2015-04-07 01:00:00	Kenny Kramer	Mt Hood	New snowfall followed by potential sunshine Tuesday could make for rapidly increasing avalanche danger on Mt. Hood, so be aware of quickly changing surface snow instability.	Moderate	Moderate	Moderate
1568	6:00 PM PST Monday, April 6, 2015	2015-04-07 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Due to a fair amount of uncertainty with the weather forecast, a moderate hazard rating will be forecast above treeline, however watch for local areas that have received greater recent snowfall where a locally greater danger may exist.	Moderate	Low	Low
1567	6:00 PM PST Monday, April 6, 2015	2015-04-07 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Due to the showery weather pattern, a wide variation may exist in new snow amounts. The moderate hazard rating will be maintained near and above treeline across the Cascades for new storm snow problems, but watch for areas with greater new snow as having a potentially higher local danger.	Moderate	Moderate	Low
1566	6:00 PM PST Monday, April 6, 2015	2015-04-07 01:00:00	Kenny Kramer	Olympics	Watch for generally small avalanches involving new storm snow on a variety of aspects and mainly above treeline Tuesday.	Moderate	Low	Low
1565	6:00 PM PST Sunday, April 5, 2015	2015-04-06 01:00:00	Dennis D'Amico	Mt Hood	New snowfall followed by potential sunshine Monday could make for rapidly increasing avalanche danger Monday at Mt. Hood, so be aware of quickly changing surface snow instability.	Considerable	Considerable	Moderate
1564	6:00 PM PST Sunday, April 5, 2015	2015-04-06 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Due to a fair amount of uncertainty with the weather forecast, a moderate hazard rating will be forecast near and above treeline across the Cascades for new storm snow problems.	Moderate	Moderate	Low
1563	6:00 PM PST Sunday, April 5, 2015	2015-04-06 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Due to a fair amount of uncertainty with the weather forecast, a moderate hazard rating will be maintained near and above treeline across the Cascades for new storm snow problems.	Moderate	Moderate	Low
1562	6:00 PM PST Sunday, April 5, 2015	2015-04-06 01:00:00	Dennis D'Amico	Olympics	Watch for generally small avalanches involving new storm snow on a variety of aspects and mainly above treeline Monday.	Moderate	Low	Low
1559	6:00 PM PST Saturday, April 4, 2015	2015-04-05 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Generally good stability is expected Sunday, but evaluate lee slopes near and above treeline for local wind slab and be aware of small loose avalanches that could be problematic near terrain traps.	Moderate	Moderate	Low
1557	6:00 PM PST Friday, April 3, 2015	2015-04-04 01:00:00	Garth Ferber	Mt Hood	New snow should require careful snow and terrain evaluation at Mt Hood Saturday.	Moderate	Moderate	Low
1555	6:00 PM PST Friday, April 3, 2015	2015-04-04 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New snow should require careful snow and terrain evaluation west of the crest Saturday.	Moderate	Moderate	Low
1553	7:09 PM PST Thursday, April 2, 2015	2015-04-03 02:09:00	Garth Ferber	Mt Hood	Changing weather will require careful snow and terrain evaluation at Mt Hood by Friday afternoon.	Moderate	Moderate	Low
1550	7:09 PM PST Thursday, April 2, 2015	2015-04-03 02:09:00	Garth Ferber	Olympics	Changing weather may require careful snow and terrain evaluation mainly above treeline on the highest peaks of the Olympics Friday.	Moderate	Low	Low
1548	6:00 PM PST Thursday, April 2, 2015	2015-04-03 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Changing weather will require careful snow and terrain evaluation east of the crest Thursday afternoon.	Moderate	Low	Low
1545	6:20 PM PST Wednesday, April 1, 2015	2015-04-02 01:20:00	Kenny Kramer	Mt Hood	Sunshine and daytime warming may melt and weaken the recent storm snow, especially on solar aspects. Also, watch for weakening cornices and possible wind slabs near ridges.	Considerable	Moderate	Low
1542	6:20 PM PST Wednesday, April 1, 2015	2015-04-02 01:20:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Sunshine and daytime warming may melt and weaken the recent storm snow, especially on solar aspects. Also, watch for weakening cornices and possible wind slabs near ridges.	Moderate	Moderate	Low
1529	6:02 PM PST Tuesday, March 31, 2015	2015-04-01 01:02:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Don't be fooled on April 1st by the escalating avalanche danger with elevation. Watch for sensitive slab avalanches involving new snow on lee easterly slopes near and above treeline as well as loose wet avalanches on solar slopes during sunbreaks and daytime warming Wednesday.	Considerable	Considerable	Moderate
1527	6:02 PM PST Tuesday, March 31, 2015	2015-04-01 01:02:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Don't be fooled on April 1st and watch for shallow yet sensitive slab avalanches involving new snow on lee easterly slopes near and above treeline as well as loose wet avalanches on solar slopes during sunbreaks and daytime warming Wednesday. Moderate danger mainly applies closer to the Cascade crest and lower avalanche danger is expected further east.	Moderate	Moderate	Low
1525	6:02 PM PST Tuesday, March 31, 2015	2015-04-01 01:02:00	Dennis D'Amico	Olympics	Avalanche danger should be limited to the above treeline elevation band in the Olympics.	Moderate	Low	Low
1522	7:39 PM PST Monday, March 30, 2015	2015-03-31 02:39:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Moderate danger does not mean it's OK to let your guard down. Increasingly sensitive avalanche conditions involving generally shallow amounts of new snow are likely on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon. Intense showers may produce unstable graupel layers for future snow to fail on.	Moderate	Moderate	Low
1520	6:00 PM PST Monday, March 30, 2015	2015-03-31 01:00:00	Dennis D'Amico	Mt Hood	Moderate danger does not mean it's OK to let your guard down. Increasingly sensitive avalanche conditions involving generally shallow amounts of new snow are likely on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon. Intense showers may produce unstable graupel layers for future snow to fail on.	Moderate	Moderate	Low
1517	6:00 PM PST Monday, March 30, 2015	2015-03-31 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Moderate danger does not mean it's OK to let your guard down. Increasingly sensitive avalanche conditions involving generally shallow amounts of new snow are likely on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon. Intense showers may produce unstable graupel layers for future snow to fail on.	Moderate	Moderate	Low
1514	6:00 PM PST Sunday, March 29, 2015	2015-03-30 01:00:00	Garth Ferber	Mt Hood	Use normal caution and don't get a sunburn at Mt Hood on Monday.	Moderate	Moderate	Low
1511	6:00 PM PST Sunday, March 29, 2015	2015-03-30 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Quite a difference in avalanche problems should be seen along the west slopes on Monday with a greater avalanche danger at Mt Baker.	Considerable	Moderate	Low
1509	1:56 PM PST Sunday, March 29, 2015	2015-03-29 20:56:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A mix of winter and spring avalanche conditions is likely west of the crest mainly above treeline on Sunday especially at Mt Baker.	Considerable	Moderate	Low
1507	1:56 PM PST Sunday, March 29, 2015	2015-03-29 20:56:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A mix of winter and spring avalanche conditions is likely above treeline east of the crest on Sunday.	Moderate	Moderate	Low
1505	1:56 PM PST Sunday, March 29, 2015	2015-03-29 20:56:00	Garth Ferber	Olympics	A mix of winter and spring avalanche conditions is likely above treeline but limited mainly to the higher peaks of the Olympics on Sunday.	Moderate	Low	Low
1503	6:00 PM PST Saturday, March 28, 2015	2015-03-29 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A mix of winter and spring avalanche conditions is likely above treeline east of the crest on Sunday.	Moderate	Moderate	Low
1502	6:00 PM PST Saturday, March 28, 2015	2015-03-29 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A mix of winter and spring avalanche conditions is likely west of the crest mainly above treeline on Sunday.	Moderate	Moderate	Low
1500	9:01 AM PST Saturday, March 28, 2015	2015-03-28 16:01:00	Garth Ferber	Mt Hood	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1498	9:01 AM PST Saturday, March 28, 2015	2015-03-28 16:01:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1496	6:00 PM PST Friday, March 27, 2015	2015-03-28 01:00:00	Kenny Kramer	Mt Hood	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1558	6:00 PM PST Saturday, April 4, 2015	2015-04-05 01:00:00	Dennis D'Amico	Olympics	Generally good stability is expected Sunday, but evaluate lee slopes mainly above treeline for local wind slab and be aware of small loose avalanches that could be problematic near terrain traps.	Moderate	Low	Low
1556	6:00 PM PST Friday, April 3, 2015	2015-04-04 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	New snow should require careful snow and terrain evaluation at higher elevations east of the crest Saturday.	Moderate	Low	Low
1554	6:00 PM PST Friday, April 3, 2015	2015-04-04 01:00:00	Garth Ferber	Olympics	New snow should require careful snow and terrain evaluation Saturday mainly on the highest peaks of the Olympics.	Moderate	Low	Low
1552	7:09 PM PST Thursday, April 2, 2015	2015-04-03 02:09:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Changing weather will require careful snow and terrain evaluation east of the crest Friday afternoon.	Moderate	Low	Low
1551	7:09 PM PST Thursday, April 2, 2015	2015-04-03 02:09:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Changing weather will require careful snow and terrain evaluation west of the crest by Friday afternoon.	Moderate	Moderate	Low
1549	6:00 PM PST Thursday, April 2, 2015	2015-04-03 01:00:00	Garth Ferber	Mt Hood	Changing weather will require careful snow and terrain evaluation at Mt Hood by Thursday afternoon.	Moderate	Moderate	Low
1547	6:00 PM PST Thursday, April 2, 2015	2015-04-03 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Changing weather will require careful snow and terrain evaluation west of the crest by Thursday afternoon.	Moderate	Moderate	Low
1546	6:00 PM PST Thursday, April 2, 2015	2015-04-03 01:00:00	Garth Ferber	Olympics	Changing weather may require careful snow and terrain evaluation mainly above treeline on the highest peaks of the Olympics Thursday.	Moderate	Low	Low
1544	6:20 PM PST Wednesday, April 1, 2015	2015-04-02 01:20:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Sunshine and daytime warming may melt and weaken the recent storm snow, especially on solar aspects. Also, watch for weakening cornices and possible wind slabs near ridges.	Moderate	Moderate	Low
1541	6:20 PM PST Wednesday, April 1, 2015	2015-04-02 01:20:00	Kenny Kramer	Olympics	Avalanche danger should be limited to the above treeline elevation band in the Olympics.	Moderate	Low	Low
1528	6:02 PM PST Tuesday, March 31, 2015	2015-04-01 01:02:00	Dennis D'Amico	Mt Hood	Don't be fooled on April 1st by the escalating avalanche danger with elevation. Watch for sensitive slab avalanches involving new snow on lee easterly slopes near and above treeline as well as loose wet avalanches on solar slopes during sunbreaks and daytime warming Wednesday.	Considerable	Moderate	Low
1526	6:02 PM PST Tuesday, March 31, 2015	2015-04-01 01:02:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Don't be fooled on April 1st and watch for shallow yet sensitive slab avalanches involving new snow on lee easterly slopes near and above treeline as well as loose wet avalanches on solar slopes during sunbreaks and daytime warming Wednesday.	Moderate	Moderate	Low
1524	7:39 PM PST Monday, March 30, 2015	2015-03-31 02:39:00	Dennis D'Amico	Mt Hood	Moderate danger does not mean it's OK to let your guard down. Increasingly sensitive avalanche conditions involving generally shallow amounts of new snow are likely on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon. Intense showers may produce unstable graupel layers for future snow to fail on.	Moderate	Moderate	Low
1523	7:39 PM PST Monday, March 30, 2015	2015-03-31 02:39:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Moderate danger mainly applies closer to the Cascade crest and lower avalanche danger is expected further away from the Cascade crest Tuesday. Increasingly sensitive avalanche conditions involving shallow amounts of new snow are possible on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon.	Moderate	Moderate	Low
1521	7:39 PM PST Monday, March 30, 2015	2015-03-31 02:39:00	Dennis D'Amico	Olympics	Avalanche danger should be limited to the above treeline elevation band in the Olympics.	Moderate	Low	Low
1519	6:00 PM PST Monday, March 30, 2015	2015-03-31 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Moderate danger mainly applies closer to the Cascade crest and lower avalanche danger is expected further away from the Cascade crest Tuesday. Increasingly sensitive avalanche conditions involving shallow amounts of new snow are possible on lee slopes near and above treeline as well as loose wet avalanche concerns during sunbreaks and daytime warming Tuesday afternoon.	Moderate	Moderate	Low
1516	6:00 PM PST Monday, March 30, 2015	2015-03-31 01:00:00	Dennis D'Amico	Olympics	Avalanche danger should be limited to the above treeline elevation band in the Olympics.	Moderate	Low	Low
1515	6:00 PM PST Sunday, March 29, 2015	2015-03-30 01:00:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Quite a difference in avalanche problems should be seen along the west slopes on Monday with a greater avalanche danger at Mt Baker.	Moderate	Moderate	Low
1513	6:00 PM PST Sunday, March 29, 2015	2015-03-30 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Less recent snow and rain has given the snowpack east of the crest a chance to partly consolidate and mostly stabilize.	Moderate	Low	Low
1510	6:00 PM PST Sunday, March 29, 2015	2015-03-30 01:00:00	Garth Ferber	Olympics	Avalanche danger should be limited to the higher peaks of the Olympics on Monday.	Moderate	Low	Low
1508	1:56 PM PST Sunday, March 29, 2015	2015-03-29 20:56:00	Garth Ferber	Mt Hood	A mix of winter and spring avalanche conditions is likely mainly above treeline at Mt Hood on Sunday.	Moderate	Moderate	Low
1506	1:56 PM PST Sunday, March 29, 2015	2015-03-29 20:56:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	A mix of winter and spring avalanche conditions is likely west of the crest mainly above treeline on Sunday especially at Mt Baker.	Moderate	Moderate	Low
1504	6:00 PM PST Saturday, March 28, 2015	2015-03-29 01:00:00	Garth Ferber	Mt Hood	A mix of winter and spring avalanche conditions is likely mainly above treeline at Mt Hood on Sunday.	Moderate	Moderate	Low
1501	6:00 PM PST Saturday, March 28, 2015	2015-03-29 01:00:00	Garth Ferber	Olympics	A mix of winter and spring avalanche conditions is likely above treeline but limited mainly to the higher peaks of the Olympics on Sunday.	Moderate	Low	Low
1499	9:01 AM PST Saturday, March 28, 2015	2015-03-28 16:01:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1497	9:01 AM PST Saturday, March 28, 2015	2015-03-28 16:01:00	Garth Ferber	Olympics	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1495	6:00 PM PST Friday, March 27, 2015	2015-03-28 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1493	6:00 PM PST Friday, March 27, 2015	2015-03-28 01:00:00	Kenny Kramer	Olympics	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1491	6:00 PM PST Thursday, March 26, 2015	2015-03-27 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Moist to wet surface snow should make loose wet slides remain possible Friday, especially before cooler and cloudier weather arrives late Friday. Also, watch for recently formed soft cornices along ridges.	Moderate	Moderate	Low
1488	6:00 PM PST Thursday, March 26, 2015	2015-03-27 01:00:00	Kenny Kramer	Olympics	Moist to wet surface snow should gradually refreeze with light new snow accumulations expected by late Friday. Caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges.	Moderate	Low	Low
1486	6:00 PM PST Wednesday, March 25, 2015	2015-03-26 01:00:00	Dennis D'Amico	Mt Hood	Dangerous avalanche conditions are expected Thursday above treeline mainly due to loose wet avalanches that will have the ability to start in the surface layers and entrain snowfall received earlier this week. Stay conservative with your terrain selection Thursday.	Considerable	Moderate	Low
1484	6:00 PM PST Wednesday, March 25, 2015	2015-03-26 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions are expected Thursday near and above treeline mainly due to loose wet avalanches that will have the ability to start in the surface layers and entrain significant amounts of snow received earlier this week. Stay conservative with your terrain selection Thursday.	Considerable	Considerable	Moderate
1482	6:00 PM PST Tuesday, March 24, 2015	2015-03-25 01:00:00	Garth Ferber	Mt Hood	A big dose of warm front moisture will arrive in the Olympics and Cascades on Wednesday. This should cause a big increase in the avalanche danger on Wednesday including at Mt Hood.	Considerable	Considerable	Moderate
1479	6:00 PM PST Tuesday, March 24, 2015	2015-03-25 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A big dose of warm front moisture will arrive in the Olympics and Cascades on Wednesday. This should cause a big increase in the avalanche danger over the west slopes on Wednesday.	High	Considerable	Moderate
1477	6:50 AM PST Tuesday, March 24, 2015	2015-03-24 13:50:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	The cool snowy weather should bring a variety of changeable March snow and avalanche conditions especially to the south Cascades and Mt Hood.	Considerable	Considerable	Moderate
1475	6:50 AM PST Tuesday, March 24, 2015	2015-03-24 13:50:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The cool somewhat snowy weather should bring a variety of changeable March snow and avalanche conditions.	Moderate	Moderate	Low
1494	6:00 PM PST Friday, March 27, 2015	2015-03-28 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Use caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges. Watch for areas of wet snow at mid elevations, and during daytime warming.	Moderate	Moderate	Low
1492	6:00 PM PST Thursday, March 26, 2015	2015-03-27 01:00:00	Kenny Kramer	Mt Hood	Moist to wet surface snow should maintain loose wet snow avalanche potential Friday. Also, watch for recent cornice development along ridges.	Moderate	Moderate	Low
1489	6:00 PM PST Thursday, March 26, 2015	2015-03-27 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Moist to wet surface snow should gradually refreeze with light new snow accumulations expected by late Friday. Caution in higher elevations where possibly greater new snow may accumulate, especially lee slopes near ridges.	Moderate	Moderate	Low
1487	6:00 PM PST Wednesday, March 25, 2015	2015-03-26 01:00:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Dangerous avalanche conditions are expected Thursday near and above treeline mainly due to loose wet avalanches that will have the ability to start in the surface layers and entrain significant amounts of snow received earlier this week. Stay conservative with your terrain selection Thursday.	High	Considerable	Moderate
1485	6:00 PM PST Wednesday, March 25, 2015	2015-03-26 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Partly sunny skies in the north and mostly sunny skies in the south Thursday along with high freezing levels will maintain the threat of loose wet avalanches, especially on solar slopes near and above treeline that did not naturally avalanche Wednesday.	Considerable	Moderate	Low
1483	6:00 PM PST Wednesday, March 25, 2015	2015-03-26 01:00:00	Dennis D'Amico	Olympics	Partly sunny skies Thursday along with high freezing levels will maintain the threat of loose wet avalanches Thursday on slopes with enough snow to avalanche.	Moderate	Low	Low
1481	6:00 PM PST Tuesday, March 24, 2015	2015-03-25 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A big dose of warm front moisture will arrive in the Olympics and Cascades on Wednesday. This should cause a big increase in the avalanche danger on Wednesday including east of the crest.	Considerable	Moderate	Low
1478	6:00 PM PST Tuesday, March 24, 2015	2015-03-25 01:00:00	Garth Ferber	Olympics	A big dose of warm front moisture will arrive in the Olympics and Cascades on Wednesday. This should cause an increase in the avalanche danger on Wednesday in the Olympics mainly above treeline where there is significant snow.	Considerable	Moderate	Low
1476	6:50 AM PST Tuesday, March 24, 2015	2015-03-24 13:50:00	Garth Ferber	Mt Hood	Possible overnight stormy conditions Monday night at Mt Hood make avalanche problems more likely on Tuesday than in the Washington Cascades.	Considerable	Considerable	Moderate
1474	6:50 AM PST Tuesday, March 24, 2015	2015-03-24 13:50:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The cool snowy weather should bring a variety of changeable March snow and avalanche conditions especially to the south Cascades and Mt Hood.	Moderate	Moderate	Low
1473	6:50 AM PST Tuesday, March 24, 2015	2015-03-24 13:50:00	Garth Ferber	Olympics	Limited snow will limit the avalanche danger in most areas of the Olympics on Tuesday. But the cool somewhat snowy weather may bring a variety of changeable March snow and avalanche conditions above treeline.	Moderate	Moderate	Low
1472	6:00 PM PST Monday, March 23, 2015	2015-03-24 01:00:00	Garth Ferber	Mt Hood	Possible overnight stormy conditions Monday night at Mt Hood make avalanche problems more likely on Tuesday than in the Washington Cascades.	Considerable	Considerable	Moderate
1471	6:00 PM PST Monday, March 23, 2015	2015-03-24 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The cool somewhat snowy weather should bring a variety of changeable March snow and avalanche conditions.	Moderate	Moderate	Low
1470	6:00 PM PST Monday, March 23, 2015	2015-03-24 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The cool somewhat snowy weather should bring a variety of changeable March snow and avalanche conditions.	Moderate	Moderate	Low
1469	6:00 PM PST Monday, March 23, 2015	2015-03-24 01:00:00	Garth Ferber	Olympics	Limited snow will limit the avalanche danger in most areas of the Olympics on Tuesday. But the cool somewhat snowy weather may bring a variety of changeable March snow and avalanche conditions above treeline.	Moderate	Moderate	Low
1468	6:00 PM PST Sunday, March 22, 2015	2015-03-23 01:00:00	Kenny Kramer	Mt Hood	There may be some shallow storm and wind slab above treeline Monday. Any new snow that does fall will be susceptible to sun breaks later Monday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1467	6:00 PM PST Sunday, March 22, 2015	2015-03-23 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	There may be some shallow storm and wind slab above treeline Monday. Any new snow that does fall will be susceptible to sun breaks later Monday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1466	6:00 PM PST Sunday, March 22, 2015	2015-03-23 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	There may be some shallow storm and wind slab above treeline Monday. Any new snow that does fall will be susceptible to sun breaks later Monday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1465	6:00 PM PST Sunday, March 22, 2015	2015-03-23 01:00:00	Kenny Kramer	Olympics	There may be some shallow storm and wind slab above treeline Monday. Any new snow that does fall will be susceptible to sun breaks later Monday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1464	6:00 PM PST Saturday, March 21, 2015	2015-03-22 01:00:00	Kenny Kramer	Mt Hood	There may be some shallow storm and wind slab above treeline Sunday. Any new snow that does fall will be susceptible to sunbreaks later Sunday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1463	6:00 PM PST Saturday, March 21, 2015	2015-03-22 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	There may be some shallow wind slab above treeline Sunday. Any new snow that does fall will be susceptible to sunbreaks later Sunday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1462	6:00 PM PST Saturday, March 21, 2015	2015-03-22 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	There may be some shallow storm and wind slab above treeline Sunday. Any new snow that does fall will be susceptible to sunbreaks later Sunday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1461	6:00 PM PST Saturday, March 21, 2015	2015-03-22 01:00:00	Kenny Kramer	Olympics	There may be some shallow storm and wind slab above treeline Sunday. Any new snow that does fall will be susceptible to sunbreaks later Sunday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Moderate	Moderate	Low
1460	6:00 PM PST Friday, March 20, 2015	2015-03-21 01:00:00	Dennis D'Amico	Mt Hood	There may be some shallow storm and wind slab above treeline by Saturday morning. Any new snow that does fall will be susceptible to sunbreaks later Saturday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Low	Low	Low
1457	6:00 PM PST Friday, March 20, 2015	2015-03-21 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	A spring mix of avalanche problems will be possible Saturday with new storm and wind slab concerns near and above treeline, and loose wet possibilities on steeper solar aspects in the afternoon. There's a fair amount of uncertainty with the forecast Saturday, so be attuned to quickly changing snow conditions, especially if traveling above treeline.	Moderate	Moderate	Low
1454	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Loose wet avalanches and shallow new and older wind slabs are possible near and above treeline Friday.  Loose wet avalanches will mostly likely involve the new snowfall received Thursday and Thursday night above 6000 ft.	Moderate	Moderate	Low
1452	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Loose wet avalanches are unlikely but still possible in isolated terrain features, especially on steeper solar slopes above treeline that have not already released. Also watch for isolated pockets of shallow wind slab on lee slopes above treeline.	Low	Low	Low
1450	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm slabs and loose wet avalanches are possible near and above treeline Friday, and will mostly likely involve the new snowfall received Thursday and Thursday night above 5-6000 ft.	Moderate	Moderate	Low
1448	6:30 PM PST Wednesday, March 18, 2015	2015-03-19 01:30:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Watch for new wind or storm slab layers above treeline Thursday afternoon in the northwest Cascades. Watch for previous shallow wind slab and loose wet avalanches in all areas west of the crest.	Moderate	Moderate	Low
1446	6:30 PM PST Wednesday, March 18, 2015	2015-03-19 01:30:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for previous wind slab and loose wet avalanche conditions east of the crest on Thursday.	Moderate	Moderate	Low
1444	6:30 PM PST Wednesday, March 18, 2015	2015-03-19 01:30:00	Garth Ferber	Olympics	Watch for new wind or storm slab layers above treeline Thursday afternoon in the Olympics.	Considerable	Moderate	Low
1441	6:00 PM PST Tuesday, March 17, 2015	2015-03-18 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Winter returned briefly to the Cascades over the weekend, but the mid March sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche could be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1439	6:00 PM PST Tuesday, March 17, 2015	2015-03-18 01:00:00	Kenny Kramer	Olympics	Winter returned briefly to the Olympics over the weekend, but the mid March sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche could be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1437	6:00 PM PST Monday, March 16, 2015	2015-03-17 01:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	It's nearly spring and the sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche would be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1435	6:00 PM PST Monday, March 16, 2015	2015-03-17 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	It's nearly spring and the sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche would be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1433	10:46 AM PST Monday, March 16, 2015	2015-03-16 17:46:00	Kenny Kramer	Olympics	Winter has returned to the Olympics, but it's nearly spring and the sun's strength can rapidly make for locally dangerous hazards on steeper solar slopes where even a slow moving and shallow avalanche would be powerful and could force you into unintended terrain traps.	Moderate	Moderate	Low
1431	10:46 AM PST Monday, March 16, 2015	2015-03-16 17:46:00	Kenny Kramer	Mt Hood	It's nearly spring and the sun's strength and high water content of the new snow will make for a locally dangerous mix on steeper slopes above treeline where even a slow moving and shallow avalanche would be powerful and could force you into unintended terrain traps.	Moderate	Low	Low
1429	10:46 AM PST Monday, March 16, 2015	2015-03-16 17:46:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	It's nearly spring and the sun's strength and high water content of the new snow will make for a dangerous mix on steeper slopes where even a slow moving and initially shallow avalanche would be powerful and could force you into unintended terrain traps. Changes in the snow will likely be rapid, so think about the avalanche hazard above and below while planning your route Monday.	Considerable	Considerable	Low
1426	6:00 PM PST Saturday, March 14, 2015	2015-03-15 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	It's a tricky forecast but in general expect increasing avalanche danger with elevation. A mix of storm and loose wet avalanche problems are likely Sunday.	Considerable	Considerable	Moderate
1424	6:00 PM PST Saturday, March 14, 2015	2015-03-15 01:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume if significantly more snow accumulates in the Olympics.	\N	\N	\N
1422	6:00 PM PST Friday, March 13, 2015	2015-03-14 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Quite a change in the weather is expected on Saturday. You should mainly need to watch for loose wet snow avalanches but read the forecast discussion for details.	Considerable	Moderate	Low
1420	6:00 PM PST Friday, March 13, 2015	2015-03-14 01:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume if significantly more snow accumulates in the Olympics.	\N	\N	\N
1418	4:53 AM PST Friday, March 13, 2015	2015-03-13 11:53:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	East of the crest Friday watch for unlikely small wet loose avalanche conditions mainly on solar aspects.	Low	Low	Low
1180	6:00 PM PST Saturday, January 31, 2015	2015-02-01 02:00:00	Dennis D'Amico	Olympics	Shallow storm slabs are possible on lee northerly terrain near and above treeline Sunday.	Moderate	Moderate	Low
1110	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	Olympics	The avalanche danger should increase at Hurricane by Friday afternoon.	Considerable	Considerable	Considerable
1458	6:00 PM PST Friday, March 20, 2015	2015-03-21 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	A spring mix of avalanche problems will be possible Saturday with shallow new wind slab concerns near and above treeline and loose wet possibilities on steeper solar aspects in the afternoon.	Moderate	Moderate	Low
1455	6:00 PM PST Friday, March 20, 2015	2015-03-21 01:00:00	Dennis D'Amico	Olympics	There may be some shallow storm and wind slab above treeline by Saturday morning. Any new snow that does fall will be susceptible to sunbreaks later Saturday afternoon, so use extra caution on steeper solar slopes near and above treeline.	Low	Low	Low
1453	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	Mt Hood	Loose wet avalanches are unlikely but still possible in isolated terrain features, especially on steeper solar slopes above treeline that have not already released.	Low	Low	Low
1451	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Loose wet avalanches are unlikely but still possible in isolated terrain features, especially on steeper solar slopes above treeline that have not already released. Also watch for isolated pockets of shallow wind slab on lee slopes above treeline.	Moderate	Low	Low
1449	6:00 PM PST Thursday, March 19, 2015	2015-03-20 01:00:00	Dennis D'Amico	Olympics	Loose wet avalanches are unlikely but still possible, especially above treeline on slopes that have not already released. Also watch for isolated pockets of shallow wind slab on lee slopes above treeline.	Moderate	Low	Low
1447	6:30 PM PST Wednesday, March 18, 2015	2015-03-19 01:30:00	Garth Ferber	Mt Hood	March sun can rapidly create locally dangerous conditions on steeper solar slopes where even a shallow and slow moving avalanche could be powerful and could force you into unintended terrain.	Moderate	Low	Low
1445	6:30 PM PST Wednesday, March 18, 2015	2015-03-19 01:30:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for new wind or storm slab layers above treeline Thursday afternoon in the northwest Cascades. Watch for previous shallow wind slab and loose wet avalanches in all areas west of the crest.	Considerable	Moderate	Low
1443	6:00 PM PST Tuesday, March 17, 2015	2015-03-18 01:00:00	Kenny Kramer	Mt Hood	Winter returned briefly to the Cascades over the weekend, but the mid March sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche could be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Low	Low
1440	6:00 PM PST Tuesday, March 17, 2015	2015-03-18 01:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Winter returned briefly to the Cascades over the weekend, but the mid March sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche could be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1438	6:00 PM PST Monday, March 16, 2015	2015-03-17 01:00:00	Kenny Kramer	Mt Hood	It's nearly spring and the sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche would be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Low	Low
1436	6:00 PM PST Monday, March 16, 2015	2015-03-17 01:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	It's nearly spring and the sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche would be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Moderate
1434	6:00 PM PST Monday, March 16, 2015	2015-03-17 01:00:00	Kenny Kramer	Olympics	Winter has returned to the Olympics, if only briefly, but it's nearly spring and the sun's strength can rapidly create locally dangerous conditions on steeper solar slopes, where even a shallow and slow moving avalanche would be powerful and could force you into unintended terrain traps. Also, watch for weakening cornices along ridges during the warmer part of the day.	Moderate	Moderate	Low
1432	10:46 AM PST Monday, March 16, 2015	2015-03-16 17:46:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	It's nearly spring and the sun's strength and high water content of the new snow will make for a dangerous mix on steeper slopes near and above treeline where even a slow moving and shallow avalanche would be powerful and could force you into unintended terrain traps.	Considerable	Moderate	Low
1430	10:46 AM PST Monday, March 16, 2015	2015-03-16 17:46:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	It's nearly spring and the sun's strength and high water content of the new snow will make for a dangerous mix on steeper slopes where even a slow moving and initially shallow avalanche would be powerful and could force you into unintended terrain traps. Changes in the snow will likely be rapid, so think about the avalanche hazard above and below while planning your route Monday.	Considerable	Considerable	Considerable
1427	6:00 PM PST Saturday, March 14, 2015	2015-03-15 01:00:00	Dennis D'Amico	Mt Hood	A mix of storm and loose wet avalanche problems are possible Sunday above treeline.	Moderate	Low	Low
1425	6:00 PM PST Saturday, March 14, 2015	2015-03-15 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	It's a tricky forecast but in general expect increasing avalanche danger with elevation and remember the NWAC forecast applies to elevations up to the Cascade crest (~7000 to 8000 ft). A mix of storm and loose wet avalanche problems are likely Sunday.	Considerable	Moderate	Low
1423	6:00 PM PST Friday, March 13, 2015	2015-03-14 01:00:00	Garth Ferber	Mt Hood	Quite a change in the weather is expected on Saturday. You should mainly need to watch for loose wet snow avalanches at Mt Hood but read the forecast discussion for details.	Considerable	Moderate	Low
1421	6:00 PM PST Friday, March 13, 2015	2015-03-14 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Quite a change in the weather is expected on Saturday. You should mainly need to watch for loose wet snow avalanches but read the forecast discussion for details.	Considerable	Moderate	Low
1419	4:53 AM PST Friday, March 13, 2015	2015-03-13 11:53:00	Garth Ferber	Mt Hood	Watch for loose wet snow conditions on solar slopes mainly above treeline if you venture out at Mt Hood Friday.	Moderate	Low	Low
1417	4:53 AM PST Friday, March 13, 2015	2015-03-13 11:53:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for loose wet snow conditions mainly on the volcanoes above treeline Friday.	Moderate	Low	Low
1179	6:00 PM PST Friday, January 30, 2015	2015-01-31 02:00:00	Kenny Kramer	Mt Hood	A low danger is expected on Saturday. Watch for terrain hazards due to the low snowpack.	Low	Low	Low
1178	6:00 PM PST Friday, January 30, 2015	2015-01-31 02:00:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	There is still some uncertainty regarding potential persistent slab layers east of the crest, however, recent tests indicate overlying strong snow layers are limiting the potential for human trigger. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1176	6:00 PM PST Friday, January 30, 2015	2015-01-31 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The avalanche danger will be listed as low at all levels due mainly to strong surface crusts or low snow cover.	Low	Low	Low
1174	6:00 PM PST Thursday, January 29, 2015	2015-01-30 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	There is still some uncertainty regarding potential persistent slab east of the crest. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1171	6:00 PM PST Thursday, January 29, 2015	2015-01-30 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	There is still some uncertainty regarding potential persistent slab east of the crest. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1169	6:00 PM PST Thursday, January 29, 2015	2015-01-30 02:00:00	Garth Ferber	Olympics	The avalanche danger will be listed as low at all levels in the Olympics zone due to low snow cover.	Low	Low	Low
1166	4:51 PM PST Wednesday, January 28, 2015	2015-01-29 00:51:00	Garth Ferber	Mt Hood	A low danger is expected on Thursday. Watch for terrain hazards due to the low snowpack.	Low	Low	Low
1162	4:51 PM PST Wednesday, January 28, 2015	2015-01-29 00:51:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A low danger is expected on Thursday. Watch for terrain hazards due to the low snowpack.	Low	Low	Low
1153	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	Mt Hood	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1151	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	There is a high amount of uncertainty to how reactive persistent weak layers in the upper snowpack are to human triggering. Exercise caution on Wednesday and make conservative terrain choices. Loose wet avalanches are still the most likely avalanche problem to encounter, but even that is of low likelihood.	Low	Low	Low
1148	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	Olympics	The avalanche danger is Low for all elevation bands due to low snow cover. Small loose wet avalanches may be possible in isolated steeper terrain where enough snow is present near and above treeline.	Low	Low	Low
1146	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	Be aware of slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches. The avalanche danger will be lower at lower elevations and away from the Cascade crest due to low snow conditions.	Low	Low	Low
1144	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	West Slopes South - South of I-90 to Columbia River	Be aware of slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1142	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	Olympics	The avalanche danger is Low for all elevation bands due to low snow cover. Small loose wet avalanches may be possible in isolated steeper terrain where enough snow is present near and above treeline.	Low	Low	Low
1140	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches. The avalanche danger will be lower at lower elevations and away from the Cascade crest due to low snow conditions.	Moderate	Moderate	Low
1137	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Low
1135	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	Olympics	The avalanche danger is Low for all elevation bands due to low snow. Small loose wet avalanches may be possible in isolated steeper terrain where enough snow is present near and above treeline.	Low	Low	Low
1133	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches. The avalanche danger will be lower at lower elevations and away from the Cascade crest due to low snow conditions.	Moderate	Moderate	Low
1131	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	There is a high amount of uncertainty whether or not the PWL in the upper snowpack is still reactive. Exercise caution on Sunday and make conservative terrain choices. Loose wet avalanches are the most likely avalanche problem to encounter Sunday.	Considerable	Considerable	Considerable
1129	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Moderate
1127	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	A variety of avalanche problems are expected east of the crest on Saturday so read the forecast carefully.	Considerable	Considerable	Moderate
1125	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	Loose wet avalanches and possible wet slab avalanches should be the main avalanche problems west of the crest on Saturday.	Considerable	Considerable	Considerable
1122	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A variety of avalanche problems are expected east of the crest on Saturday so read the forecast carefully.	Considerable	Considerable	Considerable
1119	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	Olympics	Loose wet avalanches and possible wet slab avalanches in the above tree line should be the main avalanche problems on Saturday.	Considerable	Moderate	Moderate
1117	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	The avalanche danger should greatly increase west of the crest starting Friday afternoon.	Considerable	Considerable	Considerable
1113	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger should greatly increase east of the crest starting Friday afternoon.	High	High	Considerable
1177	6:00 PM PST Friday, January 30, 2015	2015-01-31 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	There is still some uncertainty regarding potential persistent slab layers east of the crest, however, recent tests indicate overlying strong snow layers are limiting the potential for human trigger. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1175	6:00 PM PST Friday, January 30, 2015	2015-01-31 02:00:00	Kenny Kramer	Olympics	The avalanche danger will be listed as low at all levels in the Olympics zone due to low snow cover.	Low	Low	Low
1173	6:00 PM PST Thursday, January 29, 2015	2015-01-30 02:00:00	Garth Ferber	Mt Hood	A low danger is expected on Thursday. Watch for terrain hazards due to the low snowpack.	Low	Low	Low
1170	6:00 PM PST Thursday, January 29, 2015	2015-01-30 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A low danger is expected on Thursday. Watch for terrain hazards due to the low snowpack.	Low	Low	Low
1168	4:51 PM PST Wednesday, January 28, 2015	2015-01-29 00:51:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	There is still some uncertainty regarding potential persistent slab east of the crest. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1164	4:51 PM PST Wednesday, January 28, 2015	2015-01-29 00:51:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	There is still some uncertainty regarding potential persistent slab east of the crest. Snow pits may help determine if this layer is still present or reactive in your area.	Low	Low	Low
1161	4:51 PM PST Wednesday, January 28, 2015	2015-01-29 00:51:00	Garth Ferber	Olympics	The avalanche danger will be listed as low at all levels in the Olympics zone due to low snow cover.	Low	Low	Low
1152	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	Be aware of slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches. The avalanche danger will be lower at lower elevations and away from the Cascade crest due to low snow conditions.	Low	Low	Low
1150	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	West Slopes South - South of I-90 to Columbia River	Be aware of slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1149	6:15 PM PST Tuesday, January 27, 2015	2015-01-28 02:15:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Be aware of a slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1147	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	Mt Hood	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1145	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	There is a high amount of uncertainty to how reactive persistent weak layers in the upper snowpack are to human triggering. Exercise caution on Tuesday and make conservative terrain choices. Loose wet avalanches are still the most likely avalanche problem to encounter, but even that is of low likelihood.	Low	Low	Low
1143	6:59 PM PST Monday, January 26, 2015	2015-01-27 02:59:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Be aware of a slightly greater avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Low	Low	Low
1141	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	Mt Hood	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Low
1138	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	There is a high amount of uncertainty to how reactive persistent weak layers in the upper snowpack are to human triggering. Exercise caution on Monday and make conservative terrain choices. Loose wet avalanches are the most likely avalanche problem to encounter.	Moderate	Moderate	Moderate
1136	6:00 PM PST Sunday, January 25, 2015	2015-01-26 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Moderate
1134	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	Mt Hood	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Moderate
1132	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.  The avalanche danger will be lower away from the Cascade crest due to low snow conditions.	Moderate	Moderate	Moderate
1130	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Moderate	Moderate
1128	6:00 PM PST Saturday, January 24, 2015	2015-01-25 02:00:00	Dennis D'Amico	Olympics	Above treeline, be aware of heightened avalanche danger in steeper terrain and near terrain traps relating to wet avalanches.	Moderate	Low	Low
1126	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	A variety of avalanche problems are expected east of the crest on Saturday so read the forecast carefully.	Considerable	Considerable	Considerable
1124	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	Mt Hood	The avalanche danger should decrease sooner at Mt Hood on Saturday than in the Washington Cascades. But be sure to watch for loose wet avalanche conditions.	Moderate	Moderate	Moderate
1120	6:00 PM PST Friday, January 23, 2015	2015-01-24 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Loose wet avalanches and possible wet slab avalanches should be the main avalanche problems west of the crest on Saturday.	Considerable	Considerable	Considerable
1118	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	The avalanche danger should greatly increase east of the crest starting Friday afternoon.	Considerable	Considerable	Moderate
1115	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	Mt Hood	The avalanche danger should increase less at Mt Hood on Friday than in the Washington Cascades. But be sure to watch for loose wet or wet slab conditions.	Moderate	Moderate	Moderate
1111	6:00 PM PST Thursday, January 22, 2015	2015-01-23 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The avalanche danger should greatly increase west of the crest starting Friday afternoon.	High	High	Considerable
1109	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	Stevens Pass	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Moderate	Moderate	Moderate
1107	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	Mt Hood	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Moderate	Moderate	Low
1104	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Moderate	Moderate	Moderate
1101	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Evaluate snow and terrain carefully Wednesday especially closer to the Cascade crest. Watch for isolated wind slabs sensitive to human triggering on lee slopes near and above treeline and sun affects on steeper solar slopes.	Moderate	Moderate	Moderate
1108	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Moderate	Moderate	Moderate
1105	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Considerable	Considerable	Moderate
1102	6:00 PM PST Wednesday, January 21, 2015	2015-01-22 02:00:00	Garth Ferber	Olympics	The weather should have limited effects on snow conditions on Thursday. Mainly watch for lingering areas of firmer wind slab on previous lee slopes.	Moderate	Low	Low
1100	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	Mt Hood	If travelling into the near and above treeline elevation bands Wednesday, watch for lingering wind slab on lee aspects and loose wet avalanches on solar aspects.	Moderate	Moderate	Low
1099	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for potentially dangerous wind slabs sensitive to human triggering on lee aspects especially near and above treeline and sun affects on steeper solar slopes Wednesday.	Considerable	Considerable	Moderate
1098	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for locally sensitive wind slabs on lee slopes near and above treeline and sun affects on steeper solar slopes Wednesday afternoon.	Moderate	Moderate	Moderate
1097	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	Stevens Pass	Evaluate snow and terrain carefully Wednesday in the Stevens Pass area. Watch for isolated wind slabs sensitive to human triggering on lee slopes near and above treeline and sun affects on steeper solar slopes.	Moderate	Moderate	Moderate
1096	5:49 PM PST Tuesday, January 20, 2015	2015-01-21 01:49:00	Dennis D'Amico	Olympics	If travelling into the above treeline elevation band Wednesday, watch for lingering wind slab on lee aspects and loose wet avalanches on solar aspects.	Moderate	Low	Low
1095	6:40 PM PST Monday, January 19, 2015	2015-01-20 02:40:00	Dennis D'Amico	Stevens Pass	Watch for wind slabs sensitive to human triggering on lee slopes near and above treeline and sun affects on steeper solar slopes Tuesday afternoon.	Considerable	Considerable	Moderate
1094	6:40 PM PST Monday, January 19, 2015	2015-01-20 02:40:00	Dennis D'Amico	Mt Hood	Watch for locally sensitive wind slabs on lee slopes near and above treeline and sun affects on steeper solar slopes Tuesday afternoon.	Moderate	Moderate	Moderate
1093	6:40 PM PST Monday, January 19, 2015	2015-01-20 02:40:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for potentially dangerous storm and wind slabs sensitive to human triggering on lee slopes especially near and above treeline on Tuesday. The south-east Cascades and central-east Cascades away from the crest will likely have a lower avalanche danger.	Considerable	Considerable	Moderate
1092	6:40 PM PST Monday, January 19, 2015	2015-01-20 02:40:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for locally sensitive wind slabs on lee slopes near and above treeline and sun affects on steeper solar slopes Tuesday afternoon.	Moderate	Moderate	Moderate
1091	6:40 PM PST Monday, January 19, 2015	2015-01-20 02:40:00	Dennis D'Amico	Olympics	If travelling into the above treeline elevation band Tuesday, watch for potential wind slab on lee aspects and loose wet avalanches on solar aspects.	Moderate	Low	Low
1090	6:00 PM PST Sunday, January 18, 2015	2015-01-19 02:00:00	Garth Ferber	Mt Hood	The avalanche danger at Mt Hood should gradually decrease on Monday. Watch for lingering wind and storm slab especially above treeline.	Considerable	Moderate	Moderate
1089	6:00 PM PST Sunday, January 18, 2015	2015-01-19 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger east of the crest should gradually decrease on Monday. Watch for lingering wind and storm slab especially above treeline.	Considerable	Moderate	Moderate
1087	6:00 PM PST Sunday, January 18, 2015	2015-01-19 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The avalanche danger west of the crest should gradually decrease on Monday. Watch for lingering wind and storm slab especially above treeline.	Considerable	Considerable	Moderate
1086	6:00 PM PST Sunday, January 18, 2015	2015-01-19 02:00:00	Garth Ferber	Olympics	The avalanche danger should gradually decrease in the Olympics on Monday. Watch for lingering wind and storm slab especially above treeline.	Considerable	Moderate	Moderate
1085	5:00 AM PST Sunday, January 18, 2015	2015-01-18 13:00:00	Garth Ferber	Stevens Pass	Sunday should be fairly stormy day west of the crest. New storm and wind slab layers are likely.	High	High	Considerable
1084	5:00 AM PST Sunday, January 18, 2015	2015-01-18 13:00:00	Garth Ferber	Mt Hood	Sunday should be fairly stormy day at Mt Hood. New storm and wind slab layers are likely.	Considerable	Considerable	Considerable
1083	5:00 AM PST Sunday, January 18, 2015	2015-01-18 13:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Sunday should be fairly stormy day at higher elevations east of the crest. New storm and wind slab layers are likely at higher elevations east of the crest.	Considerable	Considerable	Moderate
1082	5:00 AM PST Sunday, January 18, 2015	2015-01-18 13:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Sunday should be fairly stormy day west of the crest. New storm and wind slab layers are likely.	Considerable	Considerable	Considerable
1081	5:00 AM PST Sunday, January 18, 2015	2015-01-18 13:00:00	Garth Ferber	Olympics	Sunday should be fairly stormy day at Hurricane. New storm and wind slab layers are likely.	Considerable	Considerable	Moderate
1080	6:00 PM PST Saturday, January 17, 2015	2015-01-18 02:00:00	Garth Ferber	Mt Hood	Sunday should be fairly stormy day at Mt Hood. New storm and wind slab layers are likely.	Considerable	Considerable	Moderate
1079	6:00 PM PST Saturday, January 17, 2015	2015-01-18 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Sunday should be fairly stormy day at higher elevations east of the crest. New storm and wind slab layers are likely at higher elevations east of the crest.	Considerable	Moderate	Moderate
1078	6:00 PM PST Saturday, January 17, 2015	2015-01-18 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Sunday should be fairly stormy day west of the crest. New storm and wind slab layers are likely.	Considerable	Considerable	Moderate
1077	6:00 PM PST Saturday, January 17, 2015	2015-01-18 02:00:00	Garth Ferber	Olympics	Sunday should be fairly stormy day at Hurricane. New storm and wind slab layers are likely.	Considerable	Moderate	Moderate
1076	6:12 PM PST Friday, January 16, 2015	2015-01-17 02:12:00	Kenny Kramer	Mt Hood	Watch for warming and rain affecting recent storm snow, mainly where local deposits are greatest, such as lee slopes below ridges at higher elevations. Avoid travelling on terrain connected to larger open slopes above as some slides starting at higher elevations may run far and fast on underlying crust surfaces.	Considerable	Considerable	Moderate
1074	6:12 PM PST Friday, January 16, 2015	2015-01-17 02:12:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Watch for warming and rain affecting recent storm snow, mainly where local deposits are greatest, such as lee slopes below ridges at higher elevations. Avoid travelling on terrain connected to larger open slopes above as some slides starting at higher elevations may run far and fast on underlying crust surfaces.	Considerable	Considerable	Moderate
1072	6:33 AM PST Friday, January 16, 2015	2015-01-16 14:33:00	Kenny Kramer	Mt Hood	New storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface, mainly where old crust layers where smooth. Watch for unstable slab layers and avoid steep lee slopes that may have received wind transported recent snow, especially steep NW thru E facing slopes.	Considerable	Considerable	Moderate
1069	6:33 AM PST Friday, January 16, 2015	2015-01-16 14:33:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	New storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface, especially near and above treeline where smooth. Watch for unstable slab layers and avoid steep lee slopes that may have received wind transported recent snow, especially steep NW thru NE facing slopes.	Considerable	Considerable	Moderate
1067	6:00 PM PST Wednesday, January 14, 2015	2015-01-15 02:00:00	Dennis D'Amico	Mt Hood	New shallow storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface Thursday afternoon in the near and above treeline elevation bands.	Moderate	Moderate	Low
1065	6:00 PM PST Wednesday, January 14, 2015	2015-01-15 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	New shallow storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface Thursday afternoon in the above treeline elevation band.	Moderate	Low	Low
1063	6:00 PM PST Wednesday, January 14, 2015	2015-01-15 02:00:00	Dennis D'Amico	Olympics	New shallow storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface Thursday afternoon in the near and above treeline elevation bands.	Moderate	Moderate	Low
1061	6:00 PM PST Tuesday, January 13, 2015	2015-01-14 02:00:00	Garth Ferber	Mt Hood	The avalanche danger is expected to be low Wednesday at Mt Hood. Watch for non-avalanche terrain hazards due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1058	6:00 PM PST Tuesday, January 13, 2015	2015-01-14 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The avalanche danger is expected to be low Wednesday west of the crest. Watch for non-avalanche terrain hazards due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1056	6:00 PM PST Monday, January 12, 2015	2015-01-13 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	The avalanche danger is expected to be low. Watch for non-avalanche terrain hazards that may be present due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1053	6:00 PM PST Monday, January 12, 2015	2015-01-13 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger is expected to be low. Watch for non-avalanche terrain hazards that may be present due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1051	6:00 PM PST Monday, January 12, 2015	2015-01-13 02:00:00	Garth Ferber	Olympics	The avalanche danger is expected to be low. Watch for non-avalanche terrain hazards that may be present due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1049	6:00 PM PST Sunday, January 11, 2015	2015-01-12 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	The avalanche danger is low, however be aware of the persistent slab problem in this zone despite the very low likelihood for human triggering. Non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1047	6:00 PM PST Sunday, January 11, 2015	2015-01-12 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1045	6:00 PM PST Saturday, January 10, 2015	2015-01-11 02:00:00	Kenny Kramer	Mt Hood	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1043	6:00 PM PST Saturday, January 10, 2015	2015-01-11 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1041	6:00 PM PST Saturday, January 10, 2015	2015-01-11 02:00:00	Kenny Kramer	Olympics	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1039	6:00 PM PST Friday, January 9, 2015	2015-01-10 02:00:00	Dennis D'Amico	Mt Hood	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1037	6:00 PM PST Friday, January 9, 2015	2015-01-10 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1031	5:40 PM PST Thursday, January 8, 2015	2015-01-09 01:40:00	Dennis D'Amico	Mt Hood	The avalanche danger is low. Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches; small wet loose slides could be problematic in isolated areas.	Low	Low	Low
1029	5:40 PM PST Thursday, January 8, 2015	2015-01-09 01:40:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger is low. Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches; small wet loose slides could be problematic in isolated areas.	Low	Low	Low
1027	6:00 PM PST Wednesday, January 7, 2015	2015-01-08 02:00:00	Garth Ferber	Mt Hood	Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches. Smaller loose wet avalanches usually precede large loose wet avalanches.	Low	Low	Low
1024	6:00 PM PST Wednesday, January 7, 2015	2015-01-08 02:00:00	Garth Ferber	Olympics	Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches. Smaller loose wet avalanches usually precede large loose wet avalanches.	Low	Low	Low
1075	6:12 PM PST Friday, January 16, 2015	2015-01-17 02:12:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Warming and rain affecting any recent storm and wind slab, mainly on lee aspects, especially if overlying a surface hoar layer present in many areas. Watch for unstable slab layers and avoid steep lee slopes that may have received wind transported recent snow, especially steep NW thru NE facing slopes.	Considerable	Moderate	Moderate
1073	6:12 PM PST Friday, January 16, 2015	2015-01-17 02:12:00	Kenny Kramer	Olympics	Watch for warming and rain affecting recent storm snow, mainly where local deposits are greatest, such as lee slopes below ridges at higher elevations.	Moderate	Moderate	Moderate
1070	6:33 AM PST Friday, January 16, 2015	2015-01-16 14:33:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	New storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface, especially if overlying a surface hoar layer present in many areas. Watch for unstable slab layers and avoid steep lee slopes that may have received wind transported recent snow, especially steep NW thru NE facing slopes.	Moderate	Moderate	Moderate
1068	6:33 AM PST Friday, January 16, 2015	2015-01-16 14:33:00	Kenny Kramer	Olympics	New storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface, especially near and above treeline. Watch for unstable slab layers and avoid steep lee slopes that may have received wind transported recent snow, especially steep NW thru NE facing slopes.	Considerable	Moderate	Moderate
1066	6:00 PM PST Wednesday, January 14, 2015	2015-01-15 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	New shallow storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface Thursday afternoon in the above treeline elevation band.	Moderate	Low	Low
1064	6:00 PM PST Wednesday, January 14, 2015	2015-01-15 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	New shallow storm and wind slab mainly on lee aspects may bond poorly to the existing snow surface Thursday afternoon in the near and above treeline elevation bands.	Moderate	Moderate	Low
1062	6:00 PM PST Tuesday, January 13, 2015	2015-01-14 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	The avalanche danger is expected to be low Wednesday east of the crest. Watch for non-avalanche terrain hazards due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1059	6:00 PM PST Tuesday, January 13, 2015	2015-01-14 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger is expected to be low Wednesday east of the crest. Watch for non-avalanche terrain hazards due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1057	6:00 PM PST Tuesday, January 13, 2015	2015-01-14 02:00:00	Garth Ferber	Olympics	The avalanche danger is expected to be low Wednesday in the Olympics. Watch for non-avalanche terrain hazards due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1055	6:00 PM PST Monday, January 12, 2015	2015-01-13 02:00:00	Garth Ferber	Mt Hood	The avalanche danger is expected to be low. Watch for non-avalanche terrain hazards that may be present due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1052	6:00 PM PST Monday, January 12, 2015	2015-01-13 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The avalanche danger is expected to be low. Watch for non-avalanche terrain hazards that may be present due to the thin snowpack. Be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1050	6:00 PM PST Sunday, January 11, 2015	2015-01-12 02:00:00	Kenny Kramer	Mt Hood	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1048	6:00 PM PST Sunday, January 11, 2015	2015-01-12 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1046	6:00 PM PST Sunday, January 11, 2015	2015-01-12 02:00:00	Kenny Kramer	Olympics	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1044	6:00 PM PST Saturday, January 10, 2015	2015-01-11 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	The avalanche danger is low, however be aware of the persistent slab problem in this zone despite the very low likelihood for human triggering. Non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1042	6:00 PM PST Saturday, January 10, 2015	2015-01-11 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1040	6:00 PM PST Friday, January 9, 2015	2015-01-10 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	The avalanche danger is low, however be aware of the persistent slab problem in this zone despite the very low likelihood for human triggering. Non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1038	6:00 PM PST Friday, January 9, 2015	2015-01-10 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1036	6:00 PM PST Friday, January 9, 2015	2015-01-10 02:00:00	Dennis D'Amico	Olympics	The avalanche danger is low. However, non-avalanche terrain hazards are present due to the thin snowpack. Also, be prepared to self-arrest if traversing steep and icy slopes.	Low	Low	Low
1030	5:40 PM PST Thursday, January 8, 2015	2015-01-09 01:40:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches; small wet loose slides could be problematic in isolated areas. Read the Snowpack Discussion and Detailed Forecast if traveling in the Mission Ridge Area.	Low	Low	Low
1028	5:40 PM PST Thursday, January 8, 2015	2015-01-09 01:40:00	Dennis D'Amico	Olympics	The avalanche danger is low. Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches; small wet loose slides could be problematic in isolated areas.	Low	Low	Low
1026	6:00 PM PST Wednesday, January 7, 2015	2015-01-08 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches. Smaller loose wet avalanches usually precede large loose wet avalanches.	Moderate	Low	Low
1025	6:00 PM PST Wednesday, January 7, 2015	2015-01-08 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Avoid steep sun exposed slopes if snow becomes wet in more than the top few inches. Smaller loose wet avalanches usually precede large loose wet avalanches.	Low	Low	Low
1023	12:12 PM PST Wednesday, January 7, 2015	2015-01-07 20:12:00	Garth Ferber	Mt Hood	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1021	12:12 PM PST Wednesday, January 7, 2015	2015-01-07 20:12:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1019	6:00 PM PST Tuesday, January 6, 2015	2015-01-07 02:00:00	Kenny Kramer	Mt Hood	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1017	6:00 PM PST Tuesday, January 6, 2015	2015-01-07 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1015	1:28 PM PST Tuesday, January 6, 2015	2015-01-06 21:28:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Areas of wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Moderate	Moderate	Moderate
1013	1:28 PM PST Tuesday, January 6, 2015	2015-01-06 21:28:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Areas of wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Moderate	Moderate	Moderate
1010	5:35 PM PST Sunday, January 4, 2015	2015-01-05 01:35:00	Dennis D'Amico	Mt Hood	Dangerous avalanche conditions are expected Sunday night and early Monday. The avalanche danger should lower during the day as rainfall comes to an end.	Considerable	Considerable	Moderate
1008	5:35 PM PST Sunday, January 4, 2015	2015-01-05 01:35:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Very dangerous avalanche conditions are expected Sunday night and Monday and travel in avalanche terrain is not recommended.	High	High	High
1006	5:52 PM PST Saturday, January 3, 2015	2015-01-04 01:52:00	Dennis D'Amico	Mt Hood	The avalanche danger will increase sharply by late Sunday afternoon and evening with human triggered slides becoming likely. Choose a conservative travel plan and make sure your plan allows for a safe exit if conditions deteriorate quicker than expected.	Considerable	Considerable	Considerable
1004	5:52 PM PST Saturday, January 3, 2015	2015-01-04 01:52:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger will increase sharply by late Sunday afternoon and evening with human triggered slides becoming likely. Choose a conservative travel plan and make sure your plan allows for a safe exit if conditions deteriorate quicker than expected.	Considerable	Considerable	Considerable
1002	6:00 PM PST Friday, January 2, 2015	2015-01-03 02:00:00	Garth Ferber	Mt Hood	Watch mainly for lingering local wind slab from early in the week.	Moderate	Moderate	Moderate
1000	6:00 PM PST Friday, January 2, 2015	2015-01-03 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch mainly for lingering local wind slab from early in the week.	Moderate	Moderate	Moderate
998	6:00 PM PST Thursday, January 1, 2015	2015-01-02 02:00:00	Garth Ferber	Mt Hood	Watch for lingering wind slab from early in the week where the northeast winds redistributed snow mainly near ridges.	Moderate	Moderate	Moderate
996	6:00 PM PST Thursday, January 1, 2015	2015-01-02 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Carefully evaluate steep slopes still showing signs of firmer wind transported snow from early this week. Snowfall should be light by the end of the daylight hours on Friday and not cause a great change in conditions. But use more caution if snowfall is greater than expected.	Moderate	Moderate	Moderate
994	6:00 PM PST Wednesday, December 31, 2014	2015-01-01 02:00:00	Kenny Kramer	Mt Hood	Recent N-NE winds have created some wind slab on a variety of mainly southerly aspects, especially near ridges, so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible! Watch for wet surface snow conditions on sun exposed slopes during the warmest part of the day	Moderate	Moderate	Moderate
992	6:00 PM PST Wednesday, December 31, 2014	2015-01-01 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Recent N-NE winds have created some wind slab on a variety of mainly southerly aspects, especially near ridges, so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible! Watch for wet surface snow conditions on sun exposed slopes during the warmest part of the day	Moderate	Moderate	Moderate
988	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	Mt Hood	As the weekend storm slabs become less of a problem, older wind slab on easterly aspects and more recent wind slab on south and westerly aspects will require travelers to evaluate snow and terrain carefully and identify features of concern.	Considerable	Moderate	Moderate
985	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	West Slopes Central - Skagit River to South of I-90	As the weekend storm slabs become less of a problem, older wind slab on easterly aspects and more recent wind slab on south and westerly aspects will require travelers to evaluate snow and terrain carefully and identify features of concern.	Moderate	Moderate	Moderate
1415	6:00 PM PST Thursday, March 12, 2015	2015-03-13 01:00:00	Garth Ferber	Mt Hood	Watch for loose wet snow conditions on solar slopes mainly above treeline if you venture out at Mt Hood Friday.	Moderate	Low	Low
1413	6:00 PM PST Thursday, March 12, 2015	2015-03-13 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for loose wet snow conditions mainly on the volcanoes above treeline Friday.	Moderate	Low	Low
1410	6:05 PM PST Wednesday, March 11, 2015	2015-03-12 01:05:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Isolated loose wet snow avalanches should be possible on solar aspects above treeline, especially in the Mt Baker area where more recent snow is likely.	Moderate	Low	Low
1408	6:05 PM PST Wednesday, March 11, 2015	2015-03-12 01:05:00	Kenny Kramer	Olympics	Avalanche forecasts will resume when and if significantly more snow accumulates in the Olympics.	\N	\N	\N
1406	6:00 PM PST Tuesday, March 10, 2015	2015-03-11 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow storm slabs are possible near and above treeline Wednesday especially on lee easterly aspects.	Low	Low	Low
1404	6:00 PM PST Tuesday, March 10, 2015	2015-03-11 01:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume when and if significantly more snow accumulates in the Olympics.	\N	\N	\N
1022	12:12 PM PST Wednesday, January 7, 2015	2015-01-07 20:12:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Moderate	Low	Low
1020	12:12 PM PST Wednesday, January 7, 2015	2015-01-07 20:12:00	Garth Ferber	Olympics	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1018	6:00 PM PST Tuesday, January 6, 2015	2015-01-07 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Moderate
1016	6:00 PM PST Tuesday, January 6, 2015	2015-01-07 02:00:00	Kenny Kramer	Olympics	Triggered avalanches are unlikely, but areas of shallow wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Low	Low	Low
1014	1:28 PM PST Tuesday, January 6, 2015	2015-01-06 21:28:00	Kenny Kramer	Mt Hood	Areas of wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Moderate	Moderate	Moderate
1011	1:28 PM PST Tuesday, January 6, 2015	2015-01-06 21:28:00	Kenny Kramer	Olympics	Areas of wet snow are expected, especially on steeper southerly facing slopes exposed to direct sunshine.	Moderate	Moderate	Moderate
1009	5:35 PM PST Sunday, January 4, 2015	2015-01-05 01:35:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected Sunday night and Monday and travel in avalanche terrain near and above treeline is not recommended.	High	High	Considerable
1007	5:35 PM PST Sunday, January 4, 2015	2015-01-05 01:35:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions are expected Sunday night and Monday and travel in avalanche terrain near and above treeline is not recommended.	High	High	Considerable
1005	5:52 PM PST Saturday, January 3, 2015	2015-01-04 01:52:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger will increase later Sunday afternoon and evening with human triggered slides becoming likely in the alpine. New loading will test persistent weak layers along the east slopes, especially on wind loaded aspects. Choose your terrain conservatively as dangerous avalanche conditions should develop.	Considerable	Considerable	Moderate
1003	5:52 PM PST Saturday, January 3, 2015	2015-01-04 01:52:00	Dennis D'Amico	Olympics	The avalanche danger will increase sharply Sunday with human triggered slides becoming likely. Choose a conservative travel plan and make sure your plan allows for a safe exit if conditions deteriorate quicker than expected.	Considerable	Considerable	Considerable
1001	6:00 PM PST Friday, January 2, 2015	2015-01-03 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Persistent slab layers are difficult to predict. Avoid avalanche terrain east of the crest unless you are sure there are no persistent slab layers present.	Moderate	Moderate	Moderate
999	6:00 PM PST Friday, January 2, 2015	2015-01-03 02:00:00	Garth Ferber	Olympics	Watch mainly for lingering local wind slab from early in the week.	Moderate	Moderate	Low
997	6:00 PM PST Thursday, January 1, 2015	2015-01-02 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Persistent slab layers are the most difficult to predict. Avoid avalanche terrain east of the crest unless you can be sure there are no persistent slab layers present.	Moderate	Moderate	Moderate
995	6:00 PM PST Thursday, January 1, 2015	2015-01-02 02:00:00	Garth Ferber	Olympics	Carefully evaluate steep slopes still showing signs of firmer wind transported snow from early this week. Snowfall should be light by the end of the daylight hours on Friday and not cause a great change in conditions. But use more caution if snowfall is greater than expected.	Moderate	Moderate	Low
993	6:00 PM PST Wednesday, December 31, 2014	2015-01-01 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Recent N-NE winds have created some wind slab on a variety of mainly southerly aspects, especially near ridges, so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible!  The persistent slab varies in depth and likelihood of triggering across the east slopes, requiring careful snowpack evaluation and conservative decision making.	Moderate	Moderate	Moderate
989	6:00 PM PST Wednesday, December 31, 2014	2015-01-01 02:00:00	Kenny Kramer	Olympics	Recent N-NE winds have created some wind slab on a variety of mainly southerly aspects, especially near ridges, so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible! Watch for wet surface snow conditions on sun exposed slopes during the warmest part of the day.	Moderate	Moderate	Moderate
986	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	As the weekend storm slabs become less of a problem, older wind slab on easterly aspects and more recent wind slab on south and westerly aspects will require travelers to evaluate snow and terrain carefully and identify features of concern. The persistent slab varies in depth and likelihood of triggering across the east slopes, requiring careful snowpack evaluation and conservative decision making.	Considerable	Considerable	Moderate
1416	4:53 AM PST Friday, March 13, 2015	2015-03-13 11:53:00	Garth Ferber	Olympics	Avalanche forecasts will resume if significantly more snow accumulates in the Olympics.	\N	\N	\N
1414	6:00 PM PST Thursday, March 12, 2015	2015-03-13 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	East of the crest Friday watch for unlikely small wet loose avalanche conditions mainly on solar aspects.	Low	Low	Low
1412	6:00 PM PST Thursday, March 12, 2015	2015-03-13 01:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume if significantly more snow accumulates in the Olympics.	\N	\N	\N
1411	6:05 PM PST Wednesday, March 11, 2015	2015-03-12 01:05:00	Kenny Kramer	Mt Hood	Isolated loose wet snow avalanches should be possible on solar aspects above treeline.	Moderate	Low	Low
1409	6:05 PM PST Wednesday, March 11, 2015	2015-03-12 01:05:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Isolated loose wet snow avalanches should be possible on solar aspects above treeline, especially in the Mt Baker area where more recent snow is likely.	Moderate	Low	Low
1407	6:00 PM PST Tuesday, March 10, 2015	2015-03-11 01:00:00	Dennis D'Amico	Mt Hood	Shallow storm slabs are possible above treeline Wednesday especially on lee easterly aspects.	Low	Low	Low
1405	6:00 PM PST Tuesday, March 10, 2015	2015-03-11 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm slabs are possible above treeline Wednesday especially on lee easterly aspects.	Low	Low	Low
1403	6:00 PM PST Monday, March 9, 2015	2015-03-10 01:00:00	Dennis D'Amico	Mt Hood	Watch for wet surface snow on steep solar slopes that could lead to small loose wet avalanches. Also, watch for potentially weakening cornices with daytime warming and sunshine.	Low	Low	Low
1402	6:00 PM PST Monday, March 9, 2015	2015-03-10 01:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for wet surface snow on steep solar slopes that could lead to small loose wet avalanches. Also, watch for potentially weakening cornices with daytime warming and sunshine.	Low	Low	Low
1401	6:00 PM PST Monday, March 9, 2015	2015-03-10 01:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for wet surface snow on steep solar slopes that could lead to small loose wet avalanches. Also, watch for potentially weakening cornices with daytime warming and sunshine.	Low	Low	Low
1400	6:00 PM PST Monday, March 9, 2015	2015-03-10 01:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume when and if significantly more snow accumulates in the Olympics.	\N	\N	\N
1399	6:00 PM PST Sunday, March 8, 2015	2015-03-09 01:00:00	Garth Ferber	Mt Hood	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and watch for potentially weakening cornices.	Low	Low	Low
1398	6:00 PM PST Sunday, March 8, 2015	2015-03-09 01:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and watch for potentially weakening cornices.	Low	Low	Low
1397	6:00 PM PST Sunday, March 8, 2015	2015-03-09 01:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and watch for potentially weakening cornices.	Low	Low	Low
1396	6:00 PM PST Sunday, March 8, 2015	2015-03-09 01:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume when and if significantly more snow accumulates in the Olympics.	\N	\N	\N
1395	6:00 PM PST Saturday, March 7, 2015	2015-03-08 02:00:00	Garth Ferber	Mt Hood	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and potentially weakening cornices.	Low	Low	Low
1394	6:00 PM PST Saturday, March 7, 2015	2015-03-08 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and potentially weakening cornices.	Low	Low	Low
1393	6:00 PM PST Saturday, March 7, 2015	2015-03-08 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for wet surface snow on steep solar slopes that could lead to loose wet avalanches and potentially weakening cornices.	Low	Low	Low
1392	6:00 PM PST Saturday, March 7, 2015	2015-03-08 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume when and if significantly more snow accumulates in the Olympics.	\N	\N	\N
1391	6:00 PM PST Friday, March 6, 2015	2015-03-07 02:00:00	Kenny Kramer	Mt Hood	Watch for melting and weakening of surface snow layers and potentially weakening cornices.	Low	Low	Low
1390	6:00 PM PST Friday, March 6, 2015	2015-03-07 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Watch for melting and weakening of surface snow layers and potentially weakening cornices.	Low	Low	Low
1389	6:00 PM PST Friday, March 6, 2015	2015-03-07 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Watch for melting and weakening of surface snow layers and potentially weakening cornices.	Low	Low	Low
1388	6:00 PM PST Friday, March 6, 2015	2015-03-07 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1387	6:00 PM PST Thursday, March 5, 2015	2015-03-06 02:00:00	Kenny Kramer	Mt Hood	This is a time of the year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1386	6:00 PM PST Thursday, March 5, 2015	2015-03-06 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1385	6:00 PM PST Thursday, March 5, 2015	2015-03-06 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1384	6:00 PM PST Thursday, March 5, 2015	2015-03-06 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1383	6:00 PM PST Wednesday, March 4, 2015	2015-03-05 02:00:00	Garth Ferber	Mt Hood	This is a time of the year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1382	6:00 PM PST Wednesday, March 4, 2015	2015-03-05 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1380	6:00 PM PST Wednesday, March 4, 2015	2015-03-05 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1379	6:00 PM PST Wednesday, March 4, 2015	2015-03-05 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1378	6:00 PM PST Tuesday, March 3, 2015	2015-03-04 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1377	6:00 PM PST Tuesday, March 3, 2015	2015-03-04 02:00:00	Garth Ferber	Mt Hood	This is a time of the year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1376	6:00 PM PST Tuesday, March 3, 2015	2015-03-04 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Low	Low	Low
1374	6:00 PM PST Tuesday, March 3, 2015	2015-03-04 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Low	Low	Low
1373	6:00 PM PST Tuesday, March 3, 2015	2015-03-04 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1372	6:00 PM PST Monday, March 2, 2015	2015-03-03 02:00:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1371	6:00 PM PST Monday, March 2, 2015	2015-03-03 02:00:00	Garth Ferber	Mt Hood	This is a time of the year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Moderate	Moderate	Low
1370	6:00 PM PST Monday, March 2, 2015	2015-03-03 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Low	Low	Low
1367	6:00 PM PST Monday, March 2, 2015	2015-03-03 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1364	6:00 PM PST Sunday, March 1, 2015	2015-03-02 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Winds slabs should be isolated, but may have formed on infrequently loaded S-SW facing slopes, especially below ridges. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Low	Low	Low
1362	6:00 PM PST Sunday, March 1, 2015	2015-03-02 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Some strong N-NE winds later Monday may transport any available surface snow to more unconventional southerly facing slopes.	Low	Low	Low
1360	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	Mt Hood	Winds slabs will be less likely, but remain the primary concern Sunday and should generally be found on non-traditional westerly aspects, especially below ridges. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Moderate	Moderate	Low
1358	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Winds slabs will be less likely, but remain the primary concern Sunday and should generally be found on non-traditional westerly aspects, especially below ridges. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Moderate	Moderate	Low
1356	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Some strong NE winds Friday night and Saturday morning, may have formed Isolated but shallow wind slabs mainly on westerly aspects near and above treeline.	Low	Low	Low
1353	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow wind slabs may have formed Friday through Saturday morning mainly on westerly aspects near and above treeline.	Moderate	Moderate	Low
1351	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	Mt Hood	Winds slabs will be the primarily concern Saturday with westerly aspects receiving new wind loading but other aspects may be cross-loaded as well. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain especially above treeline.	Considerable	Moderate	Low
1349	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Winds slabs will be the primarily concern Saturday and should generally be found on non-traditional westerly aspects with significant wind loading. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Considerable	Considerable	Moderate
1347	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1345	6:00 PM PST Thursday, February 26, 2015	2015-02-27 02:00:00	Dennis D'Amico	Mt Hood	Storm related avalanche problems could escalate quickly in the near and above treeline bands Friday with new snow and shifting winds.	Considerable	Moderate	Low
1343	6:00 PM PST Thursday, February 26, 2015	2015-02-27 02:00:00	Dennis D'Amico	West Slopes South - South of I-90 to Columbia River	Storm related avalanche problems could escalate quickly in the near and above treeline bands Friday morning with new snow and shifting winds.	Considerable	Moderate	Moderate
1340	6:00 PM PST Wednesday, February 25, 2015	2015-02-26 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Light snowfall received Wednesday night and Thursday should not be significant enough to raise the generally low avalanche danger in all areas.	Low	Low	Low
1338	6:00 PM PST Wednesday, February 25, 2015	2015-02-26 02:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1336	6:00 PM PST Tuesday, February 24, 2015	2015-02-25 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Any light snowfall received Tuesday night should not be significant enough to cause an increase in the generally low avalanche danger in all areas.	Low	Low	Low
1334	6:00 PM PST Tuesday, February 24, 2015	2015-02-25 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1332	6:00 PM PST Monday, February 23, 2015	2015-02-24 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Small loose wet avalanches and lingering but isolated recently formed wind slab will most likely be found above treeline Tuesday.	Low	Low	Low
1330	6:00 PM PST Monday, February 23, 2015	2015-02-24 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1329	6:00 PM PST Sunday, February 22, 2015	2015-02-23 02:00:00	Dennis D'Amico	Mt Hood	A low avalanche danger is expected in all three elevation bands at Mt Hood on Monday, but we aware of small loose wet avalanches in isolated terrain.	Low	Low	Low
1327	6:00 PM PST Sunday, February 22, 2015	2015-02-23 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Small loose wet avalanches and lingering wind slab will most likely be found above treeline Monday.	Moderate	Low	Low
1325	7:23 PM PST Saturday, February 21, 2015	2015-02-22 03:23:00	Dennis D'Amico	Mt Hood	A low avalanche danger is expected in all three elevation bands at Mt Hood on Sunday.	Low	Low	Low
1323	7:23 PM PST Saturday, February 21, 2015	2015-02-22 03:23:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for new wind slab on non-traditional westerly aspects and small loose wet on solar aspects, especially as you increase in elevation and reach into the alpine Sunday.	Moderate	Moderate	Low
1322	7:23 PM PST Saturday, February 21, 2015	2015-02-22 03:23:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1320	6:00 PM PST Saturday, February 21, 2015	2015-02-22 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for shallow new wind slab on non-traditional westerly aspects especially as you increase in elevation and reach into the alpine where there has been more recent snow available for transport.	Moderate	Low	Low
1317	6:00 PM PST Saturday, February 21, 2015	2015-02-22 02:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1315	6:00 PM PST Friday, February 20, 2015	2015-02-21 02:00:00	Garth Ferber	Mt Hood	A low avalanche danger is expected in all the elevation bands at Mt Hood on Saturday.	Low	Low	Low
1368	6:00 PM PST Monday, March 2, 2015	2015-03-03 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	It is getting to be the time of year when you often need to watch for both winter and spring types of avalanche conditions. It is always good to read the forecast for details.	Low	Low	Low
1366	6:00 PM PST Sunday, March 1, 2015	2015-03-02 02:00:00	Kenny Kramer	Mt Hood	Some strong N-NE winds later Monday may transport any available surface snow to more unconventional southerly facing slopes.	Low	Low	Low
1363	6:00 PM PST Sunday, March 1, 2015	2015-03-02 02:00:00	Kenny Kramer	West Slopes South - South of I-90 to Columbia River	Some strong N-NE winds later Monday may transport any available surface snow to more unconventional southerly facing slopes.	Moderate	Moderate	Low
1361	6:00 PM PST Sunday, March 1, 2015	2015-03-02 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1359	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	Winds slabs will be less likely, but remain the primary concern Sunday and should generally be found on non-traditional westerly aspects, especially below ridges. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Moderate	Moderate	Low
1357	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	West Slopes South - South of I-90 to Columbia River	Winds slabs will be less likely, but remain the primary concern Sunday and should generally be found on non-traditional westerly aspects, especially below ridges. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Moderate	Moderate	Moderate
1354	6:00 PM PST Saturday, February 28, 2015	2015-03-01 02:00:00	Kenny Kramer	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1352	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow wind slabs may have formed Friday night and Saturday morning mainly on westerly aspects in isolated terrain features near and above treeline.	Low	Low	Low
1350	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Winds slabs will be the primarily concern Saturday and should generally be found on non-traditional westerly aspects with significant wind loading. Careful route finding and attention to local loading patterns will be necessary to have a safe and enjoyable day in avalanche terrain.	Considerable	Moderate	Moderate
1348	6:29 PM PST Friday, February 27, 2015	2015-02-28 02:29:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Shallow wind slabs may have formed Friday night and Saturday morning mainly on westerly aspects near and above treeline.	Moderate	Low	Low
1346	6:00 PM PST Thursday, February 26, 2015	2015-02-27 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow new wind slabs potentially formed on a variety of aspects may be found above treeline Friday.	Moderate	Low	Low
1344	6:00 PM PST Thursday, February 26, 2015	2015-02-27 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow new wind slabs potentially formed on westerly aspects may be found near and above treeline Friday.	Moderate	Moderate	Low
1342	6:00 PM PST Thursday, February 26, 2015	2015-02-27 02:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1341	6:00 PM PST Wednesday, February 25, 2015	2015-02-26 02:00:00	Dennis D'Amico	Mt Hood	Shallow storm and wind slabs are possible Thursday primarily on lee slopes above treeline.	Moderate	Low	Low
1339	6:00 PM PST Wednesday, February 25, 2015	2015-02-26 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm slabs are possible primarily on lee slopes above treeline Thursday.	Moderate	Low	Low
1337	6:00 PM PST Tuesday, February 24, 2015	2015-02-25 02:00:00	Kenny Kramer	Mt Hood	Small loose wet avalanches will most likely be found above treeline Tuesday.	Low	Low	Low
1335	6:00 PM PST Tuesday, February 24, 2015	2015-02-25 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Any light snowfall received Tuesday night should not be significant enough to cause an increase in the generally low avalanche danger in all areas.	Low	Low	Low
1333	6:00 PM PST Monday, February 23, 2015	2015-02-24 02:00:00	Kenny Kramer	Mt Hood	Small loose wet avalanches will most likely be found above treeline Tuesday.	Low	Low	Low
1331	6:00 PM PST Monday, February 23, 2015	2015-02-24 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Small loose wet avalanches and lingering but isolated recently formed wind slab will most likely be found above treeline Tuesday.	Low	Low	Low
1328	6:00 PM PST Sunday, February 22, 2015	2015-02-23 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Small loose wet avalanches and lingering wind slab will most likely be found above treeline Monday.	Moderate	Low	Low
1326	6:00 PM PST Sunday, February 22, 2015	2015-02-23 02:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1324	7:23 PM PST Saturday, February 21, 2015	2015-02-22 03:23:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Watch for shallow new wind slab on non-traditional westerly aspects especially as you increase in elevation and reach into the alpine where there has been more recent snow available for transport.	Moderate	Low	Low
1321	6:00 PM PST Saturday, February 21, 2015	2015-02-22 02:00:00	Dennis D'Amico	Mt Hood	A low avalanche danger is expected in all three elevation bands at Mt Hood on Sunday.	Low	Low	Low
1319	6:00 PM PST Saturday, February 21, 2015	2015-02-22 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for new wind slab on non-traditional westerly aspects especially as you increase in elevation and reach into the alpine Sunday.	Moderate	Moderate	Low
1316	6:00 PM PST Friday, February 20, 2015	2015-02-21 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for possible loose wet avalanches and new small wind slab where there is significant new snow.	Low	Low	Low
1314	6:00 PM PST Friday, February 20, 2015	2015-02-21 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A low avalanche danger is expected in all the elevations bands east of the crest on Saturday.	Low	Low	Low
1311	6:00 PM PST Friday, February 20, 2015	2015-02-21 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1309	7:14 AM PST Friday, February 20, 2015	2015-02-20 15:14:00	Garth Ferber	Mt Hood	A low avalanche danger is expected in all the elevation bands at Mt Hood on Friday.	Low	Low	Low
1249	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	Olympics	Avalanche danger should be limited to above treeline areas in the Olympics on Tuesday.	Moderate	Low	Low
1312	6:00 PM PST Friday, February 20, 2015	2015-02-21 02:00:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Watch for possible loose wet avalanches and new small wind slab where there is significant new snow.	Moderate	Moderate	Low
1310	7:14 AM PST Friday, February 20, 2015	2015-02-20 15:14:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A low avalanche danger is expected in most areas on Friday. But the near and above treeline for Crystal Mountain to Mt Rainier has been updated Friday morning.	Low	Low	Low
1308	7:14 AM PST Friday, February 20, 2015	2015-02-20 15:14:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A low avalanche danger is expected in all the elevations bands east of the crest on Friday.	Low	Low	Low
1306	7:14 AM PST Friday, February 20, 2015	2015-02-20 15:14:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1303	6:00 PM PST Thursday, February 19, 2015	2015-02-20 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A low avalanche danger is expected in all the elevation bands west of the crest on Friday. But re-evaluate if there is more than a few inches of snow in the near and above treeline in the Stevens to Snoqualmie area.	Low	Low	Low
1301	6:00 PM PST Wednesday, February 18, 2015	2015-02-19 02:00:00	Dennis D'Amico	Mt Hood	Low avalanche danger is expected in all elevation bands on Thursday.	Low	Low	Low
1300	6:00 PM PST Wednesday, February 18, 2015	2015-02-19 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Low avalanche danger is expected in all elevation bands on Thursday.	Low	Low	Low
1298	6:00 PM PST Wednesday, February 18, 2015	2015-02-19 02:00:00	Dennis D'Amico	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1296	6:00 PM PST Tuesday, February 17, 2015	2015-02-18 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Low avalanche danger is expected in all elevation bands on Wednesday.	Low	Low	Low
1294	6:00 PM PST Tuesday, February 17, 2015	2015-02-18 02:00:00	Dennis D'Amico	Olympics	Low avalanche danger is expected in all elevation bands on Wednesday.	Low	Low	Low
1291	6:00 PM PST Monday, February 16, 2015	2015-02-17 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Look for increasing warmth and sunshine on Tuesday to potentially activate wet loose avalanches during the afternoon hours especially on steeper solar slopes.	Moderate	Moderate	Moderate
1290	6:00 PM PST Monday, February 16, 2015	2015-02-17 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Look for increasing warmth and sunshine on Tuesday to potentially activate wet loose avalanches during the afternoon hours especially on steeper solar slopes.	Moderate	Moderate	Low
1288	6:00 PM PST Sunday, February 15, 2015	2015-02-16 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	The main problem to watch for east of the crest on Monday should be possible loose wet avalanches.	Moderate	Moderate	Moderate
1285	6:00 PM PST Sunday, February 15, 2015	2015-02-16 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The main problem to watch for east of the crest on Monday should be possible loose wet avalanches.	Moderate	Moderate	Moderate
1282	6:00 PM PST Saturday, February 14, 2015	2015-02-15 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Watch for possible loose wet snow avalanches mainly on solar slopes on Sunday east of the crest.	Moderate	Moderate	Low
1279	6:00 PM PST Saturday, February 14, 2015	2015-02-15 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Watch for possible loose wet snow avalanches mainly on solar slopes on Sunday east of the crest.	Moderate	Moderate	Moderate
1277	6:00 PM PST Saturday, February 14, 2015	2015-02-15 02:00:00	Garth Ferber	Olympics	Most areas of the Olympics lack snow for avalanches. The only problem to watch for should be possible loose wet avalanches on solar slopes of the highest peaks of the Olympics.	Low	Low	Low
1275	6:00 PM PST Friday, February 13, 2015	2015-02-14 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	It is a stretch to find a primary avalanche problem Saturday, but some sunshine later in the day, especially in the southern areas may make shallow wet snow avalanches possible.	Low	Low	Low
1273	6:00 PM PST Friday, February 13, 2015	2015-02-14 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	It is a stretch to find a primary avalanche problem Saturday, but some sunshine later in the day, especially in the southern areas may make shallow wet snow avalanches possible.	Low	Low	Low
1271	6:00 PM PST Thursday, February 12, 2015	2015-02-13 02:00:00	Kenny Kramer	Mt Hood	Although less likely, the primary avalanche problems Friday will continue to be loose wet avalanches near and above treeline and lingering wind slab on lee aspects above treeline.	Moderate	Moderate	Low
1269	6:00 PM PST Thursday, February 12, 2015	2015-02-13 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	The primary avalanche problems Friday will continue to be loose wet avalanches in all elevation bands and lingering wind slab on lee aspects near and above treeline.	Moderate	Moderate	Moderate
1267	6:00 PM PST Thursday, February 12, 2015	2015-02-13 02:00:00	Kenny Kramer	Olympics	Small loose wet avalanches may be possible above treeline with light rain expected Friday.	Low	Low	Low
1264	6:00 PM PST Wednesday, February 11, 2015	2015-02-12 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The primary avalanche problems Thursday will continue to be loose wet avalanches in all elevation bands and lingering wind slab on lee aspects near and above treeline.	Moderate	Moderate	Moderate
1262	6:00 PM PST Wednesday, February 11, 2015	2015-02-12 02:00:00	Dennis D'Amico	Olympics	Small loose wet avalanches may be possible above treeline with light rain expected Thursday.	Low	Low	Low
1260	6:00 PM PST Tuesday, February 10, 2015	2015-02-11 02:00:00	Garth Ferber	Mt Hood	The primary concern Wednesday at Mt Hood should be loose wet snow avalanches.	High	Considerable	Considerable
1255	6:00 PM PST Tuesday, February 10, 2015	2015-02-11 02:00:00	Garth Ferber	Olympics	Avalanche danger should be limited to above treeline on the high peaks of the Olympics on Wednesday.	Moderate	Low	Low
1253	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1251	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Considerable	Moderate	Moderate
1307	7:14 AM PST Friday, February 20, 2015	2015-02-20 15:14:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	A low avalanche danger is expected in most areas on Friday. But the near and above treeline for Crystal Mountain to Mt Rainier has been updated Friday morning.	Moderate	Moderate	Low
1305	6:00 PM PST Thursday, February 19, 2015	2015-02-20 02:00:00	Garth Ferber	Mt Hood	A low avalanche danger is expected in all the elevation bands at Mt Hood on Friday.	Low	Low	Low
1304	6:00 PM PST Thursday, February 19, 2015	2015-02-20 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A low avalanche danger is expected in all the elevations bands east of the crest on Friday.	Low	Low	Low
1302	6:00 PM PST Thursday, February 19, 2015	2015-02-20 02:00:00	Garth Ferber	Olympics	Avalanche forecasts will resume once more snow accumulates in the Olympics.	\N	\N	\N
1299	6:00 PM PST Wednesday, February 18, 2015	2015-02-19 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Low avalanche danger is expected in all elevation bands on Thursday.	Low	Low	Low
1297	6:00 PM PST Tuesday, February 17, 2015	2015-02-18 02:00:00	Dennis D'Amico	Mt Hood	Low avalanche danger is expected in all elevation bands on Wednesday, although isolated and small loose wet avalanches remain possible on steeper solar slopes.	Low	Low	Low
1295	6:00 PM PST Tuesday, February 17, 2015	2015-02-18 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Low avalanche danger is expected in all elevation bands on Wednesday.	Low	Low	Low
1293	6:00 PM PST Monday, February 16, 2015	2015-02-17 02:00:00	Dennis D'Amico	Mt Hood	Look for increasing warmth and sunshine on Tuesday to potentially activate wet loose avalanches during the afternoon hours especially on steeper solar slopes.	Moderate	Moderate	Low
1289	6:00 PM PST Monday, February 16, 2015	2015-02-17 02:00:00	Dennis D'Amico	Olympics	Most areas of the Olympics lack snow for avalanches. The only avalanche problem to be aware of on Tuesday should be possible loose wet avalanches, mainly on solar slopes, but possible on all aspects due to warm temperatures expected.	Low	Low	Low
1287	6:00 PM PST Sunday, February 15, 2015	2015-02-16 02:00:00	Garth Ferber	Mt Hood	The main problem to watch for at Mt Hood on Monday should be possible loose wet avalanches.	Moderate	Moderate	Low
1284	6:00 PM PST Sunday, February 15, 2015	2015-02-16 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The main problem to watch for west of the crest on Monday should be possible loose wet avalanches.	Moderate	Moderate	Low
1283	6:00 PM PST Sunday, February 15, 2015	2015-02-16 02:00:00	Garth Ferber	Olympics	Most areas of the Olympics lack snow for avalanches. The only problem to watch for Monday should be possible loose wet avalanches on solar slopes of the highest peaks of the Olympics.	Low	Low	Low
1281	6:00 PM PST Saturday, February 14, 2015	2015-02-15 02:00:00	Garth Ferber	Mt Hood	Watch for possible loose wet snow avalanches mainly on solar slopes on Sunday at Mt Hood.	Moderate	Moderate	Low
1278	6:00 PM PST Saturday, February 14, 2015	2015-02-15 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Watch for possible loose wet snow avalanches mainly on solar slopes on Sunday west of the crest.	Moderate	Moderate	Low
1276	6:00 PM PST Friday, February 13, 2015	2015-02-14 02:00:00	Kenny Kramer	Mt Hood	It is a stretch to find a primary avalanche problem Saturday, but some sunshine later in the day, may make shallow wet snow avalanches possible.	Low	Low	Low
1274	6:00 PM PST Friday, February 13, 2015	2015-02-14 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	It is a stretch to find a primary avalanche problem Saturday, but some sunshine later in the day, especially in the southern areas may make shallow wet snow avalanches possible.	Low	Low	Low
1272	6:00 PM PST Friday, February 13, 2015	2015-02-14 02:00:00	Kenny Kramer	Olympics	Cooler temperatures should end the possibility of wet snow avalanches and maintain low danger in all areas.	Low	Low	Low
1270	6:00 PM PST Thursday, February 12, 2015	2015-02-13 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	The primary avalanche problems Friday will continue to be loose wet avalanches and lingering wind slab on lee aspects near and above treeline.	Moderate	Moderate	Low
1268	6:00 PM PST Thursday, February 12, 2015	2015-02-13 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	The primary avalanche problem Friday will continue to be loose wet avalanches, especially in areas receiving the greatest rain, such as the volcanoes, from Mt Baker to Mt Rainier.	Moderate	Moderate	Low
1266	6:00 PM PST Wednesday, February 11, 2015	2015-02-12 02:00:00	Dennis D'Amico	Mt Hood	Although less likely, the primary avalanche problems Thursday will continue to be loose wet avalanches near and above treeline and lingering wind slab on lee aspects above treeline.	Moderate	Moderate	Low
1265	6:00 PM PST Wednesday, February 11, 2015	2015-02-12 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	The primary avalanche problems Thursday will continue to be loose wet avalanches and lingering wind slab on lee aspects near and above treeline.	Moderate	Moderate	Low
1263	6:00 PM PST Wednesday, February 11, 2015	2015-02-12 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Although less likely, the primary avalanche problem Thursday will continue to be loose wet avalanches.	Moderate	Moderate	Low
1261	6:00 PM PST Tuesday, February 10, 2015	2015-02-11 02:00:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	The primary concern Wednesday east of the crest should be loose wet snow avalanches. But you will need to watch for a wider variety of conditions east of the crest than elsewhere.	Considerable	Considerable	Moderate
1258	6:00 PM PST Tuesday, February 10, 2015	2015-02-11 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The primary concern Wednesday east of the crest should be loose wet snow avalanches. But you will need to watch for a wider variety of conditions east of the crest than elsewhere.	Considerable	Considerable	Moderate
1256	6:00 PM PST Tuesday, February 10, 2015	2015-02-11 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The primary concern Wednesday should be loose wet snow avalanches.	Considerable	Considerable	Moderate
1254	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	Mt Hood	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Considerable	Considerable	Considerable
1252	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1250	6:22 AM PST Tuesday, February 10, 2015	2015-02-10 14:22:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1248	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	West Slopes South - South of I-90 to Columbia River	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Considerable	Moderate	Moderate
1247	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	Mt Hood	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Considerable	Considerable	Moderate
1245	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1243	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	Olympics	Avalanche danger should be limited to above treeline areas in the Olympics on Tuesday.	Moderate	Low	Low
1241	6:12 PM PST Monday, February 9, 2015	2015-02-10 02:12:00	Garth Ferber	Mt Hood	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Considerable	Considerable	Moderate
1238	6:12 PM PST Monday, February 9, 2015	2015-02-10 02:12:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1236	6:00 PM PST Sunday, February 8, 2015	2015-02-09 02:00:00	Kenny Kramer	Mt Hood	A heightened avalanche danger will mainly be limited to steep open terrain or lee slopes above treeline.	Considerable	Moderate	Low
1234	6:00 PM PST Sunday, February 8, 2015	2015-02-09 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	A heightened avalanche danger will mainly be limited to steep open terrain or lee slopes above treeline.	Considerable	Moderate	Moderate
1231	6:00 PM PST Saturday, February 7, 2015	2015-02-08 02:00:00	Kenny Kramer	Mt Hood	Expect a decreasing avalanche danger Sunday with a break between systems. Watch for areas where more significant new snow has accumulated, mainly above treeline and on the volcanoes where new storm and wind slab are likely.	Considerable	Moderate	Low
1229	6:00 PM PST Saturday, February 7, 2015	2015-02-08 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Expect a decreasing avalanche danger Sunday with a break between systems. Watch for areas where more significant new snow has accumulated, mainly above treeline where new storm and wind slab are more likely.	Considerable	Moderate	Moderate
1227	6:00 PM PST Saturday, February 7, 2015	2015-02-08 02:00:00	Kenny Kramer	Olympics	Heightened avalanche danger will be limited to above treeline in the Olympics on Saturday.	Moderate	Low	Low
1225	6:30 PM PST Friday, February 6, 2015	2015-02-07 02:30:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Expect increasing avalanche danger with elevation on Saturday... with the likelihood of wet loose avalanches decreasing and new storm and wind slab avalanches increasing.	Considerable	Considerable	Moderate
1223	6:30 PM PST Friday, February 6, 2015	2015-02-07 02:30:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Expect increasing avalanche danger with elevation on Saturday... with the likelihood of wet loose avalanches decreasing and new storm and wind slab avalanches increasing.	Considerable	Considerable	Moderate
1220	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	On Friday, avalanche conditions should become increasingly dangerous with elevation and closer to the Cascade crest. Backcountry travel above treeline is not recommended.	High	Considerable	Moderate
1217	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected east of the crest on Friday especially near and above treeline. Backcountry travel in avalanche terrain near and above treeline in the northeast zone is not recommended.	High	High	Considerable
1215	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger Friday will center around wet avalanche concerns and become increasingly dangerous with elevation, especially in the Mt. Baker area.	High	Considerable	Considerable
1213	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions are expected to develop west of the crest Thursday, especially above treeline in the Mt. Baker area. Backcountry travel is not recommended near and above treeline Thursday.	High	Considerable	Considerable
1211	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	East Slopes Central - Lake Chelan to South of I-90	Dangerous avalanche conditions are expected east of the crest on Thursday especially above treeline. Back country travel in avalanche terrain east of the crest above treeline is not recommended on Thursday.	High	Considerable	Moderate
1210	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected east of the crest on Thursday especially above treeline. Back country travel in avalanche terrain above treeline in the northeast zone is not recommended on Thursday.	High	Considerable	Moderate
1208	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	Olympics	An increasing avalanche danger should be limited mainly to above tree line areas in the Olympics on Thursday.	Moderate	Low	Low
1205	7:03 PM PST Wednesday, February 4, 2015	2015-02-05 03:03:00	Garth Ferber	Mt Hood	Dangerous avalanche conditions are expected on Thursday at Mt Hood. Watch for rapidly changing snow conditions if you decide to venture into avalanche terrain.	Considerable	Considerable	Moderate
1202	7:03 PM PST Wednesday, February 4, 2015	2015-02-05 03:03:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	Dangerous avalanche conditions are expected to develop west of the crest Thursday. Watch for rapidly changing snow conditions if you decide to venture into avalanche terrain.	Considerable	Considerable	Moderate
1200	6:00 PM PST Tuesday, February 3, 2015	2015-02-04 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	The problem east of the crest should be small lingering wind slab on Wednesday mainly above and near treeline.	Moderate	Moderate	Moderate
1198	6:00 PM PST Tuesday, February 3, 2015	2015-02-04 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The problem east of the crest should be small lingering wind slab on Wednesday mainly above and near treeline.	Moderate	Moderate	Moderate
1246	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1244	4:54 AM PST Tuesday, February 10, 2015	2015-02-10 12:54:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1242	6:12 PM PST Monday, February 9, 2015	2015-02-10 02:12:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1239	6:12 PM PST Monday, February 9, 2015	2015-02-10 02:12:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A transition from the recent wet warm weather to dry warm weather will begin on Tuesday. You will need to watch for a variety of snow and avalanche conditions on Tuesday.	Moderate	Moderate	Moderate
1237	6:12 PM PST Monday, February 9, 2015	2015-02-10 02:12:00	Garth Ferber	Olympics	Avalanche danger should be limited to above treeline areas in the Olympics on Tuesday.	Moderate	Low	Low
1235	6:00 PM PST Sunday, February 8, 2015	2015-02-09 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	A heightened avalanche danger will mainly be limited to steep open terrain or lee slopes above treeline.	Moderate	Moderate	Low
1233	6:00 PM PST Sunday, February 8, 2015	2015-02-09 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	A heightened avalanche danger will mainly be limited to steep open terrain or lee slopes above treeline, especially on the volcanoes where greater precipitation is expected.	Considerable	Moderate	Moderate
1232	6:00 PM PST Sunday, February 8, 2015	2015-02-09 02:00:00	Kenny Kramer	Olympics	Slightly heightened avalanche danger will be limited to above treeline in the Olympics on Sunday.	Moderate	Low	Low
1230	6:00 PM PST Saturday, February 7, 2015	2015-02-08 02:00:00	Kenny Kramer	East Slopes Central - Lake Chelan to South of I-90	Expect a decreasing avalanche danger Sunday with a break between systems. Watch for areas where more significant new snow has accumulated, mainly above treeline where new storm and wind slab are more likely.	Moderate	Moderate	Low
1228	6:00 PM PST Saturday, February 7, 2015	2015-02-08 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Expect a decreasing avalanche danger Sunday with a break between systems. Watch for areas where more significant new snow has accumulated, mainly above treeline and on the volcanoes where new storm and wind slab are likely.	Considerable	Moderate	Moderate
1226	6:30 PM PST Friday, February 6, 2015	2015-02-07 02:30:00	Dennis D'Amico	Mt Hood	Expect increasing avalanche danger with elevation on Saturday... with new storm and wind slab avalanches possible near and above treeline.	Considerable	Moderate	Low
1224	6:30 PM PST Friday, February 6, 2015	2015-02-07 02:30:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Expect increasing avalanche danger with elevation on Saturday... with the likelihood of wet loose avalanches decreasing and new storm and wind slab avalanches increasing.	Considerable	Considerable	Moderate
1221	6:30 PM PST Friday, February 6, 2015	2015-02-07 02:30:00	Dennis D'Amico	Olympics	Heightened avalanche danger will be limited to above treeline in the Olympics on Friday.	Moderate	Low	Low
1219	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	Mt Hood	The avalanche danger Friday will center around wet avalanche concerns and become increasingly dangerous with elevation.	Considerable	Moderate	Moderate
1216	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	The avalanche danger Friday will center around wet avalanche concerns and become increasingly dangerous with elevation.	Considerable	Considerable	Moderate
1214	6:00 PM PST Thursday, February 5, 2015	2015-02-06 02:00:00	Dennis D'Amico	Olympics	Dangerous avalanche conditions will be limited to above treeline in the Olympics on Friday.	Considerable	Low	Low
1212	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	Mt Hood	Dangerous avalanche conditions are expected on Thursday at Mt Hood. Watch for rapidly changing snow conditions if you decide to venture into avalanche terrain.	Considerable	Considerable	Moderate
1209	1:51 PM PST Thursday, February 5, 2015	2015-02-05 21:51:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Dangerous avalanche conditions are expected to develop west of the crest Thursday. Watch for rapidly changing snow conditions if you decide to venture into avalanche terrain.	Considerable	Considerable	Moderate
1207	7:03 PM PST Wednesday, February 4, 2015	2015-02-05 03:03:00	Garth Ferber	East Slopes Central - Lake Chelan to South of I-90	Dangerous avalanche conditions are expected east of the crest on Thursday especially above treeline. Back country travel in avalanche terrain east of the crest above treeline is not recommended on Thursday.	High	Considerable	Moderate
1203	7:03 PM PST Wednesday, February 4, 2015	2015-02-05 03:03:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Dangerous avalanche conditions are expected east of the crest on Thursday especially above treeline. Back country travel in avalanche terrain above treeline in the northeast zone is not recommended on Thursday.	High	Considerable	Moderate
1201	7:03 PM PST Wednesday, February 4, 2015	2015-02-05 03:03:00	Garth Ferber	Olympics	An increasing avalanche danger should be limited mainly to above tree line areas in the Olympics on Thursday.	Moderate	Low	Low
1199	6:00 PM PST Tuesday, February 3, 2015	2015-02-04 02:00:00	Garth Ferber	Mt Hood	A mix of winter-like conditions above tree line and wet conditions mainly near and below treeline is expected on Wednesday.	Moderate	Moderate	Moderate
1195	6:00 PM PST Tuesday, February 3, 2015	2015-02-04 02:00:00	Garth Ferber	Olympics	Avalanche danger should be limited to above tree line areas in the Olympics on Wednesday.	Moderate	Low	Low
1193	6:00 PM PST Monday, February 2, 2015	2015-02-03 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Heightened avalanche conditions are expected on lee aspects, mainly near and above treeline, with shallow but perhaps sensitive wind slab.	Moderate	Moderate	Low
1190	6:00 PM PST Monday, February 2, 2015	2015-02-03 02:00:00	Kenny Kramer	Olympics	Shallow storm slabs are possible on lee northerly terrain above treeline Tuesday.	Moderate	Low	Low
1188	6:00 PM PST Sunday, February 1, 2015	2015-02-02 02:00:00	Dennis D'Amico	Mt Hood	Expect quickly escalating avalanche danger as one travels further into the above treeline band Monday due to sensitive storm and wind slabs, mainly on lee easterly aspects. Small loose wet avalanches are also possible near and above treeline.	Considerable	Moderate	Low
1196	6:00 PM PST Tuesday, February 3, 2015	2015-02-04 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	A mix of winter-like conditions above tree line and wet conditions mainly near and below treeline is expected on Wednesday.	Moderate	Moderate	Moderate
1194	6:00 PM PST Monday, February 2, 2015	2015-02-03 02:00:00	Kenny Kramer	Mt Hood	Storm and wind slabs remain possible Tuesday, especially on lee aspects near and above treeline. Watch for wind transported new snow received Sunday and Monday, especially higher terrain.	Moderate	Moderate	Low
1192	6:00 PM PST Monday, February 2, 2015	2015-02-03 02:00:00	Kenny Kramer	West Slopes Central - Skagit River to South of I-90	Storm and wind slabs remain possible Tuesday, especially on lee aspects near and above treeline. Watch for wind transported new snow received Sunday and Monday, especially higher terrain.	Moderate	Moderate	Moderate
1191	6:00 PM PST Monday, February 2, 2015	2015-02-03 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Storm and wind slabs remain possible Tuesday, especially on lee aspects near and above treeline. Watch for wind transported new snow received Sunday and Monday, especially higher terrain.	Moderate	Moderate	Moderate
1189	6:00 PM PST Sunday, February 1, 2015	2015-02-02 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Sensitive storm and wind slabs are possible Monday, especially on lee aspects near and above treeline. Watch for new snow received Sunday and Monday afternoon that has bonded poorly to old surface crusts or in areas of preserved surface hoar.	Considerable	Considerable	Moderate
1186	6:00 PM PST Sunday, February 1, 2015	2015-02-02 02:00:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Shallow storm slabs are possible Monday mainly near and above treeline. Watch for new snow received Sunday and Monday afternoon that has bonded poorly to old surface crusts or in areas of preserved surface hoar.	Moderate	Moderate	Low
1184	6:00 PM PST Saturday, January 31, 2015	2015-02-01 02:00:00	Dennis D'Amico	Mt Hood	Shallow storm slabs are possible, mainly on lee terrain near and above treeline later Sunday afternoon.	Moderate	Moderate	Low
1181	6:00 PM PST Saturday, January 31, 2015	2015-02-01 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Shallow storm slabs are possible Sunday afternoon. Watch for new snow that bonds poorly to existing surface crusts or in areas of preserved surface hoar.	Moderate	Moderate	Moderate
983	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	As the weekend storm slabs become less of a problem, older wind slab on easterly aspects and more recent wind slab on south and westerly aspects will require travelers to evaluate snow and terrain carefully and identify features of concern.	Moderate	Moderate	Moderate
982	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	Olympics	Storm slab instabilities should have settled by Wednesday, especially with warmer temperatures. Recent N-NE winds likely have loaded southerly aspects, especially near ridges, so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible!	Moderate	Moderate	Low
980	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Even as storm slab avalanche concerns diminish, old wind slab on easterly aspects and new wind slab on south and westerly aspects will require careful terrain management Tuesday.	Considerable	Considerable	Moderate
978	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
976	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	Stevens Pass	Even as storm slab avalanche concerns diminish, old wind slab on easterly aspects and new wind slab on south and westerly aspects will require careful terrain management. The persistent slab in this area should be unlikely to trigger, but has bigger consequences. Careful snowpack evaluation and conservative decision making will be essential Tuesday.	Considerable	Considerable	Moderate
975	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	Olympics	Storm slab instabilities should continue to settle out Tuesday but may still be touchy. Also, recent N-NE winds will have loaded southerly aspects so make sure to evaluate wind loaded terrain. Moderate avalanche danger means human triggered avalanches are possible!	Moderate	Moderate	Moderate
973	12:42 PM PST Monday, December 29, 2014	2014-12-29 20:42:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
971	12:42 PM PST Monday, December 29, 2014	2014-12-29 20:42:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	The avalanche danger should decrease with lingering wind and storm slab the main avalanche problems on Monday.	Considerable	Moderate	Moderate
970	12:42 PM PST Monday, December 29, 2014	2014-12-29 20:42:00	Dennis D'Amico	Olympics	Update: The avalanche danger has been updated for Monday. Look for heightened avalanche danger with loose dry avalanches in steeper terrain near terrain traps.  N-NE winds will load southerly aspects, make sure to evaluate wind loaded terrain.	Moderate	Moderate	Moderate
968	6:00 PM PST Sunday, December 28, 2014	2014-12-29 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
966	6:00 PM PST Sunday, December 28, 2014	2014-12-29 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The avalanche danger should decrease with lingering wind and storm slab the main avalanche problems on Monday.	Considerable	Moderate	Moderate
964	11:42 AM PST Sunday, December 28, 2014	2014-12-28 19:42:00	Garth Ferber	Mt Hood	High danger now expected on Sunday at Mt Hood.	High	High	Considerable
962	11:42 AM PST Sunday, December 28, 2014	2014-12-28 19:42:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	New wind and storm slab should be likely on Sunday. Great caution remains warranted in this area due to the persistent slab.	Considerable	Considerable	Considerable
960	11:42 AM PST Sunday, December 28, 2014	2014-12-28 19:42:00	Garth Ferber	Olympics	New wind and storm slab should be the main avalanche problems on Sunday. A surface hoar layer from Thursday night will increase instability where it gets buried intact.	Considerable	Considerable	Considerable
1187	6:00 PM PST Sunday, February 1, 2015	2015-02-02 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Heightened avalanche conditions are expected on lee aspects, mainly near and above treeline, with shallow but perhaps sensitive wind slab.	Moderate	Moderate	Low
1185	6:00 PM PST Sunday, February 1, 2015	2015-02-02 02:00:00	Dennis D'Amico	Olympics	Shallow storm slabs are possible on lee northerly terrain above treeline Monday.	Moderate	Low	Low
1182	6:00 PM PST Saturday, January 31, 2015	2015-02-01 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Shallow storm slabs are possible Sunday afternoon. Watch for new snow that bonds poorly to existing surface crusts or in areas of preserved surface hoar. There is still some uncertainty regarding persistent slabs east of the crest, however recent reports indicate overlying strong snow layers are limiting the potential for human triggering.	Moderate	Moderate	Moderate
984	6:23 PM PST Tuesday, December 30, 2014	2014-12-31 02:23:00	Kenny Kramer	Stevens Pass	As the weekend storm slabs become less of a problem, older wind slab on easterly aspects and more recent wind slab on south and westerly aspects will require travelers to evaluate snow and terrain carefully. The persistent slab in this area should be unlikely to trigger, but has bigger consequences.	Moderate	Moderate	Moderate
981	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Even as storm slab avalanche concerns diminish, old wind slab on easterly aspects and new wind slab on south and westerly aspects will require careful terrain management Tuesday.	Moderate	Moderate	Moderate
979	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	Mt Hood	Even as storm slab avalanche concerns diminish, old wind slab on easterly aspects and new wind slab on south and westerly aspects will require careful terrain management Tuesday.	Considerable	Considerable	Moderate
977	6:00 PM PST Monday, December 29, 2014	2014-12-30 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Even as storm slab avalanche concerns diminish, old wind slab on easterly aspects and new wind slab on south and westerly aspects will require careful terrain management. The persistent slab varies in depth and likelihood of triggering across the east slopes. Careful snowpack evaluation and conservative decision making will be essential Tuesday.	Considerable	Considerable	Moderate
974	12:42 PM PST Monday, December 29, 2014	2014-12-29 20:42:00	Dennis D'Amico	Mt Hood	More caution will be needed Monday at Mt Hood than the rest of the NWAC forecast area due to the heavy snowfall through Sunday.	Considerable	Considerable	Considerable
972	12:42 PM PST Monday, December 29, 2014	2014-12-29 20:42:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger should decrease with lingering wind and storm slab should be the main avalanche problems on Monday. Great caution remains warranted in this area due to the persistent slab.	Considerable	Moderate	Moderate
969	6:00 PM PST Sunday, December 28, 2014	2014-12-29 02:00:00	Garth Ferber	Mt Hood	More caution will be needed Monday at Mt Hood than the rest of the NWAC forecast area due to the heavy snowfall through Sunday.	Considerable	Considerable	Considerable
967	6:00 PM PST Sunday, December 28, 2014	2014-12-29 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	The avalanche danger should decrease with lingering wind and storm slab should be the main avalanche problems on Monday. Great caution remains warranted in this area due to the persistent slab.	Considerable	Moderate	Moderate
965	6:00 PM PST Sunday, December 28, 2014	2014-12-29 02:00:00	Garth Ferber	Olympics	The avalanche danger should decrease but continue to evaluate snow and terrain carefully on Monday.	Moderate	Moderate	Low
963	11:42 AM PST Sunday, December 28, 2014	2014-12-28 19:42:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.\n\nForecast updated 1145 am Sunday to high avalanche danger in the near and above treeline at Mt Hood.	\N	\N	\N
961	11:42 AM PST Sunday, December 28, 2014	2014-12-28 19:42:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New wind and storm slab should be the main avalanche problems on Sunday. A surface hoar layer from Thursday night will increase instability where it gets buried intact.	Considerable	Considerable	Considerable
959	6:00 PM PST Saturday, December 27, 2014	2014-12-28 02:00:00	Garth Ferber	Mt Hood	It may take longer for some stabilizing at Mt Hood than the rest of the forecast area since stronger winds and heavier snowfall should last longer there on Sunday.	Considerable	Considerable	Considerable
957	6:00 PM PST Saturday, December 27, 2014	2014-12-28 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	New wind and storm slab should be likely on Sunday. Great caution remains warranted in this area due to the persistent slab.	Considerable	Considerable	Considerable
955	6:00 PM PST Saturday, December 27, 2014	2014-12-28 02:00:00	Garth Ferber	Olympics	New wind and storm slab should be the main avalanche problems on Sunday. A surface hoar layer from Thursday night will increase instability where it gets buried intact.	Considerable	Considerable	Considerable
954	10:36 PM PST Friday, December 26, 2014	2014-12-27 06:36:00	Kenny Kramer	Mt Hood	Watch for developing storm slabs, wind slabs and possible buried surface hoar, especially in areas receiving the heaviest snowfall with the strongest winds, such as at higher elevations. Choose very conservative terrain.	Considerable	Considerable	Moderate
952	10:36 PM PST Friday, December 26, 2014	2014-12-27 06:36:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Exercise extreme caution near avalanche terrain due to both expected new snow layers, and the difficult to manage persistent slab problem. Stick with lower angled terrain not connected to large avalanche paths.	Considerable	Considerable	Moderate
950	10:36 PM PST Friday, December 26, 2014	2014-12-27 06:36:00	Kenny Kramer	Olympics	Watch for developing storm slabs, wind slabs and possible buried surface hoar, especially in areas receiving the heaviest snowfall with the strongest winds, such as at higher elevations. Choose very conservative terrain.	Considerable	Considerable	Moderate
948	6:00 PM PST Thursday, December 25, 2014	2014-12-26 02:00:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Overall, the snowpack is still very shallow in the southeast Cascades.  An avalanche forecast will be issued when enough snow has accumulated in this forecast zone.	\N	\N	\N
946	6:00 PM PST Thursday, December 25, 2014	2014-12-26 02:00:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for wind slab on lee slopes near and above treeline especially due to more loading on southerly aspects than usual. Loose sluffs should be manageable except be wary on steeper slopes near terrain traps.	Moderate	Moderate	Low
958	6:00 PM PST Saturday, December 27, 2014	2014-12-28 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.	\N	\N	\N
956	6:00 PM PST Saturday, December 27, 2014	2014-12-28 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	New wind and storm slab should be the main avalanche problems on Sunday. A surface hoar layer from Thursday night will increase instability where it gets buried intact.	Considerable	Considerable	Considerable
953	10:36 PM PST Friday, December 26, 2014	2014-12-27 06:36:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	Overall, the snowpack is still very shallow in the southeast Cascades.  An avalanche forecast will be issued when enough snow has accumulated in this forecast zone.	\N	\N	\N
951	10:36 PM PST Friday, December 26, 2014	2014-12-27 06:36:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Watch for developing storm slabs, wind slabs and possible buried surface hoar, especially in areas receiving the heaviest snowfall with the strongest winds, such as at higher elevations on the volcanoes. Choose very conservative terrain.	Considerable	Considerable	Moderate
949	6:00 PM PST Thursday, December 25, 2014	2014-12-26 02:00:00	Dennis D'Amico	Mt Hood	Exercise caution and expect potentially dangerous avalanche conditions on wind loaded slopes near and above the treeline Friday, especially on more southerly aspects.	Considerable	Considerable	Moderate
947	6:00 PM PST Thursday, December 25, 2014	2014-12-26 02:00:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Exercise extreme caution near avalanche terrain due to the difficult to manage persistent slab problem. Stick with lower angled terrain not connected to large avalanche paths.	Considerable	Considerable	Moderate
945	6:00 PM PST Thursday, December 25, 2014	2014-12-26 02:00:00	Dennis D'Amico	Olympics	Overall, the snowpack is still very shallow in the Olympics.  An avalanche forecast will be issued when enough snow has accumulated in the Olympics.	\N	\N	\N
944	5:39 PM PST Wednesday, December 24, 2014	2014-12-25 01:39:00	Dennis D'Amico	Mt Hood	Exercise caution and expect potentially dangerous avalanche conditions on wind loaded slopes above the treeline Thursday.	Considerable	Moderate	Moderate
942	5:39 PM PST Wednesday, December 24, 2014	2014-12-25 01:39:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Exercise extreme caution near avalanche terrain due to the difficult to manage persistent slab problem. Stick with lower angled terrain not connected to large avalanche paths.	Considerable	Considerable	Moderate
940	5:39 PM PST Wednesday, December 24, 2014	2014-12-25 01:39:00	Dennis D'Amico	Olympics	Overall, the snowpack is still very shallow in the Olympics.  An avalanche forecast will be issued when enough snow has accumulated in the Olympics.	\N	\N	\N
938	8:12 PM PST Tuesday, December 23, 2014	2014-12-24 04:12:00	Garth Ferber	Mt Hood	The main avalanche problems Wednesday should be new wind slab and new storm slab.	Considerable	Considerable	Considerable
934	8:12 PM PST Tuesday, December 23, 2014	2014-12-24 04:12:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The main avalanche problems Wednesday should be new wind slab and new storm slab.	Considerable	Considerable	Considerable
926	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	Mt Hood	Avoid steep previous lee slopes with firmer wind transported snow from the recent storm mainly in the above treeline band Tuesday.	Moderate	Moderate	Low
924	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A dangerous persistent weak layer is reported in this area.	Considerable	Considerable	Considerable
922	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The northwest Cascades should begin to see new storm and wind slab layers forming Tuesday afternoon.	Considerable	Moderate	Moderate
920	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	Mt Hood	Avoid steep previous lee slopes with firmer wind transported snow from the recent storm mainly in the above treeline band Tuesday.	Moderate	Moderate	Low
917	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Avoid steep previous lee slopes with firmer wind transported snow from the recent storm mainly in the above treeline band Tuesday.	Moderate	Moderate	Low
913	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	Olympics	There is still a shallow snowpack in the Olympics. We do not expect significant seasonal snow on any but the highest peaks of the range.	\N	\N	\N
911	6:00 PM PST Sunday, December 21, 2014	2014-12-22 02:00:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	There is a very shallow snowpack in the southeast Cascades. An avalanche forecast for this zone will be issued when the snowpack is deep enough to present widespread avalanche potential.	\N	\N	\N
909	6:00 PM PST Sunday, December 21, 2014	2014-12-22 02:00:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Unstable storm and wind slabs should persist above treeline Monday, but begin gradually settling.  Wet snow should slowly refreeze below treeline with shallow new snow forming a good bond.	Considerable	Moderate	Moderate
907	7:02 PM PST Saturday, December 20, 2014	2014-12-21 03:02:00	Kenny Kramer	Mt Hood	The storm over the region Saturday night and Sunday will produce mainly rain for the Mt. Hood area at elevations where avalanche forecasts apply. The avalanche danger on the upper volcano and out of our forecast area will likely be high due to heavy snow and strong winds. Travel into the alpine is strongly discouraged.	\N	\N	\N
905	7:02 PM PST Saturday, December 20, 2014	2014-12-21 03:02:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Due to a shallow snowpack at low elevations... the greatest avalanche danger should be present in the near and above treeline zones within the new storm snow. Storm conditions should persist Sunday; don't be fooled by the low snow cover at the trailhead and be aware of what terrain you are connected to above.	Considerable	Moderate	Moderate
904	7:02 PM PST Saturday, December 20, 2014	2014-12-21 03:02:00	Kenny Kramer	West Slopes North - Canadian Border to Skagit River	Unstable storm and wind slabs should persist and build near and above treeline Sunday.  Wet snow and rain below treeline should maintain areas of unstable wet snow.	Considerable	Considerable	Moderate
901	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	East Slopes North - Canadian Border to Lake Chelan	Due to a shallow snowpack at low elevations... the greatest avalanche danger should be present in the near and above treeline zones within the new storm snow. Storm conditions should develop Saturday; don't be fooled by low snow cover at the trailhead and be aware of what terrain you are connected to above.	Considerable	Considerable	Moderate
943	5:39 PM PST Wednesday, December 24, 2014	2014-12-25 01:39:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	Overall, the snowpack is still very shallow in the southeast Cascades.  An avalanche forecast will be issued when enough snow has accumulated in this forecast zone.	\N	\N	\N
941	5:39 PM PST Wednesday, December 24, 2014	2014-12-25 01:39:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Watch for new wind slab on lee slopes near and above treeline. Loose sluffs should be manageable except be wary on steeper slopes near terrain traps.	Moderate	Moderate	Low
939	8:12 PM PST Tuesday, December 23, 2014	2014-12-24 04:12:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.\n\nIn the Olympics and southeast Cascades where there is still a marginal snowpack a danger rating has not been forecast.	\N	\N	\N
936	8:12 PM PST Tuesday, December 23, 2014	2014-12-24 04:12:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	A potentially dangerous persistent weak layer is reported in this area.	Considerable	Considerable	Considerable
933	8:12 PM PST Tuesday, December 23, 2014	2014-12-24 04:12:00	Garth Ferber	Olympics	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.\n\nIn the Olympics and southeast Cascades where there is still a marginal snowpack a danger rating has not been forecast.	\N	\N	\N
925	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	There is still a shallow snowpack in this area. We do not expect significant seasonal snow on any but the highest peaks.	\N	\N	\N
923	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	West Slopes Central - Skagit River to South of I-90	Avoid steep previous lee slopes with firmer wind transported snow from the recent storm mainly in the above treeline band Tuesday.	Moderate	Moderate	Low
921	6:38 AM PST Tuesday, December 23, 2014	2014-12-23 14:38:00	Garth Ferber	Olympics	There is still a shallow snowpack in the Olympics. We do not expect significant seasonal snow on any but the highest peaks of the range.	\N	\N	\N
919	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	East Slopes North - Canadian Border to Lake Chelan	Avoid steep previous lee slopes with firmer wind transported snow from the recent storm mainly in the above treeline band Tuesday.	Moderate	Moderate	Low
915	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	West Slopes North - Canadian Border to Skagit River	The northwest Cascades should begin to see new storm and wind slab layers forming Tuesday afternoon.	Considerable	Moderate	Moderate
914	6:00 PM PST Monday, December 22, 2014	2014-12-23 02:00:00	Garth Ferber	East Slopes South - South of I-90 to Columbia River	There is still a shallow snowpack in this area. We do not expect significant seasonal snow on any but the highest peaks.	\N	\N	\N
912	6:00 PM PST Sunday, December 21, 2014	2014-12-22 02:00:00	Kenny Kramer	Mt Hood	The storm over the region Saturday night and Sunday produced mainly rain for the Mt. Hood area at elevations where avalanche forecasts apply. However, the avalanche danger on the upper volcano will likely be much greater due to heavy snow and strong winds. Travel into the alpine is strongly discouraged.	Considerable	Moderate	Moderate
910	6:00 PM PST Sunday, December 21, 2014	2014-12-22 02:00:00	Kenny Kramer	East Slopes North - Canadian Border to Lake Chelan	Unstable storm and wind slabs should persist near and above treeline Monday, but begin gradually settling.  Choose conservative routes as dense storm snow may be masking weaker lower density snow below.	Considerable	Moderate	Moderate
908	6:00 PM PST Sunday, December 21, 2014	2014-12-22 02:00:00	Kenny Kramer	Olympics	There is a very shallow snowpack in the Olympics. The storm over the region Saturday night and Sunday produced mainly rain for the Olympics. We do not expect a significant avalanche danger in all but the highest peaks of the range.	\N	\N	\N
906	7:02 PM PST Saturday, December 20, 2014	2014-12-21 03:02:00	Kenny Kramer	East Slopes South - South of I-90 to Columbia River	There is a very shallow snowpack in the southeast Cascades. An avalanche forecast for this zone will be issued when the snowpack is deep enough to present widespread avalanche potential.	\N	\N	\N
902	7:02 PM PST Saturday, December 20, 2014	2014-12-21 03:02:00	Kenny Kramer	Olympics	There is a very shallow snowpack in the Olympics. The storm over the region Saturday night and Sunday will produce mainly rain for the Olympics. We do not expect a significant avalanche danger in all but the highest peaks of the range.	\N	\N	\N
900	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	East Slopes South - South of I-90 to Columbia River	There is a very shallow snowpack in the southeast Cascades. An avalanche forecast for this zone will be issued when the snowpack is deep enough to present widespread avalanche potential.	\N	\N	\N
898	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	Olympics	There is a very shallow snowpack in the Olympics. The upcoming weekend storm system is expected to be mostly rain for the Olympics. We do not expect a significant avalanche danger in all but the highest peaks of the range. An avalanche forecast for this zone will be issued when the snowpack is deep enough to present widespread avalanche potential.	\N	\N	\N
895	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	West Slopes North - Canadian Border to Skagit River	Due to a shallow snowpack at low elevations... the greatest avalanche danger should be present in the near and above treeline zones within the new storm snow. Poor visibility is expected Saturday; don't be fooled by low snow cover at the trailhead and be aware of what terrain you are connected to above.	High	Considerable	Moderate
888	3:03 PM PST Wednesday, November 19, 2014	2014-11-19 23:03:00	Kenny Kramer	Olympics	Winter is just around the corner!   Regular NWAC mountain weather and avalanche forecasts usually begin late November. For more notes on early season avalanche hazards and Fall NWAC operations, please read the section below.	\N	\N	\N
886	1:56 PM PST Friday, June 20, 2014	2014-06-20 20:56:00	Dennis D'Amico	Olympics	Have a safe and enjoyable summer and we look forward to bringing you even better mountain weather and avalanche forecasts next season! A big thanks to all who help support the Northwest Avalanche Center.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter and spring season have ended.  We will begin daily operations once again in Fall '14.	\N	\N	\N
811	7:42 PM PST Friday, April 18, 2014	2014-04-19 02:42:00	Kenny Kramer	Olympics	Increasing winter like avalanche conditions should be seen in the near and above treeline zone by late Saturday afternoon as a front moves across the region.	Moderate	Moderate	Low
899	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	Mt Hood	The upcoming weekend storm system is expected to bring heavy rain and wind for the majority of Mt. Hood where we produce avalanche forecasts. The avalanche danger on the upper volcano and out of our forecast area will likely be high due to heavy snow and strong winds. Travel into the alpine is strongly discouraged.  An avalanche forecast for this zone will be issued when the snowpack is deep enough to present widespread avalanche potential.	\N	\N	\N
897	9:36 PM PST Friday, December 19, 2014	2014-12-20 05:36:00	Dennis D'Amico	West Slopes Central - Skagit River to South of I-90	Due to a shallow snowpack at low elevations... the greatest avalanche danger should be present in the near and above treeline zones within the new storm snow. Poor visibility is expected Saturday; don't be fooled by low snow cover at the trailhead and be aware of what terrain you are connected to above.	Considerable	Moderate	Moderate
890	3:31 PM PST Friday, December 12, 2014	2014-12-12 23:31:00	Garth Ferber	Olympics	Daily mountain weather forecasting will begin next Monday December 15th. Avalanche forecasting will begin when there is sufficient snow for avalanches in more of our forecast area. For more notes on early season avalanche hazards and Fall NWAC operations, please read the section below.	\N	\N	\N
887	8:38 AM PST Wednesday, November 19, 2014	2014-11-19 16:38:00	Alex Tokar	Olympics	Winter is just around the corner!   Regular NWAC mountain weather and avalanche forecasts usually begin in mid to late November. For more notes on early season avalanche hazards and Fall NWAC operations, please read the section below.	\N	\N	\N
884	10:11 AM PST Monday, June 2, 2014	2014-06-02 17:11:00	Kenny Kramer	Olympics	Have a safe and enjoyable rest of the spring and we look forward to bringing you even better mountain weather and avalanche forecasts next season! A big thanks to all who help in supporting the Northwest Avalanche Center.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored through mid-June at the Northwest Weather and Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued when unusually severe avalanche conditions develop.  When issued such forecasts will be available on the NWAC Web site.	\N	\N	\N
882	10:57 AM PST Tuesday, May 27, 2014	2014-05-27 17:57:00	Dennis D'Amico	Olympics	The next Avalanche and Weather Weekend Outlook will be issued around noon on Friday, May 30th.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
880	11:42 AM PST Tuesday, May 20, 2014	2014-05-20 18:42:00	Dennis D'Amico	Olympics	The next Avalanche and Weather Weekend Outlook will be issued mid-day Friday, May 23rd.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
877	6:00 PM PST Wednesday, May 14, 2014	2014-05-15 01:00:00	Garth Ferber	Olympics	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
873	2:30 PM PST Tuesday, May 13, 2014	2014-05-13 21:30:00	Dennis D'Amico	Stevens Pass	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
871	3:41 PM PST Monday, May 12, 2014	2014-05-12 22:41:00	Dennis D'Amico	Olympics	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
869	4:12 PM PST Friday, May 9, 2014	2014-05-09 23:12:00	Garth Ferber	Olympics	Weather and Avalanche Outlook for Friday, May 9th through Sunday, May 11th. Unless conditions significantly change, this statement will not be updated over the weekend.\n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
867	11:05 AM PST Monday, May 5, 2014	2014-05-05 18:05:00	Dennis D'Amico	Olympics	The next Avalanche and Weather Weekend Outlook will be issued the afternoon of Thursday, May 8th.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
862	6:04 PM PST Friday, May 2, 2014	2014-05-03 01:04:00	Dennis D'Amico	Olympics	Avalanche and Weather Outlook in effect for May 3rd and May 4th.  Unless conditions significantly change, this statement will not be updated over the weekend.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
860	6:10 PM PST Thursday, May 1, 2014	2014-05-02 01:10:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Dangerous avalanche conditions are expected with widespread wet snow avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	\N	\N	\N
858	6:18 PM PST Wednesday, April 30, 2014	2014-05-01 01:18:00	Kenny Kramer	Mt Hood	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
856	6:18 PM PST Wednesday, April 30, 2014	2014-05-01 01:18:00	Kenny Kramer	Olympics	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
883	2:54 PM PST Friday, May 30, 2014	2014-05-30 21:54:00	Kenny Kramer	Olympics	This is the final Avalanche and Weather Weekend Outlook for the season. Have a safe and enjoyable rest of the spring and we look forward to bringing you even better mountain weather and avalanche forecasts next season!.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.	\N	\N	\N
881	12:44 PM PST Friday, May 23, 2014	2014-05-23 19:44:00	Dennis D'Amico	Olympics	This is an Avalanche and Weather Weekend Outlook for Saturday to Monday May, 24-26th. It will not be updated unless conditions are significantly different than expected.\n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
878	6:00 PM PST Thursday, May 15, 2014	2014-05-16 01:00:00	Garth Ferber	Olympics	NWAC avalanche forecasts apply to backcountry avalanche terrain in the Olympics, Washington Cascades and Mt Hood area. These forecasts do not apply to developed ski areas, avalanche terrain affecting highways and higher terrain on the volcanic peaks above the Cascade crest level.\n\nThis is a Weather and Avalanche Weekend Outlook for Friday to Monday 16-18 May. It will not be updated unless conditions are significantly different than expected.	\N	\N	\N
875	6:00 PM PST Wednesday, May 14, 2014	2014-05-15 01:00:00	Garth Ferber	Stevens Pass	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
874	2:30 PM PST Tuesday, May 13, 2014	2014-05-13 21:30:00	Dennis D'Amico	Olympics	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
872	3:41 PM PST Monday, May 12, 2014	2014-05-12 22:41:00	Dennis D'Amico	Stevens Pass	New snowfall received late last week will be susceptible to warm temperatures and solar effects through Thursday.  Extra caution is advised for those backcountry travelers pushing above treeline near and west of the Cascade crest, including the higher volcanoes, during this warm stretch.	\N	\N	\N
870	8:15 AM PST Monday, May 12, 2014	2014-05-12 15:15:00	Dennis D'Amico	Olympics	The next Avalanche and Weather Weekend Outlook will be issued the afternoon of Thursday, May 15th.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
868	4:37 PM PST Thursday, May 8, 2014	2014-05-08 23:37:00	Dennis D'Amico	Olympics	Avalanche and Weather Outlook in effect for Friday, May 9th through Sunday, May 11th.  Unless conditions significantly change, this statement will not be updated over the weekend.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
864	6:04 PM PST Friday, May 2, 2014	2014-05-03 01:04:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Avalanche and Weather Outlook in effect for May 3rd and May 4th.  Unless conditions significantly change, this statement will not be updated over the weekend.  \n\nPlease note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
859	6:10 PM PST Thursday, May 1, 2014	2014-05-02 01:10:00	Dennis D'Amico	Olympics	Very dangerous avalanche conditions are expected with widespread wet snow avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
857	6:18 PM PST Wednesday, April 30, 2014	2014-05-01 01:18:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Very dangerous avalanche conditions are expected with natural avalanches likely. Some of these slides may become large and potentially destructive in force and as a result, travel in higher avalanche terrain is not recommended.	\N	\N	\N
855	6:05 PM PST Tuesday, April 29, 2014	2014-04-30 01:05:00	Kenny Kramer	Mt Hood	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
854	6:05 PM PST Tuesday, April 29, 2014	2014-04-30 01:05:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Very dangerous avalanche conditions are expected with natural avalanches likely. Some of these slides may become large and potentially destructive in force and as a result, travel in higher avalanche terrain is not recommended.	\N	\N	\N
852	6:00 PM PST Monday, April 28, 2014	2014-04-29 01:00:00	Kenny Kramer	Mt Hood	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
849	6:00 PM PST Monday, April 28, 2014	2014-04-29 01:00:00	Kenny Kramer	Olympics	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
843	5:23 PM PST Saturday, April 26, 2014	2014-04-27 00:23:00	Dennis D'Amico	WA Cascades near and west of crest - between Snoqualmie and White Pass	Loose slides or soft storm slab will become more likely with subtle daytime warming in the afternoon or during intense precipitation rates. Watch for wind slab on lee aspects at higher elevations. Cautious terrain and travel decisions are necessary for a safe Sunday; Considerable means skier triggered avalanches are likely!	Considerable	Considerable	Considerable
840	5:23 PM PST Saturday, April 26, 2014	2014-04-27 00:23:00	Dennis D'Amico	Olympics	Loose slides or soft storm slab will become more likely with subtle daytime warming in the afternoon or during intense precipitation rates. Watch for wind slab on lee aspects at higher elevations. Cautious terrain and travel decisions are necessary for a safe Sunday; Considerable means skier triggered avalanches are likely!	Considerable	Considerable	Moderate
853	6:05 PM PST Tuesday, April 29, 2014	2014-04-30 01:05:00	Kenny Kramer	Olympics	Very dangerous avalanche conditions are expected with many large to very large natural avalanches likely. Some of these slides may become destructive in force and as a result, travel in avalanche terrain is not recommended.	High	High	High
851	6:00 PM PST Monday, April 28, 2014	2014-04-29 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Please note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available. Additional forecasts or special statements will be issued according to the criteria and schedule given here.	\N	\N	\N
844	5:23 PM PST Saturday, April 26, 2014	2014-04-27 00:23:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Loose slides or soft storm slab will become more likely with subtle daytime warming in the afternoon or during intense precipitation rates, mainly seen near the crest. Watch for wind slab on lee aspects at higher elevations.  Use increasing caution at higher elevations.	Considerable	Moderate	Moderate
842	5:23 PM PST Saturday, April 26, 2014	2014-04-27 00:23:00	Dennis D'Amico	Mt Hood	Loose slides or soft storm slab will become more likely with subtle daytime warming in the afternoon or during intense precipitation rates. Watch for wind slab on lee aspects at higher elevations. Cautious terrain and travel decisions are necessary for a safe Sunday; Considerable means skier triggered avalanches are likely!	Considerable	Considerable	Considerable
839	6:13 PM PST Friday, April 25, 2014	2014-04-26 01:13:00	Dennis D'Amico	Mt Hood	Watch for loose wet avalanches when and if the sun comes out Saturday, especially on steeper solar aspects. More winter-like avalanche concerns are possible at higher elevations, such as wind slab on lee aspects. Don't let your guard down just because it's late April!	Considerable	Moderate	Moderate
838	6:13 PM PST Friday, April 25, 2014	2014-04-26 01:13:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Watch for loose wet avalanches when and if the sun comes out Saturday, especially on steeper solar aspects. More winter-like avalanche concerns are possible at higher elevations, such as wind slab on lee aspects. Don't let your guard down just because it's late April!	Moderate	Moderate	Moderate
836	6:13 PM PST Friday, April 25, 2014	2014-04-26 01:13:00	Dennis D'Amico	Olympics	Watch for loose wet avalanches when and if the sun comes out Saturday, especially on steeper solar aspects. More winter-like avalanche concerns are possible at higher elevations, such as wind slab on lee aspects. Don't let your guard down just because it's late April!	Considerable	Moderate	Moderate
835	9:36 PM PST Thursday, April 24, 2014	2014-04-25 04:36:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Evaluation snow and terrain carefully and identify features of concern east of the crest on Friday.	\N	\N	\N
834	9:36 PM PST Thursday, April 24, 2014	2014-04-25 04:36:00	Garth Ferber	Olympics	Careful snowpack evaluation, cautious routefinding and conservative decisions should be essential near and west of the crest on Friday.	\N	\N	\N
833	6:00 PM PST Thursday, April 24, 2014	2014-04-25 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Evaluation snow and terrain carefully and identify features of concern east of the crest on Friday.	\N	\N	\N
830	6:00 PM PST Thursday, April 24, 2014	2014-04-25 01:00:00	Garth Ferber	Olympics	Careful snowpack evaluation, cautious routefinding and conservative decisions should be essential near and west of the crest on Friday.	\N	\N	\N
829	6:00 PM PST Wednesday, April 23, 2014	2014-04-24 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Heightened avalanche conditions on specific terrain features east of the crest on Thursday. Evaluate snow and terrain carefully and identify features of concern.	\N	\N	\N
828	6:00 PM PST Wednesday, April 23, 2014	2014-04-24 01:00:00	Garth Ferber	Olympics	Dangerous avalanche conditions at Hurricane and from Mt Baker to Snoqualmie on Thursday. Careful snowpack evaluation, cautious routefinding and conservative decisions should be essential.	\N	\N	\N
827	6:00 PM PST Wednesday, April 23, 2014	2014-04-24 01:00:00	Garth Ferber	Mt Hood	Very dangerous avalanche conditions are likely from Mt Rainier to Mt Hood on Thursday. Travel in avalanche terrain from Mt Rainier to Mt Hood is not recommended.	High	High	High
824	8:44 AM PST Wednesday, April 23, 2014	2014-04-23 15:44:00	Garth Ferber	Mt Hood	Very dangerous avalanche conditions are likely at Mt Hood on Wednesday. Travel in avalanche terrain at Mt Hood is not recommended on Wednesday.	\N	\N	\N
823	8:44 AM PST Wednesday, April 23, 2014	2014-04-23 15:44:00	Garth Ferber	Olympics	Heightened avalanche conditions are expected in this area on Wednesday mainly near and west of the crest. Evaluation snow and terrain carefully and identify snow conditions and terrain features of concern.	\N	\N	\N
821	8:44 AM PST Wednesday, April 23, 2014	2014-04-23 15:44:00	Garth Ferber	Snoqualmie Pass	Dangerous avalanche conditions are likely in this area on Wednesday mainly near and west of the crest. Careful snowpack evaluation, cautious route-finding and conservative decision making will be essential in this area.	\N	\N	\N
820	4:50 PM PST Tuesday, April 22, 2014	2014-04-22 23:50:00	Dennis D'Amico	Mt Hood	Expect moderate to heavy rain and snow and a warming trend later Wednesday to cause deteriorating and dangerous avalanche conditions on Mt. Hood, especially late in the day.	\N	\N	\N
819	4:50 PM PST Tuesday, April 22, 2014	2014-04-22 23:50:00	Dennis D'Amico	Olympics	SPRING AVALANCHE STATEMENT IN EFFECT\n\nIf you have any comments or suggestions regarding this winter's mountain weather or backcountry avalanche forecasting program, please direct them to:\n\nNorthwest Avalanche Center\n7600 Sandpoint Way NE\nSeattle, Washington 98115\n\nYou may also email comments to: nwac.sew@noaa.gov or phone 206-526-4666 and leave a message.\n\nGeneral notes regarding spring avalanches follow . . .\n\nDuring fair spring weather the avalanche danger is generally lowest during the night and early morning hours when surface snow refreezes due to heat loss to the surrounding atmosphere.  During the day, sun effects and warm air temperatures can rapidly melt and weaken surface snow layers and produce an increasing avalanche danger during the late morning and afternoon.  Wet loose avalanche activity generally starts on east and southeast facing slopes receiving morning sunshine and progresses to the west and southwest facing slopes during the afternoon. Therefore the safest time to cross potential avalanche terrain is during early morning hours before the surface snow begins to warm and weaken.\n\nThis daily melt-freeze cycle is strongly affected by any cloud cover during the night since clouds at night limit cooling and may prevent re-freezing. Lack of a thorough surface re-freeze may allow melt water to affect and weaken progressively deeper layers in the snow cover. Snowpack weakening is maximized when warm days are followed by warm overnight temperatures and overcast skies.  Backcountry travelers should exercise particular caution under these conditions that often lead to considerable wet loose slide activity along with possible wet slab avalanches.\n\nBackcountry travelers should also be aware that spring storms might quickly produce avalanche conditions.  Although precipitation may fall as rain at lower elevations, substantial new snow may be deposited at higher elevations.  This new snow may form a poor bond with an old crusted snow surface.  Rapid rises in temperature following the storm due to intense solar effects may quickly warm and weaken any recent snow, which may need little or no disturbance to slide.  While subsequent wet loose slides may start small, they may entrain more snow as they descend and may trigger larger wet slab slides as well. Dangerous conditions may also result from cornices formed during spring storms; the cornices may become unstable and fail following warming. Slopes beneath glide cracks should normally be avoided as the entire snow cover may release from melt water lubrication and weakening. Glide avalanches are difficult to predict as they are not necessarily tied to the warmest part of the day or following the heaviest rain.\n\nRain may also increase the likelihood of avalanches. Rain falling on an already wet snowpack causes water to quickly percolate through the snowpack and weaken progressively deeper snow layers.  If the water encounters a crust or an ice lens it may flow along this layer and lubricate it, making avalanches increasingly likely within the snow above.\n\nNo matter what the season, backcountry travelers should avoid slopes of questionable snowpack stability. Remember that many areas, which undergo regular avalanche control during the winter, are likely not controlled in the spring. \n\nAlso remember that small avalanches may be dangerous. Although the wet loose snow in motion may be soft, when it stops rapid hardening takes place. Most avalanche victims trigger the avalanches in which they are caught, and almost half of all avalanche deaths occur in slides traveling less than 300 feet; with some slide fatalities occurring with victims buried only a few inches under the snow surface. Several fatal accidents have occurred during past springs from climbers or skiers releasing and being caught in relatively small avalanches, which subsequently carried the victims into or over a terrain trap. Hence, backcountry travelers should be aware of both the terrain above and below intended routes.\n\nHave a safe and enjoyable spring!\n\nNWAC	\N	\N	\N
818	7:30 AM PST Monday, April 21, 2014	2014-04-21 14:30:00	Kenny Kramer	Olympics	Please note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However, weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.\n\nSPRING AVALANCHE STATEMENT\n\nIf you have any comments or suggestions regarding this winter's mountain weather or backcountry avalanche forecasting program, please direct them to:\n\nNorthwest Avalanche Center\n\n7600 Sandpoint Way NE\n\nSeattle, Washington 98115\n\nYou may email comments to:\n\nnwac.sew@noaa.gov\n\nor phone 206?526?4666 and leave a message.\n\nNote that in areas retaining a significant winter snowpack, backcountry travelers face a continuing risk of avalanches during the springtime.  We strongly advise that backcountry travelers continue to assess snowpack stability as they travel and project the effects of anticipated future weather on the snowpack when making route choices.\n\nSome general notes regarding spring avalanches follow . . .\n\nDuring fair spring weather the avalanche danger is generally lowest during the night and early morning hours when surface snow refreezes due to heat loss to the surrounding atmosphere.  During the day, sun effects and warm air temperatures can rapidly melt and weaken surface snow layers and produce an increasing avalanche danger during the late morning and afternoon.  Wet loose avalanche activity generally starts on east and southeast facing slopes receiving morning sunshine and progresses to the west and southwest facing slopes during the afternoon.  Therefore the safest time to cross potential avalanche terrain is during early morning hours before the surface snow begins to warm and weaken.\n\nThis daily melt-freeze cycle is strongly affected by any cloud cover during the night since clouds at night limit cooling and may prevent freezing.  This may allow melt water and associated snowpack weakening to affect progressively deeper layers in the snow cover.  Snowpack weakening is maximized when warm days are followed by warm overnight temperatures and overcast skies.  Backcountry travelers should exercise particular caution under these conditions that often lead to considerable wet loose slide activity along with possible wet slab avalanches.\n\nBackcountry travelers should also be aware that spring storms might quickly produce avalanche conditions.  Although precipitation may fall as rain at lower elevations, substantial new snow may be deposited at higher elevations.  This new snow may form a poor bond with an old crusted snow surface.  Rapid rises in temperature following the storm due to intense solar effects may quickly warm and weaken any recent snow, which may need little or no disturbance to slide.  While subsequent wet loose slides may start small, they may entrain more snow as they descend and may trigger larger wet slab slides as well.  Dangerous conditions may also result from cornices deposited by spring storms, as these may be unstable and release during later warm days.  Also, slopes beneath glide cracks should normally be avoided, especially during the heat of the day, as the entire snow cover may release from melt water lubrication and weakening.\n\nPrecipitation as rain may also create avalanche conditions.  This is because rain falling on an already wet snowpack causes water to quickly percolate through the snowpack, which weakens progressively deeper snow layers.  If the water encounters a crust or an ice lens, it may flow along this layer and lubricate it, making avalanches increasingly likely within the snow above.\n\nNo matter what the season, backcountry travelers should avoid slopes of questionable snowpack stability.  Remember that many areas, which undergo regular avalanche control during the winter, may not be controlled in the spring.\n\nAlso remember that small avalanches may be dangerous. Although the wet loose snow in motion may be soft, when it stops rapid hardening takes place. Most avalanche victims trigger the avalanches in which they are caught, and almost half of all avalanche deaths occur in slides traveling less than 300 feet; with some slide fatalities occurring with victims buried only a few inches under the snow surface. Several fatal accidents have occurred during past springs from climbers or skiers releasing and being caught in relatively small avalanches, which subsequently carried the victims into or over a terrain trap. Hence, backcountry travelers should be aware of both the terrain above and below intended routes.\n\nHave a safe and enjoyable spring!	\N	\N	\N
817	7:07 AM PST Sunday, April 20, 2014	2014-04-20 14:07:00	Garth Ferber	Olympics	A continuing mix of spring and winter avalanche conditions should be seen on Sunday.	Moderate	Moderate	Low
816	7:07 AM PST Sunday, April 20, 2014	2014-04-20 14:07:00	Garth Ferber	Stevens Pass	A continuing mix of spring and winter avalanche conditions should be seen on Sunday.	Considerable	Considerable	Moderate
815	6:00 PM PST Saturday, April 19, 2014	2014-04-20 01:00:00	Garth Ferber	Olympics	A continuing mix of spring and winter avalanche conditions should be seen on Sunday.	Moderate	Moderate	Low
814	6:00 PM PST Saturday, April 19, 2014	2014-04-20 01:00:00	Garth Ferber	Stevens Pass	A continuing mix of spring and winter avalanche conditions should be seen on Sunday.	Considerable	Considerable	Moderate
813	12:41 PM PST Saturday, April 19, 2014	2014-04-19 19:41:00	Garth Ferber	Olympics	Increasing winter like avalanche conditions should be seen in the near and above treeline zone by late Saturday afternoon as a front moves across the region.	Moderate	Moderate	Low
812	12:41 PM PST Saturday, April 19, 2014	2014-04-19 19:41:00	Garth Ferber	Stevens Pass	Increasing winter like avalanche conditions should be seen in the near and above treeline zone by late Saturday afternoon as a front moves across the region.	Moderate	Moderate	Moderate
810	7:42 PM PST Friday, April 18, 2014	2014-04-19 02:42:00	Kenny Kramer	Stevens Pass	Increasing winter like avalanche conditions should be seen in the near and above treeline zone by late Saturday afternoon as a front moves across the region.	Moderate	Moderate	Moderate
808	6:00 PM PST Wednesday, April 16, 2014	2014-04-17 01:00:00	Garth Ferber	Olympics	A mix of increasing winter and spring avalanche conditions should be seen in the above treeline zone especially in the Washington Cascades near and west of the crest and at Mt Hood on Thursday.	\N	\N	\N
805	6:00 PM PST Monday, April 14, 2014	2014-04-15 01:00:00	Garth Ferber	Olympics	Please note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.\n\nSPRING AVALANCHE STATEMENT\n\nIf you have any comments or suggestions regarding this winter's mountain weather or backcountry avalanche forecasting program, please direct them to:\n\nNorthwest Avalanche Center\n\n7600 Sandpoint Way NE\n\nSeattle, Washington 98115\n\nYou may email comments to:\n\nnwac.sew@noaa.gov\n\nor phone 206?526?4666 and leave a message.\n\nNote that in areas retaining a significant winter snowpack, backcountry travelers face a continuing risk of avalanches during the springtime.  We strongly advise that backcountry travelers continue to assess snowpack stability as they travel and project the effects of anticipated future weather on the snowpack when making route choices.\n\nSome general notes regarding spring avalanches follow . . .\n\nDuring fair spring weather the avalanche danger is generally lowest during the night and early morning hours when surface snow refreezes due to heat loss to the surrounding atmosphere.  During the day, sun effects and warm air temperatures can rapidly melt and weaken surface snow layers and produce an increasing avalanche danger during the late morning and afternoon.  Wet loose avalanche activity generally starts on east and southeast facing slopes receiving morning sunshine and progresses to west and southwest facing slopes during the afternoon.  Therefore the safest time to cross potential avalanche terrain is during early morning hours before the surface snow begins to warm and weaken.\n\nThis daily melt?freeze cycle is strongly affected by any cloud cover during the night since clouds at night limit cooling and may prevent freezing.  This may allow melt water and associated snowpack weakening to affect progressively deeper layers in the snow cover.  Snowpack weakening is maximized when warm days are followed by warm overnight temperatures and overcast skies.  Backcountry travelers should exercise particular caution under these conditions that often lead to considerable wet loose slide activity along with possible wet slab avalanches.\n\nBackcountry travelers should also be aware that spring storms might quickly produce avalanche conditions.  Although precipitation may fall as rain at lower elevations, substantial new snow may be deposited at higher elevations.  This new snow may form a poor bond with an old crusted snow surface.  Rapid rises in temperature following the storm due to intense solar effects may quickly warm and weaken recent snow, which may need little or no disturbance to slide.  While subsequent wet loose slides may start small, they may entrain more snow as they descend and may trigger larger wet slab slides as well.  Dangerous conditions may also result from cornices deposited by spring storms, as these may be unstable and release during later warm days.  Also, slopes beneath glide cracks should normally be avoided, especially during the heat of the day, as the entire snow cover may release from melt water lubrication and weakening.\n\nPrecipitation as rain may also create avalanche conditions.  This is because rain falling on an already wet snowpack causes water to quickly percolate through the snowpack, which weakens progressively deeper snow layers.  If the water encounters a crust or an ice lens, it may flow along this layer and lubricate it, making avalanches increasingly likely within the snow above.\n\nNo matter what the season, backcountry travelers should avoid slopes of questionable snowpack stability.  Remember that many areas, which undergo regular avalanche control during the winter, may not be controlled in the spring.\n\nAlso remember that small avalanches may be dangerous. Although wet loose snow in motion may be soft, when it stops rapid hardening takes place. Most avalanche victims trigger the avalanches in which they are caught, and almost half of all avalanche deaths occur in slides traveling less than 300 feet; with some slide fatalities occurring with victims buried only a few inches under the snow surface. Several fatal accidents have occurred during past springs from climbers or skiers releasing and being caught in relatively small avalanches, which subsequently carried the victims into or over a terrain trap. Hence, backcountry travelers should be aware of both the terrain above and below intended routes.\n\nHave a safe and enjoyable spring!	\N	\N	\N
804	11:03 AM PST Monday, April 14, 2014	2014-04-14 18:03:00	Garth Ferber	Olympics	Please note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.\n\nSPRING AVALANCHE STATEMENT\n\nIf you have any comments or suggestions regarding this winter's mountain weather or backcountry avalanche forecasting program, please direct them to:\n\nNorthwest Avalanche Center\n\n7600 Sandpoint Way NE\n\nSeattle, Washington 98115\n\nYou may email comments to:\n\nnwac.sew@noaa.gov\n\nor phone 206?526?4666 and leave a message.\n\nNote that in areas retaining a significant winter snowpack, backcountry travelers face a continuing risk of avalanches during the springtime.  We strongly advise that backcountry travelers continue to assess snowpack stability as they travel and project the effects of anticipated future weather on the snowpack when making route choices.\n\nSome general notes regarding spring avalanches follow . . .\n\nDuring fair spring weather the avalanche danger is generally lowest during the night and early morning hours when surface snow refreezes due to heat loss to the surrounding atmosphere.  During the day, sun effects and warm air temperatures can rapidly melt and weaken surface snow layers and produce an increasing avalanche danger during the late morning and afternoon.  Wet loose avalanche activity generally starts on east and southeast facing slopes receiving morning sunshine and progresses to west and southwest facing slopes during the afternoon.  Therefore the safest time to cross potential avalanche terrain is during early morning hours before the surface snow begins to warm and weaken.\n\nThis daily melt?freeze cycle is strongly affected by any cloud cover during the night since clouds at night limit cooling and may prevent freezing.  This may allow melt water and associated snowpack weakening to affect progressively deeper layers in the snow cover.  Snowpack weakening is maximized when warm days are followed by warm overnight temperatures and overcast skies.  Backcountry travelers should exercise particular caution under these conditions that often lead to considerable wet loose slide activity along with possible wet slab avalanches.\n\nBackcountry travelers should also be aware that spring storms might quickly produce avalanche conditions.  Although precipitation may fall as rain at lower elevations, substantial new snow may be deposited at higher elevations.  This new snow may form a poor bond with an old crusted snow surface.  Rapid rises in temperature following the storm due to intense solar effects may quickly warm and weaken recent snow, which may need little or no disturbance to slide.  While subsequent wet loose slides may start small, they may entrain more snow as they descend and may trigger larger wet slab slides as well.  Dangerous conditions may also result from cornices deposited by spring storms, as these may be unstable and release during later warm days.  Also, slopes beneath glide cracks should normally be avoided, especially during the heat of the day, as the entire snow cover may release from melt water lubrication and weakening.\n\nPrecipitation as rain may also create avalanche conditions.  This is because rain falling on an already wet snowpack causes water to quickly percolate through the snowpack, which weakens progressively deeper snow layers.  If the water encounters a crust or an ice lens, it may flow along this layer and lubricate it, making avalanches increasingly likely within the snow above.\n\nNo matter what the season, backcountry travelers should avoid slopes of questionable snowpack stability.  Remember that many areas, which undergo regular avalanche control during the winter, may not be controlled in the spring.\n\nAlso remember that small avalanches may be dangerous. Although wet loose snow in motion may be soft, when it stops rapid hardening takes place. Most avalanche victims trigger the avalanches in which they are caught, and almost half of all avalanche deaths occur in slides traveling less than 300 feet; with some slide fatalities occurring with victims buried only a few inches under the snow surface. Several fatal accidents have occurred during past springs from climbers or skiers releasing and being caught in relatively small avalanches, which subsequently carried the victims into or over a terrain trap. Hence, backcountry travelers should be aware of both the terrain above and below intended routes.\n\nHave a safe and enjoyable spring!	\N	\N	\N
802	6:00 PM PST Saturday, April 12, 2014	2014-04-13 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Low
800	6:00 PM PST Saturday, April 12, 2014	2014-04-13 01:00:00	Kenny Kramer	Olympics	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
798	6:00 PM PST Friday, April 11, 2014	2014-04-12 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Low
795	6:00 PM PST Thursday, April 10, 2014	2014-04-11 01:00:00	Dennis D'Amico	Mt Hood	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
793	6:00 PM PST Thursday, April 10, 2014	2014-04-11 01:00:00	Dennis D'Amico	Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
791	6:00 PM PST Wednesday, April 9, 2014	2014-04-10 01:00:00	Garth Ferber	Mt Hood	The main concerns will be wet loose avalanches and cornice failures on Thursday.	Considerable	Moderate	Moderate
789	6:00 PM PST Wednesday, April 9, 2014	2014-04-10 01:00:00	Garth Ferber	Stevens Pass	The main concerns will be wet loose avalanches and cornice failures on Thursday.	Considerable	Moderate	Moderate
787	7:54 AM PST Wednesday, April 9, 2014	2014-04-09 14:54:00	Garth Ferber	Mt Hood	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Moderate
785	7:54 AM PST Wednesday, April 9, 2014	2014-04-09 14:54:00	Garth Ferber	Stevens Pass	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Moderate
783	6:00 PM PST Tuesday, April 8, 2014	2014-04-09 01:00:00	Garth Ferber	Mt Hood	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Moderate
779	6:00 PM PST Tuesday, April 8, 2014	2014-04-09 01:00:00	Garth Ferber	Olympics	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Moderate
777	6:00 PM PST Monday, April 7, 2014	2014-04-08 01:00:00	Dennis D'Amico	Mt Hood	Watch for wet loose concerns and sensitive cornices again on Tuesday, human triggered avalanches remain possible, especially on steeper solar slopes.	Moderate	Moderate	Moderate
775	6:00 PM PST Monday, April 7, 2014	2014-04-08 01:00:00	Dennis D'Amico	Stevens Pass	Watch for wet loose concerns and sensitive cornices again on Tuesday, human triggered avalanches remain possible, especially on steeper slopes.	Moderate	Moderate	Moderate
773	6:00 PM PST Sunday, April 6, 2014	2014-04-07 01:00:00	Dennis D'Amico	Mt Hood	Wet snow avalanche concerns are driving the avalanche danger Monday. Avoid steep and open slopes that have recently received snowfall as the temperature warms and the sun comes out.	Considerable	Considerable	Considerable
772	6:00 PM PST Sunday, April 6, 2014	2014-04-07 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wet snow avalanche concerns are driving the avalanche danger Monday. Avoid steep and open slopes that have recently received snowfall as the temperature warms and the sun comes out.	Considerable	Considerable	Moderate
770	6:00 PM PST Sunday, April 6, 2014	2014-04-07 01:00:00	Dennis D'Amico	Olympics	Wet snow avalanche concerns are driving the avalanche danger Monday. Avoid steep and open slopes that have recently received snowfall as the temperature warms and the sun comes out.	Considerable	Considerable	Considerable
768	6:29 AM PST Sunday, April 6, 2014	2014-04-06 13:29:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Moderate	Moderate	Low
766	6:29 AM PST Sunday, April 6, 2014	2014-04-06 13:29:00	Dennis D'Amico	Olympics	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Considerable	Considerable	Moderate
763	6:00 PM PST Saturday, April 5, 2014	2014-04-06 01:00:00	Kenny Kramer	Stevens Pass	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Considerable	Moderate	Moderate
761	6:00 PM PST Friday, April 4, 2014	2014-04-05 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A continued mix of winter like and spring conditions should be seen Saturday. The timing and strength of the incoming front on Saturday will be important for avalanche concerns on Saturday.	Moderate	Moderate	Low
759	6:00 PM PST Friday, April 4, 2014	2014-04-05 01:00:00	Garth Ferber	Stevens Pass	A continued mix of winter like and spring conditions should be seen Saturday. The timing and strength of the incoming front on Saturday will be important for avalanche concerns on Saturday.	Considerable	Considerable	Moderate
757	10:23 AM PST Friday, April 4, 2014	2014-04-04 17:23:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Moderate	Moderate	Low
755	10:23 AM PST Friday, April 4, 2014	2014-04-04 17:23:00	Garth Ferber	Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Considerable	Moderate
753	3:53 AM PST Friday, April 4, 2014	2014-04-04 10:53:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Moderate	Moderate	Low
752	3:53 AM PST Friday, April 4, 2014	2014-04-04 10:53:00	Garth Ferber	Mt Hood	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Moderate	Moderate
750	3:53 AM PST Friday, April 4, 2014	2014-04-04 10:53:00	Garth Ferber	Olympics	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Moderate	Moderate	Moderate
809	6:00 PM PST Thursday, April 17, 2014	2014-04-18 01:00:00	Kenny Kramer	Olympics	A mix of increasing winter and spring avalanche conditions should be seen in the above treeline zone especially in the Washington Cascades near and west of the crest and the Mt Hood area on Friday.	\N	\N	\N
807	6:00 PM PST Tuesday, April 15, 2014	2014-04-16 01:00:00	Garth Ferber	Olympics	Please note that regularly scheduled mountain weather and avalanche forecasts for the past winter season have ended.  However weather and snow conditions will continue to be monitored at the Northwest Avalanche Center with the information that remains available.  Additional forecasts or special statements will be issued according to the criteria and schedule given here.\n\nSPRING AVALANCHE STATEMENT\n\nIf you have any comments or suggestions regarding this winter's mountain weather or backcountry avalanche forecasting program, please direct them to:\n\nNorthwest Avalanche Center\n\n7600 Sandpoint Way NE\n\nSeattle, Washington 98115\n\nYou may email comments to:\n\nnwac.sew@noaa.gov\n\nor phone 206?526?4666 and leave a message.\n\nNote that in areas retaining a significant winter snowpack, backcountry travelers face a continuing risk of avalanches during the springtime.  We strongly advise that backcountry travelers continue to assess snowpack stability as they travel and project the effects of anticipated future weather on the snowpack when making route choices.\n\nSome general notes regarding spring avalanches follow . . .\n\nDuring fair spring weather the avalanche danger is generally lowest during the night and early morning hours when surface snow refreezes due to heat loss to the surrounding atmosphere.  During the day, sun effects and warm air temperatures can rapidly melt and weaken surface snow layers and produce an increasing avalanche danger during the late morning and afternoon.  Wet loose avalanche activity generally starts on east and southeast facing slopes receiving morning sunshine and progresses to west and southwest facing slopes during the afternoon.  Therefore the safest time to cross potential avalanche terrain is during early morning hours before the surface snow begins to warm and weaken.\n\nThis daily melt?freeze cycle is strongly affected by any cloud cover during the night since clouds at night limit cooling and may prevent freezing.  This may allow melt water and associated snowpack weakening to affect progressively deeper layers in the snow cover.  Snowpack weakening is maximized when warm days are followed by warm overnight temperatures and overcast skies.  Backcountry travelers should exercise particular caution under these conditions that often lead to considerable wet loose slide activity along with possible wet slab avalanches.\n\nBackcountry travelers should also be aware that spring storms might quickly produce avalanche conditions.  Although precipitation may fall as rain at lower elevations, substantial new snow may be deposited at higher elevations.  This new snow may form a poor bond with an old crusted snow surface.  Rapid rises in temperature following the storm due to intense solar effects may quickly warm and weaken recent snow, which may need little or no disturbance to slide.  While subsequent wet loose slides may start small, they may entrain more snow as they descend and may trigger larger wet slab slides as well.  Dangerous conditions may also result from cornices deposited by spring storms, as these may be unstable and release during later warm days.  Also, slopes beneath glide cracks should normally be avoided, especially during the heat of the day, as the entire snow cover may release from melt water lubrication and weakening.\n\nPrecipitation as rain may also create avalanche conditions.  This is because rain falling on an already wet snowpack causes water to quickly percolate through the snowpack, which weakens progressively deeper snow layers.  If the water encounters a crust or an ice lens, it may flow along this layer and lubricate it, making avalanches increasingly likely within the snow above.\n\nNo matter what the season, backcountry travelers should avoid slopes of questionable snowpack stability.  Remember that many areas, which undergo regular avalanche control during the winter, may not be controlled in the spring.\n\nAlso remember that small avalanches may be dangerous. Although wet loose snow in motion may be soft, when it stops rapid hardening takes place. Most avalanche victims trigger the avalanches in which they are caught, and almost half of all avalanche deaths occur in slides traveling less than 300 feet; with some slide fatalities occurring with victims buried only a few inches under the snow surface. Several fatal accidents have occurred during past springs from climbers or skiers releasing and being caught in relatively small avalanches, which subsequently carried the victims into or over a terrain trap. Hence, backcountry travelers should be aware of both the terrain above and below intended routes.\n\nHave a safe and enjoyable spring!	\N	\N	\N
803	6:00 PM PST Saturday, April 12, 2014	2014-04-13 01:00:00	Kenny Kramer	Mt Hood	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
801	6:00 PM PST Saturday, April 12, 2014	2014-04-13 01:00:00	Kenny Kramer	Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
799	6:00 PM PST Friday, April 11, 2014	2014-04-12 01:00:00	Kenny Kramer	Mt Hood	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
797	6:00 PM PST Friday, April 11, 2014	2014-04-12 01:00:00	Kenny Kramer	Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
796	6:00 PM PST Friday, April 11, 2014	2014-04-12 01:00:00	Kenny Kramer	Olympics	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
794	6:00 PM PST Thursday, April 10, 2014	2014-04-11 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Low
792	6:00 PM PST Thursday, April 10, 2014	2014-04-11 01:00:00	Dennis D'Amico	Olympics	Watch for wet loose concerns mainly during the afternoon and on steeper solar slopes.	Moderate	Moderate	Moderate
790	6:00 PM PST Wednesday, April 9, 2014	2014-04-10 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The main concerns will be wet loose avalanches and cornice failures on Thursday.	Moderate	Moderate	Low
788	6:00 PM PST Wednesday, April 9, 2014	2014-04-10 01:00:00	Garth Ferber	Olympics	The main concerns will be wet loose avalanches and cornice failures on Thursday.	Moderate	Moderate	Moderate
786	7:54 AM PST Wednesday, April 9, 2014	2014-04-09 14:54:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Low
784	7:54 AM PST Wednesday, April 9, 2014	2014-04-09 14:54:00	Garth Ferber	Olympics	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Moderate
782	6:00 PM PST Tuesday, April 8, 2014	2014-04-09 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Moderate	Moderate	Low
780	6:00 PM PST Tuesday, April 8, 2014	2014-04-09 01:00:00	Garth Ferber	Stevens Pass	A mix of winter like and spring conditions and concerns should be seen on Wednesday.	Considerable	Moderate	Moderate
778	6:00 PM PST Monday, April 7, 2014	2014-04-08 01:00:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	Watch for wet loose concerns and sensitive cornices again on Tuesday, human triggered avalanches will still be likely on steeper slopes.	Considerable	Considerable	Considerable
776	6:00 PM PST Monday, April 7, 2014	2014-04-08 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Watch for wet loose concerns and sensitive cornices again on Tuesday, human triggered avalanches remain possible, especially on steeper slopes.	Moderate	Moderate	Moderate
774	6:00 PM PST Monday, April 7, 2014	2014-04-08 01:00:00	Dennis D'Amico	Olympics	Watch for wet loose concerns and sensitive cornices again on Tuesday, human triggered avalanches will still be likely on steeper slopes.	Considerable	Considerable	Considerable
771	6:00 PM PST Sunday, April 6, 2014	2014-04-07 01:00:00	Dennis D'Amico	Stevens Pass	Wet snow avalanche concerns are driving the avalanche danger Monday. Avoid steep and open slopes that have recently received snowfall as the temperature warms and the sun comes out.	Considerable	Considerable	Considerable
769	6:29 AM PST Sunday, April 6, 2014	2014-04-06 13:29:00	Dennis D'Amico	Mt Hood	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Considerable	Moderate	Moderate
767	6:29 AM PST Sunday, April 6, 2014	2014-04-06 13:29:00	Dennis D'Amico	Stevens Pass	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Considerable	Considerable	Moderate
765	6:00 PM PST Saturday, April 5, 2014	2014-04-06 01:00:00	Kenny Kramer	Mt Hood	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Considerable	Moderate	Moderate
764	6:00 PM PST Saturday, April 5, 2014	2014-04-06 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Moderate	Moderate	Low
762	6:00 PM PST Saturday, April 5, 2014	2014-04-06 01:00:00	Kenny Kramer	Olympics	A continued mix of winter like and spring conditions should continue early Sunday with increasing wet snow conditions by Sunday afternoon.	Moderate	Moderate	Moderate
760	6:00 PM PST Friday, April 4, 2014	2014-04-05 01:00:00	Garth Ferber	Mt Hood	A continued mix of winter like and spring conditions should be seen Saturday. The timing and strength of the incoming front on Saturday will be important for avalanche concerns on Saturday.	Moderate	Moderate	Moderate
758	6:00 PM PST Friday, April 4, 2014	2014-04-05 01:00:00	Garth Ferber	Olympics	A continued mix of winter like and spring conditions should be seen Saturday. The timing and strength of the incoming front on Saturday will be important for avalanche concerns on Saturday.	Considerable	Considerable	Moderate
756	10:23 AM PST Friday, April 4, 2014	2014-04-04 17:23:00	Garth Ferber	Mt Hood	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Moderate	Moderate
754	10:23 AM PST Friday, April 4, 2014	2014-04-04 17:23:00	Garth Ferber	Olympics	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Moderate	Moderate	Moderate
751	3:53 AM PST Friday, April 4, 2014	2014-04-04 10:53:00	Garth Ferber	Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Considerable	Moderate
749	6:00 PM PST Thursday, April 3, 2014	2014-04-04 01:00:00	Garth Ferber	Mt Hood	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Moderate	Moderate
748	6:00 PM PST Thursday, April 3, 2014	2014-04-04 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Moderate	Moderate	Low
746	6:00 PM PST Thursday, April 3, 2014	2014-04-04 01:00:00	Garth Ferber	Olympics	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Moderate	Moderate
740	6:00 PM PST Wednesday, April 2, 2014	2014-04-03 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Watch for older but still sensitive wind slab on a variety of aspects, not just the traditional lee NW thru SE aspects near and above treeline indicated on the elevation/aspect diagram.	Moderate	Moderate	Low
737	6:00 PM PST Tuesday, April 1, 2014	2014-04-02 01:00:00	Kenny Kramer	Mt Hood	By Wednesday, the latest storm snow will be at least 3 days old and weaknesses in storm layers will have likely settled and stabilized, especially on solar aspects.  Conintue to watch for earlier wind slab deposits on steeper non-solar aspects at higher elevations, but mainly watch for solar effects on the recent snow on steep exposed terrain.	Moderate	Moderate	Moderate
735	6:00 PM PST Tuesday, April 1, 2014	2014-04-02 01:00:00	Kenny Kramer	Stevens Pass	By Wednesday, the latest storm snow will be at least 3 days old and weaknesses in storm layers will have likely settled and stabilized, especially on solar aspects.  Conintue to watch for earlier wind slab deposits on steeper non-solar aspects at higher elevations, but mainly watch for solar effects on the recent snow on steep exposed terrain.	Moderate	Moderate	Moderate
733	6:06 PM PST Monday, March 31, 2014	2014-04-01 01:06:00	Kenny Kramer	Mt Hood	By Tuesday, the latest storm snow will be at least 2 days old and weaknesses in storm layers will have likely settled a great deal. Human triggering wind or storm slabs will be more difficult, but not impossible.  Watch for earlier wind slab deposits and also watch for solar effects on recent snow on steep exposed terrain.	Considerable	Moderate	Moderate
731	6:06 PM PST Monday, March 31, 2014	2014-04-01 01:06:00	Kenny Kramer	Stevens Pass	By Tuesday, the latest storm snow will be at least 2 days old and weaknesses in storm layers will have likely settled a great deal. Human triggering wind or storm slabs will be more difficult, but not impossible.  Watch for earlier wind slab deposits and also watch for solar effects on recent snow on steep exposed terrain.	Considerable	Moderate	Moderate
729	6:00 PM PST Sunday, March 30, 2014	2014-03-31 01:00:00	Garth Ferber	Mt Hood	A mix of winter and spring conditions is starting to be seen in the Cascades. You will need to watch for a variety of concerns on Monday.	Considerable	Considerable	Moderate
727	6:00 PM PST Sunday, March 30, 2014	2014-03-31 01:00:00	Garth Ferber	Stevens Pass	A mix of winter and spring conditions is starting to be seen in the Cascades. You will need to watch for a variety of concerns on Monday.	Considerable	Considerable	Moderate
726	6:00 PM PST Sunday, March 30, 2014	2014-03-31 01:00:00	Garth Ferber	Olympics	A mix of winter and spring conditions is starting to be seen in the Cascades. You will need to watch for a variety of concerns on Monday.	Considerable	Considerable	Moderate
724	10:47 AM PST Sunday, March 30, 2014	2014-03-30 17:47:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Moderate	Moderate
721	6:00 PM PST Saturday, March 29, 2014	2014-03-30 01:00:00	Garth Ferber	Mt Hood	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Considerable	Moderate
719	6:00 PM PST Saturday, March 29, 2014	2014-03-30 01:00:00	Garth Ferber	Stevens Pass	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Considerable	Moderate
717	8:07 AM PST Saturday, March 29, 2014	2014-03-29 15:07:00	Garth Ferber	Mt Hood	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Considerable
713	8:07 AM PST Saturday, March 29, 2014	2014-03-29 15:07:00	Garth Ferber	Olympics	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Moderate
711	6:00 PM PST Friday, March 28, 2014	2014-03-29 01:00:00	Dennis D'Amico	Mt Hood	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Moderate	Moderate
710	6:00 PM PST Friday, March 28, 2014	2014-03-29 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Moderate
707	6:00 PM PST Friday, March 28, 2014	2014-03-29 01:00:00	Dennis D'Amico	Olympics	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Moderate
705	6:27 AM PST Friday, March 28, 2014	2014-03-28 13:27:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday afternoon.	Moderate	Moderate	Moderate
747	6:00 PM PST Thursday, April 3, 2014	2014-04-04 01:00:00	Garth Ferber	Stevens Pass	New winter like layers should be seen mainly near and above treeline on Friday. But spring snow conditions are also possible on solar slopes.	Considerable	Moderate	Moderate
741	6:00 PM PST Wednesday, April 2, 2014	2014-04-03 01:00:00	Dennis D'Amico	Mt Hood	Watch for older but still sensitive wind slab on a variety of aspects, not just the traditional lee NW thru SE aspects near and above treeline indicated on the elevation/aspect diagram.  If skies are sunnier than forecast Thursday, watch for wet loose concerns on solar aspects.	Moderate	Moderate	Low
739	6:00 PM PST Wednesday, April 2, 2014	2014-04-03 01:00:00	Dennis D'Amico	Stevens Pass	Watch for older but still sensitive wind slab on a variety of aspects, not just the traditional lee NW thru SE aspects near and above treeline indicated on the elevation/aspect diagram.	Moderate	Moderate	Low
738	6:00 PM PST Wednesday, April 2, 2014	2014-04-03 01:00:00	Dennis D'Amico	Olympics	Watch for new and older wind slab on lee aspects near and above treeline.  Wet loose avalanches should be confined to lower elevations.  Be prepared if weather and avalanche conditions deteriorate quicker than forecast on Thursday.	Moderate	Moderate	Moderate
736	6:00 PM PST Tuesday, April 1, 2014	2014-04-02 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	By Wednesday, the latest storm snow will be at least 3 days old and weaknesses in storm layers will have likely settled and stabilized, especially on solar aspects.  Conintue to watch for earlier wind slab deposits on steeper non-solar aspects at higher elevations, but mainly watch for solar effects on the recent snow on steep exposed terrain.	Moderate	Moderate	Low
734	6:00 PM PST Tuesday, April 1, 2014	2014-04-02 01:00:00	Kenny Kramer	Olympics	By Wednesday, the latest storm snow will be at least 3 days old and weaknesses in storm layers will have likely settled and stabilized, especially on solar aspects.  Conintue to watch for earlier wind slab deposits on steeper non-solar aspects at higher elevations, but mainly watch for solar effects on the recent snow on steep exposed terrain.	Moderate	Moderate	Moderate
732	6:06 PM PST Monday, March 31, 2014	2014-04-01 01:06:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	By Tuesday, the latest storm snow will be at least 2 days old and weaknesses in storm layers will have likely settled a great deal. Human triggering wind or storm slabs will be more difficult, but not impossible.  Watch for earlier wind slab deposits and also watch for solar effects on recent snow on steep exposed terrain.	Moderate	Moderate	Low
730	6:06 PM PST Monday, March 31, 2014	2014-04-01 01:06:00	Kenny Kramer	Olympics	By Tuesday, the latest storm snow will be at least 2 days old and weaknesses in storm layers will have likely settled a great deal. Human triggering wind or storm slabs will be more difficult, but not impossible.  Watch for earlier wind slab deposits and also watch for solar effects on recent snow on steep exposed terrain.	Considerable	Moderate	Moderate
728	6:00 PM PST Sunday, March 30, 2014	2014-03-31 01:00:00	Garth Ferber	East slopes WA Cascades - south of White Pass	A mix of winter and spring conditions is starting to be seen in the Cascades. You will need to watch for a variety of concerns on Monday.	Considerable	Moderate	Low
725	10:47 AM PST Sunday, March 30, 2014	2014-03-30 17:47:00	Garth Ferber	Mt Hood	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Considerable	Moderate
723	10:47 AM PST Sunday, March 30, 2014	2014-03-30 17:47:00	Garth Ferber	Stevens Pass	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Considerable	Considerable
722	10:47 AM PST Sunday, March 30, 2014	2014-03-30 17:47:00	Garth Ferber	Olympics	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Considerable	Considerable
720	6:00 PM PST Saturday, March 29, 2014	2014-03-30 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Moderate	Moderate	Moderate
718	6:00 PM PST Saturday, March 29, 2014	2014-03-30 01:00:00	Garth Ferber	Olympics	Sunday may continue to be a tricky day to manage avalanche concerns. Winter like wind and storm slab should prevail at higher elevations with wet loose concerns at lower elevations. Heavier showers and strong spring solar effects can quickly change the snow conditions so pay close attention to weather through the day.	Considerable	Moderate	Moderate
716	8:07 AM PST Saturday, March 29, 2014	2014-03-29 15:07:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Moderate
714	8:07 AM PST Saturday, March 29, 2014	2014-03-29 15:07:00	Garth Ferber	Stevens Pass	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Considerable
712	6:00 PM PST Friday, March 28, 2014	2014-03-29 01:00:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Considerable
709	6:00 PM PST Friday, March 28, 2014	2014-03-29 01:00:00	Dennis D'Amico	Stevens Pass	Saturday should be a tricky day to manage avalanche concerns. Recent and new wind and storm slab instabilities should prevail at higher elevations with wet loose concerns at lower elevations.  Periods of heavy showers and daytime warming effects can quickly change the likelihood of avalanches, choose conservatively and pay attention to changes throughout the day.	Considerable	Considerable	Moderate
706	6:27 AM PST Friday, March 28, 2014	2014-03-28 13:27:00	Dennis D'Amico	Mt Hood	The likelihood of triggering new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase quickly Friday afternoon. New slabs or wet loose avalanches may become larger and more dangerous by entraining the most recent storm snow from mid-week.  The best advice is to avoid avalanche terrain on Friday and stick with lower angled slopes and adhere to conservative terrain selection.	High	High	Considerable
704	6:27 AM PST Friday, March 28, 2014	2014-03-28 13:27:00	Dennis D'Amico	Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday afternoon.	Moderate	Moderate	Moderate
702	6:27 AM PST Friday, March 28, 2014	2014-03-28 13:27:00	Dennis D'Amico	Olympics	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday.	Moderate	Moderate	Moderate
700	6:54 PM PST Thursday, March 27, 2014	2014-03-28 01:54:00	Dennis D'Amico	Mt Hood	The likelihood of triggering new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase quickly Friday afternoon. Shallow new slabs or wet loose avalanches may become larger and more dangerous by entraining the most recent storm snow from mid-week.  Conservative decision making will be essential for safe travel on Friday.	Considerable	Considerable	Considerable
699	6:54 PM PST Thursday, March 27, 2014	2014-03-28 01:54:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday afternoon.	Moderate	Moderate	Moderate
697	6:54 PM PST Thursday, March 27, 2014	2014-03-28 01:54:00	Dennis D'Amico	Olympics	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday.	Moderate	Moderate	Moderate
695	6:00 PM PST Wednesday, March 26, 2014	2014-03-27 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Recent snow from Tuesday through Wednesday will remain susceptible to solar effects Thursday. Remember to evaluate snow and terrain carefully on Thursday.  Watch for signs of wind transported snow near or especially above treeline.	Moderate	Moderate	Moderate
693	6:00 PM PST Wednesday, March 26, 2014	2014-03-27 01:00:00	Kenny Kramer	Olympics	Recent snow from Tuesday through Wednesday will remain susceptible to solar effects Thursday. Remember to evaluate snow and terrain carefully on Thursday.  Watch for signs of wind transported snow near or especially above treeline.	Moderate	Moderate	Moderate
691	6:00 PM PST Tuesday, March 25, 2014	2014-03-26 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	New snow at higher elevations or rain amounts and solar effects are hard to predict on Wednesday. Remember to evaluate snow and terrain carefully on Wednesday.	Moderate	Moderate	Moderate
689	6:00 PM PST Tuesday, March 25, 2014	2014-03-26 01:00:00	Garth Ferber	Olympics	New snow at higher elevations or rain amounts and solar effects are hard to predict on Wednesday. Remember to evaluate snow and terrain carefully on Wednesday.	Moderate	Moderate	Moderate
688	10:19 AM PST Tuesday, March 25, 2014	2014-03-25 17:19:00	Garth Ferber	Mt Hood	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
686	10:19 AM PST Tuesday, March 25, 2014	2014-03-25 17:19:00	Garth Ferber	Stevens Pass	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
684	6:00 PM PST Monday, March 24, 2014	2014-03-25 01:00:00	Garth Ferber	Mt Hood	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
682	6:00 PM PST Monday, March 24, 2014	2014-03-25 01:00:00	Garth Ferber	Stevens Pass	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
680	6:19 PM PST Sunday, March 23, 2014	2014-03-24 01:19:00	Dennis D'Amico	Mt Hood	We suggest a conservative approach on Monday with the avalanche danger driven by warming temperatures, sunshine and the potential for wet loose avalanches. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline.	Considerable	Considerable	Considerable
678	6:19 PM PST Sunday, March 23, 2014	2014-03-24 01:19:00	Dennis D'Amico	Stevens Pass	We suggest a conservative approach on Monday with the avalanche danger driven by warming temperatures, sunshine and the potential for wet snow avalanches. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline.	Considerable	Considerable	Considerable
676	6:45 AM PST Sunday, March 23, 2014	2014-03-23 13:45:00	Dennis D'Amico	Mt Hood	Generally small wet loose avalanches are possible on solar aspects during the late morning and afternoon hours. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline.	Moderate	Moderate	Moderate
675	6:45 AM PST Sunday, March 23, 2014	2014-03-23 13:45:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects, especially in the north Cascades Sunday.	Moderate	Moderate	Low
673	6:45 AM PST Sunday, March 23, 2014	2014-03-23 13:45:00	Dennis D'Amico	Olympics	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects.	Moderate	Moderate	Moderate
671	6:00 PM PST Saturday, March 22, 2014	2014-03-23 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects, especially in the north Cascades Sunday.	Moderate	Moderate	Low
669	6:00 PM PST Saturday, March 22, 2014	2014-03-23 01:00:00	Dennis D'Amico	Olympics	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects.	Moderate	Moderate	Moderate
667	6:00 PM PST Friday, March 21, 2014	2014-03-22 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Expect possible recent wind and storm slab layers on Saturday as well as possible small wet loose avalanches on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Low
485	8:41 PM PST Wednesday, February 19, 2014	2014-02-20 04:41:00	Kenny Kramer	Olympics	Skier triggered avalanches should be likely Thursday especially on wind loaded slopes.  Allow new snow to settle Wednesday and stick with conservative terrain selections.	High	High	Considerable
703	6:27 AM PST Friday, March 28, 2014	2014-03-28 13:27:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase quickly Friday afternoon. Shallow new slabs or wet loose avalanches may become larger and more dangerous by entraining the most recent storm snow from mid-week.	Considerable	Considerable	Considerable
701	6:54 PM PST Thursday, March 27, 2014	2014-03-28 01:54:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase quickly Friday afternoon. Shallow new slabs or wet loose avalanches may become larger and more dangerous by entraining the most recent storm snow from mid-week.	Considerable	Considerable	Considerable
698	6:54 PM PST Thursday, March 27, 2014	2014-03-28 01:54:00	Dennis D'Amico	Stevens Pass	The likelihood of triggering shallow new storm slab near and above treeline especially on lee slopes and wet loose avalanches at lower elevations on all aspects should increase Friday afternoon.	Moderate	Moderate	Moderate
696	6:00 PM PST Wednesday, March 26, 2014	2014-03-27 01:00:00	Kenny Kramer	Mt Hood	Recent snow from Tuesday through Wednesday will remain susceptible to solar effects Thursday. Remember to evaluate snow and terrain carefully on Thursday.  Watch for signs of wind transported snow near but especially above treeline.	Considerable	Considerable	Moderate
694	6:00 PM PST Wednesday, March 26, 2014	2014-03-27 01:00:00	Kenny Kramer	Stevens Pass	Recent snow from Tuesday through Wednesday will remain susceptible to solar effects Thursday. Remember to evaluate snow and terrain carefully on Thursday.  Watch for signs of wind transported snow near or especially above treeline.	Moderate	Moderate	Moderate
692	6:00 PM PST Tuesday, March 25, 2014	2014-03-26 01:00:00	Garth Ferber	Mt Hood	New snow at higher elevations or rain amounts and solar effects are hard to predict on Wednesday. Careful snow pack evaluation is likely to be essential on Wednesday at Mt Hood.	Considerable	Considerable	Moderate
690	6:00 PM PST Tuesday, March 25, 2014	2014-03-26 01:00:00	Garth Ferber	Stevens Pass	New snow at higher elevations or rain amounts and solar effects are hard to predict on Wednesday. Remember to evaluate snow and terrain carefully on Wednesday.	Moderate	Moderate	Moderate
687	10:19 AM PST Tuesday, March 25, 2014	2014-03-25 17:19:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Moderate	Moderate	Moderate
685	10:19 AM PST Tuesday, March 25, 2014	2014-03-25 17:19:00	Garth Ferber	Olympics	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
683	6:00 PM PST Monday, March 24, 2014	2014-03-25 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Moderate	Moderate	Moderate
681	6:00 PM PST Monday, March 24, 2014	2014-03-25 01:00:00	Garth Ferber	Olympics	The avalanche danger should mainly shift to new snow layers by the end of the daylight hours on Tuesday.	Considerable	Considerable	Moderate
679	6:19 PM PST Sunday, March 23, 2014	2014-03-24 01:19:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	We suggest a conservative approach on solar aspects Monday with the avalanche danger driven by warming temperatures, sunshine and the potential for wet snow avalanches. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Moderate avalanche danger means human triggered avalanches are still possible.	Moderate	Moderate	Moderate
677	6:19 PM PST Sunday, March 23, 2014	2014-03-24 01:19:00	Dennis D'Amico	Olympics	We suggest a conservative approach on Monday with the avalanche danger driven by warming temperatures, sunshine and the potential for wet snow avalanches. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline.	Considerable	Considerable	Considerable
674	6:45 AM PST Sunday, March 23, 2014	2014-03-23 13:45:00	Dennis D'Amico	Stevens Pass	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects, especially in the north Cascades Sunday.	Moderate	Moderate	Moderate
672	6:00 PM PST Saturday, March 22, 2014	2014-03-23 01:00:00	Dennis D'Amico	Mt Hood	Generally small wet loose avalanches are possible on solar aspects during the late morning and afternoon hours. Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline.	Moderate	Moderate	Moderate
670	6:00 PM PST Saturday, March 22, 2014	2014-03-23 01:00:00	Dennis D'Amico	Stevens Pass	Wind slab avalanches should be less likely but still possible on lee aspects near and above treeline. Generally small wet loose avalanches are possible on solar aspects, especially in the north Cascades Sunday.	Moderate	Moderate	Moderate
668	6:00 PM PST Friday, March 21, 2014	2014-03-22 01:00:00	Kenny Kramer	Mt Hood	Expect possible recent wind and storm slab layers on Saturday as well as possible small wet loose avalanches on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
666	6:00 PM PST Friday, March 21, 2014	2014-03-22 01:00:00	Kenny Kramer	Stevens Pass	Expect possible recent wind and storm slab layers on Saturday as well as possible small wet loose avalanches on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
664	6:00 PM PST Thursday, March 20, 2014	2014-03-21 01:00:00	Kenny Kramer	Mt Hood	Expect possible recent wind and storm slab layers on Friday, mainly above treeline. Wet loose avalanches may also be possible on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
662	6:00 PM PST Thursday, March 20, 2014	2014-03-21 01:00:00	Kenny Kramer	Stevens Pass	Expect possible recent wind and storm slab layers on Friday, mainly above treeline. Wet loose avalanches may also be possible on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Considerable	Moderate	Moderate
659	6:12 PM PST Wednesday, March 19, 2014	2014-03-20 01:12:00	Garth Ferber	Mt Hood	Expect possible new wind and storm slab layers on Thursday. Wet loose avalanches should also be possible in areas that receive significant new snow.	Moderate	Moderate	Moderate
655	6:12 PM PST Wednesday, March 19, 2014	2014-03-20 01:12:00	Garth Ferber	Stevens Pass	Expect likely new wind and storm slab layers on Thursday. Wet loose avalanches should also be possible in areas that receive significant new snow.	Considerable	Considerable	Moderate
665	6:00 PM PST Friday, March 21, 2014	2014-03-22 01:00:00	Kenny Kramer	Olympics	Expect possible recent wind and storm slab layers on Saturday as well as possible small wet loose avalanches on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
663	6:00 PM PST Thursday, March 20, 2014	2014-03-21 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Expect possible recent wind and storm slab layers on Friday, mainly above treeline. Wet loose avalanches may also be possible on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
661	6:00 PM PST Thursday, March 20, 2014	2014-03-21 01:00:00	Kenny Kramer	Olympics	Expect possible recent wind and storm slab layers on Friday. Wet loose avalanches may also be possible on direct sun exposed slopes, especially in local areas that received the most significant recent snow this week.	Moderate	Moderate	Moderate
657	6:12 PM PST Wednesday, March 19, 2014	2014-03-20 01:12:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Expect likely new wind and storm slab layers on Thursday. Wet loose avalanches should also be possible in areas that receive significant new snow.	Considerable	Moderate	Moderate
654	6:12 PM PST Wednesday, March 19, 2014	2014-03-20 01:12:00	Garth Ferber	Olympics	Expect possible new wind and storm slab layers on Thursday. Wet loose avalanches should also be possible in areas that receive significant new snow.	Moderate	Moderate	Moderate
653	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Expect increasing avalanche danger on Wednesday as a front moves through the area. Look for generally shallow but building wind and storm slab in the afternoon.	Considerable	Considerable	Moderate
651	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	Mt Hood	Wind slab on lee aspects especially near and above treeline may still be sensitive to human triggering Tuesday where wind slab remains poorly bonded to weaker snow below or a slick crust.	Considerable	Moderate	Moderate
649	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	Expect increasing avalanche danger on Wednesday as a front moves through the area. Look for generally shallow but building wind and storm slab in the afternoon.	Considerable	Considerable	Moderate
652	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	Stevens Pass	Expect increasing avalanche danger later on Wednesday as a front moves through the area. Look for shallow but building wind and storm slab in the afternoon if the storm arrives earlier than forecast.	Moderate	Moderate	Moderate
650	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	East slopes WA Cascades - between Stevens and Snoqualmie Pass	Expect increasing avalanche danger later on Wednesday as a front moves through the area. Look for shallow but building wind and storm slab in the afternoon if the storm arrives earlier than forecast.	Moderate	Moderate	Moderate
648	6:00 PM PST Tuesday, March 18, 2014	2014-03-19 01:00:00	Dennis D'Amico	Olympics	Expect increasing avalanche danger on Wednesday as a front moves over the area.  Watch for loose wet concerns in the morning and shallow but sensitive wind and storm slab in the afternoon.	Moderate	Moderate	Moderate
643	6:00 PM PST Monday, March 17, 2014	2014-03-18 01:00:00	Dennis D'Amico	Mt Hood	Wind slab on lee aspects near and above treeline may still be sensitive to human triggering Tuesday and cautious and conservative terrain selection is necessary on Tuesday.  Wet loose concerns may become an issue mainly in the afternoon with gradual warming.	Considerable	Considerable	Moderate
642	6:00 PM PST Monday, March 17, 2014	2014-03-18 01:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wind slab on lee aspects above treeline may still be sensitive to human triggering Tuesday.  Wet loose concerns may become an issue mainly in the afternoon with gradual warming.	Considerable	Moderate	Moderate
641	6:00 PM PST Monday, March 17, 2014	2014-03-18 01:00:00	Dennis D'Amico	Stevens Pass	Wind slab on lee aspects above treeline may still be sensitive to human triggering Tuesday.  Wet loose concerns may become an issue mainly in the afternoon with gradual warming.	Considerable	Moderate	Moderate
640	6:00 PM PST Monday, March 17, 2014	2014-03-18 01:00:00	Dennis D'Amico	Olympics	Wind slab on lee aspects above treeline may still be sensitive to human triggering Tuesday.  Wet loose concerns may become an issue mainly in the afternoon with gradual warming.	Considerable	Moderate	Moderate
639	6:00 PM PST Sunday, March 16, 2014	2014-03-17 01:00:00	Kenny Kramer	Mt Hood	Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Watch for unstable storm slabs formed Sunday.  Dangerous avalanche conditions are expected so make careful snowpack evaluations and choose more conservation terrain.	Considerable	Considerable	Moderate
638	6:00 PM PST Sunday, March 16, 2014	2014-03-17 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Watch for unstable storm slabs formed Sunday.  Dangerous avalanche conditions are expected so make careful snowpack evaluations and choose more conservation terrain.	Considerable	Considerable	Moderate
637	6:00 PM PST Sunday, March 16, 2014	2014-03-17 01:00:00	Kenny Kramer	Stevens Pass	Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Watch for unstable storm slabs formed Sunday.  Dangerous avalanche conditions are expected so make careful snowpack evaluations and choose more conservation terrain.	Considerable	Considerable	Moderate
636	6:00 PM PST Sunday, March 16, 2014	2014-03-17 01:00:00	Kenny Kramer	Olympics	Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Watch for unstable storm slabs formed Sunday.  Dangerous avalanche conditions are expected so make careful snowpack evaluations and choose more conservation terrain.	Considerable	Considerable	Moderate
635	6:00 PM PST Saturday, March 15, 2014	2014-03-16 01:00:00	Kenny Kramer	Mt Hood	Avalanche danger should again slowly increase during the day on Sunday.  Wet loose avalanche should be the primary avalanche concern due to the warm temperatures and periods of sunshine or filtered sunshine.	Moderate	Moderate	Moderate
633	6:00 PM PST Saturday, March 15, 2014	2014-03-16 01:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Avalanche danger should increase during the day on Sunday. Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Cooling should help limit wet loose avalanche concerns but the potential remains below treeline so watch for shallow wet snow on steeper terrain.	Considerable	Considerable	Moderate
631	6:00 PM PST Saturday, March 15, 2014	2014-03-16 01:00:00	Kenny Kramer	Stevens Pass	Avalanche danger should increase during the day on Sunday. Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Cooling should help limit wet loose avalanche concerns but the potential remains below treeline so watch for shallow wet snow on steeper terrain.	Considerable	Considerable	Moderate
630	6:00 PM PST Saturday, March 15, 2014	2014-03-16 01:00:00	Kenny Kramer	Olympics	Avalanche danger should increase during the day on Sunday. Watch for areas of newly forming wind slab on lee easterly aspects near and above treeline.  Cooling should help limit wet loose avalanche concerns but the potential remains below treeline so watch for shallow wet snow on steeper terrain.	Considerable	Moderate	Moderate
629	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	East slopes WA Cascades - between Stevens and Snoqualmie Pass	Avalanche danger should slowly increase during the day on Saturday. Watch for sensitive wind slab on lee easterly aspects formed on Friday. Wet loose concerns should be the primary concern in the afternoon with light rain for the central Cascades or filtered sunshine further south. The avalanche danger should increase further Saturday night.	Moderate	Moderate	Moderate
628	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	Stevens Pass	Avalanche danger should increase during the day on Saturday.  Watch for sensitive wind slab on lee easterly aspects formed on Friday and for new shallow storm slab later Saturday afternoon. Wet loose concerns should be the primary concern at lower elevations with a transition to light rain during the day. The avalanche danger should increase further Saturday night.	Considerable	Considerable	Considerable
627	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	Mt Hood	Avalanche danger should slowly increase during the day on Saturday. Watch for sensitive wind slab on lee easterly aspects formed on Friday. Wet loose concerns should be the primary avalanche concern due to the warm temperatures and periods of sunshine.	Moderate	Moderate	Moderate
626	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Avalanche danger should increase during the day on Saturday.  Watch for sensitive wind slab on lee easterly aspects formed on Friday and for new shallow storm slab later Saturday afternoon. Wet loose concerns should be the primary concern at lower elevations with a transition to light rain during the day. The avalanche danger should increase further Saturday night.	Considerable	Considerable	Moderate
478	3:04 PM PST Wednesday, February 19, 2014	2014-02-19 23:04:00	Kenny Kramer	Mt Hood	Skier triggered avalanches should still be likely Wednesday especially on wind loaded slopes.  Allow new snow to settle Wednesday and stick with conservative terrain selections.	Considerable	Considerable	Considerable
625	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	Snoqualmie Pass	Avalanche danger should slowly increase during the day on Saturday. Watch for sensitive wind slab on lee easterly aspects formed on Friday. Wet loose concerns should be the primary concern in the afternoon with light rain for the central Cascades or filtered sunshine further south. The avalanche danger should increase further Saturday night.	Moderate	Moderate	Moderate
622	6:00 PM PST Thursday, March 13, 2014	2014-03-14 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A cold front will cross the Northwest on Friday morning. Wind and increasing rain and snow will cause an increase in the avalanche danger on Friday morning.	Considerable	Considerable	Moderate
620	6:00 PM PST Thursday, March 13, 2014	2014-03-14 01:00:00	Garth Ferber	Olympics	A cold front will cross the Northwest on Friday morning. Wind and increasing rain and snow will cause an increase in the avalanche danger on Friday morning.	Considerable	Considerable	Moderate
618	6:00 PM PST Wednesday, March 12, 2014	2014-03-13 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Watch for further spring snow and avalanche conditions on Thursday. If wet snow becomes deeper than a few inches it is time to head to shallower angled terrain well away from large open slopes.	Moderate	Moderate	Moderate
616	6:00 PM PST Wednesday, March 12, 2014	2014-03-13 01:00:00	Garth Ferber	Olympics	Watch for further spring snow and avalanche conditions on Thursday. If wet snow becomes deeper than a few inches it is time to head to shallower angled terrain well away from large open slopes.	Moderate	Moderate	Moderate
614	6:10 PM PST Tuesday, March 11, 2014	2014-03-12 01:10:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Increasing avalanche danger from wet snow is expected Wednesday, especially during the late morning and afternoon on steeper slopes receiving direct sun.  If snow is beginning to sink to about boot top levels, it's probably time to head to shallower angled terrain well away from large open slopes above.	Moderate	Moderate	Moderate
612	6:10 PM PST Tuesday, March 11, 2014	2014-03-12 01:10:00	Kenny Kramer	Olympics	Increasing avalanche danger from wet snow is expected Wednesday, especially during the late morning and afternoon on steeper slopes receiving direct sun.  If snow is beginning to sink to about boot top levels, it's probably time to head to shallower angled terrain well away from large open slopes above.	Moderate	Moderate	Moderate
610	6:21 PM PST Monday, March 10, 2014	2014-03-11 01:21:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Increasing avalanche danger is expected Tuesday, especially during the afternoon on steeper slopes receiving direct sun and in areas where more recent new snow has accumulated.	Moderate	Moderate	Moderate
608	6:21 PM PST Monday, March 10, 2014	2014-03-11 01:21:00	Kenny Kramer	Olympics	Increasing avalanche danger is expected Tuesday, especially during the afternoon on steeper slopes receiving direct sun.	Moderate	Moderate	Moderate
606	8:51 PM PST Sunday, March 9, 2014	2014-03-10 03:51:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Less avalanche danger is expected on Monday.	Moderate	Moderate	Moderate
604	8:51 PM PST Sunday, March 9, 2014	2014-03-10 03:51:00	Garth Ferber	Olympics	Less avalanche danger is expected on Monday.	Moderate	Moderate	Moderate
602	6:00 PM PST Sunday, March 9, 2014	2014-03-10 01:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Less avalanche danger is expected on Monday	Considerable	Moderate	Moderate
600	6:00 PM PST Sunday, March 9, 2014	2014-03-10 01:00:00	Garth Ferber	Olympics	Less avalanche danger is expected on Monday	Considerable	Moderate	Moderate
598	7:07 AM PST Sunday, March 9, 2014	2014-03-09 14:07:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday. Deep persistent slab should remain more likely to be triggered in areas with a shallower snow pack.	High	High	Considerable
596	7:07 AM PST Sunday, March 9, 2014	2014-03-09 14:07:00	Garth Ferber	Olympics	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	Considerable	Considerable	Considerable
594	6:00 PM PST Saturday, March 8, 2014	2014-03-09 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday. Deep persistent slab should remain more likely to be triggered in areas with a shallower snow pack.	Considerable	Considerable	Considerable
591	6:00 PM PST Saturday, March 8, 2014	2014-03-09 02:00:00	Garth Ferber	Olympics	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	Considerable	Considerable	Considerable
589	6:00 PM PST Friday, March 7, 2014	2014-03-08 02:00:00	Dennis D'Amico	Mt Hood	Wet snow avalanches should still be a concern Saturday with warm temperatures and light rain in the afternoon forecast for all elevation bands. Look for increasing signs of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. Expect quickly escalating avalanche danger Saturday evening.	Moderate	Moderate	Moderate
587	6:00 PM PST Friday, March 7, 2014	2014-03-08 02:00:00	Dennis D'Amico	Stevens Pass	Wet snow avalanches should still be a concern Saturday with warm temperatures and increasing rain in the afternoon near and below treeline. Look for increasing signs of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. New wind and storm slab is expected to develop late in the day and continue overnight at higher elevations mainly on lee slopes.  Expect quickly escalating avalanche danger Saturday evening.	Moderate	Moderate	Moderate
585	7:06 PM PST Thursday, March 6, 2014	2014-03-07 03:06:00	Dennis D'Amico	Mt Hood	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.  Not much is known about recently formed wind slab above treeline.	Considerable	Considerable	Considerable
583	7:06 PM PST Thursday, March 6, 2014	2014-03-07 03:06:00	Dennis D'Amico	Stevens Pass	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.  Not much is known about recently formed wind slab above treeline.	Considerable	Considerable	Considerable
581	6:00 PM PST Thursday, March 6, 2014	2014-03-07 02:00:00	Dennis D'Amico	Mt Hood	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.  Not much is known about recently formed wind slab above treeline.	Considerable	Considerable	Considerable
448	7:02 PM PST Wednesday, February 12, 2014	2014-02-13 03:02:00	Dennis D'Amico	Stevens Pass	Natural avalanches will be unlikely Thursday, but skier triggered avalanches remain likely in specific terrain with potentially bigger consequences.	Considerable	Considerable	Considerable
624	7:18 PM PST Friday, March 14, 2014	2014-03-15 02:18:00	Dennis D'Amico	Olympics	Avalanche danger should increase during the day on Saturday. Watch for sensitive wind slab on lee easterly aspects formed on Friday and for new shallow storm slab later Saturday afternoon. Wet loose concerns should be the primary concern at lower and mid elevations with a transition to light rain during the day. The avalanche danger should increase further Saturday night.	Considerable	Considerable	Considerable
623	6:00 PM PST Thursday, March 13, 2014	2014-03-14 01:00:00	Garth Ferber	Mt Hood	A cold front will cross the Northwest on Friday morning. Wind and increasing rain and snow will cause an increase in the avalanche danger Friday morning.	Considerable	Considerable	Moderate
621	6:00 PM PST Thursday, March 13, 2014	2014-03-14 01:00:00	Garth Ferber	Stevens Pass	A cold front will cross the Northwest on Friday morning. Wind and increasing rain and snow will cause an increase in the avalanche danger on Friday morning.	Considerable	Considerable	Moderate
619	6:00 PM PST Wednesday, March 12, 2014	2014-03-13 01:00:00	Garth Ferber	Mt Hood	Watch for further spring snow and avalanche conditions on Thursday. If wet snow becomes deeper than a few inches it is time to head to shallower angled terrain well away from large open slopes.	Moderate	Moderate	Moderate
617	6:00 PM PST Wednesday, March 12, 2014	2014-03-13 01:00:00	Garth Ferber	Stevens Pass	Watch for further spring snow and avalanche conditions on Thursday. If wet snow becomes deeper than a few inches it is time to head to shallower angled terrain well away from large open slopes.	Moderate	Moderate	Moderate
615	6:10 PM PST Tuesday, March 11, 2014	2014-03-12 01:10:00	Kenny Kramer	Mt Hood	Increasing avalanche danger from wet snow is expected Wednesday, especially during the late morning and afternoon on steeper slopes receiving direct sun.  If snow is beginning to sink to about boot top levels, it's probably time to head to shallower angled terrain well away from large open slopes above.	Considerable	Considerable	Moderate
613	6:10 PM PST Tuesday, March 11, 2014	2014-03-12 01:10:00	Kenny Kramer	Stevens Pass	Increasing avalanche danger from wet snow is expected Wednesday, especially during the late morning and afternoon on steeper slopes receiving direct sun.  If snow is beginning to sink to about boot top levels, it's probably time to head to shallower angled terrain well away from large open slopes above.	Considerable	Considerable	Moderate
611	6:21 PM PST Monday, March 10, 2014	2014-03-11 01:21:00	Kenny Kramer	Mt Hood	New snow received Monday should become wet and weak when sun hits it Tuesday.  Watch for increasing wet avalanche conditions midday and Tuesday afternoon.  Avoid steep lee slopes where wind slab deposits may have built recently.	Considerable	Considerable	Moderate
609	6:21 PM PST Monday, March 10, 2014	2014-03-11 01:21:00	Kenny Kramer	Stevens Pass	Increasing avalanche danger is expected Tuesday, especially during the afternoon on steeper slopes receiving direct sun and in areas where more recent new snow has accumulated.	Considerable	Considerable	Moderate
607	8:51 PM PST Sunday, March 9, 2014	2014-03-10 03:51:00	Garth Ferber	Mt Hood	A few inches of snow on Sunday night and Monday morning should make shallow avalanches more likely at Mt Hood on Monday.	Considerable	Moderate	Moderate
605	8:51 PM PST Sunday, March 9, 2014	2014-03-10 03:51:00	Garth Ferber	Stevens Pass	Less avalanche danger is expected on Monday.	Moderate	Moderate	Moderate
603	6:00 PM PST Sunday, March 9, 2014	2014-03-10 01:00:00	Garth Ferber	Mt Hood	Mt Hood may get a bit more snow on Sunday night and Monday morning than the rest of the area and this would affect the avalanche danger at Mt Hood.	Considerable	Moderate	Moderate
601	6:00 PM PST Sunday, March 9, 2014	2014-03-10 01:00:00	Garth Ferber	Stevens Pass	Less avalanche danger is expected on Monday.	Considerable	Moderate	Moderate
599	7:07 AM PST Sunday, March 9, 2014	2014-03-09 14:07:00	Garth Ferber	Mt Hood	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	High	High	Considerable
597	7:07 AM PST Sunday, March 9, 2014	2014-03-09 14:07:00	Garth Ferber	Stevens Pass	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	High	High	Considerable
595	6:00 PM PST Saturday, March 8, 2014	2014-03-09 02:00:00	Garth Ferber	Mt Hood	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	Considerable	Considerable	Considerable
593	6:00 PM PST Saturday, March 8, 2014	2014-03-09 02:00:00	Garth Ferber	Stevens Pass	A decreasing avalanche danger is expected on Sunday. Wet snow avalanches should still be the main concern Sunday.	Considerable	Considerable	Considerable
590	6:00 PM PST Friday, March 7, 2014	2014-03-08 02:00:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	Wet snow avalanches will continue to be a concern Saturday with warm temperatures and increasing rain near and below treeline. Look for increasing signs of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. New wind and storm slabs are expected to develop during the day and continue overnight at higher elevations mainly on lee slopes. Expect quickly escalating avalanche danger Saturday afternoon and evening.	Considerable	Considerable	Considerable
588	6:00 PM PST Friday, March 7, 2014	2014-03-08 02:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	New wind and storm slabs are expected to develop late in the day and continue overnight at higher elevations mainly on lee slopes. Wet loose avalanche will be less of a concern initially during the storm Saturday.  Expect quickly escalating avalanche danger late Saturday afternoon and overnight with warming temperatures and rain to higher elevations. The deep persistent slab concern is more likely to trigger in areas with a shallower snowpack, generally away from the Cascade crest and further south.	Considerable	Moderate	Moderate
586	6:00 PM PST Friday, March 7, 2014	2014-03-08 02:00:00	Dennis D'Amico	Olympics	Wet snow avalanches and cornice failures will be the primary concerns Saturday with warm temperatures and increasing rain throughout the day. Look for increasing signs of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. Expect quickly escalating avalanche danger Saturday afternoon and evening.	Considerable	Considerable	Considerable
584	7:06 PM PST Thursday, March 6, 2014	2014-03-07 03:06:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. Not much is known about recently formed wind slab above treeline. The deep persistent slab concern is more likely in areas with a shallower snowpack, generally away from the Cascade crest and further south.	Considerable	Considerable	Considerable
582	7:06 PM PST Thursday, March 6, 2014	2014-03-07 03:06:00	Dennis D'Amico	Olympics	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.	Considerable	Considerable	Considerable
580	6:00 PM PST Thursday, March 6, 2014	2014-03-07 02:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous. Not much is known about recently formed wind slab above treeline. The deep persistent slab concern is more likely in areas with a shallower snowpack, generally away from the Cascade crest and further south.	High	Considerable	Considerable
578	6:00 PM PST Thursday, March 6, 2014	2014-03-07 02:00:00	Dennis D'Amico	Olympics	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.	Considerable	Considerable	Considerable
577	9:33 PM PST Wednesday, March 5, 2014	2014-03-06 05:33:00	Kenny Kramer	Mt Hood	Very dangerous avalanche conditions should persist Thursday, especially near and above treeline where the strongest winds are expected and where weaker bonds to the early March crust should remain.	High	High	Considerable
575	9:33 PM PST Wednesday, March 5, 2014	2014-03-06 05:33:00	Kenny Kramer	Stevens Pass	Very dangerous avalanche conditions should persist Thursday, especially near and above treeline where the strongest winds are expected and where weaker bonds to the early March crust should remain.	High	Considerable	Considerable
573	6:00 PM PST Tuesday, March 4, 2014	2014-03-05 02:00:00	Garth Ferber	Mt Hood	An avalanche warning means avoid all avalanche terrain on Wednesday.	High	High	High
571	6:00 PM PST Tuesday, March 4, 2014	2014-03-05 02:00:00	Garth Ferber	Stevens Pass	An avalanche warning means avoid avalanche terrain at all elevations on Wednesday.	High	High	High
570	6:00 PM PST Tuesday, March 4, 2014	2014-03-05 02:00:00	Garth Ferber	Olympics	Avoid avalanche terrain near and above treeline in the Olympic Mountains on Wednesday.	High	High	Considerable
568	6:00 PM PST Monday, March 3, 2014	2014-03-04 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Avoid avalanche terrain at higher elevations on Tuesday.	High	Considerable	Considerable
566	6:00 PM PST Monday, March 3, 2014	2014-03-04 02:00:00	Garth Ferber	Olympics	Careful snow pack evaluation and caution will be necessary at Hurricane Ridge on Tuesday.	High	Considerable	Considerable
563	6:16 AM PST Monday, March 3, 2014	2014-03-03 14:16:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Avoid avalanche terrain Monday especially at higher elevations.	High	High	Considerable
560	6:16 AM PST Monday, March 3, 2014	2014-03-03 14:16:00	Garth Ferber	Olympics	Avoid avalanche terrain Monday especially at higher elevations.	High	High	Considerable
558	6:11 PM PST Sunday, March 2, 2014	2014-03-03 02:11:00	Dennis D'Amico	Mt Hood	Increasing storm and wind slab layers may be sensitive to human triggers Monday near and above treeline, especially during periods of rapid loading. Wet loose avalanches should be the primary concern below treeline.	Considerable	Considerable	Considerable
555	6:11 PM PST Sunday, March 2, 2014	2014-03-03 02:11:00	Dennis D'Amico	Stevens Pass	Stay conservative and generally out of avalanche terrain Monday as storm related instabilities settle. Your terrain selection should include mitigation of the low frequency, unlikely to trigger reality of a deep persistent slab release because the consequences are high.	High	High	Considerable
552	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	Mt Hood	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.	Considerable	Considerable	Considerable
550	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Deteriorating avalanche conditions are expected Sunday afternoon through Monday morning in the northeast Cascades. Expect natural and human triggered avalanches to become likely near and above treeline as new wind and storm slab quickly builds and bonds poorly to less dense snow and a crust. Shifting winds this evening will cross load slopes. Most avalanches will be related to the most recent storm snow, but be aware of the continuing deep slab threat.	High	High	Considerable
549	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	White Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to weak low cohesion snow or where a smooth underlying crust is present.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	Considerable	Considerable	Considerable
547	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	Olympics	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high.	Considerable	Considerable	Considerable
544	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	Stevens Pass	Deteriorating avalanche conditions are expected Sunday afternoon through Monday morning. Expect natural and human triggered avalanches to become likely as new wind and storm slab quickly builds and bonds poorly to less dense snow and a crust. Shifting winds this evening will cross load slopes. Most avalanches will be related to the most recent storm snow, but be aware of the continuing deep slab threat.	High	High	High
542	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to weak low cohesion snow or where a smooth underlying crust is present.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	Considerable	Considerable	Moderate
535	12:56 AM PST Saturday, March 1, 2014	2014-03-01 08:56:00	Kenny Kramer	Mt Hood	Watch for some shallow new storm slabs developing later Saturday on lee slopes at higher elevations, especially if snowfall is greater than expected..  Any building slab layers should be at higher elevations on mainly N thru SE aspects.	Moderate	Low	Low
579	6:00 PM PST Thursday, March 6, 2014	2014-03-07 02:00:00	Dennis D'Amico	Stevens Pass	Wet snow avalanches near and below treeline will be the primary concerns Friday. Be wary of increasing sign of surface snow instability and avoid terrain traps where even a small but heavy wet snow avalanche could be dangerous.  Not much is known about recently formed wind slab above treeline.	Considerable	Considerable	Considerable
576	9:33 PM PST Wednesday, March 5, 2014	2014-03-06 05:33:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Avoid avalanche terrain above treeline zones on Thursday.	High	Considerable	Considerable
574	9:33 PM PST Wednesday, March 5, 2014	2014-03-06 05:33:00	Kenny Kramer	Olympics	Dangerous avalanche conditions should persist Thursday, especially above treeline where the strongest winds are expected and where weaker bonds to the early March crust should remain.	High	Considerable	Considerable
572	6:00 PM PST Tuesday, March 4, 2014	2014-03-05 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Avoid avalanche terrain in the near and above treeline zones on Wednesday.	High	High	Considerable
569	6:00 PM PST Monday, March 3, 2014	2014-03-04 02:00:00	Garth Ferber	Mt Hood	Careful snowpack evaluation and caution will be necessary at Mt Hood on Tuesday.	Considerable	Considerable	Considerable
567	6:00 PM PST Monday, March 3, 2014	2014-03-04 02:00:00	Garth Ferber	Stevens Pass	Avoid avalanche terrain especially at higher elevations on Tuesday.	High	High	Considerable
564	6:16 AM PST Monday, March 3, 2014	2014-03-03 14:16:00	Garth Ferber	Mt Hood	Avoid avalanche terrain Monday especially at higher elevations.	High	High	Considerable
561	6:16 AM PST Monday, March 3, 2014	2014-03-03 14:16:00	Garth Ferber	Stevens Pass	Avoid avalanche terrain on Monday.	High	High	High
559	6:11 PM PST Sunday, March 2, 2014	2014-03-03 02:11:00	Dennis D'Amico	White Pass	Stay conservative and generally out of avalanche terrain Monday as storm related instabilities settle. Your terrain selection should include mitigation of the low frequency, unlikely to trigger reality of a deep persistent slab release because the consequences are high.	Considerable	Considerable	Considerable
557	6:11 PM PST Sunday, March 2, 2014	2014-03-03 02:11:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Stay conservative and generally out of avalanche terrain Monday as storm related instabilities settle. The highest avalanche danger is expected to be locally in the northeast Cascades where more loading was received. Your terrain selection should include mitigation of the low frequency, unlikely to trigger reality of a deep persistent slab release because the consequences are high.	Considerable	Considerable	Considerable
553	6:11 PM PST Sunday, March 2, 2014	2014-03-03 02:11:00	Dennis D'Amico	Olympics	Storm and wind slab layers should be sensitive to human triggers Monday, especially where these are poorly bonded to a smooth underlying crust layer. Wet loose concerns will dominate the below tree-line zone. Continue to choose terrain conservatively as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high.	Considerable	Considerable	Considerable
551	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to weak low cohesion snow or where a smooth underlying crust is present.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	Considerable	Considerable	Moderate
548	12:50 PM PST Sunday, March 2, 2014	2014-03-02 20:50:00	Dennis D'Amico	Stevens Pass	Deteriorating avalanche conditions are expected Sunday afternoon through Monday morning. Expect natural and human triggered avalanches to become likely as new wind and storm slab quickly builds and bonds poorly to less dense snow and a crust. Shifting winds this evening will cross load slopes. Most avalanches will be related to the most recent storm snow, but be aware of the continuing deep slab threat.	High	High	High
546	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Deteriorating avalanche conditions are expected Sunday afternoon through Monday morning in the northeast Cascades. Expect natural and human triggered avalanches to become likely near and above treeline as new wind and storm slab quickly builds and bonds poorly to less dense snow and a crust. Shifting winds this evening will cross load slopes. Most avalanches will be related to the most recent storm snow, but be aware of the continuing deep slab threat.	High	High	Considerable
543	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	Mt Hood	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.	Considerable	Considerable	Considerable
541	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	White Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to weak low cohesion snow or where a smooth underlying crust is present.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	High	High	Considerable
539	6:00 PM PST Saturday, March 1, 2014	2014-03-02 02:00:00	Kenny Kramer	Mt Hood	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.	Considerable	Considerable	Considerable
537	6:00 PM PST Saturday, March 1, 2014	2014-03-02 02:00:00	Kenny Kramer	Stevens Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	Considerable	Considerable	Considerable
540	12:37 PM PST Sunday, March 2, 2014	2014-03-02 20:37:00	Dennis D'Amico	Olympics	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high.	Considerable	Considerable	Considerable
538	6:00 PM PST Saturday, March 1, 2014	2014-03-02 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to weak low cohesion snow or where a smooth underlying crust is present.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high. \n\nThe following provides an excellent overview of the relatively rare condition we have in our maritime climate:  deep persistent slabs.	Considerable	Considerable	Moderate
536	6:00 PM PST Saturday, March 1, 2014	2014-03-02 02:00:00	Kenny Kramer	Olympics	Increasing storm and wind slab layers should become sensitive to human triggers Sunday, especially where these are poorly bonded to a smooth underlying crust layer.  Best to avoid most steeper avalanche terrain and terrain connected to large open avalanche terrain above.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high.	Considerable	Considerable	Considerable
534	12:56 AM PST Saturday, March 1, 2014	2014-03-01 08:56:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The remaining threat of persistent deep slabs involving snow above the late January crust layers remain possible Saturday, but mainly above treeline or areas void of a strong surface or near surface crust.  The Moderate danger rating ATL Saturday captures the unlikely to trigger, but high consequence reality of a deep persistent slab.    \n\nThe following provides an excellent overview regarding deep persistent slabs.	Moderate	Moderate	Moderate
532	12:56 AM PST Saturday, March 1, 2014	2014-03-01 08:56:00	Kenny Kramer	Olympics	Watch for areas that might receive greater than expected snowfall later Saturday or wind transport that begins to build slab layers over a new facet/crust layer near the surface.  Also give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.   Continue to choose terrain conservatively and avoid large open avalanche terrain as the concern for a deep persistent slab remains, even though it is a low frequency, unlikely outcome, the consequences are high.	Moderate	Moderate	Low
530	6:13 PM PST Thursday, February 27, 2014	2014-02-28 02:13:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Loose-wet slides, large cornices near ridges and finally the remaining threat of persistent deep slabs involving the late January crust layers are all possible Friday. The Loose-wet concerns are more likely earlier in the day. The Moderate danger rating Friday captures the unlikely to trigger, but high consequence reality of a persistent deep slab.    \n\nReview this excellent article regarding deep persistent slabs.	Moderate	Moderate	Moderate
527	6:13 PM PST Thursday, February 27, 2014	2014-02-28 02:13:00	Dennis D'Amico	Olympics	Loose wet avalanches on mainly solar aspects will be the primary concern Friday. Also give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.	Moderate	Moderate	Moderate
525	6:31 PM PST Wednesday, February 26, 2014	2014-02-27 02:31:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Thursday should be the warmest day this week and will introduce a more widespread chance of wet loose avalanches mainly to solar aspects. The additional warming paired with sunbreaks, especially in the northeast Cascades, may increase the likelihood of a dangerous deep persistent slab avalanches versus early in the week.  Review this excellent article regarding deep persistent slabs.	Considerable	Considerable	Considerable
523	6:31 PM PST Wednesday, February 26, 2014	2014-02-27 02:31:00	Dennis D'Amico	Stevens Pass	Loose-wet slides, large cornices near ridges, older yet still sensitive soft wind slab and finally the remaining threat of deep persistent slabs involving the late January crust layers are all possible Thursday.  Professional observers have chosen not to travel in exposed avalanche terrain given the deep slab possibility and this terrain selection advice extends to all back country travelers.   \n\nReview this excellent article regarding deep persistent slabs.	Considerable	Considerable	Considerable
521	6:32 PM PST Tuesday, February 25, 2014	2014-02-26 02:32:00	Kenny Kramer	Snoqualmie Pass	Give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices. Watch for falling and sliding hazards on steeper terrain covered with a smooth ice crust.  Review this extract regarding deep persistent slabs from this excellent book:	Moderate	Moderate	Moderate
519	6:32 PM PST Tuesday, February 25, 2014	2014-02-26 02:32:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions continue east of the crest. They have become hard to trigger but the consequences are still just as deadly as last week.  Review this extract regarding deep persistent slabs from this excellent book:	Considerable	Considerable	Considerable
517	6:32 PM PST Tuesday, February 25, 2014	2014-02-26 02:32:00	Kenny Kramer	Olympics	Loose wet or possible wet slab avalanches on all aspects to near treeline will again be the primary concern Wednesday. Also give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.  \n\nReview this extract regarding deep persistent slabs from this excellent book:	Considerable	Considerable	Considerable
515	6:00 PM PST Monday, February 24, 2014	2014-02-25 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions continue east of the crest. They have become hard to trigger but the consequences are still just as deadly as last week.	Considerable	Considerable	Considerable
513	6:00 PM PST Monday, February 24, 2014	2014-02-25 02:00:00	Kenny Kramer	Olympics	Loose wet avalanches on all aspects to near treeline will be the primary concern Tuesday. Also watch for possible new storm slab formed since Sunday afternoon and give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.	Considerable	Considerable	Considerable
511	6:00 PM PST Sunday, February 23, 2014	2014-02-24 02:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions continue east of the crest. They have become hard to trigger but the consequences are still just as deadly as last week.	Considerable	Considerable	Considerable
533	12:56 AM PST Saturday, March 1, 2014	2014-03-01 08:56:00	Kenny Kramer	Stevens Pass	The remaining threat of persistent deep slabs involving snow above the late January crust layers remain possible Saturday, but mainly above treeline or areas void of a strong surface or near surface crust.  The Moderate danger rating ATL Saturday captures the unlikely to trigger, but high consequence reality of a deep persistent slab.    \n\nThe following provides an excellent overview regarding deep persistent slabs.	Moderate	Moderate	Moderate
531	6:13 PM PST Thursday, February 27, 2014	2014-02-28 02:13:00	Dennis D'Amico	Mt Hood	Watch for loose wet avalanches on all aspects in the below and near treeline zones and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects.	Moderate	Moderate	Moderate
528	6:13 PM PST Thursday, February 27, 2014	2014-02-28 02:13:00	Dennis D'Amico	Stevens Pass	Loose-wet slides, large cornices near ridges and finally the remaining threat of persistent deep slabs involving the late January crust layers are all possible Friday. The Moderate danger rating Friday captures the unlikely to trigger, but high consequence reality of a persistent deep slab.    \n\nReview this excellent article regarding deep persistent slabs.	Moderate	Moderate	Moderate
526	6:31 PM PST Wednesday, February 26, 2014	2014-02-27 02:31:00	Dennis D'Amico	Mt Hood	Watch for loose wet avalanches on all aspects in the below and near treeline zones and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects.	Moderate	Moderate	Moderate
524	6:31 PM PST Wednesday, February 26, 2014	2014-02-27 02:31:00	Dennis D'Amico	Snoqualmie Pass	Give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices. Watch for falling and sliding hazards on steeper terrain covered with a smooth ice crust.  Wet-loose avalanches may become possible on steeper south facing terrain Thursday. Review this excellent article regarding deep persistent slabs.	Moderate	Moderate	Moderate
522	6:31 PM PST Wednesday, February 26, 2014	2014-02-27 02:31:00	Dennis D'Amico	Olympics	Loose wet or possible wet slab avalanches on all aspects to near treeline will again be the primary concern Thursday. Also give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.	Considerable	Considerable	Considerable
520	6:32 PM PST Tuesday, February 25, 2014	2014-02-26 02:32:00	Kenny Kramer	Mt Hood	Watch for loose wet avalanches on all aspects in the below and near treeline zones and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects. Review this extract regarding deep persistent slabs from this excellent book:	Moderate	Moderate	Moderate
518	6:32 PM PST Tuesday, February 25, 2014	2014-02-26 02:32:00	Kenny Kramer	Stevens Pass	We have a variety of avalanche concerns Wednesday depending upon terrain choices, ranging from loose-wet slides away from the passes near treeline and below, large cornices near ridges, some new storm and wind slab,  and finally the remaining threat of deep persistent slabs involving the late January crust layers, although these remain a low probability but high consequence.  Professional observers choosing not to travel in large exposed terrain given this possibility and this seems prudent for all back country travelers until we have confidence that threat is eliminated.   \n\nReview this extract regarding deep persistent slabs from this excellent book:	Considerable	Considerable	Considerable
516	6:00 PM PST Monday, February 24, 2014	2014-02-25 02:00:00	Kenny Kramer	Mt Hood	Watch for loose wet avalanches on all aspects in the below and near treeline zones and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects.	Moderate	Moderate	Moderate
514	6:00 PM PST Monday, February 24, 2014	2014-02-25 02:00:00	Kenny Kramer	Stevens Pass	We have a variety of avalanche concerns Tuesday depending upon terrain choices, ranging from loose-wet slides away from the passes near treeline and below, large cornices near ridges, some new storm and wind slab, loose-dry concerns in the pass areas and finally the remaining threat of deep persistent slabs involving the late January crust layers, although these remain a low probability but high consequence.  Professional observers choosing not to travel in large exposed terrain given this possibility and this seems prudent for all back country travelers until we have confidence that threat is eliminated.	Considerable	Considerable	Considerable
512	6:00 PM PST Sunday, February 23, 2014	2014-02-24 02:00:00	Dennis D'Amico	Mt Hood	Watch for loose wet avalanches on all aspects in the below and near treeline zones and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects.	Moderate	Moderate	Moderate
510	6:00 PM PST Sunday, February 23, 2014	2014-02-24 02:00:00	Dennis D'Amico	Stevens Pass	We have some new storm and wind avalanche concerns for Monday but give the low probability but high consequence of a deep slab avalanche the most thought before choosing more exposed terrain.	Considerable	Considerable	Moderate
508	6:00 PM PST Saturday, February 22, 2014	2014-02-23 02:00:00	Dennis D'Amico	Mt Hood	Watch for loose wet on solar aspects at lower elevations and isolated sensitive wind slab at higher elevations on mainly N thru SE aspects.	Moderate	Moderate	Moderate
506	6:00 PM PST Saturday, February 22, 2014	2014-02-23 02:00:00	Dennis D'Amico	Stevens Pass	Watch for sensitive shallow new storm slab formed Saturday night and new wind slab in the alpine on lee easterly aspects. Give recently formed cornices a wide berth and minimize travel under slopes with large overhanging cornices.	Considerable	Considerable	Moderate
504	8:35 AM PST Saturday, February 22, 2014	2014-02-22 16:35:00	Dennis D'Amico	Mt Hood	Careful snowpack evaluation should still be essential at Mt Hood on Saturday.	Considerable	Considerable	Moderate
502	8:35 AM PST Saturday, February 22, 2014	2014-02-22 16:35:00	Dennis D'Amico	Stevens Pass	There have not been many folks out lately due to the storms so there is some uncertainty regarding avalanche conditions.	Considerable	Considerable	Moderate
500	6:00 PM PST Thursday, February 20, 2014	2014-02-21 02:00:00	Garth Ferber	Olympics	Recent deep snow layers will need a little time to stabilize.	Considerable	Considerable	Considerable
497	6:00 PM PST Thursday, February 20, 2014	2014-02-21 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions are expected to continue east of the crest on Friday.	High	High	High
489	8:41 PM PST Wednesday, February 19, 2014	2014-02-20 04:41:00	Kenny Kramer	Mt Hood	Natural or human triggered avalanches should be likely Thursday especially on wind loaded slopes at all 3 elevation bands.  Allow new snow to settle Thursday and stick with very conservative terrain selections.	High	High	Considerable
487	8:41 PM PST Wednesday, February 19, 2014	2014-02-20 04:41:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Very large persistent slab avalanches reported releasing in many areas Wednesday from the NE Cascades to Blewett Pass to above Tumwater Canyon.  These are very dangerous avalanche conditions and backcountry travel is not recommended.	High	High	High
445	6:00 PM PST Tuesday, February 11, 2014	2014-02-12 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Travel in avalanche terrain near and above treeline is not recommended Wednesday.	High	High	Considerable
509	6:00 PM PST Sunday, February 23, 2014	2014-02-24 02:00:00	Dennis D'Amico	Olympics	If enough warming and rain is received on Monday....loose wet avalanches on all aspects into the treeline will be the primary concern. Also watch for sensitive shallow new storm slab formed Sunday afternoon and evening and give recently formed cornices a wide berth and avoid travel under slopes with large overhanging cornices.	Considerable	Considerable	Considerable
507	6:00 PM PST Saturday, February 22, 2014	2014-02-23 02:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions continue east of the crest on Sunday. They are becoming harder to trigger but the consequences are still just as deadly as earlier in the week.	Considerable	Considerable	Considerable
505	6:00 PM PST Saturday, February 22, 2014	2014-02-23 02:00:00	Dennis D'Amico	Olympics	Watch for sensitive shallow new storm slab formed Saturday night and Sunday morning and sensitive older wind slab on lee aspects. Give recently formed cornices a wide berth and minimize travel under slopes with large overhanging cornices.	Considerable	Considerable	Moderate
503	8:35 AM PST Saturday, February 22, 2014	2014-02-22 16:35:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Dangerous deep persistent slab conditions may continue east of the crest on Saturday.	Considerable	Considerable	Considerable
501	8:35 AM PST Saturday, February 22, 2014	2014-02-22 16:35:00	Dennis D'Amico	Olympics	There have not been many folks out lately due to the storms so there is some uncertainty regarding avalanche conditions.	Considerable	Considerable	Moderate
499	6:00 PM PST Thursday, February 20, 2014	2014-02-21 02:00:00	Garth Ferber	Mt Hood	Recent deep snow layers will need a little time to stabilize.	Considerable	Considerable	Considerable
496	6:00 PM PST Thursday, February 20, 2014	2014-02-21 02:00:00	Garth Ferber	Stevens Pass	Recent deep snow layers will need a little time to stabilize.	Considerable	Considerable	Considerable
488	8:41 PM PST Wednesday, February 19, 2014	2014-02-20 04:41:00	Kenny Kramer	East slopes WA Cascades - between Snoqualmie and White Pass	Human triggered avalanches should remain likely Thursday especially on wind loaded slopes at all 3 elevation bands.  Allow new snow to settle and stick with very conservative terrain selections.	Considerable	Considerable	Considerable
486	8:41 PM PST Wednesday, February 19, 2014	2014-02-20 04:41:00	Kenny Kramer	Stevens Pass	Natural or human triggered avalanches should be likely Thursday especially on wind loaded slopes at all 3 elevation bands.  Allow new snow to settle Thursday and stick with very conservative terrain selections.	High	High	Considerable
479	3:04 PM PST Wednesday, February 19, 2014	2014-02-19 23:04:00	Kenny Kramer	East slopes WA Cascades - between Snoqualmie and White Pass	Skier triggered avalanches should still be likely Wednesday especially on wind loaded slopes at all 3 elevation bands.  Allow new snow to settle Wednesday and stick with conservative terrain selections.	Considerable	Considerable	Considerable
477	3:04 PM PST Wednesday, February 19, 2014	2014-02-19 23:04:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Very large persistent slab avalanches reported releasing in many areas Wednesday from the NE Cascades to Blewett Pass to above Tumwater Canyon.  These are very dangerous avalanche conditions and backcountry travel is not recommended.	High	High	High
475	3:04 PM PST Wednesday, February 19, 2014	2014-02-19 23:04:00	Kenny Kramer	Olympics	Skier triggered avalanches should still be likely Wednesday especially on wind loaded slopes.  Allow new snow to settle Wednesday and stick with conservative terrain selections.	Considerable	Considerable	Considerable
473	6:26 PM PST Monday, February 17, 2014	2014-02-18 02:26:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Avalanche conditions should deteriorate quickly on Tuesday. Tuesday will be a good day to avoid all avalanche terrain.	High	High	High
471	6:26 PM PST Monday, February 17, 2014	2014-02-18 02:26:00	Dennis D'Amico	Olympics	Avalanche conditions should deteriorate quickly on Tuesday. Tuesday will be a good day to avoid all avalanche terrain.	High	High	High
469	6:00 PM PST Sunday, February 16, 2014	2014-02-17 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	A storm Sunday night is expected to cause high danger near and above treeline to last into Monday.	High	High	Considerable
467	6:00 PM PST Sunday, February 16, 2014	2014-02-17 02:00:00	Garth Ferber	Olympics	A storm Sunday night is expected to cause high danger near and above treeline to last into Monday.	High	High	Considerable
465	12:12 PM PST Sunday, February 16, 2014	2014-02-16 20:12:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Increasing high danger is expected again in this area at least near and above treeline by Sunday afternoon.	High	High	Considerable
463	12:12 PM PST Sunday, February 16, 2014	2014-02-16 20:12:00	Garth Ferber	Olympics	Increasing high danger is expected at Hurricane Ridge at least near and above treeline Sunday afternoon and evening	High	High	Considerable
461	6:12 PM PST Saturday, February 15, 2014	2014-02-16 02:12:00	Garth Ferber	Mt Hood	A break between storms should be seen Sunday at Mt Hood. Be sure to evaluate conditions for yourself in case they are different than expected. The next storm will cause strongly increasing avalanche danger at Mt Hood on Sunday night.	Considerable	Considerable	Moderate
459	6:12 PM PST Saturday, February 15, 2014	2014-02-16 02:12:00	Garth Ferber	Stevens Pass	Increasing high danger is expected again in this area at least near and above treeline by Sunday afternoon.	High	High	Considerable
457	7:32 PM PST Friday, February 14, 2014	2014-02-15 03:32:00	Kenny Kramer	East slopes WA Cascades - south of White Pass	Natural avalanches will be likely again by later Saturday, especially Saturday afternoon during the heaviest loading and locally warmest temperatures.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
455	6:00 PM PST Thursday, February 13, 2014	2014-02-14 02:00:00	Kenny Kramer	Mt Hood	Natural avalanches will be likely again Friday, especially early Friday during the heaviest loading and locally warmest air.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
452	6:00 PM PST Thursday, February 13, 2014	2014-02-14 02:00:00	Kenny Kramer	Olympics	Natural avalanches will be likely Friday, especially early Friday during the heaviest loading and locally warmest air.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
450	7:02 PM PST Wednesday, February 12, 2014	2014-02-13 03:02:00	Dennis D'Amico	Mt Hood	Natural avalanches will be unlikely Thursday, but skier triggered avalanches remain likely in specific terrain with potentially bigger consequences.	Considerable	Considerable	Considerable
476	3:04 PM PST Wednesday, February 19, 2014	2014-02-19 23:04:00	Kenny Kramer	Stevens Pass	Skier triggered avalanches should still be likely Wednesday especially on wind loaded slopes at all 3 elevation bands.  Allow new snow to settle Wednesday and stick with conservative terrain selections.	Considerable	Considerable	Considerable
474	6:26 PM PST Monday, February 17, 2014	2014-02-18 02:26:00	Dennis D'Amico	Mt Hood	Avalanche conditions should deteriorate quickly on Tuesday. Tuesday will be a good day to avoid all avalanche terrain.	High	High	High
472	6:26 PM PST Monday, February 17, 2014	2014-02-18 02:26:00	Dennis D'Amico	Stevens Pass	Avalanche conditions should deteriorate quickly on Tuesday. Tuesday will be a good day to avoid all avalanche terrain.	High	High	High
470	6:00 PM PST Sunday, February 16, 2014	2014-02-17 02:00:00	Garth Ferber	Mt Hood	A storm Sunday night and Monday morning at Mt Hood should cause a high danger in all 3 elevations zones until Monday morning.	High	High	High
468	6:00 PM PST Sunday, February 16, 2014	2014-02-17 02:00:00	Garth Ferber	Stevens Pass	A storm Sunday night is expected to cause high danger near and above treeline to last into Monday.	High	High	Considerable
466	12:12 PM PST Sunday, February 16, 2014	2014-02-16 20:12:00	Garth Ferber	Mt Hood	A break between storms should be seen Sunday at Mt Hood. Be sure to evaluate conditions for yourself in case they are different than expected. The next storm will cause strongly increasing avalanche danger at Mt Hood on Sunday night.	Considerable	Considerable	Moderate
464	12:12 PM PST Sunday, February 16, 2014	2014-02-16 20:12:00	Garth Ferber	Stevens Pass	Increasing high danger is expected again in this area at least near and above treeline by Sunday afternoon.	High	High	Considerable
462	6:12 PM PST Saturday, February 15, 2014	2014-02-16 02:12:00	Garth Ferber	Olympics	Increasing high danger is expected at Hurricane Ridge at least near and above treeline Sunday afternoon and evening	High	High	Considerable
460	6:12 PM PST Saturday, February 15, 2014	2014-02-16 02:12:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	Increasing high danger is expected again in this area at least near and above treeline by Sunday afternoon.	High	High	Considerable
458	7:32 PM PST Friday, February 14, 2014	2014-02-15 03:32:00	Kenny Kramer	Mt Hood	Natural avalanches will be likely again by later Saturday, especially by Saturday afternoon during the heaviest loading and locally warmest temperatures.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
456	7:32 PM PST Friday, February 14, 2014	2014-02-15 03:32:00	Kenny Kramer	Olympics	Natural avalanches will be likely again by later Saturday, especially Saturday afternoon during the heaviest loading and locally warmest temperatures.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
454	6:00 PM PST Thursday, February 13, 2014	2014-02-14 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Natural avalanches should be likely Friday, especially early Friday during the heaviest expected loading and locally warmest air.  Even in lower angled terrain and at lower elevations with the additional loading, human triggered avalanches remain likely in specific terrain with potentially bigger consequences.	High	High	Considerable
451	7:02 PM PST Wednesday, February 12, 2014	2014-02-13 03:02:00	Dennis D'Amico	Olympics	Natural avalanches will be unlikely Thursday, but skier triggered avalanches remain likely in specific terrain with potentially bigger consequences.	Considerable	Considerable	Moderate
449	7:02 PM PST Wednesday, February 12, 2014	2014-02-13 03:02:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Natural avalanches will be unlikely Thursday, but skier triggered avalanches remain likely in specific terrain with potentially bigger consequences.	Considerable	Considerable	Considerable
446	6:00 PM PST Tuesday, February 11, 2014	2014-02-12 02:00:00	Garth Ferber	Mt Hood	Travel in avalanche terrain is not recommended Wednesday.	High	High	High
444	6:00 PM PST Tuesday, February 11, 2014	2014-02-12 02:00:00	Garth Ferber	Stevens Pass	Travel in avalanche terrain is not recommended Wednesday.	High	High	High
442	3:21 AM PST Tuesday, February 11, 2014	2014-02-11 11:21:00	Garth Ferber	Mt Hood	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	High	Considerable
440	3:21 AM PST Tuesday, February 11, 2014	2014-02-11 11:21:00	Garth Ferber	Stevens Pass	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	High	Considerable
438	6:00 PM PST Monday, February 10, 2014	2014-02-11 02:00:00	Garth Ferber	Mt Hood	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	Considerable	Considerable
436	6:00 PM PST Monday, February 10, 2014	2014-02-11 02:00:00	Garth Ferber	Stevens Pass	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	Considerable	Considerable
434	6:00 PM PST Sunday, February 9, 2014	2014-02-10 02:00:00	Kenny Kramer	Mt Hood	Watch for sensitive new storm or wind slab on a variety of aspects Sunday. Manage the terrain by avoiding freshly wind loaded lee slopes near and below tree-line. Watch for shooting cracks as a sign of instability.  Travel in avalanche terrain above tree-line is not recommended Sunday.	High	High	Considerable
432	6:00 PM PST Sunday, February 9, 2014	2014-02-10 02:00:00	Kenny Kramer	Stevens Pass	Very weak surface snow should be loaded with denser storm slab or wind slab making natural or triggered slab avalanches increasingly likely.  Dangerous avalanche conditions should develop by later Monday. .	High	Considerable	Considerable
430	8:03 AM PST Sunday, February 9, 2014	2014-02-09 16:03:00	Kenny Kramer	Mt Hood	Watch for sensitive new storm or wind slab on a variety of aspects Sunday. Manage the terrain by avoiding freshly wind loaded lee slopes near and below tree-line. Watch for shooting cracks as a sign of instability.  Travel in avalanche terrain above tree-line is not recommended Sunday.	High	Considerable	Considerable
427	8:03 AM PST Sunday, February 9, 2014	2014-02-09 16:03:00	Kenny Kramer	Stevens Pass	Expect pockets of touchy wind slab or storm slab Sunday, skier triggered slabs have already occurred over the last few days. Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects although wind slab may exist into the below treeline zone.	Considerable	Considerable	Moderate
425	6:25 PM PST Friday, February 7, 2014	2014-02-08 02:25:00	Dennis D'Amico	Mt Hood	Watch for sensitive new wind slab mainly on N through SE aspects near and above treeline Saturday. Manage the terrain by avoiding freshly wind loaded lee slopes near and above tree-line. Watch for shooting cracks as a sign of instability.	Considerable	Considerable	Moderate
441	3:21 AM PST Tuesday, February 11, 2014	2014-02-11 11:21:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	Considerable	Considerable
439	3:21 AM PST Tuesday, February 11, 2014	2014-02-11 11:21:00	Garth Ferber	Olympics	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	High	Considerable
437	6:00 PM PST Monday, February 10, 2014	2014-02-11 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	Considerable	Moderate
435	6:00 PM PST Monday, February 10, 2014	2014-02-11 02:00:00	Garth Ferber	Olympics	High avalanche danger will be seen at times this week as strong fronts finally begin to roll across the Northwest.	High	Considerable	Considerable
433	6:00 PM PST Sunday, February 9, 2014	2014-02-10 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Expect pockets of touchy wind slab or storm slab Sunday.  Avoid wind loaded slopes near and below ridgelines, although wind slab may also exist into the below treeline zone.	Considerable	Moderate	Moderate
431	6:00 PM PST Sunday, February 9, 2014	2014-02-10 02:00:00	Kenny Kramer	Olympics	Very weak surface snow should be loaded with denser storm slab or wind slab making natural or triggered slab avalanches increasingly likely.  Dangerous avalanche conditions should develop by later Monday. .	Considerable	Considerable	Moderate
429	8:03 AM PST Sunday, February 9, 2014	2014-02-09 16:03:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	Expect pockets of touchy wind slab or storm slab Sunday.  Avoid wind loaded slopes near and below ridgelines, although wind slab may also exist into the below treeline zone.	Moderate	Moderate	Moderate
426	8:03 AM PST Sunday, February 9, 2014	2014-02-09 16:03:00	Kenny Kramer	Olympics	Watch for local wind transport and new wind slab formation near ridges and avoid lee slopes receiving wind transported snow. Small loose avalanches on steeper slopes are also possible.	Moderate	Moderate	Low
424	6:25 PM PST Friday, February 7, 2014	2014-02-08 02:25:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Saturday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Moderate	Moderate	Moderate
423	6:25 PM PST Friday, February 7, 2014	2014-02-08 02:25:00	Dennis D'Amico	White Pass	Expect pockets of touchy wind slab Saturday, skier triggered slabs have already occurred over the last few days. Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects although wind slab may exist into the below treeline zone.  The wind slab concern is expected to be locally less near Mt. Baker.	Considerable	Moderate	Moderate
422	6:25 PM PST Friday, February 7, 2014	2014-02-08 02:25:00	Dennis D'Amico	Stevens Pass	Expect pockets of touchy wind slab Saturday, skier triggered slabs have already occurred over the last few days. Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects although wind slab may exist into the below treeline zone.	Considerable	Considerable	Moderate
421	6:25 PM PST Friday, February 7, 2014	2014-02-08 02:25:00	Dennis D'Amico	Olympics	Watch for isolated and shallow wind slab mainly on non-solar aspects.  Small loose avalanches on steeper slopes are also possible.	Moderate	Moderate	Low
420	9:05 AM PST Friday, February 7, 2014	2014-02-07 17:05:00	Dennis D'Amico	Mt Hood	Proceed carefully above treeline on Friday as shifting winds have cross loaded many slopes and aspects and be attentive for newly formed wind slab.	Moderate	Moderate	Low
419	9:05 AM PST Friday, February 7, 2014	2014-02-07 17:05:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Moderate	Moderate	Moderate
418	9:05 AM PST Friday, February 7, 2014	2014-02-07 17:05:00	Dennis D'Amico	White Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Considerable	Moderate	Moderate
417	9:05 AM PST Friday, February 7, 2014	2014-02-07 17:05:00	Dennis D'Amico	Stevens Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Considerable	Considerable	Moderate
416	9:05 AM PST Friday, February 7, 2014	2014-02-07 17:05:00	Dennis D'Amico	Olympics	Watch for isolated shallow settled wind or storm slab poorly bonded on top of a slick crust, mainly on non-solar aspects.  Small loose avalanches on steeper slopes are possible.	Low	Low	Low
415	7:10 PM PST Thursday, February 6, 2014	2014-02-07 03:10:00	Dennis D'Amico	White Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Considerable	Moderate	Moderate
414	7:10 PM PST Thursday, February 6, 2014	2014-02-07 03:10:00	Dennis D'Amico	Mt Hood	Proceed carefully above treeline on Friday as shifting winds have cross loaded many slopes and aspects and be attentive for newly formed wind slab.	Moderate	Moderate	Low
413	7:10 PM PST Thursday, February 6, 2014	2014-02-07 03:10:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Moderate	Moderate	Moderate
412	7:10 PM PST Thursday, February 6, 2014	2014-02-07 03:10:00	Dennis D'Amico	Stevens Pass	New wind slab formed over the last few days on lee aspects presents the greatest avalanche danger Friday.  Avoid wind loaded slopes near and below ridgelines, mainly on SW thru N aspects.	Considerable	Considerable	Moderate
411	7:10 PM PST Thursday, February 6, 2014	2014-02-07 03:10:00	Dennis D'Amico	Olympics	Watch for isolated shallow settled wind or storm slab poorly bonded on top of a slick crust, mainly on non-solar aspects.  Small loose avalanches on steeper slopes are possible.	Low	Low	Low
410	9:25 AM PST Thursday, February 6, 2014	2014-02-06 17:25:00	Dennis D'Amico	Mt Hood	Snow conditions and overall stability still vary a lot across the region.	Moderate	Moderate	Low
409	9:25 AM PST Thursday, February 6, 2014	2014-02-06 17:25:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	Snow conditions and overall stability still vary a lot across the region so proceed with caution. It would be wise to choose safer terrain if you are uncertain of local stability.	Moderate	Moderate	Moderate
408	9:25 AM PST Thursday, February 6, 2014	2014-02-06 17:25:00	Dennis D'Amico	Olympics	Snow conditions and overall stability still vary a lot across the region.	Moderate	Moderate	Low
407	9:25 AM PST Thursday, February 6, 2014	2014-02-06 17:25:00	Dennis D'Amico	Stevens Pass	Snow conditions and overall stability still vary a lot across the region so proceed with caution. The persistent slab concern is for Stevens and Snoqualmie and east of the crest.	Moderate	Moderate	Moderate
405	6:00 PM PST Tuesday, February 4, 2014	2014-02-05 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	While natural avalanches remain unlikely Wednesday, human triggered avalanches remain possible. Snow conditions and overall stability should vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of local stability.	Moderate	Moderate	Moderate
403	6:00 PM PST Tuesday, February 4, 2014	2014-02-05 02:00:00	Kenny Kramer	Stevens Pass	While natural avalanches remain unlikely Wednesday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution. The persistent slab concern is least likely to be found further south near Mt. Rainier and Crystal Mtn.	Moderate	Moderate	Moderate
401	6:14 PM PST Monday, February 3, 2014	2014-02-04 02:14:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Tuesday, human triggered avalanches remain possible. Snow conditions and overall stability should vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of local stability.	Moderate	Moderate	Moderate
398	6:14 PM PST Monday, February 3, 2014	2014-02-04 02:14:00	Kenny Kramer	Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Tuesday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution. The persistent slab concern is least likely to be found further south near Mt. Rainier and Crystal Mtn.	Moderate	Moderate	Moderate
391	6:00 PM PST Sunday, February 2, 2014	2014-02-03 02:00:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability.	Moderate	Moderate	Moderate
389	6:00 PM PST Sunday, February 2, 2014	2014-02-03 02:00:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Monday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution.	Moderate	Moderate	Moderate
387	8:49 AM PST Sunday, February 2, 2014	2014-02-02 16:49:00	Dennis D'Amico	Olympics	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability. The persistent slab concern is less likely to be found near Crystal Mtn and Hurricane Ridge, see the discussion for details.	Moderate	Moderate	Low
385	8:49 AM PST Sunday, February 2, 2014	2014-02-02 16:49:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability.	Moderate	Moderate	Moderate
383	8:49 AM PST Sunday, February 2, 2014	2014-02-02 16:49:00	Dennis D'Amico	Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability. The persistent slab concern is less likely to be found near Crystal Mtn and Hurricane Ridge, see the discussion for details.	Moderate	Moderate	Moderate
373	8:44 PM PST Saturday, February 1, 2014	2014-02-02 04:44:00	Dennis D'Amico	Mt Hood	The Bottom Line: Wind slab should continue to slowly stabilize on Sunday but caution is still advised before jumping onto a wind loaded slope near or above treeline.	Moderate	Moderate	Moderate
370	8:44 PM PST Saturday, February 1, 2014	2014-02-02 04:44:00	Dennis D'Amico	Olympics	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability. The persistent slab concern is less likely to be found near Crystal Mtn and Hurricane Ridge, see the discussion for details.	Moderate	Moderate	Moderate
368	6:00 PM PST Friday, January 31, 2014	2014-02-01 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Snow conditions and stability will still vary a lot depending on location on Saturday. It would be wise to choose safer terrain if you are uncertain of stability.	Considerable	Considerable	Considerable
366	6:00 PM PST Friday, January 31, 2014	2014-02-01 02:00:00	Garth Ferber	Olympics	The Bottom Line: Snow conditions and stability will still vary a lot depending on location on Saturday. It would be wise to choose safer terrain if you are uncertain of stability.	Considerable	Considerable	Moderate
364	6:00 PM PST Thursday, January 30, 2014	2014-01-31 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Dangerous snow conditions are expected in parts of the Washington Cascades on Friday.	Considerable	Considerable	Considerable
359	6:00 PM PST Thursday, January 30, 2014	2014-01-31 02:00:00	Garth Ferber	Olympics	The Bottom Line: Dangerous snow conditions are expected in parts of the Washington Cascades on Friday.	Considerable	Considerable	Moderate
357	6:18 PM PST Wednesday, January 29, 2014	2014-01-30 02:18:00	Kenny Kramer	Mt Hood	The Bottom Line: Cool temperatures should maintain existing buried weak layers, as well as unstable wind slab layers.   Make sure you know how the new snow is bonding to the old snow surface and avoid steep open lee slopes where unstable wind slabs are likely.	Considerable	Moderate	Moderate
355	6:18 PM PST Wednesday, January 29, 2014	2014-01-30 02:18:00	Kenny Kramer	Olympics	The Bottom Line: Cool temperatures should maintain existing buried weak layers, especially surface hoar as well as unstable slab layers, both wind and storm.   Make sure you know how the new snow is bonding to the old snow surface and test for the potential of buried surface hoar before committing to any avalanche terrain.	Considerable	Considerable	Moderate
353	8:37 PM PST Tuesday, January 28, 2014	2014-01-29 04:37:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Expect deteriorating avalanche conditions in the backcountry on Wednesdayas new snow found in mid and higher terrain attempts to bond to a myriad of snow surfaces and new storm snow buries recently formed weak layers such as surface hoar and near surface facets. Make sure you know how the new snow is bonding to the old snow surface before committing to any avalanche terrain.	Considerable	Moderate	Moderate
406	6:00 PM PST Tuesday, February 4, 2014	2014-02-05 02:00:00	Kenny Kramer	Mt Hood	Previously formed wind slab should continue be slow to stabilize and may continue to show sensitivity to human triggers on steep leeward slopes Wednesday.  Increasing east winds may begin to build new areas of wind slab. Remain very cautious and avoid steeper wind loaded slopes near or above treeline.	Moderate	Moderate	Low
404	6:00 PM PST Tuesday, February 4, 2014	2014-02-05 02:00:00	Kenny Kramer	Olympics	While natural avalanches remain unlikely Wednesday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution.	Moderate	Moderate	Low
402	6:14 PM PST Monday, February 3, 2014	2014-02-04 02:14:00	Kenny Kramer	Mt Hood	The Bottom Line: Wind slab should continue be slow to stabilize and may remain sensitive to human triggers on steep leeward slopes Tuesday.  Remain very cautious and avoid steeper wind loaded slopes near or above treeline.	Moderate	Moderate	Low
400	6:14 PM PST Monday, February 3, 2014	2014-02-04 02:14:00	Kenny Kramer	Olympics	The Bottom Line:  Despite the low likelihood of natural avalanches Tuesday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution.	Moderate	Moderate	Low
392	6:00 PM PST Sunday, February 2, 2014	2014-02-03 02:00:00	Dennis D'Amico	Mt Hood	The Bottom Line: Wind slab should continue to slowly stabilize on Monday but caution is still advised before jumping onto a wind loaded slope near or above treeline.	Moderate	Moderate	Low
390	6:00 PM PST Sunday, February 2, 2014	2014-02-03 02:00:00	Dennis D'Amico	Olympics	The Bottom Line:  Despite the low likelihood of natural avalanches Monday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution.	Moderate	Moderate	Low
388	6:00 PM PST Sunday, February 2, 2014	2014-02-03 02:00:00	Dennis D'Amico	Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Monday, human triggered avalanches remain possible. Snow conditions and overall stability still vary quite a bit across the region so proceed with caution. The persistent slab concern is least likely to be found further south near Mt. Rainier and Crystal Mtn.	Moderate	Moderate	Moderate
386	8:49 AM PST Sunday, February 2, 2014	2014-02-02 16:49:00	Dennis D'Amico	Mt Hood	The Bottom Line: Wind slab should continue to slowly stabilize on Sunday but caution is still advised before jumping onto a wind loaded slope near or above treeline.	Moderate	Moderate	Moderate
384	8:49 AM PST Sunday, February 2, 2014	2014-02-02 16:49:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the terrain. It would be wise to choose safer terrain if you are uncertain of stability.	Moderate	Moderate	Moderate
374	8:44 PM PST Saturday, February 1, 2014	2014-02-02 04:44:00	Dennis D'Amico	WA Cascades near and west of crest - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the terrain. It would be wise to choose safer terrain if you are uncertain of stability.	Moderate	Moderate	Moderate
372	8:44 PM PST Saturday, February 1, 2014	2014-02-02 04:44:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Despite the low likelihood of natural avalanches Sunday, human triggered avalanches remain possible. Snow conditions and overall stability will still vary quite a bit across the region. It would be wise to choose safer terrain if you are uncertain of stability.	Moderate	Moderate	Moderate
369	6:00 PM PST Friday, January 31, 2014	2014-02-01 02:00:00	Garth Ferber	Mt Hood	The Bottom Line: Wind and storm slab should linger but partly stabilize at Mt Hood Saturday. If you intend to visit the Washington Cascades be sure to read the avalanche forecast due to potential dangerous hoar frost layers that have been buried in parts of that area.	Considerable	Moderate	Moderate
367	6:00 PM PST Friday, January 31, 2014	2014-02-01 02:00:00	Garth Ferber	Stevens Pass	The Bottom Line: Snow conditions and stability will still vary a lot depending on location on Saturday. It would be wise to choose safer terrain if you are uncertain of stability.	Considerable	Considerable	Considerable
365	6:00 PM PST Thursday, January 30, 2014	2014-01-31 02:00:00	Garth Ferber	Mt Hood	The Bottom Line: New wind and storm slab are expected at Mt Hood on Friday. Check the avalanche forecast for the Washington Cascades if you plan to visit since potentially dangerous snowpack is expected in parts of that area.	Considerable	Moderate	Moderate
363	6:00 PM PST Thursday, January 30, 2014	2014-01-31 02:00:00	Garth Ferber	Stevens Pass	The Bottom Line: Dangerous snow conditions are expected in parts of the Washington Cascades on Friday.	Considerable	Considerable	Considerable
358	6:18 PM PST Wednesday, January 29, 2014	2014-01-30 02:18:00	Kenny Kramer	Stevens Pass	The Bottom Line: Cool temperatures should maintain existing buried weak layers, especially surface hoar as well as unstable slab layers, both wind and storm.   Make sure you know how the new snow is bonding to the old snow surface and test for the potential of buried surface hoar before committing to any avalanche terrain.	Considerable	Considerable	Considerable
356	6:18 PM PST Wednesday, January 29, 2014	2014-01-30 02:18:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Cool temperatures should maintain existing buried weak layers, especially surface hoar as well as unstable slab layers, both wind and storm.   Make sure you know how the new snow is bonding to the old snow surface and test for the potential of buried surface hoar before committing to any avalanche terrain.	Considerable	Considerable	Considerable
354	8:37 PM PST Tuesday, January 28, 2014	2014-01-29 04:37:00	Dennis D'Amico	Mt Hood	The Bottom Line: Expect deteriorating avalanche conditions in the backcountry on Wednesdayas new snow found in higher terrain attempts to bond to a myriad of snow surfaces. Make sure you know how the new snow is bonding to the old snow surface before committing to any avalanche terrain, especially on lee windloaded slopes.	Considerable	Moderate	Moderate
352	8:37 PM PST Tuesday, January 28, 2014	2014-01-29 04:37:00	Dennis D'Amico	Olympics	The Bottom Line: Expect deteriorating avalanche conditions in the backcountry on Wednesday as new snow found in mid and higher terrain attempts to bond to a myriad of snow surfaces and new storm snow buries recently formed weak layers such as surface hoar and near surface facets. Make sure you know how the new snow is bonding to the old snow surface before committing to any avalanche terrain.	Considerable	Considerable	Moderate
347	10:34 AM PST Tuesday, January 28, 2014	2014-01-28 18:34:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Generally safe avalanche conditions should be seen on Tuesday but use normal caution while travelling in the backcountry.	Low	Low	Low
348	10:34 AM PST Tuesday, January 28, 2014	2014-01-28 18:34:00	Dennis D'Amico	Mt Hood	The Bottom Line: Generally safe avalanche conditions should be seen on Tuesday but use normal caution while travelling in the backcountry.	Low	Low	Low
346	10:34 AM PST Tuesday, January 28, 2014	2014-01-28 18:34:00	Dennis D'Amico	Olympics	The Bottom Line: Generally safe conditions should continue on Tuesday. Use normal caution on lee slopes and watch for small areas of wet snow on steep solar aspects where natural slides are unlikely Tuesday but a poor refreeze Monday night may still allow for a human triggered slide.	Low	Low	Low
344	6:00 PM PST Sunday, January 26, 2014	2014-01-27 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Generally safe conditions should be seen on Monday. Use normal caution on lee shaded slopes and watch for small areas of wet snow on steep solar aspects.	Low	Low	Low
342	6:00 PM PST Saturday, January 25, 2014	2014-01-26 02:00:00	Garth Ferber	Mt Hood	The Bottom Line: Concerns should be limited on Sunday. Watch mainly for small areas of wet snow on steep solar aspects.	Low	Low	Low
338	6:00 PM PST Saturday, January 25, 2014	2014-01-26 02:00:00	Garth Ferber	Olympics	The Bottom Line: Concerns should be limited on Sunday. Check or take precautions for isolated small areas of slab layers on lee shaded slopes or for small areas of wet snow on steep solar aspects.	Moderate	Low	Low
336	6:00 PM PST Friday, January 24, 2014	2014-01-25 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects, especially below rock outcrops or cliffs.	Moderate	Moderate	Low
334	6:00 PM PST Thursday, January 23, 2014	2014-01-24 02:00:00	Kenny Kramer	Mt Hood	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects not affected by east winds.	Moderate	Moderate	Low
332	6:00 PM PST Thursday, January 23, 2014	2014-01-24 02:00:00	Kenny Kramer	Olympics	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line that may become more sensitive to trigger during the ongoing dry spell.	Moderate	Moderate	Low
330	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line that are becoming more sensitive during the ongoing dry spell.	Moderate	Moderate	Low
328	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Garth Ferber	Mt Hood	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects not affected by east winds.	Low	Low	Low
326	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Garth Ferber	Olympics	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line that are becoming more sensitive during the ongoing dry spell.	Moderate	Moderate	Low
321	6:00 PM PST Tuesday, January 21, 2014	2014-01-22 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: The main concern should be isolated areas of slab layers on north or lee slopes above tree line.	Moderate	Low	Low
317	6:00 PM PST Monday, January 20, 2014	2014-01-21 02:00:00	Kenny Kramer	Mt Hood	The Bottom Line:  The danger of wet loose snow avalanches should be less on Tuesday. But continue to watch for local wet loose avalanches on steep solar aspects.	Moderate	Moderate	Low
315	6:00 PM PST Monday, January 20, 2014	2014-01-21 02:00:00	Kenny Kramer	Olympics	The Bottom Line:  The danger of wet loose snow avalanches should be less on Tuesday. But continue to watch for local wet loose avalanches on steep solar aspects.	Moderate	Moderate	Low
313	6:00 PM PST Sunday, January 19, 2014	2014-01-20 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Watch for shallow wet-loose slides Monday on mainly steep solar aspects at mid and higher elevations.	Moderate	Moderate	Low
311	6:00 PM PST Saturday, January 18, 2014	2014-01-19 02:00:00	Kenny Kramer	Mt Hood	The Bottom Line:  While slightly cooler, continue to watch for local wet-loose slides during the warmest part of the day on steep solar aspects.	Low	Low	Low
309	6:00 PM PST Saturday, January 18, 2014	2014-01-19 02:00:00	Kenny Kramer	Olympics	The Bottom Line:  While slightly cooler, continue to watch for local wet-loose slides during the warmest part of the day on steep solar aspects.	Moderate	Low	Low
307	6:04 PM PST Friday, January 17, 2014	2014-01-18 02:04:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Watch for wet-loose slides once again on solar aspects.	Moderate	Moderate	Low
302	6:10 PM PST Thursday, January 16, 2014	2014-01-17 02:10:00	Dennis D'Amico	Mt Hood	The Bottom Line: The name of the game on Friday will again be wet loose on solar aspects. Little wind, plenty of sunshine and temperatures potentially a few degrees warmer than Thursday should again ramp up the prospect of loose wet avalanches in the late morning and afternoon.	Moderate	Moderate	Moderate
299	6:10 PM PST Thursday, January 16, 2014	2014-01-17 02:10:00	Dennis D'Amico	Olympics	The Bottom Line: The name of the game on Friday will again be wet loose on solar aspects. Little wind, plenty of sunshine and temperatures potentially a few degrees warmer than Thursday should again ramp up the prospect of loose wet avalanches in the late morning and afternoon.	Moderate	Moderate	Moderate
293	10:48 AM PST Thursday, January 16, 2014	2014-01-16 18:48:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	The avalanche danger should continue to slowly diminish Thursday.  But watch for lingering wind slab mainly in the alpine and loose wet snow on steep solar slopes.	Moderate	Moderate	Low
288	10:48 AM PST Thursday, January 16, 2014	2014-01-16 18:48:00	Dennis D'Amico	Olympics	The avalanche danger should continue to slowly diminish Thursday.  But watch for lingering wind slab in the alpine and loose wet snow on steep solar slopes.	Moderate	Moderate	Moderate
286	6:00 PM PST Tuesday, January 14, 2014	2014-01-15 02:00:00	Kenny Kramer	East slopes WA Cascades - between Snoqualmie and White Pass	The avalanche danger should continue to slowly diminish Wednesday for previous storm layers.  However, warming and sunshine Wednesday should increase wet snow and possible wet avalanches on steep southerly facing terrain.	Moderate	Moderate	Low
284	6:00 PM PST Tuesday, January 14, 2014	2014-01-15 02:00:00	Kenny Kramer	Olympics	The avalanche danger should continue to slowly diminish Wednesday for previous storm layers.  However, warming and sunshine Wednesday should increase wet snow and possible wet avalanches on steep southerly facing terrain.	Moderate	Moderate	Moderate
282	6:00 PM PST Monday, January 13, 2014	2014-01-14 02:00:00	Kenny Kramer	East slopes WA Cascades - between Snoqualmie and White Pass	The avalanche danger should continue to slowly diminish Tuesday for previous storm layers.  However, warming and sunshine later Tuesday should increase wet snow on southerly facing terrain.	Moderate	Moderate	Moderate
343	6:00 PM PST Sunday, January 26, 2014	2014-01-27 02:00:00	Garth Ferber	Olympics	The Bottom Line: Generally safe conditions should be seen on Monday. Use normal caution on lee shaded slopes and watch for small areas of wet snow on steep solar aspects.	Moderate	Low	Low
341	6:00 PM PST Saturday, January 25, 2014	2014-01-26 02:00:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: Concerns should be limited on Sunday. Check or take precautions for isolated small areas of slab layers on lee shaded slopes or for small areas of wet snow on steep solar aspects.	Low	Low	Low
337	6:00 PM PST Friday, January 24, 2014	2014-01-25 02:00:00	Kenny Kramer	Mt Hood	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects not affected by east winds.	Moderate	Moderate	Low
335	6:00 PM PST Friday, January 24, 2014	2014-01-25 02:00:00	Kenny Kramer	Olympics	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects not affected by east winds.	Moderate	Moderate	Low
333	6:00 PM PST Thursday, January 23, 2014	2014-01-24 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line.	Moderate	Moderate	Low
331	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Dennis D'Amico	Mt Hood	The Bottom Line: Watch for isolated small wet-loose slides in the late morning and afternoon on solar aspects not affected by east winds.	Low	Low	Low
329	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Dennis D'Amico	Olympics	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line that are becoming more sensitive during the ongoing dry spell.	Moderate	Moderate	Low
327	6:16 PM PST Wednesday, January 22, 2014	2014-01-23 02:16:00	Garth Ferber	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: The main concern should be isolated areas of wind slab on northerly or lee slopes near and above tree line that are becoming more sensitive during the ongoing dry spell.	Moderate	Moderate	Low
322	6:00 PM PST Tuesday, January 21, 2014	2014-01-22 02:00:00	Garth Ferber	Mt Hood	The Bottom Line: The main concern should be small isolated areas of wind slab on north or lee slopes above tree line.	Low	Low	Low
318	6:00 PM PST Tuesday, January 21, 2014	2014-01-22 02:00:00	Garth Ferber	Olympics	The Bottom Line: The main concern should be isolated areas of slab layers on north or lee slopes above tree line.	Moderate	Low	Low
316	6:00 PM PST Monday, January 20, 2014	2014-01-21 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  The danger of wet loose snow avalanches should be less on Tuesday. But continue to watch for local wet loose avalanches on steep solar aspects.	Moderate	Moderate	Low
314	6:00 PM PST Sunday, January 19, 2014	2014-01-20 02:00:00	Kenny Kramer	Mt Hood	The Bottom Line:  Gradual warming and light winds should produce surface snow melt on steep sun exposed slopes during the warmest part of the day. Continue to watch for local wet-loose slides on steep solar aspects.	Moderate	Moderate	Low
312	6:00 PM PST Sunday, January 19, 2014	2014-01-20 02:00:00	Kenny Kramer	Olympics	The Bottom Line:  Gradual warming and light winds should produce surface snow melt on steep sun exposed slopes during the warmest part of the day. Continue to watch for local wet-loose slides on steep solar aspects.	Moderate	Moderate	Low
310	6:00 PM PST Saturday, January 18, 2014	2014-01-19 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The Bottom Line:  Watch for shallow wet-loose slides Sunday on mainly steep solar aspects at mid and higher elevations.	Moderate	Low	Low
308	6:04 PM PST Friday, January 17, 2014	2014-01-18 02:04:00	Dennis D'Amico	Mt Hood	The Bottom Line:  Watch for wet-loose slides once again on solar aspects.	Moderate	Moderate	Low
306	6:04 PM PST Friday, January 17, 2014	2014-01-18 02:04:00	Dennis D'Amico	Olympics	The Bottom Line:  Watch for wet-loose slides once again on solar aspects.	Moderate	Moderate	Low
300	6:10 PM PST Thursday, January 16, 2014	2014-01-17 02:10:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The Bottom Line: The name of the game on Friday will again be wet loose on solar aspects. Little wind, plenty of sunshine and temperatures potentially a few degrees warmer than Thursday should again ramp up the prospect of loose wet avalanches in the late morning and afternoon.	Moderate	Moderate	Moderate
294	10:48 AM PST Thursday, January 16, 2014	2014-01-16 18:48:00	Dennis D'Amico	Mt Hood	The avalanche danger should continue to slowly diminish Thursday.  But watch for lingering wind slab in the alpine and loose wet snow on steep solar slopes.	Moderate	Moderate	Moderate
292	10:48 AM PST Thursday, January 16, 2014	2014-01-16 18:48:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should continue to slowly diminish Thursday.  But watch for lingering persistent slab or wind slab in the alpine and loose wet snow on steep solar slopes.	Moderate	Moderate	Moderate
287	6:00 PM PST Tuesday, January 14, 2014	2014-01-15 02:00:00	Kenny Kramer	Mt Hood	The avalanche danger should continue to slowly diminish Wednesday for previous storm layers.  However, warming and sunshine Wednesday should increase wet snow and possible wet avalanches on steep southerly facing terrain.	Moderate	Moderate	Moderate
285	6:00 PM PST Tuesday, January 14, 2014	2014-01-15 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should continue to slowly diminish Wednesday for previous storm layers.  However, warming and sunshine Wednesday should increase wet snow and possible wet avalanches on steep southerly facing terrain.	Considerable	Moderate	Moderate
283	6:00 PM PST Monday, January 13, 2014	2014-01-14 02:00:00	Kenny Kramer	Mt Hood	The avalanche danger should continue to slowly diminish Tuesday for previous storm layers.  However, warming and sunshine later Tuesday should increase wet snow on southerly facing terrain.	Moderate	Moderate	Moderate
281	6:00 PM PST Monday, January 13, 2014	2014-01-14 02:00:00	Kenny Kramer	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should continue to slowly diminish Tuesday for previous storm layers. However, warming and sunshine later Tuesday should increase wet snow on southerly facing terrain.	Considerable	Moderate	Moderate
279	6:22 PM PST Sunday, January 12, 2014	2014-01-13 02:22:00	Dennis D'Amico	Mt Hood	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely on wind loaded slopes.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.	Considerable	Considerable	Moderate
277	6:22 PM PST Sunday, January 12, 2014	2014-01-13 02:22:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.  Check for recently buried near facets on a variety of slopes and sheltered aspects.	Considerable	Considerable	Moderate
280	6:00 PM PST Monday, January 13, 2014	2014-01-14 02:00:00	Kenny Kramer	Olympics	The avalanche danger should continue to slowly diminish Tuesday for previous storm layers.  However, warming and sunshine later Tuesday should increase wet snow on southerly facing terrain.	Considerable	Moderate	Moderate
278	6:22 PM PST Sunday, January 12, 2014	2014-01-13 02:22:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	The avalanche danger should tick down a notch Monday, but wind slab human triggered avalanches are still likely.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.	Considerable	Considerable	Moderate
276	6:22 PM PST Sunday, January 12, 2014	2014-01-13 02:22:00	Dennis D'Amico	Olympics	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.	Considerable	Considerable	Considerable
274	6:13 PM PST Sunday, January 12, 2014	2014-01-13 02:13:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	The storm cycle continues on Sunday, look for elevated danger to continue with increasing avalanche danger later in the day and approach the recent storm snow with caution. Travel in avalanche terrain above treeline is not recommended.	Considerable	Considerable	Moderate
272	6:13 PM PST Sunday, January 12, 2014	2014-01-13 02:13:00	Dennis D'Amico	Olympics	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.	Considerable	Considerable	Considerable
275	6:13 PM PST Sunday, January 12, 2014	2014-01-13 02:13:00	Dennis D'Amico	Mt Hood	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely on wind loaded slopes.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.	Considerable	Considerable	Moderate
273	6:13 PM PST Sunday, January 12, 2014	2014-01-13 02:13:00	Dennis D'Amico	East slopes WA Cascades - north of Stevens Pass	The avalanche danger should tick down a notch Monday, but storm and wind slab human triggered avalanches are still likely.  Watch for cracking in the most recent storm snow and pay attention to slope aspect.  Check for recently buried near facets on a variety of slopes and sheltered aspects.	Considerable	Considerable	Moderate
271	6:06 PM PST Saturday, January 11, 2014	2014-01-12 02:06:00	Dennis D'Amico	East slopes WA Cascades - between Snoqualmie and White Pass	The storm cycle continues on Sunday, look for elevated danger to continue with increasing avalanche danger later in the day and approach the recent storm snow with caution. Travel in avalanche terrain above treeline is not recommended.	High	Considerable	Moderate
\.


--
-- Name: forecasts_pkey; Type: CONSTRAINT; Schema: public; Owner: tkb
--

ALTER TABLE ONLY forecasts
    ADD CONSTRAINT forecasts_pkey PRIMARY KEY (forecast_id);


--
-- Name: region_index_pkey; Type: CONSTRAINT; Schema: public; Owner: tkb
--

ALTER TABLE ONLY region_index
    ADD CONSTRAINT region_index_pkey PRIMARY KEY (forecast_id, region);


--
-- Name: reports_pkey; Type: CONSTRAINT; Schema: public; Owner: tkb
--

ALTER TABLE ONLY reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (report_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: tkb
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM tkb;
GRANT ALL ON SCHEMA public TO tkb;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

