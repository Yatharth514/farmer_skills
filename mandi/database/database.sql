--
-- PostgreSQL database dump
--

\restrict 55xqrV9Cum2HwRGUgXVden0TSDVwpGDSQYoBvr3QPbO1tHvm4f21dU4hT91TI7Z

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-08-29 22:40:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 221 (class 1259 OID 18676)
-- Name: district_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.district_locations (
    state text NOT NULL,
    district text NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    location_type text DEFAULT 'district_headquarters'::text
);


ALTER TABLE public.district_locations OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18663)
-- Name: mandi_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mandi_locations (
    state text NOT NULL,
    district text DEFAULT ''::text NOT NULL,
    market text NOT NULL,
    latitude double precision,
    longitude double precision,
    geocoded_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.mandi_locations OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18644)
-- Name: mandi_prices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mandi_prices (
    state text NOT NULL,
    district text DEFAULT ''::text NOT NULL,
    market text NOT NULL,
    commodity text NOT NULL,
    variety text DEFAULT ''::text NOT NULL,
    grade text DEFAULT ''::text NOT NULL,
    arrival_date text NOT NULL,
    min_price numeric,
    max_price numeric,
    modal_price numeric,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.mandi_prices OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 18676)
-- Dependencies: 221
-- Data for Name: district_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.district_locations (state, district, latitude, longitude, location_type) FROM stdin;
Maharashtra	palghar	19.6967	72.7653	district_headquarters
Maharashtra	raigad	18.6414	72.8722	district_headquarters
Maharashtra	ratnagiri	16.9902	73.312	district_headquarters
Maharashtra	sindhudurg	16.1288	73.6848	district_headquarters
Maharashtra	pune	18.5204	73.8567	district_headquarters
Maharashtra	satara	17.6805	74.0183	district_headquarters
Maharashtra	sangli	16.8524	74.5815	district_headquarters
Maharashtra	solapur	17.6599	75.9064	district_headquarters
Maharashtra	kolhapur	16.705	74.2433	district_headquarters
Maharashtra	nashik	19.9975	73.7898	district_headquarters
Maharashtra	dhule	20.9042	74.7749	district_headquarters
Maharashtra	nandurbar	21.3655	74.24	district_headquarters
Maharashtra	jalgaon	21.0077	75.5626	district_headquarters
Maharashtra	ahilyanagar	19.0952	74.7496	district_headquarters
Maharashtra	chhatrapati sambhajinagar	19.8762	75.3433	district_headquarters
Maharashtra	jalna	19.8347	75.8816	district_headquarters
Maharashtra	beed	18.9891	75.7601	district_headquarters
Maharashtra	latur	18.4088	76.5604	district_headquarters
Maharashtra	dharashiv	18.186	76.0419	district_headquarters
Maharashtra	nanded	19.1383	77.321	district_headquarters
Maharashtra	parbhani	19.26	76.7767	district_headquarters
Maharashtra	hingoli	19.715	77.1548	district_headquarters
Maharashtra	amravati	20.9374	77.7796	district_headquarters
Maharashtra	akola	20.7002	77.0082	district_headquarters
Maharashtra	washim	20.111	77.133	district_headquarters
Maharashtra	buldhana	20.5293	76.184	district_headquarters
Maharashtra	yavatmal	20.3899	78.1307	district_headquarters
Maharashtra	nagpur	21.1458	79.0882	district_headquarters
Maharashtra	wardha	20.7453	78.6022	district_headquarters
Maharashtra	bhandara	21.17	79.65	district_headquarters
Maharashtra	gondia	21.4624	80.221	district_headquarters
Maharashtra	chandrapur	19.9615	79.2961	district_headquarters
Maharashtra	gadchiroli	20.1809	80.002	district_headquarters
Maharashtra	mumbai	19.076	72.8777	district_headquarters
Maharashtra	mumbai city	19.076	72.8777	district_headquarters
Maharashtra	mumbai suburban	19.076	72.8777	district_headquarters
Maharashtra	thane	19.2183	72.9781	district_headquarters
\.


--
-- TOC entry 5024 (class 0 OID 18663)
-- Dependencies: 220
-- Data for Name: mandi_locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mandi_locations (state, district, market, latitude, longitude, geocoded_at) FROM stdin;
Maharashtra	Ahilyanagar	Karjat APMC	19.0952	74.7496	2026-08-26 20:46:45.400038+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	19.0952	74.7496	2026-08-26 20:46:45.405982+05:30
Maharashtra	Ahilyanagar	Newasa(Ghodegaon) APMC	19.0952	74.7496	2026-08-26 20:46:45.407098+05:30
Maharashtra	Ahilyanagar	Parner APMC	19.0952	74.7496	2026-08-26 20:46:45.408382+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	19.0952	74.7496	2026-08-26 20:46:45.409496+05:30
Maharashtra	Ahilyanagar	Prasanna Krushi Market, Tal Parnet, Dist Ahilyanagar	19.0952	74.7496	2026-08-26 20:46:45.410933+05:30
Maharashtra	Ahilyanagar	Rahata APMC	19.0952	74.7496	2026-08-26 20:46:45.412041+05:30
Maharashtra	Ahilyanagar	Rahuri APMC	19.0952	74.7496	2026-08-26 20:46:45.412802+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	19.0952	74.7496	2026-08-26 20:46:45.413471+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	19.0952	74.7496	2026-08-26 20:46:45.414312+05:30
Maharashtra	Amarawati	Varud(Rajura Bazar) APMC	20.9374	77.7796	2026-08-26 20:46:45.415007+05:30
Maharashtra	Beed	Vadvani APMC	18.9891	75.7601	2026-08-26 20:46:45.415706+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	20.5293	76.184	2026-08-26 20:46:45.416469+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	19.8762	75.3433	2026-08-26 20:46:45.417502+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	19.8762	75.3433	2026-08-26 20:46:45.418184+05:30
Maharashtra	Dhule	Dhule APMC	20.9042	74.7749	2026-08-26 20:46:45.418927+05:30
Maharashtra	Hingoli	Gajanan Krushi Utpanna Bazar (India) Pvt Ltd, Basmat, Dist Hingoli	19.715	77.1548	2026-08-26 20:46:45.419528+05:30
Maharashtra	Hingoli	Sant Namdev Krushi Bazar, Tal Sengaon Dist Hingoli	19.715	77.1548	2026-08-26 20:46:45.420019+05:30
Maharashtra	Hingoli	Sengoan APMC	19.715	77.1548	2026-08-26 20:46:45.420473+05:30
Maharashtra	Jalgaon	Bhusaval APMC	21.0077	75.5626	2026-08-26 20:46:45.420915+05:30
Maharashtra	Kolhapur	Kolhapur APMC	16.705	74.2433	2026-08-26 20:46:45.421423+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	16.705	74.2433	2026-08-26 20:46:45.42209+05:30
Maharashtra	Mumbai	Mumbai APMC	19.076	72.8777	2026-08-26 20:46:45.422636+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	21.1458	79.0882	2026-08-26 20:46:45.423146+05:30
Maharashtra	Nagpur	HINGNA - APMC	21.1458	79.0882	2026-08-26 20:46:45.423857+05:30
Maharashtra	Nagpur	Ramtek APMC	21.1458	79.0882	2026-08-26 20:46:45.424328+05:30
Maharashtra	Nagpur	Savner APMC	21.1458	79.0882	2026-08-26 20:46:45.424858+05:30
Maharashtra	Nashik	Dindori APMC	19.9975	73.7898	2026-08-26 20:46:45.4253+05:30
Maharashtra	Nashik	Dindori(Vani) APMC	19.9975	73.7898	2026-08-26 20:46:45.425725+05:30
Maharashtra	Nashik	Lasalgaon APMC	19.9975	73.7898	2026-08-26 20:46:45.426109+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	19.9975	73.7898	2026-08-26 20:46:45.426477+05:30
Maharashtra	Nashik	Lasalgaon(Vinchur) APMC	19.9975	73.7898	2026-08-26 20:46:45.426835+05:30
Maharashtra	Nashik	Perfect Krishi Market Yard Pvt Ltd, Dist Nashik	19.9975	73.7898	2026-08-26 20:46:45.427194+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	19.9975	73.7898	2026-08-26 20:46:45.427554+05:30
Maharashtra	Nashik	Pimpalgaon Baswant(Saykheda) APMC	19.9975	73.7898	2026-08-26 20:46:45.42791+05:30
Maharashtra	Palghar	APMC VASAI	19.6967	72.7653	2026-08-26 20:46:45.428337+05:30
Maharashtra	Parbhani	Shree Salasar Krushi Bazar, Dist Parbhani	19.26	76.7767	2026-08-26 20:46:45.428708+05:30
Maharashtra	Pune	Indapur APMC	18.5204	73.8567	2026-08-26 20:46:45.429059+05:30
Maharashtra	Pune	Junnar(Otur) APMC	18.5204	73.8567	2026-08-26 20:46:45.4295+05:30
Maharashtra	Pune	Khed APMC	18.5204	73.8567	2026-08-26 20:46:45.429872+05:30
Maharashtra	Pune	Khed(Chakan) APMC	18.5204	73.8567	2026-08-26 20:46:45.430693+05:30
Maharashtra	Pune	Pune APMC	18.5204	73.8567	2026-08-26 20:46:45.431295+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	18.5204	73.8567	2026-08-26 20:46:45.432275+05:30
Maharashtra	Pune	Pune(Manjri) APMC	18.5204	73.8567	2026-08-26 20:46:45.432721+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	18.5204	73.8567	2026-08-26 20:46:45.433092+05:30
Maharashtra	Pune	Shirur APMC	18.5204	73.8567	2026-08-26 20:46:45.433441+05:30
Maharashtra	Raigad	Alibagh APMC	18.6414	72.8722	2026-08-26 20:46:45.433791+05:30
Maharashtra	Raigad	Mangaon APMC	18.6414	72.8722	2026-08-26 20:46:45.434138+05:30
Maharashtra	Raigad	Murud APMC	18.6414	72.8722	2026-08-26 20:46:45.434488+05:30
Maharashtra	Raigad	Panvel APMC	18.6414	72.8722	2026-08-26 20:46:45.434831+05:30
Maharashtra	Raigad	Roha APMC	18.6414	72.8722	2026-08-26 20:46:45.43524+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	16.9902	73.312	2026-08-26 20:46:45.435776+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	16.8524	74.5815	2026-08-26 20:46:45.43639+05:30
Maharashtra	Satara	Vai APMC	17.6805	74.0183	2026-08-26 20:46:45.437288+05:30
Maharashtra	Solapur	Akluj APMC	17.6599	75.9064	2026-08-26 20:46:45.437849+05:30
Maharashtra	Solapur	Mangal Wedha APMC	17.6599	75.9064	2026-08-26 20:46:45.438426+05:30
Maharashtra	Solapur	Perfect Krushi Market Yard, Tal Madha, Dist Solapur	17.6599	75.9064	2026-08-26 20:46:45.438892+05:30
Maharashtra	Solapur	Sangola APMC	17.6599	75.9064	2026-08-26 20:46:45.439294+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	20.3899	78.1307	2026-08-26 20:46:45.439722+05:30
Maharashtra	Nanded	Bhokar APMC	19.1383	77.321	2026-08-26 22:13:19.849218+05:30
Maharashtra	Solapur	Laxmi-Sopan Agriculture Produce Marketing Co Ltd, Barshi, Dist Solapur	17.6599	75.9064	2026-08-26 22:13:19.853379+05:30
Maharashtra	Ahilyanagar	Newasa APMC	19.0952	74.7496	2026-08-27 21:16:51.864233+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	19.0952	74.7496	2026-08-27 21:16:51.884522+05:30
Maharashtra	Akola	Akola APMC	20.7002	77.0082	2026-08-27 21:16:51.889152+05:30
Maharashtra	Amarawati	Amarawati APMC	20.9374	77.7796	2026-08-27 21:16:51.892829+05:30
Maharashtra	Amarawati	Chandur Railway APMC	20.9374	77.7796	2026-08-27 21:16:51.897156+05:30
Maharashtra	Amarawati	Shetkari Krushi Utapanna Bazar Roshankheda Tal Varud Dist Amravati	20.9374	77.7796	2026-08-27 21:16:51.901541+05:30
Maharashtra	Beed	Beed APMC	18.9891	75.7601	2026-08-27 21:16:51.907967+05:30
Maharashtra	Bhandara	Tumsar APMC	21.17	79.65	2026-08-27 21:16:51.911761+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	20.5293	76.184	2026-08-27 21:16:51.914779+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	19.9615	79.2961	2026-08-27 21:16:51.91915+05:30
Maharashtra	Chandrapur	Nagbhid APMC	19.9615	79.2961	2026-08-27 21:16:51.92312+05:30
Maharashtra	Chandrapur	Sindevahi APMC	19.9615	79.2961	2026-08-27 21:16:51.926852+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	19.8762	75.3433	2026-08-27 21:16:51.931317+05:30
Maharashtra	Dharashiv	Murum APMC	18.186	76.0419	2026-08-27 21:16:51.935383+05:30
Maharashtra	Dharashiv	Tuljapur APMC	18.186	76.0419	2026-08-27 21:16:51.939479+05:30
Maharashtra	Dhule	Janata Agri Market (DLS Agro Infrastructure Pvt Ltd), Dist Dhule	20.9042	74.7749	2026-08-27 21:16:51.942787+05:30
Maharashtra	Gadchiroli	Armori APMC	20.1809	80.002	2026-08-27 21:16:51.949532+05:30
Maharashtra	Gadchiroli	Armori(Desaiganj) APMC	20.1809	80.002	2026-08-27 21:16:51.953036+05:30
Maharashtra	Jalgaon	APMC Yawal	21.0077	75.5626	2026-08-27 21:16:51.956651+05:30
Maharashtra	Jalgaon	Jalgaon APMC	21.0077	75.5626	2026-08-27 21:16:51.961047+05:30
Maharashtra	Jalna	Ghansawangi APMC	19.8347	75.8816	2026-08-27 21:16:51.965307+05:30
Maharashtra	Latur	APMC Latur	18.4088	76.5604	2026-08-27 21:16:51.970708+05:30
Maharashtra	Latur	Ahmedpur APMC	18.4088	76.5604	2026-08-27 21:16:51.975292+05:30
Maharashtra	Latur	Aurad Shahajani APMC	18.4088	76.5604	2026-08-27 21:16:51.980159+05:30
Maharashtra	Latur	Ausa APMC	18.4088	76.5604	2026-08-27 21:16:51.983792+05:30
Maharashtra	Latur	Udgir APMC	18.4088	76.5604	2026-08-27 21:16:51.988058+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	19.076	72.8777	2026-08-27 21:16:51.9923+05:30
Maharashtra	Mumbai	Mumbai-Onion & Potato Market APMC	19.076	72.8777	2026-08-27 21:16:51.996061+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	21.1458	79.0882	2026-08-27 21:16:52.000542+05:30
Maharashtra	Nagpur	Kamthi APMC	21.1458	79.0882	2026-08-27 21:16:52.004608+05:30
Maharashtra	Nagpur	M/S Kalpana Agri Commodities Marketing, Nagpur	21.1458	79.0882	2026-08-27 21:16:52.008361+05:30
Maharashtra	Nagpur	Nagpur APMC	21.1458	79.0882	2026-08-27 21:16:52.012077+05:30
Maharashtra	Nagpur	Umared APMC	21.1458	79.0882	2026-08-27 21:16:52.016123+05:30
Maharashtra	Nashik	Devala APMC	19.9975	73.7898	2026-08-27 21:16:52.020251+05:30
Maharashtra	Nashik	Kalvan APMC	19.9975	73.7898	2026-08-27 21:16:52.024333+05:30
Maharashtra	Nashik	Malegaon APMC	19.9975	73.7898	2026-08-27 21:16:52.028414+05:30
Maharashtra	Nashik	Manmad APMC	19.9975	73.7898	2026-08-27 21:16:52.031469+05:30
Maharashtra	Nashik	Nampur APMC	19.9975	73.7898	2026-08-27 21:16:52.035119+05:30
Maharashtra	Nashik	Nasik APMC	19.9975	73.7898	2026-08-27 21:16:52.04018+05:30
Maharashtra	Nashik	Yeola APMC	19.9975	73.7898	2026-08-27 21:16:52.043967+05:30
Maharashtra	Palghar	Palghar APMC	19.6967	72.7653	2026-08-27 21:16:52.047624+05:30
Maharashtra	Palghar	Ulhasnagar APMC	19.6967	72.7653	2026-08-27 21:16:52.051038+05:30
Maharashtra	Parbhani	Pathari APMC	19.26	76.7767	2026-08-27 21:16:52.054677+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	18.5204	73.8567	2026-08-27 21:16:52.058429+05:30
Maharashtra	Pune	Pune(Moshi) APMC	18.5204	73.8567	2026-08-27 21:16:52.062239+05:30
Maharashtra	Raigad	Pen APMC	18.6414	72.8722	2026-08-27 21:16:52.065294+05:30
Maharashtra	Sangli	Islampur APMC	16.8524	74.5815	2026-08-27 21:16:52.069222+05:30
Maharashtra	Sangli	Sangli(Miraj) APMC	16.8524	74.5815	2026-08-27 21:16:52.072674+05:30
Maharashtra	Sangli	Tasgaon APMC	16.8524	74.5815	2026-08-27 21:16:52.076524+05:30
Maharashtra	Sangli	Vita APMC	16.8524	74.5815	2026-08-27 21:16:52.079392+05:30
Maharashtra	Satara	Satara APMC	17.6805	74.0183	2026-08-27 21:16:52.081308+05:30
Maharashtra	Satara	Vaduj APMC	17.6805	74.0183	2026-08-27 21:16:52.084921+05:30
Maharashtra	Solapur	Barshi APMC	17.6599	75.9064	2026-08-27 21:16:52.088848+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	20.7453	78.6022	2026-08-27 21:16:52.091281+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	20.111	77.133	2026-08-27 21:16:52.092894+05:30
Maharashtra	Yavatmal	Mahesh Krushi Utpanna Bazar, Digras, Dist Yeotmal	20.3899	78.1307	2026-08-27 21:16:52.093626+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	19.0952	74.7496	2026-08-27 21:32:42.075104+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	19.0952	74.7496	2026-08-27 21:32:42.083713+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	19.0952	74.7496	2026-08-27 21:32:42.088048+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	19.0952	74.7496	2026-08-27 21:32:42.09161+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	19.0952	74.7496	2026-08-27 21:32:42.094721+05:30
Maharashtra	Ahilyanagar	Shrirampur(Belapur) APMC	19.0952	74.7496	2026-08-27 21:32:42.097374+05:30
Maharashtra	Akola	Akot APMC	20.7002	77.0082	2026-08-27 21:32:42.10134+05:30
Maharashtra	Akola	Murtizapur APMC	20.7002	77.0082	2026-08-27 21:32:42.104873+05:30
Maharashtra	Akola	Telhara APMC	20.7002	77.0082	2026-08-27 21:32:42.108278+05:30
Maharashtra	Amarawati	Achalpur APMC	20.9374	77.7796	2026-08-27 21:32:42.112591+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	20.9374	77.7796	2026-08-27 21:32:42.116228+05:30
Maharashtra	Amarawati	Daryapur APMC	20.9374	77.7796	2026-08-27 21:32:42.121293+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	20.9374	77.7796	2026-08-27 21:32:42.125276+05:30
Maharashtra	Amarawati	Morshi APMC	20.9374	77.7796	2026-08-27 21:32:42.12897+05:30
Maharashtra	Beed	Ambejogai APMC	18.9891	75.7601	2026-08-27 21:32:42.132598+05:30
Maharashtra	Beed	Gevrai APMC	18.9891	75.7601	2026-08-27 21:32:42.136326+05:30
Maharashtra	Beed	Majalgaon APMC	18.9891	75.7601	2026-08-27 21:32:42.140369+05:30
Maharashtra	Bhandara	Bhandara APMC	21.17	79.65	2026-08-27 21:32:42.143993+05:30
Maharashtra	Buldhana	Khamgaon APMC	20.5293	76.184	2026-08-27 21:32:42.146958+05:30
Maharashtra	Buldhana	Lonar APMC	20.5293	76.184	2026-08-27 21:32:42.150125+05:30
Maharashtra	Buldhana	Malkapur APMC	20.5293	76.184	2026-08-27 21:32:42.152106+05:30
Maharashtra	Buldhana	Mehekar APMC	20.5293	76.184	2026-08-27 21:32:42.154944+05:30
Maharashtra	Buldhana	Nandura APMC	20.5293	76.184	2026-08-27 21:32:42.157034+05:30
Maharashtra	Chandrapur	Brahmpuri APMC	19.9615	79.2961	2026-08-27 21:32:42.160387+05:30
Maharashtra	Chandrapur	Gondpimpri APMC	19.9615	79.2961	2026-08-27 21:32:42.162793+05:30
Maharashtra	Chandrapur	Mul APMC	19.9615	79.2961	2026-08-27 21:32:42.164246+05:30
Maharashtra	Chandrapur	Savali APMC	19.9615	79.2961	2026-08-27 21:32:42.166479+05:30
Maharashtra	Chattrapati Sambhajinagar	Agricultural Produce Market Committee Sillod	19.8762	75.3433	2026-08-27 21:32:42.170215+05:30
Maharashtra	Dharashiv	Dharashiv APMC	18.186	76.0419	2026-08-27 21:32:42.172253+05:30
Maharashtra	Dharashiv	Paranda APMC	18.186	76.0419	2026-08-27 21:32:42.176627+05:30
Maharashtra	Dhule	Dondaicha APMC	20.9042	74.7749	2026-08-27 21:32:42.179767+05:30
Maharashtra	Dhule	Sakri APMC	20.9042	74.7749	2026-08-27 21:32:42.182682+05:30
Maharashtra	Gadchiroli	Chamorshi APMC	20.1809	80.002	2026-08-27 21:32:42.184833+05:30
Maharashtra	Gadchiroli	Gadchiroli APMC	20.1809	80.002	2026-08-27 21:32:42.187562+05:30
Maharashtra	Hingoli	Basmat APMC	19.715	77.1548	2026-08-27 21:32:42.190612+05:30
Maharashtra	Hingoli	Hingoli APMC	19.715	77.1548	2026-08-27 21:32:42.193751+05:30
Maharashtra	Hingoli	Hingoli(Kanegoan Naka) APMC	19.715	77.1548	2026-08-27 21:32:42.196633+05:30
Maharashtra	Jalgaon	APMC CHOPADA	21.0077	75.5626	2026-08-27 21:32:42.199987+05:30
Maharashtra	Jalgaon	APMC PACHORA	21.0077	75.5626	2026-08-27 21:32:42.20349+05:30
Maharashtra	Jalgaon	Amalner APMC	21.0077	75.5626	2026-08-27 21:32:42.206144+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	21.0077	75.5626	2026-08-27 21:32:42.210212+05:30
Maharashtra	Jalgaon	Parola APMC	21.0077	75.5626	2026-08-27 21:32:42.214052+05:30
Maharashtra	Jalna	Jalana APMC	19.8347	75.8816	2026-08-27 21:32:42.217671+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	16.705	74.2433	2026-08-27 21:32:42.221737+05:30
Maharashtra	Nanded	Dharmabad APMC	19.1383	77.321	2026-08-27 21:32:42.225344+05:30
Maharashtra	Nanded	Loha APMC	19.1383	77.321	2026-08-27 21:32:42.230346+05:30
Maharashtra	Nanded	Naigaon APMC	19.1383	77.321	2026-08-27 21:32:42.234123+05:30
Maharashtra	Nandurbar	APMC Nandurbar	21.3655	74.24	2026-08-27 21:32:42.238701+05:30
Maharashtra	Nandurbar	Dhadgaon APMC	21.3655	74.24	2026-08-27 21:32:42.243675+05:30
Maharashtra	Nandurbar	Shahada APMC	21.3655	74.24	2026-08-27 21:32:42.246795+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	19.9975	73.7898	2026-08-27 21:32:42.248625+05:30
Maharashtra	Nashik	Nandgaon APMC	19.9975	73.7898	2026-08-27 21:32:42.252131+05:30
Maharashtra	Nashik	Sinner APMC	19.9975	73.7898	2026-08-27 21:32:42.254492+05:30
Maharashtra	Palghar	Kalyan APMC	19.6967	72.7653	2026-08-27 21:32:42.255992+05:30
Maharashtra	Pune	Nira APMC	18.5204	73.8567	2026-08-27 21:32:42.258402+05:30
Maharashtra	Sangli	Sangli APMC	16.8524	74.5815	2026-08-27 21:32:42.26069+05:30
Maharashtra	Satara	Lonand APMC	17.6805	74.0183	2026-08-27 21:32:42.262161+05:30
Maharashtra	Solapur	Karmala APMC	17.6599	75.9064	2026-08-27 21:32:42.263519+05:30
Maharashtra	Solapur	Kurdwadi APMC	17.6599	75.9064	2026-08-27 21:32:42.265019+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	17.6599	75.9064	2026-08-27 21:32:42.266342+05:30
Maharashtra	Solapur	Pandharpur APMC	17.6599	75.9064	2026-08-27 21:32:42.268597+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	17.6599	75.9064	2026-08-27 21:32:42.270642+05:30
Maharashtra	Wardha	Ashti(Karanja) APMC	20.7453	78.6022	2026-08-27 21:32:42.273146+05:30
Maharashtra	Wardha	Wardha APMC	20.7453	78.6022	2026-08-27 21:32:42.275392+05:30
Maharashtra	Washim	Karanja APMC	20.111	77.133	2026-08-27 21:32:42.277003+05:30
Maharashtra	Washim	Mangrulpeer APMC	20.111	77.133	2026-08-27 21:32:42.27916+05:30
Maharashtra	Washim	Manora APMC	20.111	77.133	2026-08-27 21:32:42.280359+05:30
Maharashtra	Washim	Washim APMC	20.111	77.133	2026-08-27 21:32:42.281622+05:30
Maharashtra	Washim	Washim(Ansing) APMC	20.111	77.133	2026-08-27 21:32:42.282919+05:30
Maharashtra	Yavatmal	Ner Parasopant APMC	20.3899	78.1307	2026-08-27 21:32:42.285342+05:30
Maharashtra	Yavatmal	Pusad APMC	20.3899	78.1307	2026-08-27 21:32:42.287058+05:30
Maharashtra	Yavatmal	Ramdev Krushi Bazaar, Digras road, Manora, Dist Washim	20.3899	78.1307	2026-08-27 21:32:42.289909+05:30
Maharashtra	Yavatmal	Umarked(Danki) APMC	20.3899	78.1307	2026-08-27 21:32:42.293054+05:30
Maharashtra	Yavatmal	Vani APMC	20.3899	78.1307	2026-08-27 21:32:42.294751+05:30
Maharashtra	Yavatmal	Yavatmal APMC	20.3899	78.1307	2026-08-27 21:32:42.296284+05:30
Maharashtra	Parbhani	Gangakhed APMC	19.26	76.7767	2026-08-27 22:32:58.897678+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	19.0952	74.7496	2026-08-29 01:01:11.257811+05:30
Maharashtra	Beed	Kille Dharur APMC	18.9891	75.7601	2026-08-29 01:01:11.264421+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	20.5293	76.184	2026-08-29 01:01:11.266248+05:30
Maharashtra	Chandrapur	APMC Pombhurna	19.9615	79.2961	2026-08-29 01:01:11.267879+05:30
Maharashtra	Chattrapati Sambhajinagar	Vaijpur APMC	19.8762	75.3433	2026-08-29 01:01:11.269517+05:30
Maharashtra	Palghar	Murbad APMC	19.6967	72.7653	2026-08-29 01:01:11.270724+05:30
Maharashtra	Parbhani	Manwat APMC	19.26	76.7767	2026-08-29 01:01:11.272134+05:30
Maharashtra	Pune	Baramati APMC	18.5204	73.8567	2026-08-29 01:01:11.273107+05:30
Maharashtra	Sangli	Aatpadi APMC	16.8524	74.5815	2026-08-29 01:01:11.274309+05:30
Maharashtra	Sangli	Palus APMC	16.8524	74.5815	2026-08-29 01:01:11.275886+05:30
Maharashtra	Satara	Patan APMC	17.6805	74.0183	2026-08-29 01:01:11.276922+05:30
Maharashtra	Solapur	Dudhani APMC	17.6599	75.9064	2026-08-29 01:01:11.278102+05:30
Maharashtra	Solapur	Mohol APMC	17.6599	75.9064	2026-08-29 01:01:11.279182+05:30
Maharashtra	Buldhana	Buldhana(Dhad) APMC	20.5293	76.184	2026-08-29 15:38:46.263679+05:30
Maharashtra	Buldhana	Chikali APMC	20.5293	76.184	2026-08-29 15:38:46.269791+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	20.5293	76.184	2026-08-29 15:38:46.271093+05:30
Maharashtra	Chandrapur	APMC Chimur	19.9615	79.2961	2026-08-29 15:38:46.272107+05:30
Maharashtra	Jalna	BHOKARDAN APMC	19.8347	75.8816	2026-08-29 15:38:46.27314+05:30
Maharashtra	Jalna	Partur APMC	19.8347	75.8816	2026-08-29 15:38:46.274169+05:30
Maharashtra	Raigad	Karjat(Raigad) APMC	18.6414	72.8722	2026-08-29 15:38:46.275466+05:30
Maharashtra	Satara	Karad APMC	17.6805	74.0183	2026-08-29 15:38:46.276432+05:30
Maharashtra	Yavatmal	Umarkhed APMC	20.3899	78.1307	2026-08-29 15:38:46.277398+05:30
Maharashtra	Ahilyanagar	Shree Sairaj Krushi Market, Dist Ahilyanagar	19.0952	74.7496	2026-08-29 21:41:40.264212+05:30
Maharashtra	Chattrapati Sambhajinagar	Kannad APMC	19.8762	75.3433	2026-08-29 21:41:40.27394+05:30
Maharashtra	Dharashiv	Agriculture Produce Market Committee Umarga	18.186	76.0419	2026-08-29 21:41:40.275747+05:30
Maharashtra	Dhule	Shirpur APMC	20.9042	74.7749	2026-08-29 21:41:40.277674+05:30
Maharashtra	Nanded	Himayatnagar APMC	19.1383	77.321	2026-08-29 21:41:40.279532+05:30
Maharashtra	Nanded	Mudkhed APMC	19.1383	77.321	2026-08-29 21:41:40.281349+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	18.5204	73.8567	2026-08-29 21:41:40.283616+05:30
Maharashtra	Wardha	Arvi APMC	20.7453	78.6022	2026-08-29 21:41:40.285321+05:30
Maharashtra	Wardha	Hinganghat APMC	20.7453	78.6022	2026-08-29 21:41:40.286834+05:30
Maharashtra	Wardha	Sindi APMC	20.7453	78.6022	2026-08-29 21:41:40.287871+05:30
Maharashtra	Yavatmal	Babhulgaon APMC	20.3899	78.1307	2026-08-29 21:41:40.288772+05:30
\.


--
-- TOC entry 5023 (class 0 OID 18644)
-- Dependencies: 219
-- Data for Name: mandi_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mandi_prices (state, district, market, commodity, variety, grade, arrival_date, min_price, max_price, modal_price, updated_at) FROM stdin;
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Papaya	Other	Local	26/08/2026	2000	2500	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Beed	Vadvani APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	26/08/2026	8100	8700	8600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Beetroot	Other	Local	26/08/2026	2500	2500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Parbhani	Shree Salasar Krushi Bazar, Dist Parbhani	Bengal Gram(Gram)(Whole)	Other	Local	26/08/2026	4000	5800	5700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Potato	Other	Local	26/08/2026	1200	1400	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Tomato	Local	Local	26/08/2026	500	1000	800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	26/08/2026	2000	2770	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Jowar(Sorghum)	Other	Non-FAQ	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Tomato	Other	Local	26/08/2026	300	1500	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Perfect Krushi Market Yard, Tal Madha, Dist Solapur	Pomegranate	Other	Local	26/08/2026	1400	13150	8900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Pomegranate	Other	Local	26/08/2026	3000	9000	6000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Garlic	Other	Local	26/08/2026	8000	20000	14000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Seetapal	Other	Local	26/08/2026	2500	7500	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Wheat	Other	Non-FAQ	26/08/2026	2575	2575	2575	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Lime	Other	Local	26/08/2026	3500	5500	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Mousambi(Sweet Lime)	Other	Local	26/08/2026	1900	3700	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guava	Other	Local	26/08/2026	5000	8000	6500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cabbage	Other	Local	26/08/2026	900	1200	1050	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Drumstick	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	1700	2200	1950	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Brinjal	Other	Local	26/08/2026	1000	1800	1400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	26/08/2026	8000	8000	8000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Sweet Pumpkin	Other	Local	26/08/2026	500	1000	800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Guar	Other	Local	26/08/2026	6000	6000	6000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Drumstick	Other	Local	26/08/2026	4000	4000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Brinjal	Other	Local	26/08/2026	4500	6000	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Wheat	Other	Non-FAQ	26/08/2026	2100	2365	2233	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	26/08/2026	7800	7950	7875	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Groundnut	Other	Non-FAQ	26/08/2026	5020	5020	5020	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Soyabean	Yellow	FAQ	26/08/2026	5505	5505	5505	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Masur Dal	Other	Local	26/08/2026	7100	7500	7300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Cauliflower	Other	Local	26/08/2026	1000	1600	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	2600	3600	3100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	26/08/2026	2400	2800	2600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Little gourd(Kundru)	Other	Local	26/08/2026	2000	3600	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	26/08/2026	8500	11000	10000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Savner APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	26/08/2026	7600	7990	7850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Wheat	Maharashtra 2189	FAQ	26/08/2026	2600	2700	2600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Maize	Deshi Red	Non-FAQ	26/08/2026	1970	1970	1970	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Bitter gourd	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Brinjal	Other	Local	26/08/2026	1000	4000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Drumstick	Other	Local	26/08/2026	3000	5000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Tomato	Other	Local	26/08/2026	500	1500	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Brinjal	Other	Local	26/08/2026	1000	2500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	800	2000	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cauliflower	Other	Local	26/08/2026	2500	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	1400	1700	1550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Rice	Other	Local	26/08/2026	4600	7500	6050	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Beans	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Potato	Other	Local	26/08/2026	1400	1800	1600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Carrot	Other	Local	26/08/2026	3000	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guar	Other	Local	26/08/2026	6000	8000	7000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Brinjal	Other	Local	26/08/2026	1400	2800	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Green Peas	Other	Local	26/08/2026	3000	6500	4750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Indapur APMC	Pomegranate	Other	Local	26/08/2026	1000	11100	4600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Soyabean	Yellow	FAQ	26/08/2026	5711	5711	5711	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Apple	Other	Local	26/08/2026	7500	15000	10000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Green Chilli	Other	Local	26/08/2026	2000	3500	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Dindori APMC	Onion	Unhali	Local	26/08/2026	3701	4455	4151	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Other	FAQ	27/08/2026	2585	2654	2636	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Banana	Other	Local	26/08/2026	1700	1700	1700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Chilly Capsicum	Other	Local	26/08/2026	2000	3000	2750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	26/08/2026	2000	2500	2200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Dhule	Dhule APMC	Onion	Red	Local	26/08/2026	1500	5000	3550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Cauliflower	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Bitter gourd	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Brinjal	Other	Local	26/08/2026	2000	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Prasanna Krushi Market, Tal Parnet, Dist Ahilyanagar	Onion	Other	Local	26/08/2026	600	4300	2450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	26/08/2026	5500	5500	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Onion	Other	Local	26/08/2026	600	5000	3300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Brinjal	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Chikoos(Sapota)	Other	Local	26/08/2026	2000	6000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Water Melon	Other	Local	26/08/2026	600	1100	850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahuri APMC	Tomato	Other	Local	26/08/2026	1000	1500	1250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Apple	Other	Local	26/08/2026	11000	18000	14500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bottle gourd	Other	Local	26/08/2026	600	900	750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Coriander(Leaves)	Other	Local	26/08/2026	700	900	800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Onion	Unhali	Local	26/08/2026	800	4900	3800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cabbage	Other	Local	26/08/2026	800	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Chilly Capsicum	Other	Local	26/08/2026	3000	3000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Spinach	Other	Local	26/08/2026	2500	2500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	26/08/2026	2800	4600	3800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	26/08/2026	6800	7900	7400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bengal Gram Dal(Chana Dal)	Other	Local	26/08/2026	7300	8000	7600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Coriander(Leaves)	Other	Local	26/08/2026	500	1000	750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Methi(Leaves)	Other	Local	26/08/2026	800	1100	950	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Vinchur) APMC	Onion	Unhali	Local	26/08/2026	1000	4415	3950	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Bottle gourd	Other	Local	26/08/2026	1000	1200	1100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Cauliflower	Other	Local	26/08/2026	700	1800	1100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Cabbage	Other	Local	26/08/2026	500	1200	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Tomato	Local	Local	26/08/2026	400	1000	700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Methi(Leaves)	Other	Local	26/08/2026	500	1000	700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Potato	Other	Local	26/08/2026	800	1500	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cauliflower	Other	Local	26/08/2026	1000	2500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Chilly Capsicum	Other	Local	26/08/2026	2000	2500	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Beans	Other	Local	26/08/2026	1700	2000	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	26/08/2026	9300	10000	9650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Ground Nut Seed	Local	Local	26/08/2026	13000	14000	13500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Peas	Other	Local	26/08/2026	6500	8000	7000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Papaya	Other	Local	26/08/2026	3000	5000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bottle gourd	Other	Local	26/08/2026	1500	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cauliflower	Other	Local	26/08/2026	1200	2000	1600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	2000	3500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Chilly Capsicum	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cabbage	Other	Local	26/08/2026	500	1200	850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Potato	Local	Local	26/08/2026	1700	2000	1850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Cabbage	Other	Local	26/08/2026	1500	1700	1600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	500	4700	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Brinjal	Other	Local	26/08/2026	500	4000	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Palghar	APMC VASAI	Rice	1009 Kar	Local	26/08/2026	3450	4690	4250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Lime	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Mousambi(Sweet Lime)	Other	Local	26/08/2026	1200	4200	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Methi(Leaves)	Other	Local	26/08/2026	2000	3500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Onion	Unhali	Local	26/08/2026	800	4931	4300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon APMC	Onion	Unhali	Local	26/08/2026	1000	4403	3900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Lime	Other	Local	26/08/2026	4000	6000	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cauliflower	Other	Local	26/08/2026	2000	3000	2413	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Raddish	Other	Local	26/08/2026	1500	2000	1783	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	2000	4000	2687	2026-08-27 21:16:50.455763+05:30
Maharashtra	Beed	Vadvani APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	26/08/2026	2451	2451	2451	2026-08-27 21:16:50.455763+05:30
Maharashtra	Dhule	Dhule APMC	Jowar(Sorghum)	Other	Non-FAQ	26/08/2026	2200	2500	2451	2026-08-27 21:16:50.455763+05:30
Maharashtra	Dhule	Dhule APMC	Maize	Yellow	Non-FAQ	26/08/2026	2000	2351	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Cabbage	Other	Local	26/08/2026	1000	1500	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cabbage	Other	Local	26/08/2026	1400	1600	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Peas	Other	Local	26/08/2026	5000	6000	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ginger(Green)	Other	Local	26/08/2026	8000	13000	10500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	5000	5000	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Chilli	Other	Local	26/08/2026	1000	2500	1750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Parbhani	Shree Salasar Krushi Bazar, Dist Parbhani	Soyabean	Other	Local	26/08/2026	5500	5500	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Hingoli	Sengoan APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	26/08/2026	7200	7400	7300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Carrot	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Methi(Leaves)	Other	Local	26/08/2026	8	12	10	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Guava	Other	Local	26/08/2026	2500	6500	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Orange	Other	Local	26/08/2026	2500	6500	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Ginger(Green)	Other	Local	26/08/2026	8000	15000	11500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Potato	Local	Local	26/08/2026	800	1500	1150	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Newasa(Ghodegaon) APMC	Onion	Unhali	Local	26/08/2026	1000	4500	3200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Parner APMC	Onion	Unhali	Local	26/08/2026	1000	5100	3800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Wheat	Other	FAQ	26/08/2026	2596	2625	2610	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Jowar(Sorghum)	Other	Local	26/08/2026	3000	3000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Amarawati	Varud(Rajura Bazar) APMC	Green Chilli	Other	Local	26/08/2026	2500	2500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	800	1000	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Chilly Capsicum	Other	Local	26/08/2026	1200	2000	1600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Spinach	Other	Local	26/08/2026	500	700	600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	26/08/2026	2100	2451	2350	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Maize	Yellow	Non-FAQ	26/08/2026	2175	2175	2175	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	26/08/2026	6700	6700	6700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Beetroot	Other	Local	26/08/2026	1500	1500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1000	1500	1200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Onion	Unhali	Local	26/08/2026	3000	3500	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Coriander(Leaves)	Other	Local	26/08/2026	800	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Tomato	Other	Local	26/08/2026	1000	1500	1200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Rice	1009 Kar	Local	26/08/2026	3200	9400	6300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	26/08/2026	10000	10700	10350	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Jowar(Sorghum)	Other	Local	26/08/2026	2500	7200	5200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Cowpea(Lobia/Karamani)	Other	Local	26/08/2026	7300	9400	8400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Pumpkin	Other	Local	26/08/2026	600	1200	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bottle gourd	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Drumstick	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Savner APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	26/08/2026	6040	6040	6040	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Savner APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	26/08/2026	8000	8195	8025	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	500	2000	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Onion	Fursungi	Local	26/08/2026	1000	3700	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Chilly Capsicum	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Spinach	Other	Local	26/08/2026	400	600	500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	1500	3500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Guar	Other	Local	26/08/2026	4000	8000	6000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Guar	Other	Local	26/08/2026	4000	5000	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Shirur APMC	Wheat	Other	Non-FAQ	26/08/2026	2500	2550	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Potato	Local	Local	26/08/2026	800	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Guar	Other	Local	26/08/2026	2500	2500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Spinach	Other	Local	26/08/2026	4	6	5	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	26/08/2026	6200	7400	6800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Lentil(Masur)(Whole)	Other	FAQ	26/08/2026	7100	7300	7200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Tomato	Other	Local	26/08/2026	2000	2500	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Methi(Leaves)	Other	Local	26/08/2026	4	12	7	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Chilli	Other	Local	26/08/2026	2500	3500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	1000	2700	1850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Guar	Other	Local	26/08/2026	4000	10100	7000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Beans	Other	Local	26/08/2026	1000	3600	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1000	2050	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bitter gourd	Other	Local	26/08/2026	2000	4500	3250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Drumstick	Other	Local	26/08/2026	2000	4900	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Brinjal	Other	Local	26/08/2026	1000	3200	2100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	600	1200	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Jowar(Sorghum)	Red	Local	26/08/2026	3801	3801	3801	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Methi(Leaves)	Other	Local	26/08/2026	1200	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Sabu Dan	Other	Local	26/08/2026	6000	71000	6550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Wheat	Other	FAQ	26/08/2026	2900	4600	3750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Lentil(Masur)(Whole)	Other	FAQ	26/08/2026	7000	7300	7200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Ginger(Green)	Other	Local	26/08/2026	6000	14000	10000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Guar	Other	Local	26/08/2026	5000	8000	6500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Potato	Other	Local	26/08/2026	1600	3600	2600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Tomato	Other	Local	26/08/2026	1400	2000	1700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Wheat	Maharashtra 2189	Non-FAQ	26/08/2026	2425	2425	2425	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	500	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Green Chilli	Other	Local	26/08/2026	1500	3500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Peas Wet	Other	Local	26/08/2026	5000	9000	7000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cabbage	Other	Local	26/08/2026	600	1300	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Bottle gourd	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Guar	Other	Local	26/08/2026	5000	6000	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion Green	Other	Local	26/08/2026	3	10	5	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Raddish	Other	Local	26/08/2026	8	20	15	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	1000	3500	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Green Chilli	Other	Local	26/08/2026	2000	4600	3300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Roha APMC	Paddy(Common)	Other	FAQ	26/08/2026	2370	2450	2410	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Bottle gourd	Other	Local	26/08/2026	1500	2000	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Peas Wet	Other	Local	26/08/2026	5000	6000	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cauliflower	Other	Local	26/08/2026	750	1250	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Tomato	Other	Local	26/08/2026	500	1200	800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Pomegranate	Other	Local	26/08/2026	5000	5000	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	800	2500	1725	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	500	2000	1356	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bitter gourd	Other	Local	26/08/2026	2000	3000	2554	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Marigold(Calcutta)	Other	Local	26/08/2026	3000	3000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Tomato	Local	Local	26/08/2026	2000	2500	2333	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Alibagh APMC	Rice	Other	Local	26/08/2026	4000	4500	4250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Dindori(Vani) APMC	Onion	Unhali	Local	26/08/2026	3701	4455	4151	2026-08-27 21:16:50.455763+05:30
Maharashtra	Beed	Vadvani APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	26/08/2026	2856	4200	2856	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Onion	Unhali	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Chilly Capsicum	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Green Chilli	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Wheat	Other	FAQ	27/08/2026	2589	2853	2721	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Tomato	Other	Local	26/08/2026	300	1700	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Lime	Other	Local	27/08/2026	2500	3700	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bottle gourd	Other	Local	27/08/2026	600	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1500	1800	1650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Coriander(Leaves)	Other	Local	27/08/2026	500	800	650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	500	2000	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	500	4500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion Green	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Spinach	Other	Local	27/08/2026	300	500	400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	4205	4500	4280	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Water Melon	Other	Local	27/08/2026	300	500	400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Karbuja(Musk Melon)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2000	2750	2560	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	8840	8840	8840	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2565	2565	2565	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Wheat	Other	Non-FAQ	27/08/2026	2451	2451	2451	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	5175	5500	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	5200	5200	5200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7000	7000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	6500	6500	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	1800	2340	2070	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2500	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Onion	Unhali	Local	26/08/2026	500	4600	2550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Carrot	Other	Local	26/08/2026	1200	2000	1600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	26/08/2026	6500	6500	6500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Chilly Capsicum	Other	Local	26/08/2026	1000	2500	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Rajgir	Other	Local	26/08/2026	3	6	5	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Tomato	Other	Local	26/08/2026	500	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1500	2000	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Green Chilli	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Onion	Other	Local	26/08/2026	1100	4500	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cabbage	Other	Local	26/08/2026	500	800	700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Coriander(Leaves)	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Green Chilli	Other	Local	26/08/2026	3000	5000	3812	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	26/08/2026	8000	8500	8250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Beed	Vadvani APMC	Soyabean	Other	Local	26/08/2026	5850	5850	5850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Buldhana	Khamgaon APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	4200	4200	4200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Amalner APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	5500	5791	5791	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Vadvani APMC	Jowar(Sorghum)	Other	Local	26/08/2026	2600	3500	3100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Amalner APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	6000	8601	8601	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Beetroot	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	2500	2200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Sengoan APMC	Soyabean	Yellow	FAQ	26/08/2026	6500	6800	6700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Onion	Unhali	Local	27/08/2026	3500	3500	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Spinach	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2333	2451	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Wheat	Other	FAQ	27/08/2026	2601	2738	2601	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Wheat	Other	Non-FAQ	27/08/2026	2402	2402	2402	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Soyabean	Other	Local	27/08/2026	5901	5901	5901	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Wheat	Other	FAQ	27/08/2026	2585	2618	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Wheat	Other	Non-FAQ	27/08/2026	2519	2580	2551	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	APMC Latur	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6261	6050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Wheat	Other	FAQ	27/08/2026	2600	3000	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5880	6170	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Green Peas	White Fozi	Local	27/08/2026	3000	3200	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Cauliflower	Other	Local	27/08/2026	4500	5000	4850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Tomato	Local	Local	27/08/2026	2000	2500	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Dharmabad APMC	Corriander seed	Other	Local	27/08/2026	13800	14900	14100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Rice	Other	Local	27/08/2026	3000	7500	5250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6800	7800	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Peas	White Fozi	Local	27/08/2026	4500	5500	5100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Ground Nut Seed	Other	Local	27/08/2026	8000	15000	12100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	27/08/2026	12000	20000	16000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Ginger(Green)	Other	Local	27/08/2026	8000	15000	11500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2400	3000	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cauliflower	Other	Local	27/08/2026	1000	1600	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Carrot	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Coriander(Leaves)	Other	Local	27/08/2026	200	600	400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Snakeguard	Other	Local	27/08/2026	2000	2600	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Potato	Other	Local	27/08/2026	1600	3000	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	27/08/2026	2600	3000	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Turmeric	Other	Local	27/08/2026	16000	23000	19500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Chilli	Other	Local	27/08/2026	1000	4000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cinamon(Dalchini)	Other	Local	27/08/2026	37000	42000	39500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Savner APMC	Soyabean	Yellow	FAQ	27/08/2026	5500	5600	5550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	Shahada APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2425	2425	2425	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2600	2650	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nampur APMC	Onion	Unhali	Local	27/08/2026	390	4500	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Papaya	Other	Local	27/08/2026	900	3500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Guava	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1585	3335	2415	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Sweet Pumpkin	Other	Local	27/08/2026	1000	1400	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Onion	Unhali	Local	27/08/2026	2050	4400	3700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	7000	8600	8500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Soyabean	Other	Local	27/08/2026	5000	6000	5900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Lime	Other	Local	27/08/2026	3500	6000	4750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Carrot	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Guar	Other	Local	27/08/2026	1500	3000	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	600	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bitter gourd	Other	Local	27/08/2026	600	2200	1400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Cabbage	Other	Local	27/08/2026	700	1000	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Green Chilli	Other	Local	27/08/2026	1000	5000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Tomato	Other	Local	27/08/2026	500	1300	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	2500	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bottle gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Brinjal	Other	Local	27/08/2026	1500	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Methi(Leaves)	Other	Local	27/08/2026	3	10	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	6200	6700	6450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Maize	Deshi Red	FAQ	27/08/2026	2600	2900	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Rice	Other	Local	27/08/2026	4500	7600	6050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Lentil(Masur)(Whole)	Other	FAQ	27/08/2026	7000	7200	7100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Pomegranate	Other	Local	27/08/2026	2000	10000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Pomegranate	Other	Local	27/08/2026	2500	5000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cauliflower	Other	Local	27/08/2026	800	2000	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion Green	Other	Local	27/08/2026	3	12	7	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Spinach	Other	Local	27/08/2026	5	8	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Ginger(Green)	Other	Local	27/08/2026	5000	12000	8500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Tomato	Other	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vai APMC	Cauliflower	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vai APMC	Brinjal	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8500	8975	8700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7750	7750	7750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Onion	Red	Local	27/08/2026	2000	3400	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vaduj APMC	Potato	Local	Local	27/08/2026	1400	1500	1450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vaduj APMC	Bitter gourd	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim(Ansing) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7850	7980	7900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim(Ansing) APMC	Soyabean	Yellow	FAQ	27/08/2026	6050	6250	6150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Sangola APMC	Pomegranate	Other	Local	27/08/2026	2500	14100	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Indapur APMC	Pomegranate	Other	Local	27/08/2026	1000	13500	4200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Indapur APMC	Onion	Red	Local	27/08/2026	700	4200	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Mangrulpeer APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2100	2350	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2080	2200	2080	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5900	6300	5900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	6400	6800	6575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Soyabean	Other	Local	27/08/2026	5925	6255	6100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Soyabean	Yellow	FAQ	27/08/2026	5700	5700	5700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	8611	8611	8611	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC Yawal	Banana	Other	Local	27/08/2026	1550	2250	1560	2026-08-29 01:01:09.424856+05:30
Maharashtra	Gadchiroli	Armori APMC	Paddy(Common)	Other	FAQ	27/08/2026	2980	3440	3120	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Wheat	Other	FAQ	27/08/2026	2633	2667	2655	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	6940	6940	6940	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Soyabean	Yellow	FAQ	27/08/2026	5330	5700	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Green Chilli	Other	Local	27/08/2026	1500	3500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Tomato	Other	Local	27/08/2026	600	1400	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Rice	Other	Local	27/08/2026	6800	8400	7600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Garlic	Other	Local	27/08/2026	12000	24000	18000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Pomegranate	Other	Local	27/08/2026	250	10500	8250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Onion	Unhali	Local	27/08/2026	800	4980	4100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Jowar(Sorghum)	Other	Local	27/08/2026	3100	4000	3900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bitter gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Drumstick	Other	Local	27/08/2026	2500	3000	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Little gourd(Kundru)	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Green Chilli	Other	Local	27/08/2026	1500	2000	1700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6000	6250	6100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8250	8100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Soyabean	Yellow	FAQ	27/08/2026	6000	6250	6100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Pimpalgaon Baswant(Saykheda) APMC	Onion	Unhali	Local	27/08/2026	1700	4000	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	5000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2200	2580	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Maize	Other	FAQ	27/08/2026	2491	2491	2491	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Maize	Other	Non-FAQ	27/08/2026	2311	2399	2381	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Soyabean	Other	Local	27/08/2026	3801	6180	6121	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Banana	Other	Local	27/08/2026	1600	1600	1600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bottle gourd	Other	Local	27/08/2026	800	2000	1115	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Guar	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Peas Wet	Other	Local	27/08/2026	8000	9000	8333	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Onion	Unhali	Local	27/08/2026	700	4200	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Naigaon APMC	Soyabean	Other	Local	27/08/2026	6000	6000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Mehekar APMC	Soyabean	Other	Local	27/08/2026	5600	6090	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Soyabean	Yellow	FAQ	27/08/2026	5550	5975	5795	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Peas Wet	Other	Local	27/08/2026	6000	7000	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Green Chilli	Other	Local	27/08/2026	2500	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cabbage	Other	Local	27/08/2026	800	1500	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Brinjal	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Brahmpuri APMC	Paddy(Common)	Other	FAQ	27/08/2026	3000	3200	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Nagbhid APMC	Paddy(Common)	Other	FAQ	27/08/2026	3200	3200	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Green Chilli	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai-Onion & Potato Market APMC	Potato	Other	Local	27/08/2026	600	1100	850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5951	6000	5975	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7600	7990	7795	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Wheat	Other	Non-FAQ	27/08/2026	2370	2550	2470	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Soyabean	Other	Local	27/08/2026	5900	6900	5951	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Jowar(Sorghum)	Other	Local	27/08/2026	2000	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dondaicha APMC	Wheat	Other	FAQ	27/08/2026	2641	2757	2740	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cabbage	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Chilli	Other	Local	27/08/2026	1000	2500	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Lime	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akot APMC	Wheat	147 Average	FAQ	27/08/2026	2665	2665	2665	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akot APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	27/08/2026	5895	6340	6300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akot APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8300	8325	8300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	3750	5450	4600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Brinjal	Other	Local	27/08/2026	1000	2800	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	1000	2151	2098	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5700	5874	5830	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Soyabean	Other	Local	27/08/2026	5000	5500	5375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Grapes	Other	Local	27/08/2026	4000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	900	1800	1575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	2500	2375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Drumstick	Other	Local	27/08/2026	3000	3500	3375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Little gourd(Kundru)	Other	Local	27/08/2026	2000	2500	2375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Potato	Local	Local	27/08/2026	700	1500	1100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Onion	Local	Local	27/08/2026	1300	4400	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Potato	Local	Local	27/08/2026	1700	1900	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Telhara APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6100	6200	6130	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Chandur Railway APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7725	7950	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	6700	7150	6925	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Varud(Rajura Bazar) APMC	Green Chilli	Other	Local	27/08/2026	2300	2300	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Maize	Yellow	Non-FAQ	27/08/2026	2311	2311	2311	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Pomegranate	Other	Local	27/08/2026	400	13000	6700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guava	Other	Local	27/08/2026	6000	8500	7250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cauliflower	Other	Local	27/08/2026	1000	1300	1150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Onion	Other	Local	27/08/2026	1600	4100	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Drumstick	Other	Local	27/08/2026	1200	2500	1850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2300	3000	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Brinjal	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Mousambi(Sweet Lime)	Other	Local	26/08/2026	2000	4500	3250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Green Chilli	Other	Local	27/08/2026	1400	2400	1900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cauliflower	Other	Local	27/08/2026	400	1200	880	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guar	Other	Local	27/08/2026	1000	4000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Methi(Leaves)	Other	Local	27/08/2026	200	1200	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Chilly Capsicum	Other	Local	27/08/2026	350	1500	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Green Chilli	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Rice	Other	Local	27/08/2026	3560	7315	4220	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Black Gram(Urd Beans)(Whole)	Mogan Medium	FAQ	27/08/2026	8455	8705	8600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guava	Other	Local	27/08/2026	1500	6500	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5701	5701	5701	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Wheat	Other	FAQ	27/08/2026	2630	2797	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	1700	2755	2475	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	27/08/2026	5999	5999	5999	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8350	8445	8400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	5300	5300	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Onion	Local	Local	27/08/2026	1600	4000	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2241	2581	2451	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Jowar(Sorghum)	Red	Local	27/08/2026	2100	4400	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Soyabean	Yellow	FAQ	27/08/2026	5651	5651	5651	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	27/08/2026	5900	6200	6050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Soyabean	Yellow	FAQ	27/08/2026	5750	6125	5938	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Ox	Ox	Local	27/08/2026	10000	30000	20000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Sheep	Sheep Medium	Local	27/08/2026	5000	10000	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Achalpur APMC	Jowar(Sorghum)	Other	Local	27/08/2026	1800	1950	1875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Gadchiroli	Armori(Desaiganj) APMC	Paddy(Common)	Other	Non-FAQ	27/08/2026	2000	2100	2076	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Nandura APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2450	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Amalner APMC	Jowar(Sorghum)	Other	Local	27/08/2026	3200	4300	4300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Amalner APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	2300	2350	2350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Brinjal	Other	Local	27/08/2026	4000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Green Chilli	Other	Local	27/08/2026	3000	4500	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Sweet Pumpkin	Other	Local	27/08/2026	500	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cauliflower	Other	Local	27/08/2026	1200	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cabbage	Other	Local	27/08/2026	1000	1600	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Coriander(Leaves)	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Little gourd(Kundru)	Other	Local	27/08/2026	1500	1500	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Jowar(Sorghum)	Other	Local	27/08/2026	2342	3451	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Cowpea(Lobia/Karamani)	Other	Local	27/08/2026	3800	3800	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Maize	Other	Non-FAQ	27/08/2026	2390	2395	2393	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Soyabean	Other	Local	27/08/2026	5100	5500	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ahmedpur APMC	Wheat	Other	FAQ	27/08/2026	2585	2701	2643	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	2450	2450	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5100	5874	5600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8091	8040	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7700	7999	7900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Soyabean	Yellow	FAQ	27/08/2026	5500	5951	5725	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Soyabean	Yellow	FAQ	27/08/2026	5701	6216	6100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Lime	Other	Local	27/08/2026	6000	7000	6750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Onion	Local	Local	27/08/2026	3500	4000	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Bitter gourd	Other	Local	27/08/2026	1500	2000	1650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Green Chilli	Other	Local	27/08/2026	4000	4500	4450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	27/08/2026	2800	3500	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cowpea(Lobia/Karamani)	Other	Local	27/08/2026	7000	10000	8700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Red gram split/Arhar dal/Tur dal	Other	Local	27/08/2026	8500	12500	11000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Coconut	Other	FAQ	27/08/2026	3050	5000	4025	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Beetroot	Other	Local	27/08/2026	1600	2000	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Pumpkin	Other	Local	27/08/2026	600	1200	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Guar	Other	Local	27/08/2026	5000	8000	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1600	2000	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Spinach	Other	Local	27/08/2026	500	800	650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Pomegranate	Other	Local	26/08/2026	1200	14000	7600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Beans	Other	Local	26/08/2026	4000	4500	4200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Peas Wet	Other	Local	27/08/2026	5000	7000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Arecanut(Betelnut/Supari)	Other	Local	27/08/2026	36000	90500	63250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Savner APMC	Wheat	Other	Non-FAQ	27/08/2026	2490	2499	2499	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Savner APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7545	7990	7900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8200	8200	8200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Pineapple	Other	Local	27/08/2026	2500	6000	4250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Karbuja(Musk Melon)	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Banana	Khandesh	Local	27/08/2026	700	1800	1400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Karbuja(Musk Melon)	Other	Local	27/08/2026	1500	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Tender Coconut	Other	Local	27/08/2026	4000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Potato	Other	Local	27/08/2026	650	1300	850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Cabbage	Other	Local	27/08/2026	750	1665	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ginger(Green)	Other	Local	27/08/2026	6000	12000	9000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Ginger(Green)	Other	Local	27/08/2026	10000	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1500	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Shirur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5000	5800	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Bitter gourd	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Pumpkin	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Spinach	Other	Local	27/08/2026	5	12	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Sweet Potato	Other	Local	27/08/2026	2000	5000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	27/08/2026	3500	3800	3650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6200	7300	6750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Banana	Other	Local	27/08/2026	500	2000	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Apple	Other	Local	27/08/2026	4000	14000	9000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Orange	Other	Local	27/08/2026	2500	5000	3700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Bottle gourd	Other	Local	27/08/2026	600	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Carrot	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Guar	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Dry Grapes	Other	Local	27/08/2026	21000	35600	28300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Green Chilli	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Carrot	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Tomato	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Brinjal	Other	Local	27/08/2026	2000	3000	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guar	Other	Local	27/08/2026	6000	8000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Coriander(Leaves)	Other	Local	27/08/2026	2	4	3	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Methi(Leaves)	Other	Local	27/08/2026	4	12	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Drumstick	Other	Local	27/08/2026	2500	4500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Brinjal	Other	Local	27/08/2026	1400	3500	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Carrot	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vai APMC	Tomato	Local	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Wheat	Other	Non-FAQ	27/08/2026	2500	2551	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2700	5300	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	4500	5400	5400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Jowar(Sorghum)	Other	Local	27/08/2026	3000	5500	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8000	8700	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Wheat	Other	FAQ	27/08/2026	2585	2900	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2311	3700	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	5001	7300	6200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vaduj APMC	Green Chilli	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	3800	4700	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Ulhasnagar APMC	Rice	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Mangrulpeer APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7000	7980	7600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	27/08/2026	11180	11895	11180	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	5065	5300	5125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Methi(Leaves)	Other	Local	26/08/2026	500	1300	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Wheat	Bansi	FAQ	26/08/2026	2585	2730	2650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Parbhani	Shree Salasar Krushi Bazar, Dist Parbhani	Red gram/Arhar/Tur(whole)	Other	Local	26/08/2026	7000	7000	7000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guar	Other	Local	26/08/2026	3000	6000	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Tomato	Other	Local	26/08/2026	500	800	650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalna	Jalana APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2150	2535	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Wheat	Other	FAQ	27/08/2026	2600	2675	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Wheat	Other	Non-FAQ	27/08/2026	2550	2550	2550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2300	5100	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Green Gram(Moong)(Whole)	Other	FAQ	27/08/2026	9100	10211	9100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Shetkari Krushi Utapanna Bazar Roshankheda Tal Varud Dist Amravati	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	3400	8100	7812	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Shetkari Krushi Utapanna Bazar Roshankheda Tal Varud Dist Amravati	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	5500	5500	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nandgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2240	2640	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nandgaon APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2600	2729	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nandgaon APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	3000	5874	5450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nandgaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	9650	11512	11250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Wheat	Other	FAQ	27/08/2026	2641	2641	2641	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7450	7900	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Apple	Other	Local	27/08/2026	4000	15000	10000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	Cow	Other	Local	27/08/2026	7000	70000	35000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	27/08/2026	16000	16400	16200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Wheat	147 Average	Non-FAQ	27/08/2026	2575	2575	2575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Guar	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Methi(Leaves)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bottle gourd	Other	Local	26/08/2026	750	1500	970	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Onion	Red	Local	26/08/2026	4000	4000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Little gourd(Kundru)	Other	Local	26/08/2026	3000	3600	3200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	2000	2000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Chilly Capsicum	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Brinjal	Other	Local	26/08/2026	1000	2500	1644	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Rajgir	Other	Local	26/08/2026	5	7	6	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	500	1500	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	French Beans(Frasbean)	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Cabbage	Other	Local	26/08/2026	800	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Spinach	Other	Local	26/08/2026	500	800	650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cabbage	Other	Local	26/08/2026	900	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Papaya	Other	Local	26/08/2026	1500	3000	2625	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Potato	Local	Local	26/08/2026	1500	1500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bitter gourd	Other	Local	26/08/2026	3500	3500	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Coriander(Leaves)	Other	Local	26/08/2026	6	8	7	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Banana - Green	Other	Local	26/08/2026	2400	3000	2700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	3000	6000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Spinach	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Soyabean	Other	Local	27/08/2026	4201	5811	4601	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Turmeric	Rajapuri	Local	27/08/2026	11100	15501	14300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Green Gram(Moong)(Whole)	Other	FAQ	27/08/2026	8800	9300	8900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7500	7600	7550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cabbage	Other	Local	27/08/2026	1500	1800	1633	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Pumpkin	Other	Local	27/08/2026	1500	1500	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Methi(Leaves)	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Chilly Capsicum	Other	Local	27/08/2026	2500	4000	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ginger(Green)	Other	Local	26/08/2026	7000	14000	9600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Perfect Krishi Market Yard Pvt Ltd, Dist Nashik	Pomegranate	Other	Local	26/08/2026	1275	12600	8200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Hingoli	Gajanan Krushi Utpanna Bazar (India) Pvt Ltd, Basmat, Dist Hingoli	Turmeric	Other	Local	26/08/2026	15500	18000	16078	2026-08-27 21:16:50.455763+05:30
Maharashtra	Hingoli	Sengoan APMC	Turmeric	Other	Local	26/08/2026	14500	16000	15000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	2500	3800	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Green Chilli	Other	Local	26/08/2026	3500	5000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Wheat	Maharashtra 2189	FAQ	26/08/2026	2585	3000	2650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Pomegranate	Other	Local	26/08/2026	1000	15000	8000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Hingoli	Sant Namdev Krushi Bazar, Tal Sengaon Dist Hingoli	Turmeric	Other	Local	26/08/2026	15900	16300	16100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Papaya	Other	Local	26/08/2026	2500	3500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ginger(Green)	Other	Local	26/08/2026	3500	6500	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Lime	Other	Local	26/08/2026	4500	8700	6000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Apple	Other	Local	26/08/2026	7000	15000	11000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Palghar	Kalyan APMC	Cow	Other	Local	27/08/2026	50000	70000	60000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Green Chilli	Other	Local	27/08/2026	3000	3500	3214	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Marigold(Calcutta)	Other	Local	27/08/2026	1000	3000	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Cucumbar(Kheera)	Other	Local	27/08/2026	700	1925	1260	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Brinjal	Other	Local	27/08/2026	1225	2800	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	1881	2500	2355	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	2200	2548	2431	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	610	1000	830	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cabbage	Other	Local	27/08/2026	1055	1500	1325	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Raddish	Other	Local	27/08/2026	1065	1500	1335	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2355	2355	2355	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6275	6275	6275	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	6755	6755	6755	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Soyabean	Yellow	FAQ	27/08/2026	5500	5500	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Wheat	Other	Non-FAQ	27/08/2026	2200	2500	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Onion	Local	Local	26/08/2026	1000	5100	4100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	2000	3200	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Green Chilli	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Peas Wet	Other	Local	26/08/2026	8000	8000	8000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Drumstick	Other	Local	26/08/2026	2500	4500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Onion	Local	Local	26/08/2026	1700	4500	3100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Potato	Other	Local	26/08/2026	700	1000	850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Carrot	Other	Local	26/08/2026	2000	2000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Sangola APMC	Pomegranate	Other	Local	26/08/2026	3000	13500	8000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bitter gourd	Other	Local	26/08/2026	1000	3000	2200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Spinach	Other	Local	26/08/2026	8	10	9	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Jowar(Sorghum)	Other	Local	26/08/2026	3900	5800	4850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Bitter gourd	Other	Local	26/08/2026	2500	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Onion	Other	Local	26/08/2026	1300	4000	2650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bitter gourd	Other	Local	26/08/2026	1700	3200	2450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Mango(Raw-Ripe)	Other	Local	26/08/2026	8000	8000	8000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Green Chilli	Other	Local	26/08/2026	4000	5000	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nanded	Bhokar APMC	Jowar(Sorghum)	Other	Local	26/08/2026	2410	2465	2438	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bitter gourd	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Maize	Other	FAQ	26/08/2026	2500	4000	3400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Gram(Moong)(Whole)	Other	FAQ	26/08/2026	8800	15000	12500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Beetroot	Other	Local	26/08/2026	1600	2400	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	2600	3000	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Carrot	Other	Local	26/08/2026	1800	2600	2200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Beans	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Mango(Raw-Ripe)	Other	Local	26/08/2026	4000	6000	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Onion Green	Other	Local	26/08/2026	700	1400	1050	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Pumpkin	Other	Local	26/08/2026	800	1400	1100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Snakeguard	Other	Local	26/08/2026	2000	2600	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Pointed gourd(Parval)	Other	Local	26/08/2026	4000	5000	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Mint(Pudina)	Other	Local	26/08/2026	500	700	600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Brinjal	Other	Local	26/08/2026	2000	2600	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Chilli	Other	Local	26/08/2026	1800	4000	2900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Red gram split/Arhar dal/Tur dal	Other	Local	26/08/2026	9500	14000	13200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Black Gram Dal(Urd Dal)	Other	Local	26/08/2026	10000	12900	12000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Savner APMC	Wheat	Other	Non-FAQ	26/08/2026	2450	2494	2480	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Soyabean	Other	Local	26/08/2026	5680	5700	5680	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Potato	Other	Local	26/08/2026	900	1500	1200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Guar	Other	Local	26/08/2026	3500	8500	6500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Methi(Leaves)	Other	Local	26/08/2026	400	1200	800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bottle gourd	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Carrot	Other	Local	26/08/2026	1500	2000	1700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Ginger(Green)	Other	Local	26/08/2026	10000	15000	13000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cabbage	Other	Local	26/08/2026	700	1200	950	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	26/08/2026	3400	3800	3600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1800	2200	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Raddish	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bottle gourd	Other	Local	26/08/2026	500	1800	1100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Chilly Capsicum	Other	Local	26/08/2026	2000	3000	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Onion	Other	Local	26/08/2026	1500	4100	3400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Coriander(Leaves)	Other	Local	26/08/2026	800	3000	1572	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Spinach	Other	Local	26/08/2026	4	7	6	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Onion	Unhali	Local	26/08/2026	1200	4390	4100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	French Beans(Frasbean)	Other	Local	26/08/2026	3500	6500	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Brinjal	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Green Chilli	Other	Local	26/08/2026	2000	3500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Gur(Jaggery)	Other	Local	26/08/2026	4601	4725	4663	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Bitter gourd	Other	Local	26/08/2026	4000	5000	4500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Pomegranate	Other	Local	26/08/2026	2500	5000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guava	Other	Local	26/08/2026	2000	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Seetapal	Other	Local	26/08/2026	3000	5000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion	Local	Local	26/08/2026	2600	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bitter gourd	Other	Local	26/08/2026	2500	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	3000	6000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Beetroot	Other	Local	26/08/2026	1000	2650	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cauliflower	Other	Local	26/08/2026	1000	2300	1700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Chilly Capsicum	Other	Local	26/08/2026	1000	2500	1750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Ginger(Green)	Other	Local	26/08/2026	10000	12000	11000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Satara	Vai APMC	Brinjal	Other	Local	26/08/2026	2500	3500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	500	2500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Ridgeguard(Tori)	Other	Local	26/08/2026	2000	7600	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Tomato	Local	Local	26/08/2026	200	1800	1100	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Indapur APMC	Onion	Red	Local	26/08/2026	1500	4150	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Brinjal	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	French Beans(Frasbean)	Other	Local	26/08/2026	4000	4000	4000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cabbage	Other	Local	26/08/2026	1500	2000	1833	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Pumpkin	Other	Local	26/08/2026	2000	2000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Methi(Leaves)	Other	Local	26/08/2026	5000	5000	5000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	HINGNA - APMC	Peas Wet	Other	Local	26/08/2026	6000	8000	7250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Wheat	Other	FAQ	26/08/2026	2600	2700	2650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Tomato	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cauliflower	Other	Local	26/08/2026	2000	2500	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Onion	Local	Local	26/08/2026	3200	3800	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Laxmi-Sopan Agriculture Produce Marketing Co Ltd, Barshi, Dist Solapur	Onion	Other	Local	26/08/2026	800	4100	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Wheat	Other	Local	26/08/2026	2400	2550	2480	2026-08-27 21:16:50.455763+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Red gram/Arhar/Tur(whole)	Other	Local	26/08/2026	7400	8000	7510	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Murud APMC	Rice	Other	Local	26/08/2026	4000	4500	4250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Mangaon APMC	Rice	Other	Local	26/08/2026	2000	4800	3800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cauliflower	Other	Local	26/08/2026	500	1000	750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Sangli	Vita APMC	Brinjal	Other	Local	27/08/2026	2500	3000	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Beetroot	Other	Local	27/08/2026	2000	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Wheat	Other	Non-FAQ	27/08/2026	2200	2500	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Wheat	Other	FAQ	27/08/2026	2585	2750	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	4500	4500	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Potato	Other	Local	27/08/2026	500	1100	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Lime	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Spinach	Other	Local	27/08/2026	4	6	5	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	3500	4000	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Brinjal	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Lentil(Masur)(Whole)	Other	Non-FAQ	27/08/2026	4700	4700	4700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cauliflower	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dhule APMC	Maize	Yellow	Non-FAQ	27/08/2026	2250	2371	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Garlic	Other	Local	26/08/2026	10000	12000	11000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Drumstick	Other	Local	26/08/2026	2000	3500	2750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Tomato	Local	Local	26/08/2026	1200	1200	1200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Solapur	Akluj APMC	Garlic	Other	Local	27/08/2026	7500	13500	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Maize	Yellow	FAQ	27/08/2026	2451	2566	2470	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	3000	5872	5865	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Soyabean	Yellow	FAQ	27/08/2026	5860	5860	5860	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Sinner APMC	Onion	Unhali	Local	27/08/2026	1200	4240	3775	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Rice	Other	Local	27/08/2026	3000	3200	3150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cabbage	Other	Local	26/08/2026	500	1000	750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Jowar(Sorghum)	Other	FAQ	26/08/2026	6200	6700	6450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Soyabean	Other	Local	26/08/2026	5600	5870	5740	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bitter gourd	Other	Local	26/08/2026	3000	3000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bottle gourd	Other	Local	26/08/2026	500	1000	750	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Nagpur APMC	Coriander(Leaves)	Other	Local	27/08/2026	1200	2500	2175	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Green Chilli	Other	Local	27/08/2026	1500	2000	1875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Chili Red	Other	Local	27/08/2026	14000	18000	17000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Sant Namdev Krushi Bazar, Tal Sengaon Dist Hingoli	Turmeric	Other	Local	27/08/2026	14700	15100	14900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Carrot	Other	Local	26/08/2026	1500	1500	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Brinjal	Other	Local	26/08/2026	1000	2100	1550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Green Chilli	Other	Local	26/08/2026	2500	3500	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Soyabean	Other	Local	26/08/2026	5490	5490	5490	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Lime	Other	Local	26/08/2026	5000	6000	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beetroot	Other	Local	26/08/2026	2000	2500	2250	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Wheat	Other	FAQ	26/08/2026	2600	2600	2600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Rahuri APMC	Wheat	Other	FAQ	27/08/2026	2600	2600	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Onion	Unhali	Local	27/08/2026	300	4500	3300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	6800	7250	7025	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Basmat APMC	Turmeric	Other	Local	27/08/2026	13000	17675	15337	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Peas Wet	Other	Local	29/08/2026	5000	7000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bottle gourd	Other	Local	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cabbage	Other	Local	29/08/2026	1200	1300	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Green Chilli	Other	Local	29/08/2026	2000	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Beetroot	Other	Local	29/08/2026	2000	2000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Lime	Other	Local	29/08/2026	5000	5000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Drumstick	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Brinjal	Other	Local	29/08/2026	1000	4000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Onion	Unhali	Local	29/08/2026	700	4991	4200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cauliflower	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Tomato	Other	Local	29/08/2026	500	1000	700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Carrot	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Wheat	Other	FAQ	29/08/2026	2600	2790	2695	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	8800	9500	9150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Soyabean	Yellow	FAQ	29/08/2026	6229	6229	6229	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	5200	6000	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Lime	Other	Local	29/08/2026	3000	6000	4666	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Coriander(Leaves)	Other	Local	29/08/2026	2000	3000	2571	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	500	3000	1810	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Potato	Local	Local	29/08/2026	1500	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Bitter gourd	Other	Local	29/08/2026	2135	2520	2345	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Tomato	Local	Local	29/08/2026	750	1650	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	800	2500	1650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Guar	Other	Local	29/08/2026	2500	13000	7700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1000	3500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Peas Wet	Other	Local	29/08/2026	3000	6000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Alibagh APMC	Rice	Other	Local	29/08/2026	4000	4500	4250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Spinach	Other	Local	29/08/2026	1060	1500	1340	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Brinjal	Other	Local	29/08/2026	1020	1500	1310	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Green Chilli	Other	Local	29/08/2026	3565	4000	3845	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Soyabean	Yellow	FAQ	29/08/2026	5485	5940	5830	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2470	2600	2555	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Murtizapur APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	29/08/2026	6500	6700	6600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Spinach	Other	Local	29/08/2026	4	6	5	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Onion	Other	Local	29/08/2026	4500	6000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Little gourd(Kundru)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Gondpimpri APMC	Paddy(Common)	Other	FAQ	29/08/2026	3650	3750	3700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Nagbhid APMC	Paddy(Common)	Other	FAQ	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Savali APMC	Paddy(Common)	Other	FAQ	29/08/2026	3500	3860	3740	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Lime	Other	Local	28/08/2026	400	3400	1900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dhule	Shirpur APMC	Onion	Red	Local	29/08/2026	1250	3900	3300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ginger(Green)	Other	Local	26/08/2026	5000	10000	7500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Corriander seed	Other	Local	26/08/2026	11000	13000	12000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Pomegranate	Other	Local	26/08/2026	250	9600	7550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Green Chilli	Other	Local	26/08/2026	2000	4000	3000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bitter gourd	Other	Local	26/08/2026	1500	1800	1650	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Green Peas	Other	Local	26/08/2026	6800	7900	7350	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Wheat	Other	FAQ	26/08/2026	2658	2658	2658	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nashik	Pimpalgaon Baswant(Saykheda) APMC	Onion	Unhali	Local	26/08/2026	1401	4501	3850	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bottle gourd	Other	Local	26/08/2026	1000	3000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bitter gourd	Other	Local	26/08/2026	1500	2500	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cabbage	Other	Local	26/08/2026	1000	1500	1200	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	26/08/2026	5326	5800	5500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Jowar(Sorghum)	Other	Local	26/08/2026	2000	2000	2000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Brinjal	Other	Local	26/08/2026	1000	2000	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bottle gourd	Other	Local	26/08/2026	700	1200	950	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cauliflower	Other	Local	26/08/2026	700	1100	900	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	1400	1600	1500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	26/08/2026	9000	10000	9500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Spinach	Other	Local	26/08/2026	7	8	8	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	26/08/2026	6800	7990	7450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Ramtek APMC	Potato	Local	Local	26/08/2026	1000	1500	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Wheat	Other	Local	26/08/2026	2300	2300	2300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed APMC	Methi(Leaves)	Other	Local	27/08/2026	800	1300	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Shirur APMC	Wheat	Other	Non-FAQ	27/08/2026	2300	2500	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	9300	9900	9600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Lime	Other	Local	27/08/2026	400	3400	1900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Pear(Marasebu)	Other	Local	27/08/2026	5500	7500	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Plum	Other	Local	27/08/2026	3500	6000	4700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	3500	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Cauliflower	Other	Local	27/08/2026	1000	2500	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Banana	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Carrot	Other	Local	27/08/2026	2000	2500	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion Green	Other	Local	27/08/2026	15	15	15	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cabbage	Other	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	2500	2200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Cauliflower	Other	Local	27/08/2026	3000	3500	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Bitter gourd	Other	Local	27/08/2026	1000	2000	1450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	2500	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Green Chilli	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dhule APMC	Onion	Red	Local	27/08/2026	1200	4000	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Cabbage	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	Other	Local	27/08/2026	1500	2100	1900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Soyabean	Other	Local	27/08/2026	5950	6175	6062	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Soyabean	Yellow	FAQ	27/08/2026	5330	5500	5420	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	800	1500	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Tomato	Local	Local	27/08/2026	1000	1400	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Papaya	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nashik	Malegaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	10001	10101	10001	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Rice	Other	Local	26/08/2026	8000	11000	10000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Nagpur	Kamthi APMC	Potato	Local	Local	27/08/2026	2000	2500	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Carrot	Other	Local	27/08/2026	2000	2500	2350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Udgir APMC	Soyabean	Other	FAQ	27/08/2026	6221	6240	6230	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Papaya	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Methi(Leaves)	Other	Local	27/08/2026	5000	6000	5650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Garlic	Other	Local	27/08/2026	6500	26100	18000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2500	4170	3335	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6000	5900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Yeola APMC	Onion	Unhali	Local	27/08/2026	700	4150	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Pomegranate	Other	Local	27/08/2026	3000	7000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	800	2500	1650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	600	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Tomato	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Green Chilli	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Murum APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7730	7730	7730	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	1500	2450	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cabbage	Other	Local	27/08/2026	600	1300	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Garlic	Other	Local	27/08/2026	7000	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bhindi(Ladies Finger)	Other	Local	26/08/2026	1600	2000	1800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Coriander(Leaves)	Other	Local	26/08/2026	3	5	4	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Tomato	Local	Local	26/08/2026	800	1300	1050	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Ground Nut Seed	Other	Local	26/08/2026	8000	15000	12000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Maize	Deshi Red	FAQ	26/08/2026	2600	2800	2700	2026-08-27 21:16:50.455763+05:30
Maharashtra	Raigad	Panvel APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	3000	4000	3500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Peas	White Fozi	Local	26/08/2026	4000	7000	5800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cucumbar(Kheera)	Other	Local	26/08/2026	800	2000	1300	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Garlic	Other	Local	26/08/2026	7000	17000	13000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Tomato	Other	Local	26/08/2026	500	1200	1000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Carrot	Other	Local	26/08/2026	1300	1600	1450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Gram Dal(Moong Dal)	Other	Local	26/08/2026	9000	10800	10000	2026-08-27 21:16:50.455763+05:30
Maharashtra	Mumbai	Mumbai APMC	Lime	Other	Local	26/08/2026	2000	3600	2800	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Chilly Capsicum	Other	Local	26/08/2026	1300	1800	1550	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bitter gourd	Other	Local	26/08/2026	1500	3500	2500	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Onion	Local	Local	26/08/2026	700	1400	1050	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Brinjal	Other	Local	26/08/2026	1200	1600	1400	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Green Chilli	Other	Local	26/08/2026	2200	3000	2600	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Pune APMC	Ragi(Finger Millet)	Other	FAQ	26/08/2026	5300	5600	5450	2026-08-27 21:16:50.455763+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Brinjal	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Tomato	Local	Local	29/08/2026	500	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Guava	Other	Local	28/08/2026	2000	10000	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Beans	Other	Local	28/08/2026	2500	3000	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Onion	Red	Local	28/08/2026	600	5000	3300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Methi(Leaves)	Other	Local	28/08/2026	7	11	9	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Soyabean	Other	Local	28/08/2026	5000	5200	5150	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Apple	Other	Local	28/08/2026	11000	13000	12500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Rice	Other	Local	28/08/2026	6200	6500	6425	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	28/08/2026	5875	6050	6006	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Onion	Unhali	Local	28/08/2026	1000	4300	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahuri APMC	Wheat	Other	FAQ	28/08/2026	2600	2600	2600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Wheat	Other	FAQ	28/08/2026	2590	2800	2695	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Wheat	Other	Local	28/08/2026	2600	2600	2600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Seetapal	Other	Local	28/08/2026	3000	7000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Water Melon	Other	Local	28/08/2026	600	1000	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guar	Other	Local	28/08/2026	1500	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	28/08/2026	8001	8001	8001	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Tomato	Other	Local	28/08/2026	1000	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Chilly Capsicum	Other	Local	28/08/2026	3000	3000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Beetroot	Other	Local	28/08/2026	2000	2000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Onion	Unhali	Local	28/08/2026	3000	3500	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Guar	Other	Local	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Bitter gourd	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Coriander(Leaves)	Other	Local	28/08/2026	200	500	350	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Pointed gourd(Parval)	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Lime	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Mint(Pudina)	Other	Local	28/08/2026	500	600	550	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Chilli	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Papaya	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Plum	Other	Local	28/08/2026	8000	13000	10500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Parbhani	Gangakhed APMC	Wheat	Other	FAQ	28/08/2026	2700	2800	2700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed APMC	Methi(Leaves)	Other	Local	28/08/2026	400	1200	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Guar	Other	Local	28/08/2026	4000	8000	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cabbage	Other	Local	28/08/2026	600	1200	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Chilly Capsicum	Other	Local	28/08/2026	1500	2500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Spinach	Other	Local	28/08/2026	300	600	400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Drumstick	Other	Local	28/08/2026	2500	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Peas Wet	Other	Local	28/08/2026	5000	7000	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cauliflower	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cabbage	Other	Local	28/08/2026	1000	1300	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Brinjal	Other	Local	28/08/2026	1000	2500	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Tomato	Local	Local	28/08/2026	700	1300	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cauliflower	Other	Local	28/08/2026	700	1300	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bitter gourd	Other	Local	28/08/2026	1400	1800	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Chikoos(Sapota)	Other	Local	28/08/2026	2000	5000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Onion	Local	Local	28/08/2026	1000	4300	2650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Pumpkin	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Brinjal	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Ground Nut Seed	Local	Local	28/08/2026	13000	13800	13400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	3500	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Little gourd(Kundru)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Green Peas	Other	Local	28/08/2026	7000	7900	7450	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Raddish	Other	Local	28/08/2026	6	25	15	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Snakeguard	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Pointed gourd(Parval)	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Methi(Leaves)	Other	Local	28/08/2026	10	10	10	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Banana	Other	Local	28/08/2026	3000	7000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Lime	Other	Local	28/08/2026	4000	4000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Peas Wet	Other	Local	28/08/2026	7000	8000	7500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Apple	Other	Local	28/08/2026	18000	20000	19000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bitter gourd	Other	Local	28/08/2026	3000	3500	3250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pumpkin	Other	Local	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Coriander(Leaves)	Other	Local	28/08/2026	5	7	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cauliflower	Other	Local	28/08/2026	1200	2000	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Peas	Other	Local	28/08/2026	5500	7500	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cabbage	Other	Local	28/08/2026	600	1200	900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	28/08/2026	5500	5500	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Karmala APMC	Jowar(Sorghum)	Other	Local	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	1000	3300	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Indapur APMC	Onion	Red	Local	28/08/2026	1500	4200	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	28/08/2026	2400	2600	2400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	28/08/2026	7900	8500	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Mustard	Other	FAQ	28/08/2026	7301	7501	7501	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	Onion	Chinchwad	Local	28/08/2026	1500	4400	3400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bitter gourd	Other	Local	28/08/2026	1500	3000	2330	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Garlic	Other	Local	28/08/2026	17000	18000	17500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Brinjal	Other	Local	28/08/2026	500	2500	1541	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cabbage	Other	Local	28/08/2026	1565	2000	1835	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	7800	8500	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Onion	Local	Local	28/08/2026	700	3300	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ginger(Green)	Other	Local	28/08/2026	13000	15000	14000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Potato	Other	Local	28/08/2026	1100	1300	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Pomegranate	Other	Local	28/08/2026	7000	10000	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Papaya	Other	Local	28/08/2026	3500	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Sindevahi APMC	Paddy(Common)	Other	FAQ	28/08/2026	2600	2650	2600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Savali APMC	Paddy(Common)	Other	FAQ	28/08/2026	3450	3820	3780	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Coriander(Leaves)	Other	Local	28/08/2026	4	8	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cabbage	Other	Local	28/08/2026	1300	1300	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Red gram/Arhar/Tur(whole)	Other	Local	28/08/2026	4094	4094	4094	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Methi(Leaves)	Other	Local	28/08/2026	10	10	10	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Spinach	Other	Local	28/08/2026	8	10	9	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bottle gourd	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beans	Other	Local	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Garlic	Other	Local	28/08/2026	9000	12000	10500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Vita APMC	Tomato	Other	Local	28/08/2026	1000	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Chilly Capsicum	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Brinjal	Other	Local	28/08/2026	1000	2500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Sharbati	FAQ	28/08/2026	3200	3500	3425	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	28/08/2026	2450	2600	2450	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Perfect Krushi Market Yard, Tal Madha, Dist Solapur	Pomegranate	Other	Local	28/08/2026	1375	13150	9000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Jowar(Sorghum)	Other	Non-FAQ	28/08/2026	2715	3400	3058	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Green Gram(Moong)(Whole)	Other	Local	28/08/2026	8100	8100	8100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guava	Other	Local	28/08/2026	2000	8000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Apple	Other	Local	28/08/2026	9000	14000	10000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Methi(Leaves)	Other	Local	28/08/2026	600	1200	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Spinach	Other	Local	28/08/2026	300	500	400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cauliflower	Other	Local	28/08/2026	640	1280	960	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Carrot	Other	Local	28/08/2026	1000	4000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	5500	2200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Palus APMC	Brinjal	Other	Local	28/08/2026	1500	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Palus APMC	Green Chilli	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Wheat	Bansi	FAQ	28/08/2026	2600	2750	2660	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Coriander(Leaves)	Other	Local	28/08/2026	800	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bitter gourd	Other	Local	28/08/2026	1500	2000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Pumpkin	Other	Local	28/08/2026	800	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Raddish	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Cauliflower	Other	Local	28/08/2026	1200	2000	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Potato	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Brinjal	Other	Local	28/08/2026	1600	2600	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Orange	Other	Local	28/08/2026	2500	8000	5250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Pomegranate	Other	Local	28/08/2026	11000	15000	13000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Brinjal	Other	Local	28/08/2026	600	3000	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Lime	Other	Local	28/08/2026	3000	6000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Beans	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Chilly Capsicum	Other	Local	28/08/2026	1000	1500	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	600	2000	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Sweet Pumpkin	Other	Local	28/08/2026	500	600	550	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed APMC	Potato	Other	Local	28/08/2026	1000	1500	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Potato	Other	Local	28/08/2026	800	1500	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bitter gourd	Other	Local	28/08/2026	1500	2500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Methi(Leaves)	Other	Local	28/08/2026	300	800	500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Garlic	Other	Local	28/08/2026	7000	16000	12000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Ginger(Green)	Other	Local	28/08/2026	10000	16000	12000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	French Beans(Frasbean)	Other	Local	28/08/2026	4000	6000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Guar	Other	Local	28/08/2026	3000	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Chilly Capsicum	Other	Local	28/08/2026	1500	2500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1600	2000	1800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1500	1800	1650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Onion	Local	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Coriander(Leaves)	Other	Local	28/08/2026	3	5	4	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Chilly Capsicum	Other	Local	28/08/2026	1400	1700	1550	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	28/08/2026	3400	3800	3600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Seetapal	Other	Local	28/08/2026	2000	8000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Tender Coconut	Other	Local	28/08/2026	1300	2000	1650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Beans	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Bitter gourd	Other	Local	28/08/2026	1500	3000	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Cabbage	Other	Local	28/08/2026	1000	1500	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pomegranate	Other	Local	28/08/2026	8000	10000	9000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mint(Pudina)	Other	Local	28/08/2026	5	7	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Papaya	Other	Local	28/08/2026	3000	3000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Beetroot	Other	Local	28/08/2026	3000	3000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Beans	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2000	5000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Carrot	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Pomegranate	Other	Local	28/08/2026	3000	6000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Spinach	Other	Local	28/08/2026	5	7	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Vai APMC	Ginger(Green)	Other	Local	28/08/2026	10000	12000	11000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Vai APMC	Potato	Local	Local	28/08/2026	1700	1900	1800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Jowar(Sorghum)	Jowar ( White)	Local	28/08/2026	2400	4000	3269	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Karmala APMC	Wheat	Other	FAQ	28/08/2026	2650	2650	2650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Barshi APMC	Jowar(Sorghum)	Other	Local	28/08/2026	3300	5700	4200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Wheat	Other	Local	27/08/2026	2400	2560	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	700	2000	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Onion	Local	Local	28/08/2026	1200	4510	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Indapur APMC	Pomegranate	Other	Local	28/08/2026	1500	16100	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Hingoli	Sengoan APMC	Soyabean	Yellow	FAQ	27/08/2026	6600	6800	6650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Kille Dharur APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	28/08/2026	2900	4651	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Other	Non-FAQ	27/08/2026	2570	2584	2580	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Potato	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	7200	7700	7450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	6161	6161	6161	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Pen APMC	Brinjal	Other	Local	27/08/2026	3800	4000	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Little gourd(Kundru)	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	500	1750	1125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Water Melon	Other	Local	27/08/2026	500	750	600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Potato	Other	Local	27/08/2026	1200	1300	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Guar	Other	Local	27/08/2026	5000	10000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Green Chilli	Other	Local	27/08/2026	3500	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Pineapple	Other	Local	27/08/2026	1000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Lime	Other	Local	27/08/2026	4000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Ginger(Green)	Other	Local	27/08/2026	3500	11000	9125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Beetroot	Other	Local	27/08/2026	2000	2200	2150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1500	2000	1875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Onion	Red	Local	27/08/2026	3500	4000	3875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Onion	White	Local	27/08/2026	4000	4500	4375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bitter gourd	Other	Local	27/08/2026	1500	2200	2025	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Chilly Capsicum	Other	Local	27/08/2026	2500	3000	2875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Pointed gourd(Parval)	Other	Local	27/08/2026	3000	3500	3375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Tomato	Local	Local	27/08/2026	1500	2000	1875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Corriander seed	Other	Local	27/08/2026	12000	12800	12600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2500	2600	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Pomegranate	Other	Local	27/08/2026	1000	12000	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Onion	Unhali	Local	27/08/2026	1000	4501	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Pineapple	Other	Local	27/08/2026	3500	5500	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2500	3000	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2000	3500	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Brinjal	Other	Local	27/08/2026	2000	3000	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Palghar APMC	Wheat	Other	FAQ	27/08/2026	3400	3400	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Palghar APMC	Rice	1009 Kar	Local	27/08/2026	4850	4850	4850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Agricultural Produce Market Committee Sillod	Wheat	Other	FAQ	27/08/2026	2585	2650	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Wheat	Other	FAQ	27/08/2026	2586	2750	2678	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Telhara APMC	Wheat	Other	Non-FAQ	27/08/2026	2500	2580	2540	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Telhara APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7700	7995	7860	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Chandur Railway APMC	Wheat	Other	Non-FAQ	27/08/2026	2475	2475	2475	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2400	2600	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	27/08/2026	9846	11500	10673	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Apple	Other	Local	27/08/2026	14000	17000	15500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Potato	Other	Local	27/08/2026	800	1000	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1200	1600	1400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Garlic	Other	Local	27/08/2026	5800	23000	14400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Spinach	Other	Local	27/08/2026	600	700	650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Tomato	Other	Local	27/08/2026	400	700	550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	500	2500	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Tomato	Other	Local	27/08/2026	200	1000	700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Wheat	Sharbati	FAQ	27/08/2026	2635	4170	3695	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Wheat	Other	Non-FAQ	27/08/2026	2420	2521	2480	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	27/08/2026	12151	12151	12151	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Soyabean	Yellow	FAQ	27/08/2026	5890	5975	5900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Onion	Unhali	Local	27/08/2026	2020	4200	3300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2575	2488	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	1850	2630	2280	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	3000	5850	5100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Onion	Other	Local	28/08/2026	1000	4500	2300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mohol APMC	Maize	Deshi Red	Non-FAQ	28/08/2026	2000	2200	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Khamgaon APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	4500	4700	4600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	27/08/2026	10200	10200	10200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	She Buffalo	She Baffelo	Local	27/08/2026	20000	80000	50000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Jowar(Sorghum)	Red	Local	27/08/2026	1900	4042	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Achalpur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7700	7900	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Hingoli(Kanegoan Naka) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7500	7800	7650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Hingoli(Kanegoan Naka) APMC	Soyabean	Yellow	FAQ	27/08/2026	5700	5900	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi APMC	Jowar(Sorghum)	Other	Local	27/08/2026	4400	4400	4400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Ghansawangi APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2600	2750	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Amalner APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2350	2586	2586	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Lime	Other	Local	27/08/2026	4500	8000	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Carrot	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Methi(Leaves)	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5177	5177	5177	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Parola APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	2000	2552	2425	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	APMC Latur	Safflower	Other	Non-FAQ	27/08/2026	4800	5500	5470	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	APMC Latur	Soyabean	Yellow	FAQ	27/08/2026	6000	6380	6210	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Jowar(Sorghum)	Other	Local	27/08/2026	3900	5850	4875	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Rice	1009 Kar	Local	27/08/2026	3100	9500	6300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	5151	5151	5151	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5411	5701	5556	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	6001	7501	7001	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7430	7700	7610	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1500	2000	1850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Pumpkin	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Maize	Other	FAQ	27/08/2026	2800	3400	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Gram(Moong)(Whole)	Other	FAQ	27/08/2026	8800	11000	9900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Beans	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Mango(Raw-Ripe)	Other	Local	27/08/2026	5000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bitter gourd	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cabbage	Other	Local	27/08/2026	600	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Tomato	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Brinjal	Other	Local	27/08/2026	1600	2600	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Mustard	Other	FAQ	27/08/2026	8700	11000	9850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Savner APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8100	8020	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Kalvan APMC	Onion	Unhali	Local	27/08/2026	1500	4900	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	Shahada APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	2200	2201	2200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Guava	Other	Local	27/08/2026	3000	7000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Soyabean	Other	Local	27/08/2026	5251	5813	5650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Apple	Other	Local	27/08/2026	7000	20000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Bottle gourd	Other	Local	27/08/2026	470	1400	935	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Guar	Other	Local	27/08/2026	3200	5500	4200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2500	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Vinchur) APMC	Soyabean	Other	Local	27/08/2026	5700	6101	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	3000	5000	4900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Groundnut	Other	Non-FAQ	27/08/2026	3500	4000	3850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Brinjal	Other	Local	27/08/2026	1300	3000	2150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cabbage	Other	Local	27/08/2026	750	1500	1125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Drumstick	Other	Local	27/08/2026	2000	4500	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Murum APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	6801	7700	7230	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Murum APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Bottle gourd	Other	Local	27/08/2026	700	1600	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Guar	Other	Local	27/08/2026	5000	8500	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Guar	Other	Local	27/08/2026	4000	8000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Onion	Other	Local	27/08/2026	1500	4000	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bitter gourd	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Carrot	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Nira APMC	Gur(Jaggery)	Other	Local	27/08/2026	6000	6400	6200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Carrot	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Chilly Capsicum	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Coriander(Leaves)	Other	Local	27/08/2026	2	6	4	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Garlic	Other	Local	27/08/2026	6000	26000	16000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Snakeguard	Other	Local	27/08/2026	1500	3000	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Pointed gourd(Parval)	Other	Local	27/08/2026	2500	4000	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	27/08/2026	2500	4000	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Peas Wet	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Corriander seed	Other	Local	27/08/2026	11500	13000	12250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Green Peas	Other	Local	27/08/2026	7000	7800	7400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Seetapal	Other	Local	27/08/2026	2000	8000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Sweet Pumpkin	Other	Local	27/08/2026	700	1500	1100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	3699	3800	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Gur(Jaggery)	Other	Local	27/08/2026	3350	5350	4350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pineapple	Other	Local	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pear(Marasebu)	Other	Local	27/08/2026	8000	8000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Potato	Local	Local	27/08/2026	1000	1100	1050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Beetroot	Other	Local	27/08/2026	3000	3000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bottle gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cauliflower	Other	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bitter gourd	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Coriander(Leaves)	Other	Local	27/08/2026	5	6	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Drumstick	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	3500	4000	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Snakeguard	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Ginger(Green)	Other	Local	27/08/2026	10000	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Beans	Other	Local	27/08/2026	3000	4000	3550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Cabbage	Other	Local	27/08/2026	800	1000	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Tomato	Other	Local	27/08/2026	1000	2000	1550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Seetapal	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bottle gourd	Other	Local	27/08/2026	1500	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Beans	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion	Local	Local	27/08/2026	2600	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bitter gourd	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cabbage	Other	Local	27/08/2026	600	1000	700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Onion	Chinchwad	Local	27/08/2026	1000	4310	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Cauliflower	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Guar	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Onion	Other	Local	27/08/2026	2000	4500	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Peas Wet	Other	Local	27/08/2026	4000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	6000	6000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6000	6100	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5200	5200	5200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Guava	Other	Local	27/08/2026	3000	8000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	7800	8351	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vaduj APMC	Brinjal	Other	Local	27/08/2026	4000	7000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim(Ansing) APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8050	8020	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Pandharpur APMC	Tomato	Other	Local	27/08/2026	300	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5510	5510	5510	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Onion	Local	Local	27/08/2026	1620	4500	4100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Green Chilli	Other	Local	27/08/2026	1500	2600	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8175	8175	8175	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7500	7500	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Gur(Jaggery)	Yellow	Local	27/08/2026	4500	4500	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Vani APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7735	7945	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Manmad APMC	Onion	Unhali	Local	27/08/2026	500	3680	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Umarked(Danki) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	6400	6600	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Maize	Yellow	Non-FAQ	27/08/2026	2175	2175	2175	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5300	5300	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Ner Parasopant APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	27/08/2026	5900	6000	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cauliflower	Other	Local	27/08/2026	750	1250	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Coriander(Leaves)	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Methi(Leaves)	Other	Local	27/08/2026	2500	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	She Buffalo	Other	Local	27/08/2026	85000	104000	100000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Pomegranate	Other	Local	27/08/2026	5000	12000	8500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Potato	Other	Local	27/08/2026	700	1300	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Beetroot	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Raddish	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Tomato	Other	Local	27/08/2026	500	1000	700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Brinjal	Other	Local	27/08/2026	1000	3800	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5625	5780	5702	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8052	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7360	7950	7840	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Wheat	Other	Non-FAQ	27/08/2026	2550	2580	2560	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	Dhadgaon APMC	Maize	Other	Non-FAQ	27/08/2026	1750	1850	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	4200	5000	4900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Green Gram(Moong)(Whole)	Other	FAQ	27/08/2026	9000	13601	12900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Onion	Unhali	Local	27/08/2026	1000	4401	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Lime	Other	Local	27/08/2026	3000	6000	4357	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	2500	1784	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	250	2000	1251	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Onion	Red	Local	27/08/2026	3500	3500	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Tomato	Local	Local	27/08/2026	1500	2250	1833	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Brinjal	Other	Local	27/08/2026	1000	2500	1663	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	Maize	Yellow	Non-FAQ	27/08/2026	2191	2300	2270	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	8800	10000	9200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Dindori(Vani) APMC	Onion	Unhali	Local	27/08/2026	3651	4741	4211	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Wheat	Other	FAQ	27/08/2026	2630	2699	2675	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Maize	Other	Non-FAQ	27/08/2026	2330	2330	2330	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Soyabean	Other	Local	27/08/2026	5200	6051	5931	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8000	8200	8100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Onion	Other	Local	27/08/2026	2000	4300	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Pomegranate	Other	Local	27/08/2026	1000	15500	8250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cabbage	Other	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Methi(Leaves)	Other	Local	27/08/2026	10	15	12	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Paddy(Common)	Other	FAQ	27/08/2026	2580	2580	2580	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Potato	Other	Local	27/08/2026	1100	1300	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Carrot	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Bitter gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Coriander(Leaves)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ginger(Green)	Other	Local	27/08/2026	13000	15000	14000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Sakri APMC	Onion	Unhali	Local	27/08/2026	2000	3850	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Gadchiroli	Chamorshi APMC	Paddy(Common)	Other	FAQ	27/08/2026	3608	3870	3695	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Ginger(Green)	Other	Local	27/08/2026	6500	7500	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Potato	Local	Local	27/08/2026	1000	1500	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Brinjal	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Spinach	Other	Local	27/08/2026	7	9	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	1st Sort	Local	27/08/2026	3300	4600	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Wheat	Other	Non-FAQ	27/08/2026	2575	2580	2577	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Perfect Krishi Market Yard Pvt Ltd, Dist Nashik	Pomegranate	Other	Local	27/08/2026	1300	12550	8250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	6848	6848	6848	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Soyabean	Yellow	Local	27/08/2026	3600	6000	5799	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	5500	7250	6941	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Gajanan Krushi Utpanna Bazar (India) Pvt Ltd, Basmat, Dist Hingoli	Turmeric	Other	Local	27/08/2026	15440	18000	16440	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Wheat	Other	Local	27/08/2026	2000	2650	2573	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	7000	8000	7216	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Bhandara APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2450	2450	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Bhandara APMC	Rice	1009 Kar	Local	27/08/2026	4800	4800	4800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Pen APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	4200	4400	4200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Pen APMC	Bitter gourd	Other	Local	27/08/2026	3600	3800	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Wheat	Other	FAQ	27/08/2026	2621	2621	2621	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Guar	Other	Local	27/08/2026	12500	12500	12500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akot APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	27/08/2026	10600	10600	10600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Garlic	Other	Local	27/08/2026	8000	18000	13000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Agricultural Produce Market Committee Sillod	Maize	Yellow	FAQ	27/08/2026	2400	2500	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5200	5400	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5900	6000	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7600	7990	7795	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Sengoan APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7200	7400	7300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Cabbage	Other	Local	27/08/2026	600	900	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Tomato	Local	Local	27/08/2026	500	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Groundnut	Other	Non-FAQ	27/08/2026	5500	7260	7255	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6150	6081	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8150	8112	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7600	7999	7899	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bottle gourd	Other	Local	27/08/2026	1000	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Carrot	Other	Local	27/08/2026	1800	2000	1950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Guar	Other	Local	27/08/2026	4000	7500	6625	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Mango(Raw-Ripe)	Other	Local	27/08/2026	4000	4500	4375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Cabbage	Other	Local	27/08/2026	1200	1300	1275	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Spinach	Other	Local	27/08/2026	1000	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Brinjal	Other	Local	27/08/2026	1000	1500	1375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Maize	Other	Non-FAQ	27/08/2026	2000	2200	2150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Ambejogai APMC	Soyabean	Yellow	FAQ	27/08/2026	5750	6100	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Water Melon	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Apple	Other	Local	27/08/2026	6000	14000	10000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Beans	Other	Local	27/08/2026	3000	4000	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Onion	Local	Local	27/08/2026	3000	4000	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Green Chilli	Other	Local	27/08/2026	3000	4500	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Sant Namdev Krushi Bazar, Tal Sengaon Dist Hingoli	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	7600	8000	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2901	2901	2901	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Telhara APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2300	2400	2350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bitter gourd	Other	Local	27/08/2026	2000	3500	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cabbage	Other	Local	27/08/2026	700	1000	850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Pomegranate	Other	Local	27/08/2026	1000	13000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Beans	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bitter gourd	Other	Local	27/08/2026	900	2200	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Pineapple	Other	Local	27/08/2026	1000	3500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Seetapal	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7450	7800	7625	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Soyabean	Yellow	FAQ	27/08/2026	5328	5800	5564	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	9200	9200	9200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	4975	4975	4975	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Wheat	Bansi	FAQ	27/08/2026	2585	2691	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2100	2100	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8250	8125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	5500	7975	6738	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Wheat	Other	FAQ	27/08/2026	2591	2626	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	8781	10000	8800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8001	8150	8100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Soyabean	Other	Local	27/08/2026	4800	5750	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Achalpur APMC	Soyabean	Other	Local	27/08/2026	5550	6000	5775	2026-08-29 01:01:09.424856+05:30
Maharashtra	Gadchiroli	Armori(Desaiganj) APMC	Paddy(Common)	Other	FAQ	27/08/2026	2600	3700	3082	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Nandura APMC	Maize	Other	Non-FAQ	27/08/2026	2240	2375	2375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Amalner APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2200	2650	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Peas Wet	Other	Local	27/08/2026	8000	8000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bitter gourd	Other	Local	27/08/2026	1200	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Drumstick	Other	Local	27/08/2026	4500	4500	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Tomato	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Parola APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2300	2422	2408	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Parola APMC	Maize	Yellow	Non-FAQ	27/08/2026	1800	1800	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Lime	Other	Local	28/08/2026	1000	6000	4562	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Coriander(Leaves)	Other	Local	28/08/2026	2000	4000	2845	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	APMC PACHORA	Maize	Other	FAQ	27/08/2026	2400	2435	2415	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5898	6091	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	APMC Latur	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8291	8150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ahmedpur APMC	Jowar(Sorghum)	Other	FAQ	27/08/2026	3699	3800	3749	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ahmedpur APMC	Soyabean	Yellow	FAQ	27/08/2026	5328	6151	5739	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2401	2551	2481	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	9001	9001	9001	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	8201	8201	8201	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Bottle gourd	Other	Local	27/08/2026	1000	1500	1350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	1500	1450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Cabbage	Other	Local	27/08/2026	2000	2500	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Spinach	Other	Local	27/08/2026	2000	2500	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Udgir APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6000	6226	6113	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Udgir APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8200	8450	8325	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Lentil(Masur)(Whole)	Other	FAQ	27/08/2026	7050	7200	7125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Masur Dal	Other	Local	27/08/2026	7100	7600	7400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Gram Dal(Moong Dal)	Other	Local	27/08/2026	9100	10500	10300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	9000	11600	10500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Black Gram Dal(Urd Dal)	Other	Local	27/08/2026	10000	12900	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Green Peas	Other	Local	27/08/2026	4400	5500	5200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Soanf	Other	Local	27/08/2026	15000	32000	23500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bottle gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Methi(Leaves)	Other	Local	27/08/2026	800	1000	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Raddish	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Pointed gourd(Parval)	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Mint(Pudina)	Other	Local	27/08/2026	600	800	700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Little gourd(Kundru)	Other	Local	27/08/2026	2000	3600	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cummin Seed(Jeera)	Other	Local	27/08/2026	22000	40000	31000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Almond(Badam)	Other	Local	27/08/2026	75000	150000	110000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	Shahada APMC	Wheat	Other	FAQ	27/08/2026	2656	2726	2720	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Onion	Unhali	Local	27/08/2026	1300	4290	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon(Vinchur) APMC	Onion	Unhali	Local	27/08/2026	1000	4290	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2570	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Sweet Pumpkin	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cauliflower	Other	Local	27/08/2026	600	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Onion	Red	Local	27/08/2026	2600	5000	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Murum APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	2400	2601	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Gangakhed APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2650	2700	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Gangakhed APMC	Soyabean	Yellow	FAQ	27/08/2026	6500	6700	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2450	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	7700	7700	7700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7300	7300	7300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Soyabean	Yellow	FAQ	27/08/2026	5601	5800	5601	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Potato	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Onion	Fursungi	Local	27/08/2026	1500	4200	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Brinjal	Other	Local	27/08/2026	1000	4500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Peas Wet	Other	Local	27/08/2026	4000	8000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Potato	Other	Local	27/08/2026	900	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cauliflower	Other	Local	27/08/2026	1000	2500	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	French Beans(Frasbean)	Other	Local	27/08/2026	4000	7000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cauliflower	Other	Local	27/08/2026	2500	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bitter gourd	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Cabbage	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Tomato	Other	Local	27/08/2026	1000	1200	1100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Green Chilli	Other	Local	27/08/2026	2000	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Shirur APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	1700	2750	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Chilly Capsicum	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Drumstick	Other	Local	27/08/2026	1000	4000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Tomato	Local	Local	27/08/2026	400	1600	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Little gourd(Kundru)	Other	Local	27/08/2026	2000	3500	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Brinjal	Other	Local	27/08/2026	1000	2500	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Green Chilli	Other	Local	27/08/2026	1600	3200	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Ground Nut Seed	Local	Local	27/08/2026	13200	14000	13600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Pineapple	Other	Local	27/08/2026	1600	3300	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Brinjal	Other	Local	28/08/2026	1460	1800	1640	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Chikoos(Sapota)	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Papaya	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Guava	Other	Local	27/08/2026	2000	7000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Amla(Nelli Kai)	Other	Local	27/08/2026	2000	5000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Ginger(Green)	Other	Local	27/08/2026	1400	11000	6200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Potato	Local	Local	27/08/2026	500	1500	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Mango(Raw-Ripe)	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Beans	Other	Local	27/08/2026	2500	4000	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Rice	Other	Local	27/08/2026	5000	9000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6300	6088	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Miraj) APMC	Maize	Deshi Red	FAQ	27/08/2026	2450	2750	2550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Water Melon	Other	Local	27/08/2026	1000	1000	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Lime	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Papaya	Other	Local	27/08/2026	2500	2500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Orange	Other	Local	27/08/2026	7000	7000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Beans	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion	Local	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Methi(Leaves)	Other	Local	27/08/2026	10	10	10	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Spinach	Other	Local	27/08/2026	5	10	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Little gourd(Kundru)	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Peas Wet	Other	Local	27/08/2026	6000	9000	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Brinjal	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Beans	Other	Local	27/08/2026	5000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	3500	4000	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Onion	Local	Local	27/08/2026	2000	4300	3200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Snakeguard	Other	Local	27/08/2026	1000	2000	1550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Papaya	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Carrot	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Banana	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Cabbage	Other	Local	27/08/2026	1000	1200	1100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Chilly Capsicum	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Drumstick	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Green Chilli	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2400	2400	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Wheat	Other	Non-FAQ	27/08/2026	2542	2580	2560	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	6000	7100	6600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim(Ansing) APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2350	2540	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim(Ansing) APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	5250	5500	5300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	500	6500	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Brinjal	Other	Local	27/08/2026	500	4000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Indapur APMC	Guava	Other	Local	27/08/2026	1500	7000	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Mangrulpeer APMC	Wheat	Other	FAQ	27/08/2026	2600	2645	2615	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	APMC VASAI	Rice	1009 Kar	Local	27/08/2026	3390	4250	3950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Maize	Deshi Red	FAQ	27/08/2026	2400	2600	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Cowpea(Lobia/Karamani)	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8325	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	4600	4600	4600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Vani APMC	Wheat	Other	Non-FAQ	27/08/2026	2485	2485	2485	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Vani APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6005	6005	6005	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Vani APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	7035	7035	7035	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Shetkari Krushi Utapanna Bazar Roshankheda Tal Varud Dist Amravati	Soyabean	Other	Local	27/08/2026	4000	6000	5630	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2216	2216	2216	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	3101	3101	3101	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Agriculture Produce Market Committee Katol	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5880	6200	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Ner Parasopant APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8025	8015	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Ner Parasopant APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	1500	5000	3535	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Paranda APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8400	8750	8600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Brinjal	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	Pomegranate	Other	Local	27/08/2026	5000	25500	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	9200	9700	9450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Corriander seed	Other	Local	27/08/2026	19000	26000	22500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7000	7000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Lime	Other	Local	27/08/2026	3000	6000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Sweet Pumpkin	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cauliflower	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cabbage	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Coriander(Leaves)	Other	Local	27/08/2026	500	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2200	2951	2550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim APMC	Wheat	Maharashtra 2189	Non-FAQ	27/08/2026	2350	2550	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	1550	2190	1700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Washim APMC	Soyabean	Yellow	FAQ	27/08/2026	5530	6150	5700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	2300	2350	2340	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	Dhadgaon APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	1750	1800	1775	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2500	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Lasalgaon APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2585	2816	2731	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cauliflower	Other	Local	27/08/2026	2000	2500	2315	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Coriander(Leaves)	Other	Local	27/08/2026	1000	2500	1713	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Raddish	Other	Local	27/08/2026	1000	2000	1550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	500	3200	2236	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Bitter gourd	Other	Local	27/08/2026	1400	2030	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Alibagh APMC	Rice	Other	Local	27/08/2026	4000	4500	4250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Chalisgaon APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2495	2475	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Coriander(Leaves)	Other	Local	27/08/2026	1505	2000	1815	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Spinach	Other	Local	27/08/2026	1535	2000	1855	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Tomato	Other	Local	27/08/2026	1020	1500	1310	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Mehekar APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5900	6030	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Mehekar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7200	7990	7850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Newasa APMC	Onion	Unhali	Local	27/08/2026	1000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Onion	Unhali	Local	27/08/2026	1000	4271	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Wheat	Other	FAQ	27/08/2026	2700	2700	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2500	2625	2575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5920	6250	6025	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	7050	7095	7072	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Mustard	Other	FAQ	27/08/2026	7300	7300	7300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Murtizapur APMC	Wheat	Other	Non-FAQ	27/08/2026	2200	2580	2390	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bottle gourd	Other	Local	27/08/2026	600	1000	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bitter gourd	Other	Local	27/08/2026	3000	3500	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Chilly Capsicum	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Tomato	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Wheat	Other	Non-FAQ	27/08/2026	2571	2571	2571	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5500	5500	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	6300	6300	6300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Green Peas	Other	Local	27/08/2026	3325	3325	3325	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Onion	Other	Local	27/08/2026	4250	5250	4750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Spinach	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Gondpimpri APMC	Paddy(Common)	Other	FAQ	27/08/2026	3675	3775	3700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Cauliflower	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Onion	Unhali	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Chilly Capsicum	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Tomato	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Beetroot	Other	Local	27/08/2026	2000	2300	2150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Beans	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cabbage	Other	Local	27/08/2026	1800	1800	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Coriander(Leaves)	Other	Local	27/08/2026	7	8	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Green Chilli	Other	Local	27/08/2026	3000	3500	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Ashti(Karanja) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7800	7990	7900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2200	2200	2200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Soyabean	Other	Local	27/08/2026	5850	6090	6020	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Maize	Yellow	Local	27/08/2026	2100	2200	2155	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	5000	8250	7975	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Mahesh Krushi Utpanna Bazar, Digras, Dist Yeotmal	Bajra(Pearl Millet/Cumbu)	Other	Local	27/08/2026	2375	2375	2375	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Mahesh Krushi Utpanna Bazar, Digras, Dist Yeotmal	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	7400	7800	7583	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Janata Agri Market (DLS Agro Infrastructure Pvt Ltd), Dist Dhule	Onion	Other	Local	27/08/2026	1000	4000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dondaicha APMC	Wheat	Other	Non-FAQ	27/08/2026	1911	2580	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Pusad APMC	Soyabean	Other	Local	27/08/2026	5745	5835	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Mangaon APMC	Rice	Other	Local	27/08/2026	2000	4800	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Spinach	Other	Local	27/08/2026	5	10	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5800	5800	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ginger(Green)	Other	Local	27/08/2026	10000	14000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beetroot	Other	Local	27/08/2026	2000	2500	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bitter gourd	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2100	2200	2150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Maize	Yellow	Non-FAQ	27/08/2026	2100	2250	2175	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Vita APMC	Potato	Other	Local	27/08/2026	1500	1800	1600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Vita APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2500	3000	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Vita APMC	Onion	Other	Local	27/08/2026	3500	4500	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Vita APMC	Green Chilli	Other	Local	27/08/2026	4500	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Ginger(Green)	Other	Local	27/08/2026	10000	13000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Beans	Other	Local	27/08/2026	2500	3000	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1200	2300	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Methi(Leaves)	Other	Local	27/08/2026	8	10	9	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Spinach	Other	Local	27/08/2026	5	7	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Drumstick	Other	Local	27/08/2026	2500	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	4200	5870	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Sharbati	FAQ	27/08/2026	3200	3500	3425	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Pomegranate	Other	Local	27/08/2026	2000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Apple	Other	Local	27/08/2026	6000	7000	6750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Cauliflower	Other	Local	27/08/2026	500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Garlic	Other	Local	27/08/2026	6000	20000	16500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Methi(Leaves)	Other	Local	27/08/2026	3500	4500	4250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Raddish	Other	Local	27/08/2026	1000	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Tomato	Other	Local	27/08/2026	1200	1700	1575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2600	2750	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Ambejogai APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5500	5800	5750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Perfect Krushi Market Yard, Tal Madha, Dist Solapur	Pomegranate	Other	Local	27/08/2026	1400	13100	8950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Pomegranate	Other	Local	27/08/2026	3000	7000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Guava	Other	Local	27/08/2026	2000	6000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Vadgaonpeth APMC	Guar	Other	Local	27/08/2026	7000	9000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Telhara APMC	Soyabean	Yellow	FAQ	27/08/2026	5600	5850	5740	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6200	6037	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Soyabean	Other	Local	27/08/2026	5500	6000	5750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2350	2600	2475	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Wheat	Other	Non-FAQ	27/08/2026	2365	2580	2472	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2200	3500	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	2200	3500	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Papaya	Other	Local	27/08/2026	2400	3700	3050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guar	Other	Local	27/08/2026	2200	3500	2850	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Methi(Leaves)	Other	Local	27/08/2026	800	1000	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Chilly Capsicum	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Carrot	Other	Local	27/08/2026	1000	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion	Red	Local	27/08/2026	500	5500	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Brinjal	Other	Local	27/08/2026	500	2000	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Apple	Other	Local	27/08/2026	8300	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Potato	Local	Local	27/08/2026	900	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5650	5800	5725	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Beed APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2100	3501	2525	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Maize	Yellow	FAQ	27/08/2026	2470	2490	2480	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Maize	Yellow	Non-FAQ	27/08/2026	2100	2100	2100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Malkapur APMC	Groundnut	Other	FAQ	27/08/2026	9200	9200	9200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5800	5800	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Khamgaon APMC	Mustard	Other	FAQ	27/08/2026	7300	7300	7300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Majalgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2100	2700	2551	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Achalpur APMC	Wheat	Other	Non-FAQ	27/08/2026	2450	2550	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Achalpur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5900	6000	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Raddish	Other	Local	28/08/2026	1065	1500	1335	2026-08-29 01:36:29.384686+05:30
Maharashtra	Hingoli	Hingoli APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7435	7990	7712	2026-08-29 01:01:09.424856+05:30
Maharashtra	Hingoli	Hingoli APMC	Soyabean	Other	Local	27/08/2026	5415	5970	5692	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi APMC	Maize	Other	FAQ	27/08/2026	2500	2625	2575	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5700	5700	5700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8000	8700	8350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Ghansawangi APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2500	2700	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Potato	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Guar	Other	Local	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC CHOPADA	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	27/08/2026	5457	5457	5457	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Parola APMC	Wheat	Kalyan	Non-FAQ	27/08/2026	2450	2550	2450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2251	2567	2351	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	2300	2613	2511	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	APMC PACHORA	Jowar(Sorghum)	Other	Local	27/08/2026	2700	3285	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ahmedpur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6000	5937	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ahmedpur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8151	8075	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6101	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Latur	Ausa APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	1901	3301	2816	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Wheat	Other	Non-FAQ	27/08/2026	2500	2550	2525	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Rice	Other	Local	27/08/2026	4200	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5340	5870	5610	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Soyabean	Yellow	FAQ	27/08/2026	5350	5500	5410	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Umared APMC	Soyabean	Yellow	Non-FAQ	27/08/2026	5000	5320	5200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Coriander(Leaves)	Other	Local	27/08/2026	3000	3500	3350	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kamthi APMC	Brinjal	Other	Local	27/08/2026	1000	1500	1450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Sabu Dan	Other	Local	27/08/2026	7000	8000	7600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Wheat	Other	FAQ	27/08/2026	2900	5500	4200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2600	6200	4600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Bengal Gram Dal(Chana Dal)	Other	Local	27/08/2026	7100	8500	7900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Gur(Jaggery)	Other	Local	27/08/2026	6400	7000	6700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Sugar	Other	Local	27/08/2026	5500	6000	5750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Lime	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	French Beans(Frasbean)	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Onion Green	Other	Local	27/08/2026	700	1200	950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Drumstick	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2600	3600	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Corriander seed	Other	Local	27/08/2026	17000	22500	19750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cashewnuts	Other	Local	27/08/2026	85000	145000	115000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Chili Red	Other	Local	27/08/2026	28000	50000	39000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Cardamom	Other	Local	27/08/2026	210000	420000	315000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai APMC	Black pepper	Other	Local	27/08/2026	65000	85000	75000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2160	2190	2180	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Wheat	Maharashtra 2189	FAQ	27/08/2026	2625	2725	2630	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Maize	Yellow	FAQ	27/08/2026	2400	2400	2400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	9355	11005	11005	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Devala APMC	Onion	Unhali	Local	27/08/2026	800	4100	3780	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Mango	Other	Local	27/08/2026	13000	16000	14500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Mousambi(Sweet Lime)	Other	Local	27/08/2026	2500	6000	4250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Apple	Other	Local	27/08/2026	9000	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Orange	Other	Local	27/08/2026	4000	10000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Pomegranate	Other	Local	27/08/2026	300	9500	5100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Cauliflower	Other	Local	27/08/2026	715	1570	1145	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Nasik APMC	Bitter gourd	Other	Local	27/08/2026	1250	2085	1670	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Beans	Other	Local	27/08/2026	1000	2500	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dharashiv	Murum APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8016	8016	8016	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Gangakhed APMC	Wheat	Other	FAQ	27/08/2026	2700	2750	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Parbhani	Pathari APMC	Jowar(Sorghum)	Jowar ( White)	Local	27/08/2026	1700	3300	2902	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	3000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Cauliflower	Other	Local	27/08/2026	500	1800	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	600	1800	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Bitter gourd	Other	Local	27/08/2026	2000	5000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed APMC	Tomato	Local	Local	27/08/2026	400	1200	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Methi(Leaves)	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Chilly Capsicum	Other	Local	27/08/2026	1500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Spinach	Other	Local	27/08/2026	500	1000	700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Drumstick	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Green Chilli	Other	Local	27/08/2026	2000	4500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Guar	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Shirur APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	27/08/2026	3100	3100	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Shirur APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	7500	8300	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Tasgaon APMC	Dry Grapes	Other	Local	27/08/2026	28500	35600	32200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Onion Green	Other	Local	27/08/2026	8	20	14	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Cabbage	Other	Local	27/08/2026	800	1500	1150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Raddish	Other	Local	27/08/2026	10	25	17	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Mint(Pudina)	Other	Local	27/08/2026	3	10	6	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Rajgir	Other	Local	27/08/2026	3	8	5	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2000	3500	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Ragi(Finger Millet)	Other	FAQ	27/08/2026	5400	5900	5650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	8900	9600	9250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Gur(Jaggery)	Other	Local	27/08/2026	4615	4775	4695	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Grapes	Other	Local	27/08/2026	4000	15000	9500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Water Melon	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Tender Coconut	Other	Local	27/08/2026	1300	2000	1600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Beetroot	Other	Local	27/08/2026	600	2000	1300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	1000	2200	1600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Wheat	Other	FAQ	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Sangli APMC	Jowar(Sorghum)	Other	Local	27/08/2026	4500	6000	5250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pomegranate	Other	Local	27/08/2026	8000	10000	9000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Apple	Other	Local	27/08/2026	15000	18000	16500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ginger(Green)	Other	Local	27/08/2026	9000	10000	9500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Guar	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pumpkin	Other	Local	27/08/2026	3000	3000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Garlic	Other	Local	27/08/2026	7000	10000	8500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Raddish	Other	Local	27/08/2026	10	10	10	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pointed gourd(Parval)	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mint(Pudina)	Other	Local	27/08/2026	5	5	5	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Tomato	Local	Local	27/08/2026	700	800	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Bottle gourd	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Guar	Other	Local	27/08/2026	9000	10000	9500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Panvel APMC	Bitter gourd	Other	Local	27/08/2026	4000	5000	4500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Islampur APMC	Bottle gourd	Other	Local	27/08/2026	1000	2000	1450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nandurbar	APMC Nandurbar	Jowar(Sorghum)	Other	Local	27/08/2026	3600	3600	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Peas	Other	Local	27/08/2026	7000	8000	7500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guava	Other	Local	27/08/2026	1500	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Potato	Other	Local	27/08/2026	1400	1800	1600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	3000	6000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Raddish	Other	Local	27/08/2026	10	20	15	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Rajgir	Other	Local	27/08/2026	3	6	5	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	3000	6000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Tomato	Other	Local	27/08/2026	500	1500	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Chilli	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Lonand APMC	Onion	Unhali	Local	27/08/2026	1900	4275	3050	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Bottle gourd	Other	Local	27/08/2026	1000	1500	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Bitter gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Satara APMC	Brinjal	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Wheat	Other	FAQ	27/08/2026	2625	2751	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Karmala APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	27/08/2026	7200	7200	7200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Barshi APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	8000	8000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Maize	Deshi Red	FAQ	27/08/2026	2700	2800	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Kurdwadi(Modnimb) APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6000	6000	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Satara	Vaduj APMC	Onion	Local	Local	27/08/2026	3000	4500	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Wheat	Other	FAQ	27/08/2026	2700	2700	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	700	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bitter gourd	Other	Local	27/08/2026	500	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	700	3200	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Tomato	Local	Local	27/08/2026	200	1400	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Ulhasnagar APMC	Wheat	Other	FAQ	27/08/2026	3200	3800	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Mangrulpeer APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5875	6190	5890	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Mangrulpeer APMC	Soyabean	Yellow	FAQ	27/08/2026	5500	6115	5845	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5450	5450	5450	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Wheat	Other	FAQ	27/08/2026	2600	2700	2645	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Karanja APMC	Turmeric	Other	Local	27/08/2026	15260	16100	15550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Wheat	Other	FAQ	27/08/2026	2655	2725	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	6085	6085	6085	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Wardha APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7905	7945	7925	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	2200	2200	2200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6000	6200	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalna	Jalana APMC	Soyabean	Yellow	FAQ	27/08/2026	5800	5900	5800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2240	2580	2402	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Onion	Other	Local	27/08/2026	1000	4500	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cabbage	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	27/08/2026	3100	3400	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Wheat	Sharbati	FAQ	27/08/2026	3200	3600	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	27/08/2026	8800	9200	9000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Green Peas	Other	Local	27/08/2026	6200	7800	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Ground Nut Seed	Other	Local	27/08/2026	13200	14200	13700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Gur(Jaggery)	Other	Local	27/08/2026	7500	9000	8250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Onion	1st Sort	Local	27/08/2026	3200	4000	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Palghar	Kalyan APMC	Green Chilli	Other	Local	27/08/2026	3000	3500	3250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5000	5000	5000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Onion	Red	Local	27/08/2026	1250	4200	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Wheat	Other	Non-FAQ	27/08/2026	2281	2475	2370	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Jowar(Sorghum)	Red	Local	27/08/2026	2600	4100	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Dindori APMC	Onion	Unhali	Local	27/08/2026	3000	4300	3900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ginger(Green)	Other	Local	27/08/2026	9000	15000	12000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Potato	Local	Local	27/08/2026	1300	1500	1400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bitter gourd	Other	Local	27/08/2026	1000	2500	2192	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Onion	Unhali	Local	27/08/2026	1275	4540	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Tomato	Local	Local	27/08/2026	250	1075	800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1545	2000	1865	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Pumpkin	Other	Local	27/08/2026	840	1200	1020	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Brinjal	Other	Local	27/08/2026	1415	1800	1625	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Green Chilli	Other	Local	27/08/2026	3060	3500	3340	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Yavatmal APMC	Wheat	Other	FAQ	27/08/2026	2625	2625	2625	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Mehekar APMC	Wheat	Other	Non-FAQ	27/08/2026	2000	2500	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Murtizapur APMC	Soyabean	Yellow	FAQ	27/08/2026	5330	5715	5525	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Ginger(Green)	Other	Local	27/08/2026	3000	11000	7000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	2500	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cauliflower	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cucumbar(Kheera)	Other	Local	27/08/2026	800	1200	1000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Morshi APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2560	2480	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Morshi APMC	Soyabean	Other	Local	27/08/2026	6000	6780	6390	2026-08-29 01:01:09.424856+05:30
Maharashtra	Bhandara	Tumsar APMC	Paddy(Common)	Other	Non-FAQ	27/08/2026	2050	2201	2163	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Beetroot	Other	Local	27/08/2026	2000	3000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Garlic	Other	Local	27/08/2026	15000	21000	19000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Little gourd(Kundru)	Other	Local	27/08/2026	1500	2000	1800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Pomegranate	Other	Local	27/08/2026	7000	10000	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Banana	Other	Local	27/08/2026	2000	2500	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Papaya	Other	Local	27/08/2026	3500	5000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Gadchiroli	Gadchiroli APMC	Paddy(Common)	Other	FAQ	27/08/2026	2960	3420	3100	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dhule APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	1950	2484	2355	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Sindevahi APMC	Paddy(Common)	Other	FAQ	27/08/2026	2600	2650	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Mul APMC	Paddy(Common)	Other	FAQ	27/08/2026	3600	3998	3800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chandrapur	Savali APMC	Paddy(Common)	Other	FAQ	27/08/2026	3510	3810	3650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Bhindi(Ladies Finger)	Other	Local	27/08/2026	1000	2500	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Bitter gourd	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Ramtek APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Onion	Local	Local	27/08/2026	1600	3800	2700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Mumbai	Mumbai-Onion & Potato Market APMC	Onion	Other	Local	27/08/2026	3100	4100	3600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1530	2000	1850	2026-08-29 01:36:29.384686+05:30
Maharashtra	Washim	Manora APMC	Wheat	Other	FAQ	27/08/2026	2591	2611	2601	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Soyabean	Yellow	FAQ	27/08/2026	5900	6000	5950	2026-08-29 01:01:09.424856+05:30
Maharashtra	Sangli	Vita APMC	Tomato	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Bitter gourd	Other	Local	27/08/2026	2200	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Chilly Capsicum	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2000	3500	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Mahesh Krushi Utpanna Bazar, Digras, Dist Yeotmal	Wheat	Other	Local	27/08/2026	2500	2575	2558	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Pen APMC	Bottle gourd	Other	Local	27/08/2026	3400	3600	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Brinjal	Other	Local	27/08/2026	1000	2800	1900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dondaicha APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	27/08/2026	4175	5500	4175	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Pomegranate	Other	Local	27/08/2026	1000	20000	6500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Papaya	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Orange	Other	Local	27/08/2026	2000	2000	2000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bottle gourd	Other	Local	27/08/2026	500	1000	750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cauliflower	Other	Local	27/08/2026	500	2000	1250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Wheat	Other	Non-FAQ	27/08/2026	2350	2420	2385	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Lonar APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2800	3000	2900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Cauliflower	Other	Local	27/08/2026	1000	1500	1200	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Carrot	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Wheat	Other	Local	27/08/2026	2500	2610	2600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Raigad	Murud APMC	Rice	Other	Local	27/08/2026	4000	4500	4250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Carrot	Other	Local	27/08/2026	1500	2000	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	1585	2770	2301	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Chandur Railway APMC	Soyabean	Yellow	FAQ	27/08/2026	5700	5700	5700	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Wheat	Other	FAQ	27/08/2026	2585	2700	2642	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Maize	Deshi Red	Non-FAQ	27/08/2026	1700	1800	1750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7250	7995	7550	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Laxmi-Sopan Agriculture Produce Marketing Co Ltd, Barshi, Dist Solapur	Onion	Other	Local	27/08/2026	700	4200	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Ramdev Krushi Bazaar, Digras road, Manora, Dist Washim	Red gram/Arhar/Tur(whole)	Other	Local	27/08/2026	7500	7700	7600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	M/S Kalpana Agri Commodities Marketing, Nagpur	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	4000	4000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	5000	6000	5680	2026-08-29 01:01:09.424856+05:30
Maharashtra	Dhule	Dondaicha APMC	Jowar(Sorghum)	Other	Local	27/08/2026	2551	2575	2551	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Coriander(Leaves)	Other	Local	28/08/2026	1520	2000	1810	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	28/08/2026	5300	5300	5300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Jowar(Sorghum)	Other	Local	28/08/2026	3000	5000	4200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	8000	8500	8200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Soyabean	Yellow	Non-FAQ	28/08/2026	5000	5200	5100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Carrot	Other	Local	28/08/2026	1500	2500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Raddish	Other	Local	28/08/2026	8	10	9	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai-Onion & Potato Market APMC	Potato	Other	Local	28/08/2026	500	1100	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Sesamum(Sesame,Gingelly,Til)	Other	Local	28/08/2026	10400	10400	10400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Garlic	Other	Local	27/08/2026	9000	12000	10500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Methi(Leaves)	Other	Local	27/08/2026	5	10	8	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Chilly Capsicum	Other	Local	27/08/2026	1000	2000	1500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Drumstick	Other	Local	27/08/2026	3000	4000	3500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Peas	Other	Local	27/08/2026	5000	6000	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Potato	Other	Local	27/08/2026	600	1200	900	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Red gram/Arhar/Tur(whole)	Other	Local	28/08/2026	7926	8021	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Bengal Gram(Gram)(Whole)	Other	Local	28/08/2026	5200	6000	5350	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Peas	Other	Local	28/08/2026	5000	5500	5250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beetroot	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Chilly Capsicum	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Drumstick	Other	Local	28/08/2026	3000	3500	3250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Brinjal	Other	Local	28/08/2026	700	2000	1350	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Onion	Unhali	Local	28/08/2026	600	4800	3450	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Carrot	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	APMC Pombhurna	Paddy(Common)	Other	FAQ	28/08/2026	3100	3500	3180	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Cauliflower	Other	Local	28/08/2026	1000	1300	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Spinach	Other	Local	28/08/2026	5	7	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	3600	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Yavatmal	Mahesh Krushi Utpanna Bazar, Digras, Dist Yeotmal	Bengal Gram(Gram)(Whole)	Other	Local	27/08/2026	5600	5600	5600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nashik	Malegaon APMC	Wheat	Other	Non-FAQ	27/08/2026	1800	2480	2470	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Amarawati APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8300	8150	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ginger(Green)	Other	Local	27/08/2026	5500	15000	10250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Carrot	Other	Local	27/08/2026	1300	2000	1650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Akluj APMC	Tomato	Local	Local	28/08/2026	500	1000	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Water Melon	Other	Local	28/08/2026	500	800	700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Grapes	Other	Local	28/08/2026	4000	6000	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	900	1800	1575	2026-08-29 01:36:29.384686+05:30
Maharashtra	Amarawati	Varud(Rajura Bazar) APMC	Green Chilli	Other	Local	28/08/2026	1800	1800	1800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Bajra(Pearl Millet/Cumbu)	Other	Local	28/08/2026	1500	1500	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Vaijpur APMC	Onion	Unhali	Local	28/08/2026	800	4252	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Brinjal	Other	Local	28/08/2026	400	3000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Chilly Capsicum	Other	Local	28/08/2026	600	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Tomato	Other	Local	28/08/2026	200	900	600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Wheat	Sharbati	FAQ	28/08/2026	2640	4175	3690	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Black Gram(Urd Beans)(Whole)	Mogan Medium	FAQ	28/08/2026	8520	8665	8600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Chikoos(Sapota)	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	700	2000	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Green Chilli	Other	Local	28/08/2026	100	2500	2300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Jowar(Sorghum)	Red	Local	28/08/2026	3700	3700	3700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1200	1800	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Methi(Leaves)	Other	Local	28/08/2026	1000	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Raddish	Other	Local	28/08/2026	1000	1500	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Green Chilli	Other	Local	28/08/2026	3500	4500	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Lime	Other	Local	28/08/2026	4500	10000	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Carrot	Other	Local	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Banana - Green	Other	Local	28/08/2026	2600	3000	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Cabbage	Other	Local	28/08/2026	600	1000	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Ginger(Green)	Other	Local	28/08/2026	5000	15000	10000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Beetroot	Other	Local	28/08/2026	1600	2400	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Bottle gourd	Other	Local	28/08/2026	1000	1600	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	28/08/2026	2400	2800	2600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Little gourd(Kundru)	Other	Local	28/08/2026	2000	3600	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Peas Wet	Other	Local	28/08/2026	5000	6000	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	2500	6000	4250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bitter gourd	Other	Local	28/08/2026	600	2000	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ginger(Green)	Other	Local	28/08/2026	6000	12000	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cauliflower	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Tomato	Other	Local	28/08/2026	600	1200	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Green Chilli	Other	Local	28/08/2026	1500	3500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Bottle gourd	Other	Local	28/08/2026	700	1300	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Carrot	Other	Local	28/08/2026	1500	1700	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Brinjal	Other	Local	28/08/2026	1200	1600	1400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Lentil(Masur)(Whole)	Other	FAQ	28/08/2026	7100	7400	7250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Pineapple	Other	Local	28/08/2026	1600	3300	2450	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	3000	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Peas Wet	Other	Local	28/08/2026	3000	6000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Drumstick	Other	Local	28/08/2026	1000	4000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Corriander seed	Other	Local	28/08/2026	11500	13500	12500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Maize	Deshi Red	FAQ	28/08/2026	2600	2700	2650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Pomegranate	Other	Local	28/08/2026	2000	10000	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Potato	Local	Local	28/08/2026	600	1500	1050	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Beetroot	Other	Local	28/08/2026	400	2000	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Chilly Capsicum	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Chilly Capsicum	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Tomato	Local	Local	28/08/2026	800	1000	900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Carrot	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Beans	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion	Local	Local	28/08/2026	1500	3500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Garlic	Other	Local	28/08/2026	10000	10000	10000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Potato	Other	Local	28/08/2026	1400	1800	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Drumstick	Other	Local	28/08/2026	2500	4500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Roha APMC	Paddy(Common)	Other	FAQ	28/08/2026	2370	2450	2410	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Vai APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1500	2000	1800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Vai APMC	Cabbage	Other	Local	28/08/2026	1500	1700	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	28/08/2026	8000	8530	8189	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	28/08/2026	4200	7000	7000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bitter gourd	Other	Local	28/08/2026	1500	2300	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Palghar	Murbad APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	3500	4500	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	500	2000	1311	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Guar	Other	Local	28/08/2026	5000	6000	5333	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Tomato	Local	Local	28/08/2026	1000	2250	1687	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	500	1500	1039	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Alibagh APMC	Rice	Other	Local	28/08/2026	4000	4500	4250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Green Chilli	Other	Local	28/08/2026	3535	4000	3855	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Wheat	Other	Non-FAQ	28/08/2026	2200	2500	2300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Jowar(Sorghum)	Other	Local	28/08/2026	3000	5500	4200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	28/08/2026	6000	6000	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Wheat	Maharashtra 2189	Non-FAQ	28/08/2026	2200	2400	2300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Maize	Yellow	Non-FAQ	28/08/2026	2000	2200	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	28/08/2026	5600	5800	5600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	800	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Onion	Other	Local	28/08/2026	4250	5250	4750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Garlic	Other	Local	28/08/2026	15000	21000	19000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Methi(Leaves)	Other	Local	28/08/2026	2500	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Tomato	Other	Local	28/08/2026	800	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Gondpimpri APMC	Paddy(Common)	Other	FAQ	28/08/2026	3650	3775	3725	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Tomato	Local	Local	28/08/2026	1000	1200	1100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Green Chilli	Other	Local	28/08/2026	3000	3000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Beans	Other	Local	28/08/2026	3000	3000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	2000	2000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Hingoli	Gajanan Krushi Utpanna Bazar (India) Pvt Ltd, Basmat, Dist Hingoli	Turmeric	Other	Local	28/08/2026	15500	18000	16490	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Murud APMC	Rice	Other	Local	28/08/2026	4000	4500	4250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Lime	Other	Local	28/08/2026	5000	6000	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ginger(Green)	Other	Local	28/08/2026	5000	14000	9500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	500	1500	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Vita APMC	Brinjal	Other	Local	28/08/2026	3000	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Carrot	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Bitter gourd	Other	Local	28/08/2026	2000	3800	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Cabbage	Other	Local	28/08/2026	500	1000	750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Drumstick	Other	Local	28/08/2026	2500	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Mousambi(Sweet Lime)	Other	Local	28/08/2026	4500	5000	4800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Guar	Other	Local	28/08/2026	4000	10000	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Green Chilli	Other	Local	28/08/2026	4000	5500	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Other	Non-FAQ	28/08/2026	2570	2584	2580	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	28/08/2026	8000	8111	8083	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Pomegranate	Other	Local	28/08/2026	2000	6000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Apple	Simla	Local	28/08/2026	6000	7000	6750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Corriander seed	Other	Local	28/08/2026	12000	13000	12750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Wheat	Maharashtra 2189	FAQ	28/08/2026	2600	2700	2600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	28/08/2026	2151	2572	2362	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Jowar(Sorghum)	Other	FAQ	28/08/2026	4700	4700	4700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Onion	Other	Local	28/08/2026	700	4500	3300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Black Gram(Urd Beans)(Whole)	Other	Local	28/08/2026	8500	8500	8500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion Green	Other	Local	28/08/2026	800	1100	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Pomegranate	Other	Local	28/08/2026	1000	13000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Potato	Local	Local	28/08/2026	940	4100	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Spinach	Other	Local	28/08/2026	2000	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Drumstick	Other	Local	28/08/2026	4500	4500	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Peas Wet	Other	Local	28/08/2026	8000	8000	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Brinjal	Other	Local	28/08/2026	2000	6000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	French Beans(Frasbean)	Other	Local	28/08/2026	2600	3200	2900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Chilly Capsicum	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Guar	Other	Local	28/08/2026	4000	7000	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1600	2200	1900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Spinach	Other	Local	28/08/2026	400	600	500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Seetapal	Other	Local	28/08/2026	6000	11000	8500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Banana	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Guava	Other	Local	28/08/2026	3000	7000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Green Chilli	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Pomegranate	Other	Local	28/08/2026	3000	8500	5750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	800	1600	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Guar	Other	Local	28/08/2026	1100	3200	2150	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Onion	Red	Local	28/08/2026	1700	5000	3350	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Drumstick	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Tomato	Other	Local	28/08/2026	500	1250	875	2026-08-29 01:36:29.384686+05:30
Maharashtra	Parbhani	Gangakhed APMC	Soyabean	Yellow	FAQ	28/08/2026	6500	6600	6500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Baramati APMC	Gur(Jaggery)	Other	Local	28/08/2026	5600	6000	5950	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bitter gourd	Other	Local	28/08/2026	2000	2500	2200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Beans	Other	Local	28/08/2026	1600	1800	1700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Green Chilli	Other	Local	28/08/2026	2400	3000	2700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Spinach	Other	Local	28/08/2026	3	5	4	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	1300	1700	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	28/08/2026	9000	9800	9400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Plum	Other	Local	28/08/2026	3000	10000	6500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Sweet Pumpkin	Other	Local	28/08/2026	400	2000	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2500	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Onion Green	Other	Local	28/08/2026	8	20	14	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Coriander(Leaves)	Other	Local	28/08/2026	2	7	4	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Tomato	Local	Local	28/08/2026	400	1600	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Ragi(Finger Millet)	Other	FAQ	28/08/2026	5300	5900	5600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Sweet Potato	Other	Local	28/08/2026	2000	6000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Elephant Yam(Suran)/Amorphophallus	Other	Local	28/08/2026	1500	4000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Rice	Other	Local	28/08/2026	4500	7500	6000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Ginger(Green)	Other	Local	28/08/2026	1400	11000	6200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Cauliflower	Other	Local	28/08/2026	1000	2500	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Carrot	Other	Local	28/08/2026	1000	3000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Guar	Other	Local	28/08/2026	3000	6000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Methi(Leaves)	Other	Local	28/08/2026	3	12	7	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ginger(Green)	Other	Local	28/08/2026	8000	10000	9000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Spinach	Other	Local	28/08/2026	7	8	8	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pointed gourd(Parval)	Other	Local	28/08/2026	4000	4000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Drumstick	Other	Local	28/08/2026	3000	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Brinjal	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Green Chilli	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Guar	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Bottle gourd	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Guar	Other	Local	28/08/2026	7000	8000	7500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Tomato	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Papaya	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion	Local	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bitter gourd	Other	Local	28/08/2026	2500	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Raddish	Other	Local	28/08/2026	10	25	20	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Patan APMC	Coriander(Leaves)	Other	Local	28/08/2026	8	10	9	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Patan APMC	Green Chilli	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Patan APMC	Brinjal	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	28/08/2026	6205	6205	6205	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Onion	Local	Local	27/08/2026	1000	4300	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Solapur	Dudhani APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	6800	7980	7614	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	7960	8645	8341	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Karmala APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	7500	7500	7500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Karmala APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	8500	8875	8751	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Barshi APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	7000	7500	7000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Indapur APMC	Guava	Other	Local	28/08/2026	1500	6200	2200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Jowar(Sorghum)	Red	Local	28/08/2026	2800	3450	3200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	28/08/2026	4900	5500	5500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Soyabean	Yellow	FAQ	28/08/2026	5700	5800	5800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bottle gourd	Other	Local	28/08/2026	775	1500	978	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Spinach	Other	Local	28/08/2026	900	3500	2030	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	1500	2800	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Onion	Red	Local	28/08/2026	3800	5000	4375	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Raddish	Other	Local	28/08/2026	600	2000	1354	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Green Chilli	Other	Local	28/08/2026	2000	3000	2742	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Spinach	Other	Local	28/08/2026	625	1000	815	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Tomato	Other	Local	28/08/2026	1015	1500	1305	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Jowar(Sorghum)	Other	Non-FAQ	28/08/2026	2000	2200	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Jalgaon Jamod(Aasalgaon) APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	7500	7800	7600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cauliflower	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cabbage	Other	Local	28/08/2026	800	1500	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Peas Wet	Other	Local	28/08/2026	5000	5000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Wheat	Other	Local	28/08/2026	2450	2550	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Mangaon APMC	Rice	Other	Local	28/08/2026	2000	4800	3800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Wheat	Other	FAQ	28/08/2026	2650	2650	2650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Pomegranate	Other	Local	28/08/2026	1000	22500	7500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Tomato	Other	Local	28/08/2026	500	1000	750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Chilli	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Vita APMC	Green Chilli	Other	Local	28/08/2026	3500	4000	3800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Vita APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2500	3000	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Potato	Other	Local	28/08/2026	1200	1300	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Beetroot	Other	Local	28/08/2026	2000	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Akluj APMC	Ginger(Green)	Other	Local	28/08/2026	10000	13000	11000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	28/08/2026	5775	5874	5849	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	7400	7999	7849	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Pineapple	Other	Local	28/08/2026	1000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Wheat	Other	FAQ	28/08/2026	2585	2726	2690	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Chili Red	Other	Local	28/08/2026	14000	18000	17000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Parner APMC	Onion	Unhali	Local	28/08/2026	1000	4800	3900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahuri(Vambori) APMC	Wheat	Other	FAQ	28/08/2026	2700	2700	2700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Wheat	Other	Non-FAQ	28/08/2026	2400	2575	2488	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	28/08/2026	7000	7000	7000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Lime	Other	Local	28/08/2026	3000	11000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Papaya	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion	Red	Local	28/08/2026	500	5500	2900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bitter gourd	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cabbage	Other	Local	28/08/2026	500	1000	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	600	2000	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Rice	Other	Local	28/08/2026	3565	7320	4210	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Beans	Other	Local	28/08/2026	1500	2200	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Palus APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Palus APMC	Tomato	Other	Local	28/08/2026	700	1500	900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	28/08/2026	1951	2630	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Little gourd(Kundru)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2200	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Sweet Pumpkin	Other	Local	28/08/2026	500	1000	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cabbage	Other	Local	28/08/2026	1200	1600	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Carrot	Other	Local	28/08/2026	1600	2600	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Sweet Pumpkin	Other	Local	28/08/2026	600	1200	900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Beans	Other	Local	28/08/2026	2600	3400	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Onion Green	Other	Local	28/08/2026	400	800	600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Methi(Leaves)	Other	Local	28/08/2026	600	800	700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	1000	2200	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Snakeguard	Other	Local	28/08/2026	2000	2400	2200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Drumstick	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai APMC	Tomato	Other	Local	28/08/2026	1200	2000	1600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Pineapple	Other	Local	28/08/2026	3000	6000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Chikoos(Sapota)	Other	Local	28/08/2026	4000	6000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Water Melon	Other	Local	28/08/2026	800	1100	950	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai- Fruit Market APMC	Karbuja(Musk Melon)	Other	Local	28/08/2026	2500	3000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Methi(Leaves)	Other	Local	28/08/2026	500	700	600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Carrot	Other	Local	28/08/2026	2500	6000	4250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cabbage	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cauliflower	Other	Local	28/08/2026	600	2000	1300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Parbhani	Gangakhed APMC	Jowar(Sorghum)	Other	Non-FAQ	28/08/2026	2800	2850	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Parbhani	Manwat APMC	Jowar(Sorghum)	Jowar ( White)	Local	28/08/2026	3150	3600	3300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed APMC	Onion	Fursungi	Local	28/08/2026	1500	3800	2800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Onion	Other	Local	28/08/2026	1500	4000	3300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bottle gourd	Other	Local	28/08/2026	1000	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Carrot	Other	Local	28/08/2026	1500	2000	1700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Brinjal	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2000	3500	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Tomato	Other	Local	28/08/2026	500	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ratnagiri	Ratnagiri (Nachane) APMC	Green Chilli	Other	Local	28/08/2026	1500	4000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Guar	Other	Local	28/08/2026	1800	2200	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Potato	Local	Local	28/08/2026	800	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Khadiki) APMC	Cabbage	Other	Local	28/08/2026	700	1200	950	2026-08-29 01:36:29.384686+05:30
Maharashtra	Sangli	Aatpadi APMC	Pomegranate	Other	Local	28/08/2026	1000	12500	6700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Grapes	Other	Local	28/08/2026	4000	14000	9000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Apple	Other	Local	28/08/2026	4000	12000	8000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Orange	Other	Local	28/08/2026	2500	5000	3750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Bottle gourd	Other	Local	28/08/2026	400	1600	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Mango(Raw-Ripe)	Other	Local	28/08/2026	1000	5000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Garlic	Other	Local	28/08/2026	6000	26000	16000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Mint(Pudina)	Other	Local	28/08/2026	3	8	5	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Jowar(Sorghum)	Other	FAQ	28/08/2026	6200	6600	6400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Gur(Jaggery)	Other	Local	28/08/2026	4575	4725	4650	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Rajgir	Other	Local	28/08/2026	4	8	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Green Chilli	Other	Local	28/08/2026	1500	4000	2750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	28/08/2026	6200	7200	6700	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	9300	9900	9600	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Water Melon	Other	Local	28/08/2026	1000	1500	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Banana	Other	Local	28/08/2026	500	2000	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Amla(Nelli Kai)	Other	Local	28/08/2026	3000	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune APMC	Spinach	Other	Local	28/08/2026	5	12	8	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Orange	Other	Local	28/08/2026	7000	7000	7000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Potato	Local	Local	28/08/2026	1000	1200	1100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pear(Marasebu)	Other	Local	28/08/2026	10000	10000	10000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bottle gourd	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cauliflower	Other	Local	28/08/2026	1000	1500	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion Green	Other	Local	28/08/2026	20	20	20	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cabbage	Other	Local	28/08/2026	800	1000	900	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Carrot	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Raigad	Panvel APMC	Bitter gourd	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guar	Other	Local	28/08/2026	5000	8000	7000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Methi(Leaves)	Other	Local	28/08/2026	3	10	6	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guava	Other	Local	28/08/2026	2500	5000	4000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Beans	Other	Local	28/08/2026	4000	5000	4500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Brinjal	Other	Local	28/08/2026	1400	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Patan APMC	Ginger(Green)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Barshi APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	28/08/2026	8000	8850	8500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Nagpur APMC	Potato	Local	Local	27/08/2026	800	1100	1025	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	Pomegranate	Other	Local	28/08/2026	5500	27500	13500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Banana	Other	Local	28/08/2026	1500	1500	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Potato	Local	Local	28/08/2026	1400	1500	1450	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cauliflower	Other	Local	28/08/2026	2100	3000	2550	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	440	800	630	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Pumpkin	Other	Local	28/08/2026	1045	1500	1325	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Maize	Yellow	Non-FAQ	28/08/2026	2000	2000	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Apple	Other	Local	28/08/2026	12000	18000	15000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	800	1500	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Banana	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	1000	1500	1200	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Brinjal	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Chandrapur	Mul APMC	Paddy(Common)	Other	FAQ	28/08/2026	3600	4030	3800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Onion	Local	Local	28/08/2026	2200	3700	2950	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Spinach	Other	Local	28/08/2026	7	9	8	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bottle gourd	Other	Local	28/08/2026	1500	2000	1750	2026-08-29 01:36:29.384686+05:30
Maharashtra	Mumbai	Mumbai-Onion & Potato Market APMC	Onion	Other	Local	28/08/2026	2800	4000	3400	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nashik	Perfect Krishi Market Yard Pvt Ltd, Dist Nashik	Pomegranate	Other	Local	28/08/2026	1300	12600	8300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Wheat	Other	Local	28/08/2026	2350	2650	2620	2026-08-29 01:36:29.384686+05:30
Maharashtra	Buldhana	Bsk Krishi Bazar Private Limited, Mehkar, Dist Buldhana	Soyabean	Other	Local	28/08/2026	4797	4797	4797	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Potato	Other	Local	28/08/2026	800	1200	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bitter gourd	Other	Local	28/08/2026	2000	2500	2250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cabbage	Other	Local	28/08/2026	1000	1000	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cauliflower	Other	Local	28/08/2026	500	2000	1250	2026-08-29 01:36:29.384686+05:30
Maharashtra	Yavatmal	Umarkhed APMC	Wheat	Other	Non-FAQ	29/08/2026	2200	2350	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cauliflower	Other	Local	29/08/2026	2000	3000	2433	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Guava	Other	Local	29/08/2026	2000	7500	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8000	8500	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Potato	Other	Local	29/08/2026	700	1100	900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5950	6380	6150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Murtizapur APMC	Wheat	Other	FAQ	29/08/2026	2590	2665	2630	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Cauliflower	Other	Local	29/08/2026	2200	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Coriander(Leaves)	Other	Local	29/08/2026	3	6	5	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Tomato	Local	Local	29/08/2026	1000	1200	1100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2500	2700	2700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Red gram/Arhar/Tur(whole)	Other	Local	29/08/2026	7400	7400	7400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Jowar(Sorghum)	Other	Local	29/08/2026	1900	1900	1900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Bengal Gram(Gram)(Whole)	Other	Local	29/08/2026	4400	5600	5439	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Wheat	Other	Local	29/08/2026	2000	2600	2517	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Murud APMC	Rice	Other	Local	29/08/2026	4000	4500	4250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beetroot	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Drumstick	Other	Local	29/08/2026	3000	3500	3250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Brinjal	Other	Local	29/08/2026	700	2100	1400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Green Chilli	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bottle gourd	Other	Local	29/08/2026	500	1000	750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	APMC Pombhurna	Paddy(Common)	Other	FAQ	29/08/2026	3350	3520	3460	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Pomegranate	Other	Local	29/08/2026	2500	15100	9100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Ginger(Green)	Other	Local	29/08/2026	9000	13500	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Cauliflower	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Carrot	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Methi(Leaves)	Other	Local	29/08/2026	7	10	8	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2100	2695	2501	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Pineapple	Other	Local	29/08/2026	1000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Apple	Other	Local	29/08/2026	11000	13000	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Beetroot	Other	Local	29/08/2026	2000	2500	2375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	1200	1150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Coriander(Leaves)	Other	Local	29/08/2026	1000	2500	2125	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Tomato	Local	Local	29/08/2026	1500	2000	1875	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	900	1800	1575	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Tomato	Local	Local	29/08/2026	1500	2250	1833	2026-08-29 21:41:40.15501+05:30
Maharashtra	Palghar	Kalyan APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	6400	6800	6600	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nanded	Loha APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7300	7951	7800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2300	2700	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Beed	Gevrai APMC	Wheat	Other	FAQ	27/08/2026	2600	2804	2650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Chilly Capsicum	Other	Local	27/08/2026	3000	3000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8099	8175	8137	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Tomato	Other	Local	27/08/2026	300	1000	650	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Jowar(Sorghum)	Other	Local	27/08/2026	3000	5000	4000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Murtizapur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5880	6260	6070	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Drumstick	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Daryapur APMC	Ox	Ox	Local	27/08/2026	36500	45600	42500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Morshi APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	27/08/2026	5800	5873	5836	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Rajgir	Other	Local	27/08/2026	6	7	7	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	2nd Sort	Local	27/08/2026	2200	3200	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Sesamum(Sesame,Gingelly,Til)	Other	Non-FAQ	27/08/2026	9699	9699	9699	2026-08-29 01:01:09.424856+05:30
Maharashtra	Yavatmal	Ramdev Krushi Bazaar, Digras road, Manora, Dist Washim	Soyabean	Other	Local	27/08/2026	5400	5600	5500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Maize	Yellow	Non-FAQ	27/08/2026	2300	2300	2300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bottle gourd	Other	Local	27/08/2026	2500	3000	2750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Washim	Manora APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	27/08/2026	2316	2316	2316	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	27/08/2026	8000	8500	8250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8000	8500	8300	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Murtizapur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	27/08/2026	8005	8215	8110	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Morshi APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	27/08/2026	7800	7995	7897	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	Ashti(Karanja) APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5885	6005	5920	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ridgeguard(Tori)	Other	Local	27/08/2026	2000	4000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Onion	Local	Local	27/08/2026	1000	4000	2500	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akola APMC	Garlic	Other	Local	27/08/2026	10000	21000	15000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Shrirampur(Belapur) APMC	Wheat	Other	Non-FAQ	27/08/2026	2200	2300	2250	2026-08-29 01:01:09.424856+05:30
Maharashtra	Amarawati	Morshi APMC	Maize	Other	Non-FAQ	27/08/2026	2000	2250	2125	2026-08-29 01:01:09.424856+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Brinjal	Other	Local	27/08/2026	3000	3000	3000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Bengal Gram(Gram)(Whole)	Other	FAQ	27/08/2026	5880	6105	6000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beans	Other	Local	27/08/2026	2500	5000	3750	2026-08-29 01:01:09.424856+05:30
Maharashtra	Akola	Akot APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	2400	2800	2800	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Wheat	Other	Non-FAQ	27/08/2026	2400	2550	2475	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Jowar(Sorghum)	Other	Non-FAQ	27/08/2026	3100	3700	3400	2026-08-29 01:01:09.424856+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	27/08/2026	7800	8200	8000	2026-08-29 01:01:09.424856+05:30
Maharashtra	Nagpur	Nagpur APMC	Bitter gourd	Other	Local	29/08/2026	1500	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	4000	5000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Spinach	Other	Local	29/08/2026	1500	2000	1800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Perfect Krishi Market Yard Pvt Ltd, Dist Nashik	Pomegranate	Other	Local	29/08/2026	1325	12650	8350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Pointed gourd(Parval)	Other	Local	29/08/2026	3000	3500	3375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Green Chilli	Other	Local	29/08/2026	1000	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Ambejogai APMC	Soyabean	Yellow	FAQ	29/08/2026	6100	6100	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Pomegranate	Other	Local	29/08/2026	3000	12000	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Potato	Local	Local	29/08/2026	800	1500	1150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shree Sairaj Krushi Market, Dist Ahilyanagar	Onion	Local	Local	29/08/2026	800	4250	2550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Telhara APMC	Soyabean	Yellow	FAQ	29/08/2026	5340	5800	5670	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Carrot	Other	Local	29/08/2026	800	1500	1150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1600	2500	2050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	1200	2500	1850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Coriander(Leaves)	Other	Local	29/08/2026	500	900	700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1600	2400	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Kannad APMC	Maize	Yellow	Non-FAQ	29/08/2026	2100	2100	2100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Wheat	Other	Local	29/08/2026	2400	2500	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Bajra(Pearl Millet/Cumbu)	Other	Local	29/08/2026	2000	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Jowar(Sorghum)	Other	FAQ	29/08/2026	3900	3900	3900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6000	6330	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guava	Other	Local	29/08/2026	1000	7000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	5000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	800	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Green Chilli	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Wheat	Other	Non-FAQ	29/08/2026	2340	2570	2430	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Wheat	Other	FAQ	29/08/2026	2600	2670	2650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	29/08/2026	6185	6185	6185	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	9450	9450	9450	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	29/08/2026	10000	10900	10500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6200	7975	7088	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	29/08/2026	5000	7600	6300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	1750	2625	2188	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6965	7231	7231	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Corriander seed	Other	Local	29/08/2026	7200	14000	14000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	BHOKARDAN APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2100	2300	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	BHOKARDAN APMC	Maize	Yellow	Non-FAQ	29/08/2026	2150	2300	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Tomato	Local	Local	29/08/2026	800	1300	1050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Pusad APMC	Wheat	Other	FAQ	29/08/2026	2585	2800	2710	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Vita APMC	Brinjal	Other	Local	29/08/2026	2500	3000	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Water Melon	Other	Local	29/08/2026	500	800	700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Green Chilli	Other	Local	29/08/2026	3000	5000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Bitter gourd	Other	Local	29/08/2026	2000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Ginger(Green)	Other	Local	29/08/2026	3500	11000	9125	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Pumpkin	Other	Local	29/08/2026	1000	1200	1150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Raddish	Other	Local	29/08/2026	1200	1500	1425	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Spinach	Other	Local	29/08/2026	2000	2500	2375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Drumstick	Other	Local	29/08/2026	3000	3500	3375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2585	3000	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Apple	Other	Local	29/08/2026	8000	15000	11500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Telhara APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7700	7990	7740	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Wheat	Other	FAQ	29/08/2026	2585	2700	2642	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6150	6012	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	29/08/2026	6800	7200	7000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Varud(Rajura Bazar) APMC	Green Chilli	Other	Local	29/08/2026	2000	2000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Chilly Capsicum	Other	Local	29/08/2026	1200	2000	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Papaya	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Ginger(Green)	Other	Local	29/08/2026	4000	11000	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2471	2471	2471	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Drumstick	Other	Local	29/08/2026	1700	2300	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Tomato	Other	Local	29/08/2026	700	1500	1100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Brinjal	Other	Local	29/08/2026	750	2300	1525	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Pineapple	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cauliflower	Other	Local	29/08/2026	640	1200	1040	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Guar	Other	Local	29/08/2026	1500	5000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Spinach	Other	Local	29/08/2026	200	500	300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Soyabean	Yellow	FAQ	29/08/2026	5650	5950	5700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	3500	3500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Jowar(Sorghum)	Red	Local	29/08/2026	3700	3700	3700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	4575	5000	4788	2026-08-29 21:41:40.15501+05:30
Maharashtra	Gadchiroli	Armori(Desaiganj) APMC	Paddy(Common)	Other	Non-FAQ	29/08/2026	2000	2200	2091	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Wheat	Other	FAQ	29/08/2026	2673	2673	2673	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Maize	Deshi Red	FAQ	29/08/2026	2400	2400	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	8900	8900	8900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8501	8501	8501	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Sesamum(Sesame,Gingelly,Til)	White	Non-FAQ	29/08/2026	9000	9000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Guar	Other	Local	29/08/2026	5000	5000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bitter gourd	Other	Local	29/08/2026	2000	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cabbage	Other	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Methi(Leaves)	Other	Local	29/08/2026	500	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Chilly Capsicum	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Beetroot	Other	Local	29/08/2026	1500	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Wheat	Kalyan	Non-FAQ	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6000	6000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	29/08/2026	3000	5360	4400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Wheat	Other	Non-FAQ	29/08/2026	2500	2580	2551	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	APMC Latur	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8271	8100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Wheat	Other	FAQ	29/08/2026	2585	2611	2598	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Safflower	Other	Non-FAQ	29/08/2026	5276	5365	5320	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5200	5874	5600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	9401	10201	9802	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Cauliflower	Other	Local	29/08/2026	3000	3500	3350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1500	2000	1850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Spinach	Other	Local	29/08/2026	2000	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Bhokar APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	29/08/2026	10700	10800	10750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2591	2726	2660	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Soyabean	Other	Local	29/08/2026	4000	6151	6075	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Rajgir	Other	Local	28/08/2026	3	5	4	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Brinjal	Other	Local	28/08/2026	300	3500	2100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Tomato	Local	Local	28/08/2026	300	1300	800	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bottle gourd	Other	Local	28/08/2026	1000	2000	1500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Ridgeguard(Tori)	Other	Local	28/08/2026	2000	5000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Chilli	Other	Local	28/08/2026	3000	4000	3500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Wheat	Maharashtra 2189	FAQ	28/08/2026	2600	2680	2643	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion Green	Other	Local	28/08/2026	4	12	8	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Coriander(Leaves)	Other	Local	28/08/2026	2	4	3	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Tomato	Other	Local	28/08/2026	500	1500	1000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Dudhani APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	28/08/2026	6500	8005	7278	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Karmala APMC	Wheat	Other	Non-FAQ	28/08/2026	2500	2500	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Green Chilli	Other	Local	28/08/2026	1500	3500	2000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Seetapal	Other	Local	28/08/2026	3000	6000	5000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Chilly Capsicum	Other	Local	28/08/2026	2000	4000	3000	2026-08-29 01:36:29.384686+05:30
Maharashtra	Satara	Patan APMC	Bhindi(Ladies Finger)	Other	Local	28/08/2026	2000	3000	2500	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Barshi APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	28/08/2026	8300	8300	8300	2026-08-29 01:36:29.384686+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Cucumbar(Kheera)	Other	Local	28/08/2026	1300	5900	4100	2026-08-29 01:36:29.384686+05:30
Maharashtra	Beed	Kille Dharur APMC	Wheat	Other	Non-FAQ	28/08/2026	2400	2571	2570	2026-08-29 01:36:29.384686+05:30
Maharashtra	Nashik	Nasik APMC	Cabbage	Other	Local	29/08/2026	585	1500	1210	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Sweet Pumpkin	Other	Local	29/08/2026	300	1000	650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Onion	Red	Local	29/08/2026	4500	5000	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Chilly Capsicum	Other	Local	29/08/2026	500	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Tomato	Other	Local	29/08/2026	200	1000	600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Guar	Other	Local	29/08/2026	4000	8000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Potato	Other	Local	29/08/2026	800	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Ragi(Finger Millet)	Other	FAQ	29/08/2026	5300	5900	5600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6200	7200	6700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Seetapal	Other	Local	29/08/2026	6000	6000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Karjat(Raigad) APMC	Paddy(Common)	Other	FAQ	29/08/2026	2369	2450	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Carrot	Other	Local	29/08/2026	4500	5000	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cabbage	Other	Local	29/08/2026	900	1100	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Methi(Leaves)	Other	Local	29/08/2026	3	12	6	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Spinach	Other	Local	29/08/2026	6	10	8	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Pomegranate	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	400	3000	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Cabbage	Other	Local	29/08/2026	200	1100	650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Peas Wet	Other	Local	29/08/2026	4500	7100	5800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Green Chilli	Other	Local	29/08/2026	500	5000	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Onion	Chinchwad	Local	29/08/2026	600	3900	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Beans	Other	Local	29/08/2026	1000	3210	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	500	1700	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Brinjal	Other	Local	29/08/2026	1000	3000	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Green Chilli	Other	Local	29/08/2026	2000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	3000	3500	3250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2600	3000	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Brinjal	Other	Local	29/08/2026	4000	8000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Brinjal	Other	Local	29/08/2026	500	5000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Arvi APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6600	7900	7800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Wheat	Other	FAQ	29/08/2026	2625	2715	2660	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2150	2280	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8280	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Wheat	Other	Non-FAQ	29/08/2026	2300	2580	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	4250	5300	4800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8365	8100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Mustard	Other	FAQ	29/08/2026	7500	7500	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6100	6200	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Bengal Gram(Gram)(Whole)	Kabul Small	FAQ	29/08/2026	7000	7000	7000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6500	6500	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Soyabean	Yellow	FAQ	29/08/2026	5750	5750	5750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Paranda APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8150	8600	8400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Lime	Other	Local	29/08/2026	1000	3500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	1800	6000	4800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Green Chilli	Other	Local	29/08/2026	4000	4500	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Drumstick	Other	Local	29/08/2026	4000	4000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Lime	Other	Local	29/08/2026	5000	11000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Carrot	Other	Local	29/08/2026	2200	2200	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2300	2425	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	29/08/2026	8000	8000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Parola APMC	Jowar(Sorghum)	Jowar ( White)	Local	29/08/2026	2400	2400	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Wheat	Other	FAQ	29/08/2026	2585	2613	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	APMC Latur	Soyabean	Yellow	FAQ	29/08/2026	5899	6331	6260	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	APMC Latur	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	8768	9500	9400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Wheat	Other	FAQ	29/08/2026	3000	4100	3550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Rice	1009 Kar	Local	29/08/2026	3150	9400	6275	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Groundnut	Other	FAQ	29/08/2026	7263	8300	7781	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7700	7999	7850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6076	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Ginger(Green)	Other	Local	29/08/2026	7000	8000	7750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Potato	Local	Local	29/08/2026	2000	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Carrot	Other	Local	29/08/2026	2500	3000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Methi(Leaves)	Other	Local	29/08/2026	4500	5000	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Chilly Capsicum	Other	Local	29/08/2026	4000	4500	4400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Tomato	Local	Local	29/08/2026	2000	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Green Chilli	Other	Local	29/08/2026	3000	3500	3350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Udgir APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8200	8490	8345	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Udgir APMC	Soyabean	Other	FAQ	29/08/2026	6150	6200	6175	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Mudkhed APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2230	2230	2230	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Bottle gourd	Other	Local	29/08/2026	535	1665	1070	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Chilly Capsicum	Other	Local	29/08/2026	1875	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	3335	5165	4165	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Yeola APMC	Onion	Unhali	Local	29/08/2026	571	4190	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	800	1250	1025	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Beans	Other	Local	29/08/2026	1100	3500	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Bitter gourd	Other	Local	29/08/2026	600	2500	1550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Drumstick	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Murum APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7810	7810	7810	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Agriculture Produce Market Committee Umarga	Soyabean	Yellow	FAQ	29/08/2026	6025	6025	6025	2026-08-29 21:41:40.15501+05:30
Maharashtra	Parbhani	Pathari APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	5100	5100	5100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cabbage	Other	Local	29/08/2026	700	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Chilly Capsicum	Other	Local	29/08/2026	1000	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Spinach	Other	Local	29/08/2026	300	1000	600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Peas Wet	Other	Local	29/08/2026	5000	7000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Green Chilli	Other	Local	29/08/2026	2000	3500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Ground Nut Seed	Local	Local	29/08/2026	13000	13800	13400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Corriander seed	Other	Local	29/08/2026	11500	13500	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bottle gourd	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Beans	Other	Local	29/08/2026	3500	5000	4250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Coriander(Leaves)	Other	Local	29/08/2026	4	7	6	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Little gourd(Kundru)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Green Chilli	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pomegranate	Other	Local	29/08/2026	8000	8000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Tomato	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Bitter gourd	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cauliflower	Other	Local	29/08/2026	1600	2400	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion	Local	Local	29/08/2026	2600	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Raddish	Other	Local	29/08/2026	10	20	15	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	2000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Tomato	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Brinjal	Other	Local	29/08/2026	1400	3500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guava	Other	Local	29/08/2026	2500	4500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Carrot	Other	Local	29/08/2026	500	2700	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	300	3000	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Little gourd(Kundru)	Other	Local	29/08/2026	500	3400	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cabbage	Other	Local	29/08/2026	500	1300	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	3000	3500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Bottle gourd	Other	Local	29/08/2026	1000	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Cauliflower	Other	Local	29/08/2026	2000	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Chilly Capsicum	Other	Local	29/08/2026	2500	3500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Snakeguard	Other	Local	29/08/2026	2500	3500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Peas Wet	Other	Local	29/08/2026	8000	11000	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Brinjal	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Maize	Deshi Red	FAQ	29/08/2026	2500	2550	2525	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Onion	Local	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Pandharpur APMC	Tomato	Other	Local	29/08/2026	500	1000	700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Onion	Local	Local	29/08/2026	800	2075	2075	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	2500	7600	3800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bitter gourd	Other	Local	29/08/2026	1500	2700	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Wheat	Other	FAQ	29/08/2026	2585	2600	2595	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7300	7900	7600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Sindi APMC	Wheat	Other	Non-FAQ	29/08/2026	2450	2580	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Sindi APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Maize	Deshi Red	Non-FAQ	29/08/2026	2250	2250	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	29/08/2026	5600	7500	5600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Gadchiroli	Armori APMC	Paddy(Common)	Other	FAQ	29/08/2026	3060	3580	3120	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	3300	3300	3300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Onion	Other	Local	29/08/2026	1000	4500	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Coriander(Leaves)	Other	Local	29/08/2026	1500	3500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bitter gourd	Other	Local	29/08/2026	2000	2500	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Drumstick	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	1500	3000	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Potato	Other	Local	29/08/2026	700	1300	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nandurbar	Dhadgaon APMC	Maize	Other	Non-FAQ	29/08/2026	1800	1850	1825	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Wheat	Other	Non-FAQ	29/08/2026	2400	2500	2490	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Pomegranate	Other	Local	29/08/2026	5000	10000	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Onion	Red	Local	29/08/2026	2500	5000	3750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cabbage	Other	Local	29/08/2026	1400	1500	1475	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Chilly Capsicum	Other	Local	29/08/2026	2500	3000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Spinach	Other	Local	29/08/2026	500	3000	1821	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1100	2800	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Cucumbar(Kheera)	Other	Local	29/08/2026	945	2100	1575	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Green Chilli	Other	Local	29/08/2026	2200	4000	3100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Garlic	Other	Local	29/08/2026	7000	17500	12250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Potato	Other	Local	29/08/2026	900	1800	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	850	1200	1020	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Tomato	Other	Local	29/08/2026	1030	1500	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Wheat	Other	FAQ	29/08/2026	2640	2680	2675	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2000	3400	2251	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Wheat	Other	Non-FAQ	29/08/2026	2200	2500	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Onion	Other	Local	29/08/2026	2000	4500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8295	8175	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Potato	Other	Local	29/08/2026	800	1000	900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cauliflower	Other	Local	29/08/2026	800	900	850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Brinjal	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Buldhana(Dhad) APMC	Maize	Yellow	Non-FAQ	29/08/2026	2000	2390	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Beetroot	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Brahmpuri APMC	Paddy(Common)	Other	FAQ	29/08/2026	3000	3100	3050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Potato	Local	Local	29/08/2026	1000	1500	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Cauliflower	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Onion	Unhali	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Tomato	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	3000	3500	3250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Bitter gourd	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2400	2429	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Chikali APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6800	7600	7200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Chikali APMC	Wheat	Other	Non-FAQ	29/08/2026	2000	2450	2225	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Red gram/Arhar/Tur(whole)	Other	Local	29/08/2026	6000	7700	7510	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Black Gram(Urd Beans)(Whole)	Other	Local	29/08/2026	5200	6000	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akot APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	29/08/2026	6300	6360	6300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Vita APMC	Tomato	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Vita APMC	Green Chilli	Other	Local	29/08/2026	3000	3500	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Chilly Capsicum	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	2000	3600	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Beans	Other	Local	29/08/2026	2500	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	4801	5790	5560	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Potato	Local	Local	29/08/2026	800	1100	1025	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1000	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Carrot	Other	Local	29/08/2026	1500	2200	2025	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Chilly Capsicum	Other	Local	29/08/2026	1500	2000	1875	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2000	2770	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2650	2700	2650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Pomegranate	Other	Local	29/08/2026	1000	12000	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Ambejogai APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5550	5550	5550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Pineapple	Other	Local	29/08/2026	3000	6000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Ginger(Green)	Other	Local	29/08/2026	8000	16000	12000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Papaya	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Telhara APMC	Wheat	Other	FAQ	29/08/2026	2585	2640	2590	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Telhara APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2400	2600	2550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Telhara APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6000	6150	6080	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Maize	Deshi Red	Non-FAQ	29/08/2026	1700	1800	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	29/08/2026	6500	7200	6850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Sesamum(Sesame,Gingelly,Til)	White	FAQ	29/08/2026	10500	11500	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Jowar(Sorghum)	Other	FAQ	29/08/2026	4292	4292	4292	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Apple	Other	Local	29/08/2026	13000	19000	16000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Spinach	Other	Local	29/08/2026	400	700	550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Wheat	Sharbati	FAQ	29/08/2026	2635	4170	3680	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Papaya	Other	Local	29/08/2026	1500	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Potato	Local	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion Green	Other	Local	29/08/2026	500	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bitter gourd	Other	Local	29/08/2026	800	2500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Cabbage	Other	Local	29/08/2026	400	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Tomato	Other	Local	29/08/2026	200	1100	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Brinjal	Other	Local	29/08/2026	500	2500	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5450	5610	5550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7370	7850	7710	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Agricultural Produce Market Committee Nandgaon Khandeshwar	Soyabean	Yellow	FAQ	29/08/2026	5450	5710	5650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Beed APMC	Wheat	Other	Non-FAQ	29/08/2026	2410	2520	2470	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Wheat	Other	Non-FAQ	29/08/2026	2535	2535	2535	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Maize	Yellow	Non-FAQ	29/08/2026	2205	2205	2205	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	29/08/2026	5000	5350	5100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Soyabean	Yellow	FAQ	29/08/2026	5570	5570	5570	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2500	2690	2631	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	10301	10301	10301	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	29/08/2026	5900	6200	6050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Soyabean	Other	Local	29/08/2026	5500	6001	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Achalpur APMC	Wheat	Other	Non-FAQ	29/08/2026	2400	2550	2475	2026-08-29 21:41:40.15501+05:30
Maharashtra	Gadchiroli	Armori(Desaiganj) APMC	Paddy(Common)	Other	FAQ	29/08/2026	2600	3233	3233	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Partur APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2300	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Jowar(Sorghum)	Other	Local	29/08/2026	3100	3900	3900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Maize	Deshi Red	Non-FAQ	29/08/2026	2300	2300	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	29/08/2026	5200	5200	5200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	BHOKARDAN APMC	Wheat	Other	Non-FAQ	29/08/2026	2400	2550	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Sweet Pumpkin	Other	Local	29/08/2026	500	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cauliflower	Other	Local	29/08/2026	1200	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2300	2500	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	APMC Latur	Safflower	Other	Non-FAQ	29/08/2026	4100	5600	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur(Laxmipuri) APMC	Jowar(Sorghum)	Other	Local	29/08/2026	3850	5800	4825	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Soyabean	Yellow	FAQ	29/08/2026	5328	6130	5729	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Soyabean	Yellow	FAQ	29/08/2026	5800	6100	5950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Aurad Shahajani APMC	Wheat	Maharashtra 2189	Non-FAQ	29/08/2026	2560	2560	2560	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Umared APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5880	5900	5890	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Cabbage	Other	Local	29/08/2026	2000	2500	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Bhokar APMC	Wheat	Other	Non-FAQ	29/08/2026	2300	2400	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Bhokar APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2300	2300	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Onion	Unhali	Local	29/08/2026	1200	4299	3700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Bitter gourd	Other	Local	29/08/2026	2500	3750	3085	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Banana	Khandesh	Local	29/08/2026	700	1600	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Lime	Other	Local	29/08/2026	3500	4500	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Guava	Other	Local	29/08/2026	3000	6500	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Apple	Other	Local	29/08/2026	7000	20000	15000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon(Vinchur) APMC	Onion	Unhali	Local	29/08/2026	1000	4000	3650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Jowar(Sorghum)	Jowar ( White)	Local	29/08/2026	3000	5000	4900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8000	8500	8400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Wheat	Other	Non-FAQ	29/08/2026	2400	2580	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Guar	Other	Local	29/08/2026	1100	3000	2050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Murum APMC	Soyabean	Yellow	FAQ	29/08/2026	5900	5900	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Parbhani	Pathari APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5800	5800	5800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bitter gourd	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Tomato	Other	Local	29/08/2026	600	1300	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Brinjal	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cauliflower	Other	Local	29/08/2026	1000	1800	1400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Carrot	Other	Local	29/08/2026	1500	2000	1700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Lentil(Masur)(Whole)	Other	FAQ	29/08/2026	7100	7400	7250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Maize	Deshi Red	FAQ	29/08/2026	2600	2700	2650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Banana	Other	Local	29/08/2026	2000	8000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Orange	Other	Local	29/08/2026	10000	15000	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Ginger(Green)	Other	Local	29/08/2026	8000	10000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Carrot	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion	Local	Local	29/08/2026	700	2500	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bitter gourd	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cabbage	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Spinach	Other	Local	29/08/2026	7	8	8	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mint(Pudina)	Other	Local	29/08/2026	7	10	9	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Water Melon	Other	Local	29/08/2026	1000	1000	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Apple	Other	Local	29/08/2026	10000	15000	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Coriander(Leaves)	Other	Local	29/08/2026	3	7	5	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Potato	Other	Local	29/08/2026	1400	2000	1800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Beetroot	Other	Local	29/08/2026	400	3800	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Beans	Other	Local	29/08/2026	600	4000	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	500	4500	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Beetroot	Other	Local	29/08/2026	1000	3520	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Cauliflower	Other	Local	29/08/2026	1000	2360	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Tomato	Other	Local	29/08/2026	800	1200	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Green Chilli	Other	Local	29/08/2026	4000	4500	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Guar	Other	Local	29/08/2026	3000	4000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Coriander(Leaves)	Other	Local	29/08/2026	8	10	9	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Green Chilli	Other	Local	29/08/2026	2500	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	FAQ	29/08/2026	6000	6200	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	9000	10300	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Potato	Local	Local	29/08/2026	1400	1500	1450	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Tomato	Local	Local	29/08/2026	300	1500	1100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5350	5850	5600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Maize	Deshi Red	FAQ	29/08/2026	2400	2525	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC Yawal	Banana	Other	Local	29/08/2026	1550	2250	1560	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Manmad APMC	Onion	Unhali	Local	29/08/2026	1000	3990	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Wheat	Other	FAQ	29/08/2026	2670	2725	2695	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	5000	5000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cauliflower	Other	Local	29/08/2026	750	1750	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Green Chilli	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Alephata) APMC	Pomegranate	Other	Local	29/08/2026	5500	27500	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Pimpalgaon Baswant APMC	Pomegranate	Other	Local	29/08/2026	250	10500	7750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Spinach	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Brinjal	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Green Chilli	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Guar	Other	Local	29/08/2026	6000	6000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7800	7993	7900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	4500	5000	4900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon APMC	Onion	Unhali	Local	29/08/2026	1000	4200	3751	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Raddish	Other	Local	29/08/2026	800	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Ginger(Green)	Other	Local	29/08/2026	7000	15000	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	500	2200	1290	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Brinjal	Other	Local	29/08/2026	875	3500	2205	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Onion	Unhali	Local	29/08/2026	700	4250	2475	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Chilly Capsicum	Other	Local	29/08/2026	500	2200	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Drumstick	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Tomato	Other	Local	29/08/2026	200	1000	600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Orange	Other	Local	29/08/2026	1000	8000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Seetapal	Other	Local	29/08/2026	1500	7000	4250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Pineapple	Other	Local	29/08/2026	5000	10500	7750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Water Melon	Other	Local	29/08/2026	600	700	650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	1000	3500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1535	2000	1855	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Dindori(Vani) APMC	Onion	Unhali	Local	29/08/2026	3511	4322	4011	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Maize	Other	Non-FAQ	29/08/2026	2200	2200	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	29/08/2026	11025	11025	11025	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Bengal Gram(Gram)(Whole)	Kabul Small	Non-FAQ	29/08/2026	4625	5535	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Wheat	Other	FAQ	29/08/2026	2585	2700	2620	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Murtizapur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5880	6320	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Ginger(Green)	Other	Local	29/08/2026	8000	10000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	900	1000	950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Cabbage	Other	Local	29/08/2026	900	1000	950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Tomato	Other	Local	29/08/2026	500	1000	750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Potato	Other	Local	29/08/2026	1000	1300	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Guar	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Bitter gourd	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Methi(Leaves)	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1000	1000	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Tomato	Other	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	APMC Chimur	Paddy(Common)	Other	FAQ	29/08/2026	3100	3500	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Gadchiroli	Gadchiroli APMC	Paddy(Common)	Other	FAQ	29/08/2026	3040	3560	3100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dhule	Dhule APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2225	2416	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Bitter gourd	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Coriander(Leaves)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Brinjal	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Brinjal	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	1st Sort	Local	29/08/2026	3500	4400	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Krushna Krishi Bazar, Washim	Red gram/Arhar/Tur(whole)	Other	Local	29/08/2026	7000	8000	7646	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Lime	Other	Local	29/08/2026	6000	6000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Cauliflower	Other	Local	29/08/2026	500	700	600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Guar	Other	Local	29/08/2026	7000	7000	7000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bitter gourd	Other	Local	29/08/2026	2000	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Chilly Capsicum	Other	Local	29/08/2026	600	2000	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Garlic	Other	Local	29/08/2026	9000	13000	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akot APMC	Wheat	147 Average	FAQ	29/08/2026	2600	2625	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akot APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2375	2630	2630	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2500	2700	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Jowar(Sorghum)	Other	FAQ	29/08/2026	3750	5450	4600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8000	8500	8250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	3000	3700	3350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	2500	3000	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Jowar(Sorghum)	Jowar ( White)	Local	29/08/2026	2000	2351	2101	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6900	7100	6900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Bottle gourd	Other	Local	29/08/2026	1000	1500	1375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Onion	Red	Local	29/08/2026	3500	4000	3875	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Little gourd(Kundru)	Other	Local	29/08/2026	1500	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Brinjal	Other	Local	29/08/2026	1000	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Lime	Other	Local	29/08/2026	4000	5000	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Chili Red	Other	Local	29/08/2026	14000	18000	17000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Perfect Krushi Market Yard, Tal Madha, Dist Solapur	Pomegranate	Other	Local	29/08/2026	1400	13200	9050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Chikoos(Sapota)	Other	Local	29/08/2026	2500	5500	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Seetapal	Other	Local	29/08/2026	3000	6500	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Garlic	Other	Local	29/08/2026	7000	19000	13000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Palghar	Palghar APMC	Rice	1009 Kar	Local	29/08/2026	5501	5501	5501	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Soyabean	Other	Local	29/08/2026	5700	6075	5887	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2400	2600	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2900	2900	2900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bottle gourd	Other	Local	29/08/2026	700	900	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guar	Other	Local	29/08/2026	2500	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Cabbage	Other	Local	29/08/2026	1000	1500	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Onion	Other	Local	29/08/2026	1700	4200	2950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Garlic	Other	Local	29/08/2026	6200	23000	14600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Green Chilli	Other	Local	29/08/2026	1200	1800	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Kannad APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2200	2525	2363	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Chikoos(Sapota)	Other	Local	29/08/2026	2000	3500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Beetroot	Other	Local	29/08/2026	1500	2000	1800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	600	2000	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Onion	Red	Local	29/08/2026	500	5300	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Chilly Capsicum	Other	Local	29/08/2026	500	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Water Melon	Other	Local	29/08/2026	500	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Beed APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	8900	9225	9062	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Maize	Yellow	FAQ	29/08/2026	2490	2515	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	9000	9000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7360	7360	7360	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	5250	5250	5250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Onion	Unhali	Local	29/08/2026	2050	4145	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Soyabean	Yellow	FAQ	29/08/2026	5500	6300	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Wheat	Other	Non-FAQ	29/08/2026	2450	2570	2510	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Maize	Deshi Red	Non-FAQ	29/08/2026	2100	2300	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Wheat	Other	FAQ	29/08/2026	2598	2700	2612	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Jowar(Sorghum)	Red	Local	29/08/2026	2100	3950	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5892	6150	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8011	8201	8100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Achalpur APMC	Soyabean	Other	Local	29/08/2026	5800	6100	5950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Hingoli	Hingoli APMC	Soyabean	Other	Local	29/08/2026	5665	6200	5932	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Partur APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2585	2751	2590	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2217	2360	2360	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Green Gram(Moong)(Whole)	Other	Non-FAQ	29/08/2026	6100	6100	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Ajwan	Other	Local	29/08/2026	13000	13000	13000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Mango(Raw-Ripe)	Other	Local	29/08/2026	6000	6000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Coriander(Leaves)	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Spinach	Other	Local	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Brinjal	Other	Local	29/08/2026	3000	6000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Little gourd(Kundru)	Other	Local	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Jowar(Sorghum)	Other	Local	29/08/2026	2700	3330	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Jowar(Sorghum)	Jowar ( White)	Non-FAQ	29/08/2026	2532	2611	2585	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	APMC PACHORA	Maize	Other	FAQ	29/08/2026	2415	2456	2435	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	1600	3301	2385	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6130	5937	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Umared APMC	Wheat	Other	Non-FAQ	29/08/2026	2450	2550	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Bottle gourd	Other	Local	29/08/2026	1000	1500	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Pumpkin	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Coriander(Leaves)	Other	Local	29/08/2026	2500	3000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Udgir APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6000	6100	6050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Bhokar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7741	7741	7741	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Bhokar APMC	Soyabean	Yellow	FAQ	29/08/2026	5800	5800	5800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Kalvan APMC	Onion	Unhali	Local	29/08/2026	1200	4940	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1666	3333	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Cauliflower	Other	Local	29/08/2026	720	1785	1140	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6000	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7000	7800	7700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	600	2000	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Brinjal	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Green Chilli	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Parbhani	Pathari APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2000	2401	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Parbhani	Pathari APMC	Wheat	Other	Non-FAQ	29/08/2026	2400	2400	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Drumstick	Other	Local	29/08/2026	3000	4500	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Bajra(Pearl Millet/Cumbu)	Other	FAQ	29/08/2026	3400	3800	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Jowar(Sorghum)	Other	FAQ	29/08/2026	6200	6600	6400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Potato	Local	Local	29/08/2026	1000	1100	1050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Guar	Other	Local	29/08/2026	5000	6000	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Onion Green	Other	Local	29/08/2026	10	10	10	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Garlic	Other	Local	29/08/2026	8000	12000	10000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Pointed gourd(Parval)	Other	Local	29/08/2026	5000	5000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Bottle gourd	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Guar	Other	Local	29/08/2026	8000	10000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Beans	Other	Local	29/08/2026	4500	5000	4750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Panvel APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Carrot	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Onion Green	Other	Local	29/08/2026	4	14	8	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bitter gourd	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Chilly Capsicum	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Rajgir	Other	Local	29/08/2026	3	6	5	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Drumstick	Other	Local	29/08/2026	2500	4500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Chilli	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Seetapal	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Bottle gourd	Other	Local	29/08/2026	300	2000	1100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Guar	Other	Local	29/08/2026	1000	9500	5300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Bitter gourd	Other	Local	29/08/2026	500	4000	2100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Chilly Capsicum	Other	Local	29/08/2026	500	3000	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Brinjal	Other	Local	29/08/2026	400	3000	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Guar	Other	Local	29/08/2026	3000	9050	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1000	4600	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Bitter gourd	Other	Local	29/08/2026	3000	3200	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Brinjal	Other	Local	29/08/2026	1000	1600	1600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Ginger(Green)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Cauliflower	Other	Local	29/08/2026	2000	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Ginger(Green)	Other	Local	29/08/2026	9000	13000	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vai APMC	Bottle gourd	Other	Local	29/08/2026	1800	2200	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Jowar(Sorghum)	Other	FAQ	29/08/2026	3800	4800	4200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	500	2000	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1700	8600	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Arvi APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	5000	5200	5100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Soyabean	Other	Local	29/08/2026	5875	6190	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Sesamum(Sesame,Gingelly,Til)	Other	FAQ	29/08/2026	11500	11900	11750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6295	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Sindi APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5200	5230	5220	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Wheat	Other	Non-FAQ	29/08/2026	2350	2350	2350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2300	5300	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Green Gram(Moong)(Whole)	Other	FAQ	29/08/2026	9700	9700	9700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8350	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Soyabean	Yellow	Non-FAQ	29/08/2026	5000	5000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Ner Parasopant APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7630	7905	7805	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Cabbage	Other	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Onion	Red	Local	29/08/2026	1250	4000	2625	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Cabbage	Other	Local	29/08/2026	600	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Raddish	Other	Local	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Pomegranate	Other	Local	29/08/2026	5000	13000	9000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2200	2600	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6024	5900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8186	8050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Pimpalgaon Baswant(Saykheda) APMC	Onion	Unhali	Local	29/08/2026	1500	4199	3701	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Banana	Other	Local	29/08/2026	1600	2500	2050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bottle gourd	Other	Local	29/08/2026	375	1500	794	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Guar	Other	Local	29/08/2026	3000	8000	5958	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	250	2000	1028	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Pumpkin	Other	Local	29/08/2026	1000	1500	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Green Chilli	Other	Local	29/08/2026	3000	4000	3166	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	AGRICULTURE PRODUCE MARKET COMITEE CHANDWAD	Onion	Unhali	Local	29/08/2026	1210	4540	3780	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Bottle gourd	Other	Local	29/08/2026	100	1300	700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Carrot	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Bitter gourd	Other	Local	29/08/2026	1000	3500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Brinjal	Other	Local	29/08/2026	500	3000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Banana	Other	Local	29/08/2026	1600	4000	2800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Pumpkin	Other	Local	29/08/2026	1015	1500	1305	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nanded	Himayatnagar APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6500	7000	6800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2080	2080	2080	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6020	6020	6020	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Onion	Unhali	Local	29/08/2026	1000	4141	3550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Wheat	Other	Non-FAQ	29/08/2026	2300	2500	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Wheat	Other	FAQ	29/08/2026	2700	2700	2700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	29/08/2026	7005	7005	7005	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	29/08/2026	6100	7095	6990	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Chilly Capsicum	Other	Local	29/08/2026	500	1000	750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	2500	3000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bottle gourd	Other	Local	29/08/2026	300	500	400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Ginger(Green)	Other	Local	29/08/2026	8000	12000	10000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cauliflower	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	800	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Cabbage	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Pumpkin	Other	Local	29/08/2026	800	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Garlic	Other	Local	29/08/2026	13500	21000	16000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Green Chilli	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dhule	Dhule APMC	Onion	Red	Local	29/08/2026	1200	4000	2850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Mul APMC	Paddy(Common)	Other	FAQ	29/08/2026	3600	4000	3800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dhule	Sakri APMC	Onion	Unhali	Local	29/08/2026	3025	3675	3400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Ramtek APMC	Green Chilli	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Onion	Local	Local	29/08/2026	1800	4000	2900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Pimpri) APMC	Spinach	Other	Local	29/08/2026	6	8	7	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2290	2901	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Wheat	Maharashtra 2189	FAQ	29/08/2026	2700	2700	2700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Wheat	Maharashtra 2189	Non-FAQ	29/08/2026	2550	2550	2550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	2nd Sort	Local	29/08/2026	2500	3400	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Wheat	Other	Non-FAQ	29/08/2026	2400	2580	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	4900	5230	5070	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Laxmi-Sopan Agriculture Produce Marketing Co Ltd, Barshi, Dist Solapur	Onion	Other	Local	29/08/2026	600	3200	2600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Shekari Krushi Khajgi Bazar, Arni, Dist Yavatmal	Wheat	Other	Local	29/08/2026	2451	2540	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Bhandara	Bhandara APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5700	5700	5700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Bhandara	Bhandara APMC	Wheat	Maharashtra 2189	Non-FAQ	29/08/2026	2500	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ginger(Green)	Other	Local	29/08/2026	9000	14000	12000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Carrot	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Beans	Other	Local	29/08/2026	2000	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1500	3000	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akot APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8100	8195	8100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Wheat	Other	Non-FAQ	29/08/2026	2300	2550	2425	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Onion	Local	Local	29/08/2026	1500	4000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Lonar APMC	Turmeric	Other	Local	29/08/2026	15500	16600	16050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Pusad APMC	Jowar(Sorghum)	Other	Local	29/08/2026	2290	2500	2405	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Vita APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	2000	2500	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Vita APMC	Onion	Other	Local	29/08/2026	3500	4000	3600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Potato	Other	Local	29/08/2026	1000	1400	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Beetroot	Other	Local	29/08/2026	2000	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Cabbage	Other	Local	29/08/2026	500	1000	800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Garlic	Other	Local	29/08/2026	7500	12000	11500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Spinach	Other	Local	29/08/2026	5	10	8	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Drumstick	Other	Local	29/08/2026	2500	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Brinjal	Other	Local	29/08/2026	1000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Akluj APMC	Guar	Other	Local	29/08/2026	5000	10000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Wheat	Other	Non-FAQ	29/08/2026	2000	2480	2450	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Maize	Yellow	FAQ	29/08/2026	2401	2546	2452	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Malegaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	9500	10001	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Guar	Other	Local	29/08/2026	2000	8000	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Mango(Raw-Ripe)	Other	Local	29/08/2026	5000	6000	5750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Onion	White	Local	29/08/2026	4000	4500	4375	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Cabbage	Other	Local	29/08/2026	1000	1200	1150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Garlic	Other	Local	29/08/2026	6000	20000	16500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Methi(Leaves)	Other	Local	29/08/2026	3000	4000	3750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Tomato	Other	Local	29/08/2026	1200	1800	1650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Nagpur APMC	Pomegranate	Other	Local	29/08/2026	2000	6000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Pathardi APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2000	3200	2550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon(Bodhegaon) APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2550	2650	2550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Sangamner APMC	Tomato	Other	Local	29/08/2026	250	750	500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Water Melon	Other	Local	29/08/2026	700	1300	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	2000	4500	3250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Orange	Other	Local	29/08/2026	3000	6000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Onion	Local	Local	29/08/2026	1500	4300	2900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Sangli(Phale, Bhajipala Market) APMC	Guava	Other	Local	29/08/2026	2000	7000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Palghar	Palghar APMC	Wheat	Other	FAQ	29/08/2026	3320	3320	3320	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Amarawati APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8325	8162	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Pomegranate	Other	Local	29/08/2026	700	14000	7350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Lime	Other	Local	29/08/2026	5000	7000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Potato	Other	Local	29/08/2026	1000	1800	1400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Guava	Other	Local	29/08/2026	3500	5500	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Bitter gourd	Other	Local	29/08/2026	1500	4000	2750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Wheat	Other	FAQ	29/08/2026	2624	2660	2642	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Chattrapati Sambhajinagar APMC	Methi(Leaves)	Other	Local	29/08/2026	700	1200	950	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Kannad APMC	Wheat	Other	Non-FAQ	29/08/2026	2451	2575	2513	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Maize	Other	Local	29/08/2026	2200	2400	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Omchatinya Multi State Agro Purpose Co-Op Society, Dist Ahilyanagar	Green Gram(Moong)(Whole)	Other	Local	29/08/2026	7500	8300	7700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Rice	Other	Local	29/08/2026	3570	7325	4205	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Black Gram(Urd Beans)(Whole)	Mogan Medium	FAQ	29/08/2026	7900	8600	8450	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Apple	Other	Local	29/08/2026	5000	17000	11000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Carrot	Other	Local	29/08/2026	1000	4000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Beans	Other	Local	29/08/2026	1000	2200	1800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Coriander(Leaves)	Other	Local	29/08/2026	200	400	300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Pomegranate	Other	Local	29/08/2026	1000	15000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	SHRI.SIDDHESHWAR  APMC	Lime	Other	Local	29/08/2026	2000	11000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Beed APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2440	2700	2532	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Beed APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2495	3255	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Beed APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	6500	6500	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	1940	2740	2560	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Malkapur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8300	8505	8400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Paithan APMC	Wheat	Bansi	FAQ	29/08/2026	2660	2811	2680	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8350	8175	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Khamgaon APMC	Sesamum(Sesame,Gingelly,Til)	White	Non-FAQ	29/08/2026	9500	9500	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	8770	10500	8900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Majalgaon APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2100	2600	2400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Achalpur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7500	7900	7775	2026-08-29 21:41:40.15501+05:30
Maharashtra	Hingoli	Hingoli APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7150	7630	7390	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Wheat	Other	Non-FAQ	29/08/2026	2555	2555	2555	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	2300	2595	2595	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Amalner APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	29/08/2026	5800	5852	5852	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Banana - Green	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Tomato	Other	Local	29/08/2026	1000	1500	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Bhusaval APMC	Peas Wet	Other	Local	29/08/2026	8000	8000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	APMC Latur	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	5875	6250	6050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Latur	Ahmedpur APMC	Red gram/Arhar/Tur(whole)	Other	FAQ	29/08/2026	8000	8191	8095	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Umared APMC	Rice	Other	Local	29/08/2026	4000	6000	5000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Umared APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5800	5870	5840	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Onion	Local	Local	29/08/2026	3500	4000	3750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kamthi APMC	Brinjal	Other	Local	29/08/2026	1500	2000	1850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Lasalgaon(Niphad) APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2641	2641	2641	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Tender Coconut	Other	Local	29/08/2026	4000	6000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Sweet Pumpkin	Other	Local	29/08/2026	1000	1400	1200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Guar	Other	Local	29/08/2026	3000	5000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Pomegranate	Other	Local	29/08/2026	400	9500	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Papaya	Other	Local	29/08/2026	1000	3500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Nasik APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	2400	1775	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Tuljapur APMC	Soyabean	Other	Local	29/08/2026	4500	6000	5800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Pomegranate	Other	Local	29/08/2026	3000	5500	4250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Dharashiv APMC	Cabbage	Other	Local	29/08/2026	1300	3000	2150	2026-08-29 21:41:40.15501+05:30
Maharashtra	Dharashiv	Agriculture Produce Market Committee Umarga	Wheat	Maharashtra 2189	FAQ	29/08/2026	2650	2650	2650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Parbhani	Pathari APMC	Jowar(Sorghum)	Jowar ( White)	Local	29/08/2026	2100	3000	2850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Onion	Other	Local	29/08/2026	1500	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Garlic	Other	Local	29/08/2026	7000	18000	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Methi(Leaves)	Other	Local	29/08/2026	700	1400	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	1000	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Ginger(Green)	Other	Local	29/08/2026	5000	12000	8000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Khed(Chakan) APMC	Bottle gourd	Other	Local	29/08/2026	1000	2500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Sangli	Tasgaon APMC	Dry Grapes	Other	Local	29/08/2026	27000	34500	32100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Green Gram(Moong)(Whole)	Green (Whole)	FAQ	29/08/2026	9000	9800	9400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	9300	9900	9600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Green Peas	Other	Local	29/08/2026	7000	7900	7450	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune APMC	Gur(Jaggery)	Other	Local	29/08/2026	4575	4725	4650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1500	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Cauliflower	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Methi(Leaves)	Other	Local	29/08/2026	10	12	11	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Tomato	Local	Local	29/08/2026	500	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Brinjal	Other	Local	29/08/2026	1500	3000	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Moshi) APMC	Papaya	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Karjat(Raigad) APMC	Rice	Other	Local	29/08/2026	3800	5400	4600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Bottle gourd	Other	Local	29/08/2026	1000	3000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Guar	Other	Local	29/08/2026	4500	8000	7000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Beans	Other	Local	29/08/2026	5000	6000	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	2500	3500	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Green Peas	Other	Local	29/08/2026	5500	7000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Pune(Manjri) APMC	Papaya	Other	Local	29/08/2026	2000	4000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Ginger(Green)	Other	Local	29/08/2026	1600	10000	5800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Potato	Other	Local	29/08/2026	1200	1500	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Narayangaon) APMC	Cauliflower	Other	Local	29/08/2026	300	2000	1100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Green Peas	Other	Local	29/08/2026	2000	7300	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	2000	4110	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bottle gourd	Other	Local	29/08/2026	500	1600	1300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Bitter gourd	Other	Local	29/08/2026	2000	4150	3200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Pune	Junnar(Otur) APMC	Chilly Capsicum	Other	Local	29/08/2026	1000	2600	2200	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Beans	Other	Local	29/08/2026	5000	6500	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	1000	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Onion	Halva	Local	29/08/2026	1500	4000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Cabbage	Other	Local	29/08/2026	1000	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Drumstick	Other	Local	29/08/2026	4000	4300	4300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Karad APMC	Ridgeguard(Tori)	Other	Local	29/08/2026	3000	4000	4000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Patan APMC	Tomato	Other	Local	29/08/2026	1250	1450	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Satara	Vaduj APMC	Green Chilli	Other	Local	29/08/2026	3000	4000	3500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Sangola APMC	Pomegranate	Other	Local	29/08/2026	2600	12500	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Solapur	Mangal Wedha APMC	Green Chilli	Other	Local	29/08/2026	1800	2500	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Arvi APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5000	5860	5600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Washim	Karanja APMC	Bengal Gram(Gram)(Whole)	Other	FAQ	29/08/2026	6250	6250	6250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Green Gram(Moong)(Whole)	Green (Whole)	Non-FAQ	29/08/2026	5700	6500	6100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	Hinganghat APMC	Soyabean	Yellow	FAQ	29/08/2026	5330	6185	5700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Babhulgaon APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7501	7995	7701	2026-08-29 21:41:40.15501+05:30
Maharashtra	Palghar	APMC VASAI	Rice	1009 Kar	Local	29/08/2026	3505	4970	4540	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Wheat	Other	FAQ	29/08/2026	2625	2700	2625	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	7975	7975	7975	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Soyabean	Yellow	FAQ	29/08/2026	5850	5900	5850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalna	Jalana APMC	Sunflower/Sunflower Seed	Local	Non-FAQ	29/08/2026	6500	6500	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Yavatmal	Umarked(Danki) APMC	Soyabean	Yellow	FAQ	29/08/2026	6300	6500	6400	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	2111	2550	2291	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chattrapati Sambhajinagar	Gangapur APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	5475	5475	5475	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Apple	Other	Local	29/08/2026	10000	17500	12500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Kolhapur	Kolhapur APMC	Tomato	Other	Local	29/08/2026	500	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Coriander(Leaves)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Methi(Leaves)	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Lime	Other	Local	29/08/2026	5000	7000	6000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Papaya	Other	Local	29/08/2026	3000	3000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1000	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Jalgaon	Jalgaon APMC	Sweet Pumpkin	Other	Local	29/08/2026	800	1200	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Jowar(Sorghum)	Red	Local	29/08/2026	2600	4276	3438	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	4800	5412	4900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Beed	Gevrai APMC	Onion	Red	Local	29/08/2026	1700	4400	3050	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nandurbar	Dhadgaon APMC	Jowar(Sorghum)	Other	Non-FAQ	29/08/2026	1800	1900	1850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Amarawati	Dhamngaon-Railway APMC	Bengal Gram(Gram)(Whole)	Average (Whole)	Non-FAQ	29/08/2026	4200	5000	4900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nashik	Dindori APMC	Onion	Unhali	Local	29/08/2026	3000	4300	3900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Bitter gourd	Other	Local	29/08/2026	750	3000	2093	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Brinjal	Other	Local	29/08/2026	500	4000	1624	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	HINGNA - APMC	Apple	Other	Local	29/08/2026	10000	10000	10000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Cauliflower	Other	Local	29/08/2026	500	2500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Beans	Other	Local	29/08/2026	1500	3500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Cucumbar(Kheera)	Other	Local	29/08/2026	200	1500	850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Cabbage	Other	Local	29/08/2026	500	1500	1000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Apple	Other	Local	29/08/2026	5000	16600	10800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Ginger(Green)	Other	Local	29/08/2026	6000	14000	10000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Coriander(Leaves)	Other	Local	29/08/2026	600	1200	900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Pomegranate	Other	Local	29/08/2026	1000	10000	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Lime	Other	Local	29/08/2026	2000	9000	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Ahilyanagar APMC	Papaya	Other	Local	29/08/2026	1000	5000	3000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Cabbage	Other	Local	29/08/2026	1010	1500	1330	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Coriander(Leaves)	Other	Local	29/08/2026	1025	1500	1315	2026-08-29 21:41:40.15501+05:30
Maharashtra	Nagpur	Kalmeshwar APMC	Raddish	Other	Local	29/08/2026	1025	1500	1335	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Kopargaon APMC	Soyabean	Other	Local	29/08/2026	5700	5959	5881	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Maize	Yellow	Non-FAQ	29/08/2026	2250	2250	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat(Rashin) APMC	Black Gram(Urd Beans)(Whole)	Other	Non-FAQ	29/08/2026	6500	6500	6500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Karjat APMC	Black Gram(Urd Beans)(Whole)	Other	FAQ	29/08/2026	8200	8500	8350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Garlic	Other	Local	29/08/2026	10000	22000	16000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7000	7995	7500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Akola APMC	Maize	Yellow	Non-FAQ	29/08/2026	2250	2250	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Murtizapur APMC	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7200	7995	7600	2026-08-29 21:41:40.15501+05:30
Maharashtra	Akola	Murtizapur APMC	Soyabean	Yellow	FAQ	29/08/2026	5350	5930	5640	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Pomegranate	Other	Local	29/08/2026	1500	17500	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Mousambi(Sweet Lime)	Other	Local	29/08/2026	2000	2500	2250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Papaya	Other	Local	29/08/2026	800	1000	900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1200	1500	1350	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Garlic	Other	Local	29/08/2026	7000	12000	9500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Drumstick	Other	Local	29/08/2026	3000	3500	3250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Bitter gourd	Other	Local	29/08/2026	2100	2500	2300	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Peas Wet	Other	Local	29/08/2026	4000	5000	4500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shrirampur APMC	Green Chilli	Other	Local	29/08/2026	1500	2000	1750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Bottle gourd	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Coriander(Leaves)	Other	Local	29/08/2026	1000	2000	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Chilly Capsicum	Other	Local	29/08/2026	2000	3000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Chandrapur	Chandrapur(Ganjwad) APMC	Raddish	Other	Local	29/08/2026	1500	1500	1500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Gadchiroli	Chamorshi APMC	Paddy(Common)	Other	FAQ	29/08/2026	3641	3865	3785	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	Wheat	Other	FAQ	29/08/2026	2665	2665	2665	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	Wheat	Other	Non-FAQ	29/08/2026	1700	2500	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Deoulgaon Raja APMC	Soyabean	Yellow	FAQ	29/08/2026	5500	5500	5500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Shevgaon APMC	Onion	Other	Local	29/08/2026	1500	2400	2100	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Chikali APMC	Bajra(Pearl Millet/Cumbu)	Other	Non-FAQ	29/08/2026	1700	2000	1850	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Red gram/Arhar/Tur(whole)	Other	Non-FAQ	29/08/2026	7250	7995	7550	2026-08-29 21:41:40.15501+05:30
Maharashtra	Wardha	APMC SINDI BRANCH SELOO	Sesamum(Sesame,Gingelly,Til)	White	FAQ	29/08/2026	10500	10500	10500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Prasanna Krushi Market, Tal Parnet, Dist Ahilyanagar	Onion	Other	Local	29/08/2026	1000	4000	2500	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Soyabean	Yellow	Local	29/08/2026	5000	6850	6611	2026-08-29 21:41:40.15501+05:30
Maharashtra	Buldhana	Jaykissan Krushi Uttpan Khajgi Bazar, Khamgaon, Dist Buldhana	Maize	Yellow	Local	29/08/2026	2000	2000	2000	2026-08-29 21:41:40.15501+05:30
Maharashtra	Bhandara	Bhandara APMC	Rice	1009 Kar	Local	29/08/2026	5700	5700	5700	2026-08-29 21:41:40.15501+05:30
Maharashtra	Raigad	Mangaon APMC	Rice	Other	Local	29/08/2026	2000	4800	3800	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Potato	Other	Local	29/08/2026	500	1200	750	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Bhindi(Ladies Finger)	Other	Local	29/08/2026	1000	1500	1250	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Spinach	Other	Local	29/08/2026	10	10	10	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Tomato	Other	Local	29/08/2026	300	1000	650	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Rahata APMC	Methi(Leaves)	Other	Local	29/08/2026	15	15	15	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Bengal Gram(Gram)(Whole)	Other	Non-FAQ	29/08/2026	4500	5300	4900	2026-08-29 21:41:40.15501+05:30
Maharashtra	Ahilyanagar	Jamkhed APMC	Soyabean	Yellow	FAQ	29/08/2026	5350	5500	5425	2026-08-29 21:41:40.15501+05:30
\.


--
-- TOC entry 4875 (class 2606 OID 18686)
-- Name: district_locations district_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.district_locations
    ADD CONSTRAINT district_locations_pkey PRIMARY KEY (district);


--
-- TOC entry 4873 (class 2606 OID 18675)
-- Name: mandi_locations mandi_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mandi_locations
    ADD CONSTRAINT mandi_locations_pkey PRIMARY KEY (state, district, market);


--
-- TOC entry 4871 (class 2606 OID 18662)
-- Name: mandi_prices mandi_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mandi_prices
    ADD CONSTRAINT mandi_prices_pkey PRIMARY KEY (state, district, market, commodity, variety, grade, arrival_date);


-- Completed on 2026-08-29 22:40:54

--
-- PostgreSQL database dump complete
--

\unrestrict 55xqrV9Cum2HwRGUgXVden0TSDVwpGDSQYoBvr3QPbO1tHvm4f21dU4hT91TI7Z

