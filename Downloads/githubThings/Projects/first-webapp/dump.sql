--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: age; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE age (
    age text,
    name text,
    gender text,
    raceethnicity text,
    month text,
    day text,
    year text,
    streetaddress text,
    city text,
    state text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Name: city; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE city (
    city text,
    name text,
    age text,
    gender text,
    raceethnicity text,
    month text,
    day text,
    year text,
    streetaddress text,
    state text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Name: date; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE date (
    month text,
    day text,
    name text,
    age text,
    gender text,
    raceethnicity text,
    year text,
    streetaddress text,
    city text,
    state text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Name: person; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE person (
    name text,
    age text,
    gender text,
    raceethnicity text,
    month text,
    day text,
    year text,
    streetaddress text,
    city text,
    state text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Name: raceethnicity; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE raceethnicity (
    raceethnicity text,
    name text,
    age text,
    gender text,
    month text,
    day text,
    year text,
    streetaddress text,
    city text,
    state text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Name: state; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE state (
    state text,
    name text,
    age text,
    gender text,
    raceethnicity text,
    month text,
    day text,
    year text,
    streetaddress text,
    city text,
    latitude text,
    longitude text,
    lawenforcementagency text,
    cause text,
    armed text
);


--
-- Data for Name: age; Type: TABLE DATA; Schema: public; Owner: -
--

COPY age (age, name, gender, raceethnicity, month, day, year, streetaddress, city, state, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
age	name	gender	raceethnicity	month	day	year	streetaddress	city	state	latitude	longitude	lawenforcementagency	cause	armed
age	name	gender	raceethnicity	month	day	year	streetaddress	city	state	latitude	longitude	lawenforcementagency	cause	armed
16	A'donte Washington	Male	Black	February	23	2015	Clearview Ln	Millbrook	AL	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
27	Aaron Rutledge	Male	White	April	2	2015	300 block Iris Park Dr	Pineville	LA	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
26	Aaron Siler	Male	White	March	14	2015	22nd Ave and 56th St	Kenosha	WI	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
25	Aaron Valdez	Male	Hispanic/Latino	March	11	2015	3000 Seminole Ave	South Gate	CA	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
29	Adam Jovicic	Male	White	March	19	2015	364 Hiwood Ave	Munroe Falls	OH	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
29	Adam Reinhart	Male	White	March	7	2015	18th St and Palm Ln	Phoenix	AZ	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
22	Adrian Hernandez	Male	Hispanic/Latino	March	27	2015	4000 Union Ave	Bakersfield	CA	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
35	Adrian Solis	Male	Hispanic/Latino	March	26	2015	1500 Bayview Ave	Wilmington	CA	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
44	Alan Alverson	Male	White	January	28	2015	Pickett Runn Rd	Sunset	TX	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
31	Alan James	Male	White	February	7	2015	200 Abbie St SE	Wyoming	MI	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
76	Albert Hanson Jr	Male	White	April	26	2015	7th Ave and Kansas Ave	Hanford	CA	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
40	Alec Ouzounian	Male	White	May	12	2015	28 Paseo Viento	Rancho Santa Margarita	CA	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
Unknown	Alejandro Salazar	Male	Hispanic/Latino	February	20	2015	1200 E Airtex Dr	Houston	TX	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
31	Alexander Long	Male	White	February	25	2015	25th St and Poplar St	Terre Haute 	IN	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
23	Alexander Myers	Male	White	April	6	2015	5700 block Ashby Dr	Indianapolis	IN	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
39	Alexander Rivera	Male	Hispanic/Latino	May	30	2015	1128 Murfreesboro Pike	Nashville	TN	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
25	Alexia Christian	Female	Black	April	30	2015	141 Pryor St SW	Atlanta	GA	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
54	Alfredo Rials-Torres	Male	Hispanic/Latino	May	19	2015	4219 2nd Road N	Arlington	VA	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
24	Alice Brown	Female	White	March	17	2015	Van Ness Ave and Pine St	San Francisco	CA	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
57	Alvin Haynes	Male	Black	January	26	2015	1 Moreland Dr	San Francisco	CA	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
21	Amilcar Perez-Lopez	Male	Hispanic/Latino	February	26	2015	Folsom St and 24th St	San Francisco	CA	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
42	Andre Murphy Sr	Male	Black	January	7	2015	1223 Omaha Ave	Norfolk	NE	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
21	Andres Lara-Rodriguez	Male	Hispanic/Latino	February	13	2015	S 12th St and Ruby St	Kansas City	KS	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
36	Andrew Driver	Male	White	March	13	2015	9700 Kempster Ave	Fontana	CA	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
26	Andrew Jackson	Male	White	April	29	2015	1200 W Florida Ave	Chickasha	OK	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
49	Andrew Shipley	Male	White	March	17	2015	360 Argyle Ct	Medford	OR	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
54	Andrew Toto	Male	White	January	21	2015	Scobie Pond Rd and Julian Rd	Derry	NH	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
26	Andrew Valadez	Male	White	April	23	2015	Tyler St and Glenoaks Blvd	Sylmar	CA	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
48	Andrew Williams	Male	Black	March	6	2015	Putnam Loop Rd	Putnam Hall	FL	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
33	Andy Martinez	Male	Hispanic/Latino	January	9	2015	4400 Tetons Dr	El Paso	TX	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
21	Angel Corona Jr	Male	Hispanic/Latino	April	10	2015	4740 Barham Ave	Corning	CA	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
41	Angelo West	Male	Black	March	27	2015	Humboldt Ave and Ruthven St	Roxbury	MA	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
48	Anthony Bess	Male	Black	February	10	2015	4545 Aldridge Dr	Memphis	TN	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
36	Anthony Briggs	Male	Black	May	25	2015	1100 E Gateway Dr SE	Huntsville	AL	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
41	Anthony Giaquinta	Male	Hispanic/Latino	February	22	2015	Lower Pond Ct	Clarkesville	GA	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
29	Anthony Gomez Jr	Male	Black	May	19	2015	305 E Walnut St	Lancaster	PA	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
27	Anthony Hill	Male	Black	March	9	2015	3028 Chamblee Dunwoody Rd	Chamblee	GA	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
45	Anthony Purvis	Male	White	February	3	2015	1404 N June Ave	Douglas	GA	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
32	Antonio Perez	Male	Hispanic/Latino	March	12	2015	2400 Flower St	Los Angeles	CA	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
35	Antonio Zambrano-Montes	Male	Hispanic/Latino	February	10	2015	1107 W Lewis St	Pasco	WA	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
36	Artago Howard	Male	Black	January	8	2015	9661 Strong Hwy	Strong	AR	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
35	Askari Roberts	Male	Black	March	17	2015	3189 Morton Bend Rd	Rome	GA	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
40	Aurelio Duarte	Male	Hispanic/Latino	March	8	2015	3632 SW 38th St	Oklahoma City	OK	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
18	Austin Goodner	Male	White	May	17	2015	5236 Robin Ln N	St Petersburg	FL	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
34	Autumn Steele	Female	White	January	6	2015	104 N Garfield Ave	Burlington	IA	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
39	Benito Osorio	Male	Hispanic/Latino	March	11	2015	300 S Main St	Santa Ana	CA	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
21	Benjamin Quezada	Male	Hispanic/Latino	March	31	2015	West Texas Ave and Gaillard St	Baytown	TX	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
62	Bernard Moore	Male	Black	March	6	2015	Metropolitan Pkwy and Fair Dr	Atlanta	GA	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
43	Betty Sexton	Female	White	February	17	2015	2325 Union Rd	Gastonia	NC	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
44	Billy Grimm	Male	White	May	3	2015	Arenal Rd SW and Tapia Blvd SW	Albuquerque	NM	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
29	Billy Patrick	Male	White	April	26	2015	NA	Bunch	OK	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
35	Bobby Gross	Male	Black	March	12	2015	700 14th St NW 	Washington	DC	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
50	Bradford Leonard	Male	White	February	22	2015	900 Castile Rd SE	Palm Bay	FL	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
18	Brandon Jones	Male	Black	March	19	2015	1077 Parkwood Dr	Cleveland	OH	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
25	Brandon Lawrence	Male	White	April	25	2015	800 Simpson Rd	Victoria	TX	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
31	Brandon Rapp	Male	White	March	18	2015	9000 Charles Way	Middleton	ID	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
29	Brendon Glenn	Male	Black	May	6	2015	1602 Pacific Ave	Los Angeles	CA	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
49	Brian Babb	Male	White	March	31	2015	2200 Devos St	Eugene	OR	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
23	Brian Barbosa	Male	Unknown	January	11	2015	8900 Kauffman Ave	South Gate	CA	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
45	Brian Fritze	Male	White	February	10	2015	I-70 and US-6	Glenwood Springs	CO	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
26	Brian Pickett	Male	Black	January	6	2015	1600 E 123rd St	Los Angeles	CA	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
35	Brock Nichols	Male	White	January	6	2015	2388 E Kansas Hwy 4	Assaria	KS	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
34	Bruce Steward	Male	White	February	15	2015	29000 S Wall St	Colton	OR	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
46	Bruce Zalonka	Male	Asian/Pacific Islander	May	12	2015	1031 Nuuanu Ave	Honolulu	HI	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
29	Byron Herbert	Male	Black	March	29	2015	111 Towne Dr	Elizabethtown	KY	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
39	Calvon Reid	Male	Black	February	22	2015	1701 Andros Isle	Coconut Creek	FL	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
28	Carl Lao	Male	Asian/Pacific Islander	March	4	2015	South San Joaquin St and East Church St	Stockton	CA	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
51	Carlos Saavedra Ramirez	Male	Hispanic/Latino	April	22	2015	101 Naco Hwy	Bisbee	AZ	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
67	Carter Ray Castle	Male	White	January	18	2015	Kentucky Rte 7	Gunlock	KY	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
53	Cary Martin	Male	White	May	14	2015	497 Florida Ave	St Augustine	FL	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
25	Caso Jackson	Male	Black	May	23	2015	13331 Strathmoor St	Detroit	MI	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
30	Cedrick Bishop	Male	Black	March	9	2015	Aurora St	Cocoa	FL	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
24	Celin Nunez	Male	Hispanic/Latino	April	13	2015	3 Greens Rd	Houston	TX	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
35	Chance Thompson	Male	White	February	15	2015	Hammonton Smartville Rd	Marysville	CA	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
43	Charly 'Africa' Keunang	Male	Black	March	1	2015	500 San Pedro St	Los Angeles	CA	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
24	Chazsten Freeman	Male	White	February	27	2015	South Carolina Rte 8 and Augusta Rd	Peltzer	SC	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
29	Chris Ingram	Male	White	January	27	2015	Coronado Trail	Morenci	AZ	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
38	Chrislon Talbott	Male	Black	May	21	2015	4585 Frederica St	Owensboro	KY	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
31	Christopher Finley	Male	White	April	14	2015	900 Walnut St	Jonesboro	AR	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
36	Christopher Healy	Male	White	March	22	2015	2300 SE 130th Ave	Portland	OR	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
23	Christopher Mitchell	Male	White	March	10	2015	6530 Georgia Rte 21	Port Wentworth	GA	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
38	Christopher Prevatt	Male	White	April	3	2015	123 Gregory Pl	Winchester	VA	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
53	Clifton Reintzel	Male	White	March	13	2015	600 Main St	Follansbee	WV	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
24	Cody Evans	Male	White	February	15	2015	1600 W 500 N	Provo	UT	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
26	Cody Karasek	Male	White	January	28	2015	4100 Avenue I	Rosenberg	TX	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
28	Cornelius Parker	Male	Black	February	28	2015	E Broadway and US-63	Columbia	MO	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
34	Crystal Miley	Female	White	February	26	2015	5101 Georgia Rte 133	Moultrie	GA	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
28	D'Angelo Stallworth	Male	Black	May	12	2015	7300 Blanding Blvd	Jacksonville	FL	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
40	DaJuan Graham	Male	Black	May	12	2015	13900 Castle Blvd	Silver Spring	MD	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
51	Dalton Branch	Male	Black	May	26	2015	530 Stanley Ave	New York	NY	40.6572562	-73.8886551	New York Police Department	Gunshot	No
44	Dana Hlavinka	Male	White	April	19	2015	1363 Clark Dr	Sidney	NE	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
25	Daniel Brumley	Male	Hispanic/Latino	January	17	2015	NE 36th St	Fort Worth	TX	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
56	Daniel Caldwell	Male	White	February	16	2015	8351 N Cracker Barrel Rd	Marana	AZ	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
37	Daniel Covarrubias	Male	Hispanic/Latino	April	21	2015	3600 SW 108th St	Lakewood	WA	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
58	Daniel Davis	Male	White	April	25	2015	8624 Firestone Cir	Clermont	FL	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
39	Daniel Elrod	Male	White	February	24	2015	1299 Hickory St	Omaha	NE	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
37	Daniel Mejia	Male	Hispanic/Latino	February	15	2015	200 S McNab Pkwy	San Manuel	AZ	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
35	Daniel Wolfe	Male	Black	April	21	2015	1714 Walker Ave	Union	NJ	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
26	Darin Hutchins	Male	Black	January	24	2015	1900 McHenry St	Baltimore	MD	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
47	Darrell 'Hubbard' Gatewood	Male	Black	March	1	2015	616 SW 59th St	Oklahoma City	OK	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
31	Darrell Brown	Male	Black	April	16	2015	402 North Prospect St	Hagerstown	MD	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
60	Darrell Morgan	Male	White	May	28	2015	3164 Charlotte Hwy	Lancaster	SC	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
32	Darrin Langford	Male	Black	April	2	2015	12th Ave and Glenhurst Ct	Rock Island	IL	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
45	Daryl Myler	Male	White	January	24	2015	164 E Main St	Rexburg	ID	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
42	David Cuevas	Male	Hispanic/Latino	February	26	2015	4660 N Socrum Loop Rd	Lakeland	FL	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
17	David Gaines	Male	White	May	19	2015	N 10th St and Gunnison Ave	Grand Junction	CO	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
22	David Gandara	Male	Hispanic/Latino	May	21	2015	5111 Fairbanks Dr	El Paso	TX	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
33	David Garcia	Male	Hispanic/Latino	January	26	2015	1134 E St	Wasco	CA	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
18	David Johnson	Male	White	May	7	2015	300 Stone Monument Dr	Wake Forest	NC	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
39	David Kapuscinski	Male	White	April	16	2015	14680 Middle Gibraltar Rd	Rockwood	MI	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
59	David Kassick	Male	White	February	2	2015	36 Grandview Rd	Hanover	PA	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
33	David Lynch	Male	White	April	3	2015	11974-11998 US-64	Muskogee County	OK	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
58	David Parker	Male	White	April	28	2015	36 Randall Rd	Mansfield	OH	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
58	David Schwalm	Male	White	May	8	2015	168 Auringer Rd	Constantania	NY	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
47	David Watford	Male	White	March	17	2015	US-65	Tallulah	LA	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
41	David Werblow	Male	White	March	15	2015	134 Burban Dr	Branford	CT	41.2693481	-72.8428955	Branford Police Department	Taser	Other
64	Dean Bucheit	Male	White	February	9	2015	13600 Culver Blvd	Los Angeles	CA	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
45	Dean Genova	Male	White	April	26	2015	13822 Brookhurst St	Garden Grove	CA	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
53	Deanne Choate	Female	White	March	26	2015	400 N Birch	Gardner	KS	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
24	Declan Owen	Male	White	March	17	2015	8100 North Carolina Hwy 41	Dublin	NC	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
48	Dedrick Marshall	Male	Black	May	8	2015	3020 Destrehan Ave	Harvey	LA	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
29	Demaris Turner	Male	Black	January	23	2015	1980 NW 46 Ave	Lauderhill	FL	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
40	Denis Reyes	Male	Hispanic/Latino	May	15	2015	274 E 194th St	New York	NY	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
34	Dennis Fiel	Male	White	May	17	2015	7700 Mesa College Dr	San Diego	CA	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
21	Denzel Brown	Male	Black	March	22	2015	1851 Sunrise Hwy	Bay Shore	NY	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
26	Derek Cruice	Male	White	March	4	2015	800 Maybrook Dr	Deltona	FL	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
45	Desmond Luster	Male	Black	February	9	2015	7400 Bonnie View Rd	Dallas	TX	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
25	Desmond Willis	Male	Black	April	6	2015	2515 Manhattan Blvd	Harvey	LA	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
17	Deven Guilford	Male	White	March	1	2015	331 W Grand Ledge Hwy	Roxand Township	MI	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
24	Devin Gates	Male	Black	March	22	2015	2105 Scott Blvd	Santa Clara	CA	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
42	Dewayne Carr	Male	Black	January	15	2015	Chaparral Rd and Hayden Rd	Scottsdale	AZ	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
29	Dewayne Ward Jr	Male	Black	February	3	2015	1000 Claudia Ct	Antioch	CA	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
42	Dexter Bethea	Male	Black	April	8	2015	3022 James Rd	Valdosta	GA	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
30	Dominick Wise	Male	Black	March	30	2015	1301 Spring Meadow Ln	Culpeper	VA	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
29	Don Smith	Male	Black	April	9	2015	8516 N Meridian Rd	Monon	IN	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
39	Donald 'Dontay' Ivy	Male	Black	April	2	2015	Lark St and Second St	Albany	NY	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
63	Donald Hicks	Male	White	April	2	2015	Illinois Rte 145 and Waldo Church Rd	Metropolis	IL	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
49	Donald Matkins	Male	White	March	1	2015	Mt Pleasant Rd	Lucedale	MS	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
41	Donte Noble	Male	Black	April	15	2015	200 Canaan Pointe Dr	Spartanburg	SC	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
27	Donte Sowell	Male	Black	January	15	2015	East 38th St and North Mitthoeffer Rd	Indianapolis	IN	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
30	Doug Sparks	Male	White	February	17	2015	Forest Ave	Tewksbury	MA	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
60	Douglas Faith	Male	White	April	8	2015	Karen Ln and Corinne Dr	San Antonio	TX	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
77	Douglas Harris	Male	Black	March	27	2015	7901 1st Ave S	Birmingham	AL	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
19	Ebin Proctor	Male	Unknown	May	30	2015	Yuma Circle	Cottonwood	AZ	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
37	Edixon Franco	Male	Hispanic/Latino	March	10	2015	Fern Ave and Phillips St	Ontario	CA	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
54	Edward Bright Sr	Male	Black	January	31	2015	9800 Liberty Rd	Randallstown	MD	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
29	Elias Cavazos	Male	Hispanic/Latino	April	17	2015	Girard Street and Acacia Ave	Hemet	CA	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
30	Elton Simpson	Male	Black	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
24	Elvin Diaz	Male	Hispanic/Latino	May	21	2015	10 Temple Ave	Hackensack	NJ	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
21	Enoch Gaver	Male	White	March	21	2015	2003 E Rodeo Dr	Cottonwood	AZ	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
44	Eric Harris	Male	Black	April	2	2015	1900 block N Harvard Ave	Tulsa	OK	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
40	Eric Robinson	Male	White	May	23	2015	135 N Main St	Eagar	AZ	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
32	Erick Rose	Male	White	April	7	2015	Post Office Neck Rd and Lake Rd	Shawnee	OK	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
22	Erick Sanchez	Male	Hispanic/Latino	April	30	2015	11565 James Watt Dr	El Paso	TX	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
43	Erik Tellez	Male	White	April	18	2015	20th St and Thomas Rd	Phoenix	AZ	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
52	Ernesto Flores	Male	Hispanic/Latino	April	15	2015	11157 Chico Ave	Pomona	CA	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
27	Ernesto Javier Canepa Diaz	Male	Hispanic/Latino	February	27	2015	1000 W 3rd St	Santa Ana	CA	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
34	Ethan Noll	Male	White	April	4	2015	Mountainair St	Edgewood	NM	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
20	Eugene Smith II	Male	White	March	17	2015	313 S Houston Ave	Onalaska	TX	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
25	Fednel Rhinvil	Male	Black	March	3	2015	East Rd and Olivia St	Salisbury	MD	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
24	Felix David	Male	Black	April	25	2015	538 E Sixth St	New York	NY	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
20	Feras Morad	Male	Unknown	May	27	2015	4600 E 15th St	Long Beach	CA	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
46	Fletcher Stewart	Male	White	February	11	2015	Booger Hollow Rd	Dadeville	AL	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
42	Francis Rose III	Male	White	February	2	2015	9000 Buena Vista St	Apple Valley	CA	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
43	Francis Spivey	Male	White	February	25	2015	5300 East Craig Road	Las Vegas	NV	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
41	Frank 'Trey' Shephard III	Male	Black	April	15	2015	Castlegory Rd and Wallisville Rd	Houston	TX	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
59	Fred Liggett Jr	Male	White	March	13	2015	8700 E 97th Ter	Kansas City	MO	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
25	Freddie Gray	Male	Black	April	12	2015	Mount St and Presbury St	Baltimore	MD	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
42	Fridoon Rawshannehad	Male	White	April	30	2015	3200 Hancock St	San Diego	CA	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
64	Garland Wingo	Male	White	March	18	2015	Lake Ella	Tallahassee	FL	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
22	Garrett Gagne	Male	White	January	1	2015	Crowell Rd and Tipcart Dr	Chatham	MA	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
24	Garrett Sandeno	Male	White	May	27	2015	1701 Ridgecrest Rd	Edmond	OK	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
63	Gary Collins	Male	White	April	25	2015	H St NW and 20th Ave NW	Miami	OK	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
56	Gary Kendrick	Male	White	March	27	2015	Shadytree Ln and Glen Arbor Dr	Encinitas	CA	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
60	Gary Page	Male	White	March	21	2015	1790 E Voorhees St	Harmony	IN	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
54	Gilbert Fleury	Male	White	March	11	2015	Cliffs Landing Rd	Bay Minette	AL	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
37	Glenn Lewis	Male	Black	February	25	2015	2201 NW 27th St	Oklahoma City	OK	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
22	Gordon Kimbrell Jr	Male	White	April	9	2015	9265 Quail Roost Dr	Navarre	FL	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
39	Gregory Smith	Male	White	March	30	2015	2293 N Main St	Crown Point	IN	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
45	Grover Sapp Jr	Male	White	April	18	2015	1200 Beck Ave	Panama City	FL	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
57	Harry Davis	Male	White	May	27	2015	Sparta Hwy and Oconee Springs Rd	Eatonton	GA	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
42	Harvey Oates	Male	White	March	27	2015	Horseshoe Run Rd	Fort Ashby	WV	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
41	Hashim Abdul-Rasheed	Male	Black	January	7	2015	4600 International Gateway	Columbus	OH	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
19	Hector Morejon	Male	Hispanic/Latino	April	23	2015	1100 Hoffman Ave	Long Beach	CA	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
26	Herbert Hill	Male	Black	February	6	2015	1000 SW 62nd St	Oklahoma City	OK	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
34	Howard Brent Means Jr	Male	White	February	15	2015	1110 Battleground Dr	Iuka	MS	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
69	Howard Robbins	Male	White	January	16	2015	US-150	Stanford	KY	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
64	Hue Dang	Female	Asian/Pacific Islander	March	9	2015	E Kennedy St	Hackensack	NJ	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
35	Hung Trieu	Male	Asian/Pacific Islander	February	2	2015	13442 Bellaire Blvd	Houston	TX	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
40	Ian Sherrod	Male	Black	February	28	2015	2300 block Main St	Tarboro	NC	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
19	Isaac Holmes	Male	Black	January	21	2015	4200 St Louis Ave	St Louis	MO	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
27	Isaac Jimenez	Male	Hispanic/Latino	April	13	2015	3400 Lincoln Ave	Alton	IL	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
37	Izzy Colon	Male	Hispanic/Latino	February	4	2015	4304 Pershing Pointe Pl	Orlando	FL	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
17	Jacob Haglund	Male	White	February	2	2015	1600 3rd St	Bay City	MI	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
39	Jamalis Hall	Male	Black	March	27	2015	1000 block Mayflower Rd	Fort Pierce	FL	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
74	James Allen	Male	Black	February	7	2015	2701 Mary Ave	Gastonia	NC	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
42	James Barker	Male	White	January	8	2015	600 Second Ave	Salt Lake City	UT	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
47	James Bushey	Male	White	June	1	2015	2225 Texas Hwy 256 Loop	Palestine	TX	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
43	James Cooper	Male	White	May	20	2015	3271 Dartmouth Dr	Charleston	SC	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
46	James Damon	Male	White	March	9	2015	US-40	Craig	CO	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
44	James Ellis	Male	White	March	21	2015	New York State Rte 31A	Clarendon	NY	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
31	James Greenwell	Male	White	March	11	2015	700 N Auburndale St	Memphis	TN	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
47	James Horn Jr	Male	White	May	23	2015	SE 650th Rd	Green Ridge	MO	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
41	James Jimenez	Male	Hispanic/Latino	March	13	2015	1410 Hill Ave	Napa	CA	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
43	James Moore	Male	White	March	22	2015	5900 S Lewis Ave	Tulsa	OK	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
40	James Morris	Male	Unknown	May	31	2015	Juanipero Way and La Loma Dr	Medford	OR	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
32	James Strong	Male	Black	May	28	2015	10900 E 109th Pl	Northglenn	CO	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
31	Jamie Croom	Male	Black	March	10	2015	10064 Elm Grove Garden Dr	Baton Rouge	LA	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
20	Jamison Childress	Male	White	March	19	2015	Kneuman Rd	Sumas	WA	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
20	Janisha Fonville	Female	Black	February	19	2015	Bellefonte Dr	Charlotte	NC	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
33	Jared Forsyth	Male	White	April	6	2015	11120 NW Gainesville Rd	Ocala	FL	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
22	Jared Johnson	Male	Black	April	28	2015	8400 Chef Menteur Hwy	New Orleans	LA	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
41	Jason Carter	Male	White	February	21	2015	298 Gavilan Canyon Rd	Rudioso	NM	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
41	Jason Champion	Male	Black	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
32	Jason Evans	Male	White	April	12	2015	North Carolina Hwy 242 and Reeda Branch Rd	Salemburg	NC	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
16	Jason Hendrix	Male	White	February	14	2015	1486 Hyde Park Rd	Essex	MD	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
29	Jason Moland	Male	Black	March	30	2015	3700 Beyer Park Dr	Modesto	CA	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
42	Jason Smith	Male	White	March	20	2015	4604 Summit St	Columbus	OH	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
29	Javoris Washington	Male	Black	May	21	2015	SW 29th Ave and SW 29th Terrace	Fort Lauderdale	FL	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
47	Jeff Alexander	Male	White	March	17	2015	1125 1/2 19th St	Bakersfield	CA	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
53	Jeffery Adkins	Male	Black	April	30	2015	200 Elm Rd	Emporia	VA	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
18	Jeffery Kemp	Male	Black	April	17	2015	74th Street and Merrill Ave	Chicago	IL	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
47	Jeffrey Jackson	Male	White	March	22	2015	Kentucky Rte 92	Williamsburg	KY	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
34	Jeffrey Nielson	Male	White	January	14	2015	120 Honey Berry Ct	Draper	UT	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
36	Jeffrey Pitts	Male	White	May	31	2015	3500 Ebenezer Rd	Conyers	GA	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
63	Jeffrey Surnow	Male	White	March	1	2015	Waikoloa Rd	Waikoloa Village	HI	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
36	Jeremy Anderson	Male	White	March	31	2015	1600 Grass Lake Dr	Tampa Bay	FL	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
27	Jeremy Kelly	Male	Black	March	25	2015	Dixie St	Johnsonville	SC	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
28	Jeremy Lett	Male	Black	February	5	2015	2400 W Tharpe St	Tallahassee	FL	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
33	Jermonte Fletcher	Male	Black	January	27	2015	265 Buffalo Ct	Columbus	OH	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
32	Jerome Caldwell	Male	Black	May	21	2015	83 Beaufain St	Charleston	SC	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
42	Jerome Nichols	Male	White	February	23	2015	N Plymouth St	Allentown	PA	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
31	Jess Leipold	Male	White	April	9	2015	45 Major Bell Ln	Gettysburg	PA	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
17	Jessica Hernandez	Female	Hispanic/Latino	January	26	2015	Newport St & E 25th Ave	Denver	CO	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
28	Jessica Uribe	Female	Unknown	February	28	2015	1113 W St Mary's Rd	Tuscon 	AZ	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
24	Jessie Williams	Male	White	May	26	2015	200 John Wesly Blvd	Bossier City	LA	32.5170212	-93.7078476	FBI	Gunshot	Firearm
71	Jimmy Foreman	Male	Unknown	January	9	2015	422 SE 3rd St	England	AR	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
51	Jimmy Robinson Jr	Male	Black	February	4	2015	I-35	Waco	TX	31.593082	-97.108858	Waco Police Department	Gunshot	No
28	Joaquin Hernandez	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
53	John Acree	Male	White	April	30	2015	812 Forest Hills Dr	Nashville	TN	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
54	John Allen	Male	White	March	30	2015	841 Avenue A	Boulder City	NV	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
45	John Ballard Gorman	Male	White	January	21	2015	3468 Casino Way	Robinsonville	MS	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
33	John Kaafi	Male	White	May	7	2015	8th St and N Orange Ave	Sarasota	FL	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
48	John Marshall	Male	White	January	30	2015	Billings Clinic, 2800 10th Ave N	Billings	MT	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
34	John O'Keefe	Male	White	January	13	2015	Constitution Ave and San Mateo Blvd	Albuquerque	NM	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
23	John Quintero	Male	Hispanic/Latino	January	3	2015	500 North Oliver Ave	Wichita	KS	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
35	John Sawyer	Male	White	February	5	2015	1200 Calimesa Blvd	Calimesa	CA	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
33	John Whittaker	Male	Hispanic/Latino	February	10	2015	1503 Medfra St	Anchorage	AK	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
32	Johnathon Guillory	Male	White	January	18	2015	Greenland Park Dr	Maricopa	AZ	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
52	Jonathan Colley	Male	White	May	20	2015	2569 Raber Rd	Green	OH	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
30	Jonathan Efraim	Male	White	April	22	2015	16802 Hillside Ave	New York	NY	40.7098999	-73.7943573	New York Police Department	Gunshot	No
23	Jonathan Harden	Male	White	February	13	2015	4023 University Pkwy	San Bernadino	CA	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
35	Jonathan McIntosh	Male	White	May	19	2015	900 E Main St	Cabot	AR	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
42	Jonathan Paul	Male	Black	March	12	2015	300 E Mitchell St	Arlington	TX	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
37	Jonathan Pierce	Male	White	February	12	2015	Port St Joe Police Station, 410 Williams Ave	Port St Joe	FL	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
56	Jose Antonio Espinoza Ruiz	Male	Hispanic/Latino	January	23	2015	202 Avenue A	Levelland	TX	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
36	Jose Ceja	Male	Hispanic/Latino	January	15	2015	2007 Sousa Ct	Fairfield	CA	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
27	Jose Herrera	Male	Hispanic/Latino	April	22	2015	3000 W Cecil Ave	Delano	CA	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
30	Joseph Biegert	Male	White	February	24	2015	1500 Plymouth Ln	Green Bay	WI	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
31	Joseph Caffarello	Male	White	January	7	2015	6100 Scott St	Rosemont	IL	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
46	Joseph Paffen	Male	White	February	8	2015	4501 Hoffner Ave	Orlando	FL	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
51	Joseph Potts	Male	White	April	23	2015	182 N4430 Rd	Rufe	OK	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
72	Joseph Roy	Male	Unknown	May	7	2015	2853 Avalon Meadows Ct	Lawrenceville	GA	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
28	Joseph Slater	Male	White	April	15	2015	27767 Base Line	Highland	CA	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
63	Joseph Tassinari	Male	White	March	24	2015	6600 W Christy Dr	Glendale	AZ	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
28	Joseph Weber	Male	White	April	8	2015	Tasman Dr and Lawrence Expy	Sunnyvale	CA	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
33	Joshua Deysie	Male	Hispanic/Latino	April	29	2015	1400 E Harmony Ave	Mesa	AZ	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
24	Joshua Garcia	Male	Hispanic/Latino	January	26	2015	2500 FM1054	Tahoka	TX	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
49	Paul Campbell	Male	White	January	19	2015	69 Prospect Hill Dr	Weymouth	MA	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
27	Joshua Green	Male	White	April	28	2015	1408 W Main St	Marion	IL	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
24	Justin Fowler	Male	Native American	March	19	2015	Indian Rte 13	Lukachukai	AZ	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
28	Justin Tolkinen	Male	White	March	16	2015	400 White Bear Ave	St Paul	MN	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
28	Justin Way	Male	White	May	11	2015	225 Presidents Cup Way	St Augustine	FL	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
17	Justus Howell	Male	Black	April	4	2015	2300 Gilead Ave	Zion	IL	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
46	Karen Janks	Female	White	April	23	2015	2661 Gravenstein Hwy S	Sebastopol	CA	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
52	Karl Taylor	Male	Black	April	14	2015	325 Riverside Dr	Fallsburg	NY	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
39	Kavonda Payton	Male	Black	January	16	2015	138 Del Mar Cir	Aurora	CO	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
49	Kaylene Stone	Female	White	March	18	2015	6735 W Peoria Ave	Peoria 	AZ	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
30	Kelvin Goldston	Male	Black	May	11	2015	6024 Wheaton Dr	Fort Worth	TX	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
51	Ken Cockerel	Male	White	April	3	2015	W Union Hills Dr and N 39th Ave	Phoenix	AZ	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
16	Kendre Alston	Male	Black	March	19	2015	1800 Helena St	Jacksonville	FL	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
18	Kenneth Brown	Male	White	January	4	2015	NA	Guthrie	OK	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
22	Kenneth Buck	Male	Hispanic/Latino	January	5	2015	E Knox Rd	Chandler	AZ	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
40	Kenneth Dothard	Male	Black	May	28	2015	900 Bankhead Hwy	Carrollton	GA	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
61	Kenneth Kreyssig	Male	White	February	10	2015	645 Smyrna Center Rd	Smyrna	ME	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
52	Kenneth Mathena	Male	White	May	2	2015	30 Malvern Ln	Smyrna	DE	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
51	Kent Norman	Male	White	February	21	2015	1800 Heather Cir	Indianapolis	IN	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
36	Kevin Allen	Male	Black	May	29	2015	355 Valley Brook Ave	Lyndhurst	NJ	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
36	Kevin Norton	Male	White	May	3	2015	210 W 300 N	Roosevelt	UT	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
59	Kimber Key	Male	White	April	21	2015	107 White Falls Dr	Columbia	SC	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
17	Kristiana Coignard	Female	White	January	22	2015	Longview Police Department, 302 W Cotton St	Longview	TX	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
18	Kyle Baker	Male	White	May	28	2015	2800 Longmeadow Dr	Trenton	MI	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
41	Larry Hostetter	Male	White	February	9	2015	200 Jordan Dr	Nocona	TX	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
33	Larry Kobuk	Male	Native American	January	28	2015	Corrections Department, 1400 E 4th Ave	Anchorage	AK	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
25	Lavall Hall	Male	Black	February	15	2015	19157 NW 3rd Ave	Miami Gardens	FL	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
23	Ledarius Williams	Male	Black	February	3	2015	Minnesota Ave and Meramec St	St Louis	MO	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
47	Leslie Sapp III	Male	Black	January	6	2015	Redlyn St	Pittsburgh	PA	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
58	Lester Brown	Male	White	March	9	2015	85 Almost Home Rd	Penrose	NC	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
47	Lewis Lembke	Male	White	January	2	2015	4505 SW Masters Loop	Aloha	OR	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
34	Lionel Young	Male	Black	May	10	2015	950 Nalley Rd	Landover	MD	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
28	Loren Simpson	Male	White	January	8	2015	3618 White Buffalo Rd	Huntley	MT	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
37	Lorenzo Hayes	Male	Black	May	13	2015	N Addison St and E Sanson Ave	Spokane	WA	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
87	Louis Becker	Male	White	January	14	2015	New York State Rte 23 and Cairo Junction Rd	Catskill	NY	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
39	Lue Vang	Male	Asian/Pacific Islander	April	22	2015	4100 Eldorado Springs Dr	Boulder	CO	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
27	Luis Chavez-Diaz	Male	Hispanic/Latino	April	29	2015	1624 Hood Franklin Rd	Elk Grove	CA	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
35	Luis Molina Martinez	Male	Hispanic/Latino	April	21	2015	3400 Manitou Ave	Los Angeles	CA	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
36	Mack Long	Male	Black	April	12	2015	E 31st St and N Sherman Dr	Indianapolis	IN	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
24	Marcus Golden	Male	Black	January	14	2015	261 E University Ave	St Paul	MN	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
26	Marcus Wheeler	Male	Black	May	20	2015	3057 Martin Ave	Omaha	NE	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
34	Mario Jordan	Male	Black	January	14	2015	Sir Gawaine Dr	Chesapeake	VA	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
51	Mark Adair	Male	White	April	15	2015	Hitt St and Elm St	Columbia	MO	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
49	Mark Cecil Hawkins	Male	White	April	24	2015	1940 Turner Rd SE	Salemburg	OR	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
41	Mark Farrar	Male	White	May	15	2015	1806 16th Ave	Rockford	IL	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
54	Mark Smith	Male	White	April	8	2015	W 141st St and 257th W Ave	Kellyville	OK	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
36	Markell Atkins	Male	Black	February	4	2015	3800 Vernon Ave	Memphis	TN	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
26	Markus Clark	Male	Black	May	20	2015	600 NW 27th Ave	Fort Lauderdale	FL	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
35	Matautu Nuu	Male	Asian/Pacific Islander	January	28	2015	Martinique Ct	Stockton	CA	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
22	Matthew Ajibade	Male	Black	January	1	2015	1050 Carl Griffin Dr	Savannah	GA	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
27	Matthew Belk	Male	White	February	13	2015	2420 Terry Rd	Huntingdon	TN	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
42	Matthew Coates	Male	White	May	16	2015	2010 61st St	Sacramento	CA	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
32	Matthew Hoffman	Male	White	January	4	2015	630 Valencia St	San Francisco	CA	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
32	Matthew Lundy	Male	White	February	17	2015	3800 Canfield Rd	Eaton Rapids Township	MI	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
25	Matthew Metz	Male	White	March	3	2015	College Ave and Curry Rd	Tempe	AZ	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
26	Meagan Hockaday	Female	Black	March	27	2015	500 W Vineyard Ave	Oxnard	CA	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
53	Michael Asher	Male	White	May	4	2015	Doctors Row	Chavies	KY	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
26	Michael Casper	Male	White	February	16	2015	Malad St and Gourley St	Boise	ID	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
40	Michael Foster	Male	White	April	19	2015	105 Hinkle St	Wilmore	KY	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
55	Michael Gallagher	Male	White	May	10	2015	100 Whitfield St	Enfield	NC	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
29	Michael Goebel	Male	White	January	14	2015	600 Spring Dr	Robertsville	MO	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
31	Michael Ireland	Male	White	February	18	2015	1400 N Marion Ave	Springfield	MO	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
19	Michael Kocher Jr	Male	White	January	3	2015	2600 Kaumualii Hwy	Kaumakani	HI	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
57	Michael Lemon	Male	Unknown	April	8	2015	11936 California Rte 178	Lake Isabella	CA	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
40	Michael Lowrey	Male	White	May	22	2015	1534 N Center Ave	Somerset	PA	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
35	Michael McKillop	Male	White	March	8	2015	Northtowne Plaza Shopping Center	Claymount	DE	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
35	Michael Murphy	Male	White	May	7	2015	I-84	Beacon	NY	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
39	Michael Rodriguez	Male	Hispanic/Latino	January	5	2015	818 31st St	Evans	CO	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
37	Michael Smashey	Male	White	February	23	2015	4817 W Mceachern Woods Dr	Powder Springs	GA	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
36	Miguel Anguel de Santos-Rodriguez	Male	Hispanic/Latino	January	21	2015	ChapeÌ_å±o Rd	Roma	TX	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
62	Millard Tallant III	Male	White	May	26	2015	17500 Tester Rd 	Snohomish	WA	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
43	Monique Deckard	Female	Black	March	8	2015	900 S Euclid St	Anaheim	CA	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
32	Mychael Lynch	Male	White	March	23	2015	707 W 13th St	Vancouver	WA	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
34	Nadir Soofi	Male	Asian/Pacific Islander	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
37	Naeschylus Vinzant	Male	Black	March	6	2015	16200 E 12th Ave	Aurora	CO	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
37	Natasha McKenna	Female	Black	February	8	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	Fairfax	VA	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
33	Nathan Massey	Male	White	January	15	2015	Becky Sue St	Ville Platte	LA	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
35	Nehemiah Fischer	Male	White	May	29	2015	Hectorville Rd and Bixby Rd	Mounds	OK	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
40	Neil Seifert	Male	White	March	27	2015	N Main St	Webster	MA	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
21	Nephi Arriguin	Male	Black	May	7	2015	17200 Pires Ave	Cerritos	CA	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
30	Nicholas Brickman	Male	White	January	7	2015	SE 4th St and Scott Ave	Des Moines	IA	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
23	Nicholas Thomas	Male	Black	March	24	2015	2475 Cumberland Pkwy SE	Atlanta	GA	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
26	Nicolas Tewa	Male	Native American	January	27	2015	4130 N Black Canyon Hwy	Phoenix	AZ	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
39	Nikki Burtsfield	Female	White	May	20	2015	N Garner Lake Rd and Vaquero Ave	Gillette	WY	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
33	Norman Cooper	Male	Black	April	19	2015	4800 Legend Well Dr	San Antonio	TX	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
34	Nuwnah Laroche	Female	Black	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
37	Omarr Jackson	Male	Black	January	8	2015	Lasalle St and Josephine St	New Orleans	LA	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
26	Orlando Lopez	Male	Hispanic/Latino	January	25	2015	Troy Ave and Oakshire Ln	Pueblo	CO	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
24	Pablo Meza	Male	Hispanic/Latino	January	17	2015	E 6th St and Mateo St	Los Angeles	CA	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
25	Patrick Wetter	Male	White	January	6	2015	800 Howard St	Stockton	CA	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
31	Paul Anderson	Male	Black	April	4	2015	150 E Lincoln Ave	Anaheim	CA	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
59	Paul Johnson	Male	White	February	4	2015	7100 Pine Ave	Chino	CA	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
50	Pedro 'Pete' Juan Saldivar	Male	Hispanic/Latino	February	17	2015	US-90 and Charles Dr	Del Rio	TX	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
37	Philip Conley	Male	White	March	21	2015	904 Admiral Callaghan Ln	Vallejo	CA	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
28	Phillip Burgess	Male	White	April	9	2015	477 Belcher Rd	Boiling Springs	SC	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
26	Phillip Garcia	Male	Hispanic/Latino	January	16	2015	12810 Gulf Fwy	Houston	TX	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
23	Phillip Watkins	Male	Black	February	11	2015	1300 Sherman St	San Jose	CA	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
32	Phillip White	Male	Black	March	31	2015	118 W Grape St	Vineland	NJ	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
24	Quincy Reed Reindl	Male	White	January	15	2015	Nesbitt Ave S and 99th St W	Bloomington	MN	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
42	Ralph Willis	Male	White	January	29	2015	604 E Maple Ave	Stillwater	OK	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
34	Randall Torrence	Male	White	May	27	2015	1225 Quindaro Blvd	Kansas City	KS	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
68	Raymond Kmetz	Male	White	January	26	2015	4401 Xylon Ave N	Minneapolis	MN	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
31	Reginald McGregor	Male	Black	April	21	2015	200 North Retta St	Fort Worth	TX	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
83	Richard 'Buddy' Weaver	Male	White	April	12	2015	Sleepy Hollow Dr and Misty Glen Dr	Newalla	OK	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
35	Richard Carlin	Male	White	February	13	2015	414 Rehr St	Reading	PA	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
29	Richard Castilleja	Male	Hispanic/Latino	March	14	2015	2615 Mossrock	San Antonio	TX	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
50	Richard Davis	Male	Black	May	31	2015	Tremont St and Morgan St	Rochester	NY	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
56	Richard Hanna	Male	Unknown	April	6	2015	400 Steuber Rd	Tehachapi	CA	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
43	Richard McClendon	Male	White	January	13	2015	600 Olive St	Jourdanton	TX	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
38	Richard Reed	Male	White	April	10	2015	SW Wanamaker Rd and I-70	Topeka	KS	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
63	Richard White	Male	Black	March	20	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	Kenner	LA	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
27	Ricky Hall	Male	Black	March	30	2015	NA	Fort Meade	MD	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
36	Roark Cook	Male	White	May	4	2015	3320 W 9th Ave	Kennewick	WA	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
55	Robert Box	Male	White	May	29	2015	108 Fir Canyon Rd	Grants Pass	OR	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
36	Robert Burdge	Male	White	March	19	2015	200 Trask St	Bakersfield	CA	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
68	Robert Edwards	Male	White	January	14	2015	500 Sycamore St	Lake Jackson	TX	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
61	Robert Francis Mesch	Male	White	January	23	2015	120 W Slaughter Ln	Austin	TX	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
46	Robert Frost	Male	White	May	5	2015	1847 Bob White Blvd	Pulaski	VA	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
47	Robert Kohl	Male	White	February	23	2015	175 Bass Pro Blvd	Denham Springs	LA	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
26	Robert Rooker	Male	White	March	29	2015	Fields Hollow Rd	Peebles	OH	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
37	Robert Washington	Male	Black	April	1	2015	14200 Kornblum Ave	Hawthorne	CA	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
22	Roberto Leon	Male	Hispanic/Latino	March	17	2015	Elkhorn Blvd and Dry Creek Rd	Rio Linda	CA	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
18	Roberto Ornelas	Male	Hispanic/Latino	January	1	2015	39 N Marlin Ave	Key Largo	FL	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
39	Roberto Rodriguez	Male	Hispanic/Latino	April	8	2015	4th St and Mathews St	Los Angeles	CA	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
49	Rodney Biggs	Male	White	February	26	2015	US-49 and Middle Driveway	Gulfport	MS	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
23	Rodney Walker	Male	Black	January	16	2015	W 11th St	Tulsa	OK	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
47	Rodolfo Velazquez	Male	Hispanic/Latino	April	16	2015	West Lerdo Hwy and South Wall St	Shafter	CA	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
32	Ronald Sneed	Male	Black	January	7	2015	300 Yaupon St	Freeport	TX	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
45	Ronell Wade	Male	Black	May	17	2015	15746 Union Ave	Harvey	IL	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
51	Roy Day	Male	White	February	14	2015	Gale St	Laredo	TX	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
31	RubÌ_å©n GarcÌ__a Villalpando	Male	Hispanic/Latino	February	20	2015	2500 Texas Hwy 121	Euless	TX	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
54	Russell Sharrer	Male	White	February	27	2015	1016 N 4th Ave	Pasco	WA	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
31	Ryan Burgess	Male	White	March	11	2015	2241 Lucille Ave	Kingman	AZ	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
23	Salome Rodriguez Jr	Male	Hispanic/Latino	March	13	2015	184 W 3rd St	Pomona	CA	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
29	Salvador Figueroa	Male	Hispanic/Latino	January	11	2015	Circle K, 1301 N Eastern Ave	Las Vegas	NV	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
28	Salvador Muna	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
31	Sam Holmes	Male	Black	May	8	2015	University Ave NE and I-694	Fridley	MN	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
24	Santos 'Cuate' Cortez Hernandez	Male	Hispanic/Latino	April	20	2015	NA	Mission	TX	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
27	Sawyer Flache	Male	White	February	8	2015	Texas Hwy 71 and Silvermine Dr	Austin	TX	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
57	Scott Dunham	Male	White	March	24	2015	2600 Senter Rd	San Jose	CA	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
39	Scott McAllister	Male	Unknown	May	27	2015	33 Bayside Pkwy	Middletown	NJ	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
38	Sean Pelletier	Male	White	May	14	2015	6095 Anna's Ln	Portage	MI	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
34	Sergio Navas	Male	Hispanic/Latino	March	5	2015	N Pass Ave and W National Ave	Burbank	CA	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
39	Shane Watkins	Male	White	March	19	2015	1040 County Rd 249	Moulton	AL	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
20	Shaquille Barrow	Male	Black	March	2	2015	Richards St	Joliet	IL	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
35	Shaun Johnson	Male	White	May	8	2015	59705 E Bidegain Pl	Kearny	AZ	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
36	Shawn Clyde	Male	White	April	1	2015	110 Nottinghill Ln	Hamilton Township	NJ	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
38	Sheldon Haleck	Male	Asian/Pacific Islander	March	16	2015	364 S King St	Honolulu	HI	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
33	Simon Hubble	Male	White	May	27	2015	3600 Emmanuel Way	Alpine	CA	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
57	Sinthanouxay Khottavongsa	Male	Asian/Pacific Islander	January	16	2015	5900 Xerxes Ave N	Minneapolis	MN	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
38	Stanley Grant	Male	Black	February	20	2015	2200 Green Springs Hwy	Birmingham	AL	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
72	Stanley Watson	Male	White	April	15	2015	3120 East Main St	CaÌ_å±on City	CO	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
37	Stephanie Hill	Female	White	February	28	2015	I-10	La Paz County	AZ	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
47	Stephen Cunningham	Male	White	May	11	2015	3420 S Proctor St	Tacoma	WA	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
43	Steven Davenport	Male	White	April	21	2015	Old Hwy 19 SE	Meridian	MS	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
37	Steven Snyder	Male	White	March	24	2015	760 W Johnson St	Fond du Lac	WI	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
75	Talbot Schroeder	Male	White	January	14	2015	40 Cedar Grove Pl	Old Bridge Township	NJ	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
21	Terence Walker	Male	Black	January	17	2015	Old Agency Baptist Church	Muskogee	OK	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
20	Terrance Kellom	Male	Black	April	27	2015	9500 Evergreen Rd	Detroit	MI	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
29	Terrance Moxley	Male	Black	March	10	2015	280 N Main St	Mansfield	OH	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
37	Terry Garnett Jr	Male	Black	March	11	2015	Augustine Herman Hwy & E Lewis Shore Rd	Elkton	MD	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
41	Terry Price	Male	Black	February	21	2015	951 West 36th St N	Tulsa	OK	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
22	Tevin Barkley	Male	Black	April	15	2015	800 NW 75th St	Miami	FL	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
23	Thaddeus McCarroll	Male	Black	April	17	2015	9200 Riverwood Dr	Jennings	MO	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
64	Theodore Johnson	Male	Black	March	10	2015	6902 Ottawa Rd	Cleveland	OH	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
34	Thomas Allen Jr	Male	Black	March	1	2015	Morton Ave and Chatham Ave	St Louis	MO	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
49	Thomas Hamby	Male	White	January	8	2015	2964 W 2125 S	Syracuse	UT	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
32	Thong Kien Ma	Male	Asian/Pacific Islander	May	5	2015	10400 Enloe St	South El Monte	CA	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
25	Tiano Meton	Male	Black	January	22	2015	I-10	Sierra Blanca	TX	31.172832	-105.357927	US Border Patrol	Gunshot	Other
39	Tiffany Terry	Female	White	January	30	2015	1702 S 50th St	Omaha	NE	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
53	Tim Elliott	Male	Unknown	January	2	2015	600 E Island Lake Dr	Shelton	WA	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
27	Timothy Jones	Male	White	May	17	2015	111 Otero Dr	Ruidoso	NM	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
36	Todd Allen Hodge	Male	White	January	21	2015	40200 Clark Dr	Hemet	CA	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
20	Todd Jamal Dye	Male	Black	April	24	2015	1505 E Main St	Trinidad	CO	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
39	Tommy Smith	Male	White	January	12	2015	224 Circle Dr	Arcola	IL	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
19	Tony Robinson	Male	Black	March	6	2015	1125 Williamson St	Madison	WI	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
34	Tony Ross	Male	White	March	6	2015	Lamar St and Whitworth St	Sulphur Springs	TX	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
36	Troy Boyd	Male	White	March	15	2015	McEwien Swamp Rd	Ruth	MS	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
34	Tyrel Vick	Male	White	March	20	2015	Oklahoma Hwy 48 and E1750 Rd	Wapanucka	OK	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
31	Tyrell Larsen	Male	White	April	6	2015	E 100 N	Rigby	ID	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
45	Tyrone Ryerson	Male	Black	March	5	2015	468 E Plainfield Ave	Milwaukee	WI	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
34	Tyson Hubbard	Male	White	March	5	2015	27th St and Fletcher Ave	Lincoln	NE	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
Unknown	Unknown	Male	Unknown	January	16	2015	Co Rd 2718	Mabank	TX	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
Unknown	Unknown	Female	Unknown	May	25	2015	6505 Shirley Ave	Austin	TX	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
Unknown	Unknown	Male	White	June	1	2015	271 Greece Ridge Center Dr	Rochester	NY	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
31	Victor Reyes	Male	Hispanic/Latino	January	31	2015	West Little York Rd	Houston	TX	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
28	Victor Terrazas	Male	Hispanic/Latino	March	25	2015	10200 S Vermont Ave	Los Angeles	CA	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
57	Vincent Cordaro	Male	White	February	9	2015	N Little Tor Rd	New City	NY	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
29	Walter Brown III	Male	Black	March	24	2015	19 Colin Drive S	Portsmouth	VA	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
50	Walter Scott	Male	Black	April	4	2015	1945 Remount Rd	North Charleston	SC	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
40	Wendell King	Male	White	January	29	2015	4800 Hildring Dr E	Forth Worth	TX	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
35	Wilber Castillo-Gongora	Male	Hispanic/Latino	February	5	2015	US-287	Electra	TX	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
53	William 'Rusty' Smith	Male	White	March	10	2015	700 Valley St	Hoover	AL	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
59	William Campbell	Male	Unknown	January	25	2015	335 New Brooklyn Rd	Berlin	NJ	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
18	William Chapman II	Male	Black	April	22	2015	1098 Frederick Blvd	Portsmouth	VA	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
28	William Dick III	Male	Native American	April	4	2015	Bureau of Indian Affairs Rd 66	Tonasket	WA	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
52	William Poole	Male	White	March	16	2015	130 Wedowee Ln	Gaston	NC	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
38	Yuvette Henderson	Female	Black	February	3	2015	3800 Hollis St	Oakland	CA	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
48	Zaki Shinwary	Male	Unknown	January	16	2015	Lake Arrowhead Ave and Great Salt Lake Dr	Fremont	CA	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: -
--

COPY city (city, name, age, gender, raceethnicity, month, day, year, streetaddress, state, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
city	name	age	gender	raceethnicity	month	day	year	streetaddress	state	latitude	longitude	lawenforcementagency	cause	armed
Millbrook	A'donte Washington	16	Male	Black	February	23	2015	Clearview Ln	AL	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
Pineville	Aaron Rutledge	27	Male	White	April	2	2015	300 block Iris Park Dr	LA	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
Kenosha	Aaron Siler	26	Male	White	March	14	2015	22nd Ave and 56th St	WI	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
South Gate	Aaron Valdez	25	Male	Hispanic/Latino	March	11	2015	3000 Seminole Ave	CA	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
Munroe Falls	Adam Jovicic	29	Male	White	March	19	2015	364 Hiwood Ave	OH	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
Phoenix	Adam Reinhart	29	Male	White	March	7	2015	18th St and Palm Ln	AZ	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
Bakersfield	Adrian Hernandez	22	Male	Hispanic/Latino	March	27	2015	4000 Union Ave	CA	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
Wilmington	Adrian Solis	35	Male	Hispanic/Latino	March	26	2015	1500 Bayview Ave	CA	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
Sunset	Alan Alverson	44	Male	White	January	28	2015	Pickett Runn Rd	TX	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
Wyoming	Alan James	31	Male	White	February	7	2015	200 Abbie St SE	MI	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
Hanford	Albert Hanson Jr	76	Male	White	April	26	2015	7th Ave and Kansas Ave	CA	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
Rancho Santa Margarita	Alec Ouzounian	40	Male	White	May	12	2015	28 Paseo Viento	CA	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
Houston	Alejandro Salazar	Unknown	Male	Hispanic/Latino	February	20	2015	1200 E Airtex Dr	TX	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
Terre Haute 	Alexander Long	31	Male	White	February	25	2015	25th St and Poplar St	IN	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
Indianapolis	Alexander Myers	23	Male	White	April	6	2015	5700 block Ashby Dr	IN	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
Nashville	Alexander Rivera	39	Male	Hispanic/Latino	May	30	2015	1128 Murfreesboro Pike	TN	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
Atlanta	Alexia Christian	25	Female	Black	April	30	2015	141 Pryor St SW	GA	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
Arlington	Alfredo Rials-Torres	54	Male	Hispanic/Latino	May	19	2015	4219 2nd Road N	VA	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
San Francisco	Alice Brown	24	Female	White	March	17	2015	Van Ness Ave and Pine St	CA	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
San Francisco	Alvin Haynes	57	Male	Black	January	26	2015	1 Moreland Dr	CA	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
San Francisco	Amilcar Perez-Lopez	21	Male	Hispanic/Latino	February	26	2015	Folsom St and 24th St	CA	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
Norfolk	Andre Murphy Sr	42	Male	Black	January	7	2015	1223 Omaha Ave	NE	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
Kansas City	Andres Lara-Rodriguez	21	Male	Hispanic/Latino	February	13	2015	S 12th St and Ruby St	KS	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
Fontana	Andrew Driver	36	Male	White	March	13	2015	9700 Kempster Ave	CA	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
Chickasha	Andrew Jackson	26	Male	White	April	29	2015	1200 W Florida Ave	OK	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
Medford	Andrew Shipley	49	Male	White	March	17	2015	360 Argyle Ct	OR	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
Derry	Andrew Toto	54	Male	White	January	21	2015	Scobie Pond Rd and Julian Rd	NH	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
Sylmar	Andrew Valadez	26	Male	White	April	23	2015	Tyler St and Glenoaks Blvd	CA	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
Putnam Hall	Andrew Williams	48	Male	Black	March	6	2015	Putnam Loop Rd	FL	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
El Paso	Andy Martinez	33	Male	Hispanic/Latino	January	9	2015	4400 Tetons Dr	TX	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
Corning	Angel Corona Jr	21	Male	Hispanic/Latino	April	10	2015	4740 Barham Ave	CA	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
Roxbury	Angelo West	41	Male	Black	March	27	2015	Humboldt Ave and Ruthven St	MA	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
Memphis	Anthony Bess	48	Male	Black	February	10	2015	4545 Aldridge Dr	TN	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
Huntsville	Anthony Briggs	36	Male	Black	May	25	2015	1100 E Gateway Dr SE	AL	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
Clarkesville	Anthony Giaquinta	41	Male	Hispanic/Latino	February	22	2015	Lower Pond Ct	GA	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
Lancaster	Anthony Gomez Jr	29	Male	Black	May	19	2015	305 E Walnut St	PA	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
Chamblee	Anthony Hill	27	Male	Black	March	9	2015	3028 Chamblee Dunwoody Rd	GA	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
Douglas	Anthony Purvis	45	Male	White	February	3	2015	1404 N June Ave	GA	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
Los Angeles	Antonio Perez	32	Male	Hispanic/Latino	March	12	2015	2400 Flower St	CA	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
Pasco	Antonio Zambrano-Montes	35	Male	Hispanic/Latino	February	10	2015	1107 W Lewis St	WA	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
Strong	Artago Howard	36	Male	Black	January	8	2015	9661 Strong Hwy	AR	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
Rome	Askari Roberts	35	Male	Black	March	17	2015	3189 Morton Bend Rd	GA	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
Oklahoma City	Aurelio Duarte	40	Male	Hispanic/Latino	March	8	2015	3632 SW 38th St	OK	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
St Petersburg	Austin Goodner	18	Male	White	May	17	2015	5236 Robin Ln N	FL	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
Burlington	Autumn Steele	34	Female	White	January	6	2015	104 N Garfield Ave	IA	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
Santa Ana	Benito Osorio	39	Male	Hispanic/Latino	March	11	2015	300 S Main St	CA	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
Baytown	Benjamin Quezada	21	Male	Hispanic/Latino	March	31	2015	West Texas Ave and Gaillard St	TX	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
Atlanta	Bernard Moore	62	Male	Black	March	6	2015	Metropolitan Pkwy and Fair Dr	GA	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
Gastonia	Betty Sexton	43	Female	White	February	17	2015	2325 Union Rd	NC	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
Albuquerque	Billy Grimm	44	Male	White	May	3	2015	Arenal Rd SW and Tapia Blvd SW	NM	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
Bunch	Billy Patrick	29	Male	White	April	26	2015	NA	OK	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
Washington	Bobby Gross	35	Male	Black	March	12	2015	700 14th St NW 	DC	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
Palm Bay	Bradford Leonard	50	Male	White	February	22	2015	900 Castile Rd SE	FL	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
Cleveland	Brandon Jones	18	Male	Black	March	19	2015	1077 Parkwood Dr	OH	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
Victoria	Brandon Lawrence	25	Male	White	April	25	2015	800 Simpson Rd	TX	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
Middleton	Brandon Rapp	31	Male	White	March	18	2015	9000 Charles Way	ID	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
Los Angeles	Brendon Glenn	29	Male	Black	May	6	2015	1602 Pacific Ave	CA	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
Eugene	Brian Babb	49	Male	White	March	31	2015	2200 Devos St	OR	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
South Gate	Brian Barbosa	23	Male	Unknown	January	11	2015	8900 Kauffman Ave	CA	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
Glenwood Springs	Brian Fritze	45	Male	White	February	10	2015	I-70 and US-6	CO	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
Los Angeles	Brian Pickett	26	Male	Black	January	6	2015	1600 E 123rd St	CA	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
Assaria	Brock Nichols	35	Male	White	January	6	2015	2388 E Kansas Hwy 4	KS	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
Colton	Bruce Steward	34	Male	White	February	15	2015	29000 S Wall St	OR	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
Honolulu	Bruce Zalonka	46	Male	Asian/Pacific Islander	May	12	2015	1031 Nuuanu Ave	HI	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
Elizabethtown	Byron Herbert	29	Male	Black	March	29	2015	111 Towne Dr	KY	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
Coconut Creek	Calvon Reid	39	Male	Black	February	22	2015	1701 Andros Isle	FL	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
Stockton	Carl Lao	28	Male	Asian/Pacific Islander	March	4	2015	South San Joaquin St and East Church St	CA	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
Bisbee	Carlos Saavedra Ramirez	51	Male	Hispanic/Latino	April	22	2015	101 Naco Hwy	AZ	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
Gunlock	Carter Ray Castle	67	Male	White	January	18	2015	Kentucky Rte 7	KY	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
St Augustine	Cary Martin	53	Male	White	May	14	2015	497 Florida Ave	FL	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
Detroit	Caso Jackson	25	Male	Black	May	23	2015	13331 Strathmoor St	MI	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
Cocoa	Cedrick Bishop	30	Male	Black	March	9	2015	Aurora St	FL	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
Houston	Celin Nunez	24	Male	Hispanic/Latino	April	13	2015	3 Greens Rd	TX	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
Marysville	Chance Thompson	35	Male	White	February	15	2015	Hammonton Smartville Rd	CA	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
Los Angeles	Charly 'Africa' Keunang	43	Male	Black	March	1	2015	500 San Pedro St	CA	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
Peltzer	Chazsten Freeman	24	Male	White	February	27	2015	South Carolina Rte 8 and Augusta Rd	SC	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
Morenci	Chris Ingram	29	Male	White	January	27	2015	Coronado Trail	AZ	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
Owensboro	Chrislon Talbott	38	Male	Black	May	21	2015	4585 Frederica St	KY	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
Jonesboro	Christopher Finley	31	Male	White	April	14	2015	900 Walnut St	AR	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
Portland	Christopher Healy	36	Male	White	March	22	2015	2300 SE 130th Ave	OR	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
Port Wentworth	Christopher Mitchell	23	Male	White	March	10	2015	6530 Georgia Rte 21	GA	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
Winchester	Christopher Prevatt	38	Male	White	April	3	2015	123 Gregory Pl	VA	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
Follansbee	Clifton Reintzel	53	Male	White	March	13	2015	600 Main St	WV	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
Provo	Cody Evans	24	Male	White	February	15	2015	1600 W 500 N	UT	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
Rosenberg	Cody Karasek	26	Male	White	January	28	2015	4100 Avenue I	TX	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
Columbia	Cornelius Parker	28	Male	Black	February	28	2015	E Broadway and US-63	MO	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
Moultrie	Crystal Miley	34	Female	White	February	26	2015	5101 Georgia Rte 133	GA	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
Jacksonville	D'Angelo Stallworth	28	Male	Black	May	12	2015	7300 Blanding Blvd	FL	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
Silver Spring	DaJuan Graham	40	Male	Black	May	12	2015	13900 Castle Blvd	MD	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
New York	Dalton Branch	51	Male	Black	May	26	2015	530 Stanley Ave	NY	40.6572562	-73.8886551	New York Police Department	Gunshot	No
Sidney	Dana Hlavinka	44	Male	White	April	19	2015	1363 Clark Dr	NE	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
Fort Worth	Daniel Brumley	25	Male	Hispanic/Latino	January	17	2015	NE 36th St	TX	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
Marana	Daniel Caldwell	56	Male	White	February	16	2015	8351 N Cracker Barrel Rd	AZ	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
Lakewood	Daniel Covarrubias	37	Male	Hispanic/Latino	April	21	2015	3600 SW 108th St	WA	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
Clermont	Daniel Davis	58	Male	White	April	25	2015	8624 Firestone Cir	FL	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
Omaha	Daniel Elrod	39	Male	White	February	24	2015	1299 Hickory St	NE	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
San Manuel	Daniel Mejia	37	Male	Hispanic/Latino	February	15	2015	200 S McNab Pkwy	AZ	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
Union	Daniel Wolfe	35	Male	Black	April	21	2015	1714 Walker Ave	NJ	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
Baltimore	Darin Hutchins	26	Male	Black	January	24	2015	1900 McHenry St	MD	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
Oklahoma City	Darrell 'Hubbard' Gatewood	47	Male	Black	March	1	2015	616 SW 59th St	OK	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
Hagerstown	Darrell Brown	31	Male	Black	April	16	2015	402 North Prospect St	MD	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
Lancaster	Darrell Morgan	60	Male	White	May	28	2015	3164 Charlotte Hwy	SC	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
Rock Island	Darrin Langford	32	Male	Black	April	2	2015	12th Ave and Glenhurst Ct	IL	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
Rexburg	Daryl Myler	45	Male	White	January	24	2015	164 E Main St	ID	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
Lakeland	David Cuevas	42	Male	Hispanic/Latino	February	26	2015	4660 N Socrum Loop Rd	FL	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
Grand Junction	David Gaines	17	Male	White	May	19	2015	N 10th St and Gunnison Ave	CO	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
El Paso	David Gandara	22	Male	Hispanic/Latino	May	21	2015	5111 Fairbanks Dr	TX	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
Wasco	David Garcia	33	Male	Hispanic/Latino	January	26	2015	1134 E St	CA	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
Wake Forest	David Johnson	18	Male	White	May	7	2015	300 Stone Monument Dr	NC	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
Rockwood	David Kapuscinski	39	Male	White	April	16	2015	14680 Middle Gibraltar Rd	MI	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
Hanover	David Kassick	59	Male	White	February	2	2015	36 Grandview Rd	PA	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
Muskogee County	David Lynch	33	Male	White	April	3	2015	11974-11998 US-64	OK	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
Mansfield	David Parker	58	Male	White	April	28	2015	36 Randall Rd	OH	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
Constantania	David Schwalm	58	Male	White	May	8	2015	168 Auringer Rd	NY	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
Tallulah	David Watford	47	Male	White	March	17	2015	US-65	LA	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
Branford	David Werblow	41	Male	White	March	15	2015	134 Burban Dr	CT	41.2693481	-72.8428955	Branford Police Department	Taser	Other
Los Angeles	Dean Bucheit	64	Male	White	February	9	2015	13600 Culver Blvd	CA	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
Garden Grove	Dean Genova	45	Male	White	April	26	2015	13822 Brookhurst St	CA	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
Gardner	Deanne Choate	53	Female	White	March	26	2015	400 N Birch	KS	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
Dublin	Declan Owen	24	Male	White	March	17	2015	8100 North Carolina Hwy 41	NC	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
Harvey	Dedrick Marshall	48	Male	Black	May	8	2015	3020 Destrehan Ave	LA	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
Lauderhill	Demaris Turner	29	Male	Black	January	23	2015	1980 NW 46 Ave	FL	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
New York	Denis Reyes	40	Male	Hispanic/Latino	May	15	2015	274 E 194th St	NY	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
San Diego	Dennis Fiel	34	Male	White	May	17	2015	7700 Mesa College Dr	CA	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
Bay Shore	Denzel Brown	21	Male	Black	March	22	2015	1851 Sunrise Hwy	NY	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
Deltona	Derek Cruice	26	Male	White	March	4	2015	800 Maybrook Dr	FL	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
Dallas	Desmond Luster	45	Male	Black	February	9	2015	7400 Bonnie View Rd	TX	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
Harvey	Desmond Willis	25	Male	Black	April	6	2015	2515 Manhattan Blvd	LA	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
Roxand Township	Deven Guilford	17	Male	White	March	1	2015	331 W Grand Ledge Hwy	MI	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
Santa Clara	Devin Gates	24	Male	Black	March	22	2015	2105 Scott Blvd	CA	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
Scottsdale	Dewayne Carr	42	Male	Black	January	15	2015	Chaparral Rd and Hayden Rd	AZ	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
Antioch	Dewayne Ward Jr	29	Male	Black	February	3	2015	1000 Claudia Ct	CA	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
Valdosta	Dexter Bethea	42	Male	Black	April	8	2015	3022 James Rd	GA	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
Culpeper	Dominick Wise	30	Male	Black	March	30	2015	1301 Spring Meadow Ln	VA	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
Monon	Don Smith	29	Male	Black	April	9	2015	8516 N Meridian Rd	IN	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
Albany	Donald 'Dontay' Ivy	39	Male	Black	April	2	2015	Lark St and Second St	NY	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
Metropolis	Donald Hicks	63	Male	White	April	2	2015	Illinois Rte 145 and Waldo Church Rd	IL	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
Lucedale	Donald Matkins	49	Male	White	March	1	2015	Mt Pleasant Rd	MS	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
Spartanburg	Donte Noble	41	Male	Black	April	15	2015	200 Canaan Pointe Dr	SC	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
Indianapolis	Donte Sowell	27	Male	Black	January	15	2015	East 38th St and North Mitthoeffer Rd	IN	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
Tewksbury	Doug Sparks	30	Male	White	February	17	2015	Forest Ave	MA	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
San Antonio	Douglas Faith	60	Male	White	April	8	2015	Karen Ln and Corinne Dr	TX	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
Birmingham	Douglas Harris	77	Male	Black	March	27	2015	7901 1st Ave S	AL	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
Cottonwood	Ebin Proctor	19	Male	Unknown	May	30	2015	Yuma Circle	AZ	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
Ontario	Edixon Franco	37	Male	Hispanic/Latino	March	10	2015	Fern Ave and Phillips St	CA	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
Randallstown	Edward Bright Sr	54	Male	Black	January	31	2015	9800 Liberty Rd	MD	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
Hemet	Elias Cavazos	29	Male	Hispanic/Latino	April	17	2015	Girard Street and Acacia Ave	CA	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
Garland	Elton Simpson	30	Male	Black	May	3	2015	4999 Naaman Forest Blvd	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
Hackensack	Elvin Diaz	24	Male	Hispanic/Latino	May	21	2015	10 Temple Ave	NJ	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
Cottonwood	Enoch Gaver	21	Male	White	March	21	2015	2003 E Rodeo Dr	AZ	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
Tulsa	Eric Harris	44	Male	Black	April	2	2015	1900 block N Harvard Ave	OK	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
Eagar	Eric Robinson	40	Male	White	May	23	2015	135 N Main St	AZ	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
Shawnee	Erick Rose	32	Male	White	April	7	2015	Post Office Neck Rd and Lake Rd	OK	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
El Paso	Erick Sanchez	22	Male	Hispanic/Latino	April	30	2015	11565 James Watt Dr	TX	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
Phoenix	Erik Tellez	43	Male	White	April	18	2015	20th St and Thomas Rd	AZ	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
Pomona	Ernesto Flores	52	Male	Hispanic/Latino	April	15	2015	11157 Chico Ave	CA	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
Santa Ana	Ernesto Javier Canepa Diaz	27	Male	Hispanic/Latino	February	27	2015	1000 W 3rd St	CA	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
Edgewood	Ethan Noll	34	Male	White	April	4	2015	Mountainair St	NM	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
Onalaska	Eugene Smith II	20	Male	White	March	17	2015	313 S Houston Ave	TX	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
Salisbury	Fednel Rhinvil	25	Male	Black	March	3	2015	East Rd and Olivia St	MD	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
New York	Felix David	24	Male	Black	April	25	2015	538 E Sixth St	NY	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
Long Beach	Feras Morad	20	Male	Unknown	May	27	2015	4600 E 15th St	CA	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
Dadeville	Fletcher Stewart	46	Male	White	February	11	2015	Booger Hollow Rd	AL	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
Apple Valley	Francis Rose III	42	Male	White	February	2	2015	9000 Buena Vista St	CA	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
Las Vegas	Francis Spivey	43	Male	White	February	25	2015	5300 East Craig Road	NV	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
Houston	Frank 'Trey' Shephard III	41	Male	Black	April	15	2015	Castlegory Rd and Wallisville Rd	TX	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
Kansas City	Fred Liggett Jr	59	Male	White	March	13	2015	8700 E 97th Ter	MO	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
Baltimore	Freddie Gray	25	Male	Black	April	12	2015	Mount St and Presbury St	MD	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
San Diego	Fridoon Rawshannehad	42	Male	White	April	30	2015	3200 Hancock St	CA	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
Tallahassee	Garland Wingo	64	Male	White	March	18	2015	Lake Ella	FL	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
Chatham	Garrett Gagne	22	Male	White	January	1	2015	Crowell Rd and Tipcart Dr	MA	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
Edmond	Garrett Sandeno	24	Male	White	May	27	2015	1701 Ridgecrest Rd	OK	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
Miami	Gary Collins	63	Male	White	April	25	2015	H St NW and 20th Ave NW	OK	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
Encinitas	Gary Kendrick	56	Male	White	March	27	2015	Shadytree Ln and Glen Arbor Dr	CA	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
Harmony	Gary Page	60	Male	White	March	21	2015	1790 E Voorhees St	IN	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
Bay Minette	Gilbert Fleury	54	Male	White	March	11	2015	Cliffs Landing Rd	AL	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
Oklahoma City	Glenn Lewis	37	Male	Black	February	25	2015	2201 NW 27th St	OK	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
Navarre	Gordon Kimbrell Jr	22	Male	White	April	9	2015	9265 Quail Roost Dr	FL	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
Crown Point	Gregory Smith	39	Male	White	March	30	2015	2293 N Main St	IN	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
Panama City	Grover Sapp Jr	45	Male	White	April	18	2015	1200 Beck Ave	FL	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
Eatonton	Harry Davis	57	Male	White	May	27	2015	Sparta Hwy and Oconee Springs Rd	GA	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
Fort Ashby	Harvey Oates	42	Male	White	March	27	2015	Horseshoe Run Rd	WV	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
Columbus	Hashim Abdul-Rasheed	41	Male	Black	January	7	2015	4600 International Gateway	OH	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
Long Beach	Hector Morejon	19	Male	Hispanic/Latino	April	23	2015	1100 Hoffman Ave	CA	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
Oklahoma City	Herbert Hill	26	Male	Black	February	6	2015	1000 SW 62nd St	OK	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
Iuka	Howard Brent Means Jr	34	Male	White	February	15	2015	1110 Battleground Dr	MS	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
Stanford	Howard Robbins	69	Male	White	January	16	2015	US-150	KY	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
Hackensack	Hue Dang	64	Female	Asian/Pacific Islander	March	9	2015	E Kennedy St	NJ	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
Houston	Hung Trieu	35	Male	Asian/Pacific Islander	February	2	2015	13442 Bellaire Blvd	TX	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
Tarboro	Ian Sherrod	40	Male	Black	February	28	2015	2300 block Main St	NC	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
St Louis	Isaac Holmes	19	Male	Black	January	21	2015	4200 St Louis Ave	MO	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
Alton	Isaac Jimenez	27	Male	Hispanic/Latino	April	13	2015	3400 Lincoln Ave	IL	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
Orlando	Izzy Colon	37	Male	Hispanic/Latino	February	4	2015	4304 Pershing Pointe Pl	FL	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
Bay City	Jacob Haglund	17	Male	White	February	2	2015	1600 3rd St	MI	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
Fort Pierce	Jamalis Hall	39	Male	Black	March	27	2015	1000 block Mayflower Rd	FL	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
Gastonia	James Allen	74	Male	Black	February	7	2015	2701 Mary Ave	NC	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
Salt Lake City	James Barker	42	Male	White	January	8	2015	600 Second Ave	UT	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
Palestine	James Bushey	47	Male	White	June	1	2015	2225 Texas Hwy 256 Loop	TX	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
Charleston	James Cooper	43	Male	White	May	20	2015	3271 Dartmouth Dr	SC	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
Craig	James Damon	46	Male	White	March	9	2015	US-40	CO	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
Clarendon	James Ellis	44	Male	White	March	21	2015	New York State Rte 31A	NY	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
Memphis	James Greenwell	31	Male	White	March	11	2015	700 N Auburndale St	TN	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
Green Ridge	James Horn Jr	47	Male	White	May	23	2015	SE 650th Rd	MO	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
Napa	James Jimenez	41	Male	Hispanic/Latino	March	13	2015	1410 Hill Ave	CA	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
Tulsa	James Moore	43	Male	White	March	22	2015	5900 S Lewis Ave	OK	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
Medford	James Morris	40	Male	Unknown	May	31	2015	Juanipero Way and La Loma Dr	OR	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
Northglenn	James Strong	32	Male	Black	May	28	2015	10900 E 109th Pl	CO	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
Baton Rouge	Jamie Croom	31	Male	Black	March	10	2015	10064 Elm Grove Garden Dr	LA	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
Sumas	Jamison Childress	20	Male	White	March	19	2015	Kneuman Rd	WA	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
Charlotte	Janisha Fonville	20	Female	Black	February	19	2015	Bellefonte Dr	NC	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
Ocala	Jared Forsyth	33	Male	White	April	6	2015	11120 NW Gainesville Rd	FL	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
New Orleans	Jared Johnson	22	Male	Black	April	28	2015	8400 Chef Menteur Hwy	LA	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
Rudioso	Jason Carter	41	Male	White	February	21	2015	298 Gavilan Canyon Rd	NM	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
Ridgefield Park	Jason Champion	41	Male	Black	May	6	2015	I-95	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
Salemburg	Jason Evans	32	Male	White	April	12	2015	North Carolina Hwy 242 and Reeda Branch Rd	NC	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
Essex	Jason Hendrix	16	Male	White	February	14	2015	1486 Hyde Park Rd	MD	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
Modesto	Jason Moland	29	Male	Black	March	30	2015	3700 Beyer Park Dr	CA	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
Columbus	Jason Smith	42	Male	White	March	20	2015	4604 Summit St	OH	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
Fort Lauderdale	Javoris Washington	29	Male	Black	May	21	2015	SW 29th Ave and SW 29th Terrace	FL	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
Bakersfield	Jeff Alexander	47	Male	White	March	17	2015	1125 1/2 19th St	CA	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
Emporia	Jeffery Adkins	53	Male	Black	April	30	2015	200 Elm Rd	VA	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
Chicago	Jeffery Kemp	18	Male	Black	April	17	2015	74th Street and Merrill Ave	IL	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
Williamsburg	Jeffrey Jackson	47	Male	White	March	22	2015	Kentucky Rte 92	KY	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
Draper	Jeffrey Nielson	34	Male	White	January	14	2015	120 Honey Berry Ct	UT	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
Conyers	Jeffrey Pitts	36	Male	White	May	31	2015	3500 Ebenezer Rd	GA	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
Waikoloa Village	Jeffrey Surnow	63	Male	White	March	1	2015	Waikoloa Rd	HI	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
Tampa Bay	Jeremy Anderson	36	Male	White	March	31	2015	1600 Grass Lake Dr	FL	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
Johnsonville	Jeremy Kelly	27	Male	Black	March	25	2015	Dixie St	SC	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
Tallahassee	Jeremy Lett	28	Male	Black	February	5	2015	2400 W Tharpe St	FL	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
Columbus	Jermonte Fletcher	33	Male	Black	January	27	2015	265 Buffalo Ct	OH	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
Charleston	Jerome Caldwell	32	Male	Black	May	21	2015	83 Beaufain St	SC	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
Allentown	Jerome Nichols	42	Male	White	February	23	2015	N Plymouth St	PA	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
Gettysburg	Jess Leipold	31	Male	White	April	9	2015	45 Major Bell Ln	PA	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
Denver	Jessica Hernandez	17	Female	Hispanic/Latino	January	26	2015	Newport St & E 25th Ave	CO	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
Tuscon 	Jessica Uribe	28	Female	Unknown	February	28	2015	1113 W St Mary's Rd	AZ	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
Bossier City	Jessie Williams	24	Male	White	May	26	2015	200 John Wesly Blvd	LA	32.5170212	-93.7078476	FBI	Gunshot	Firearm
England	Jimmy Foreman	71	Male	Unknown	January	9	2015	422 SE 3rd St	AR	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
Waco	Jimmy Robinson Jr	51	Male	Black	February	4	2015	I-35	TX	31.593082	-97.108858	Waco Police Department	Gunshot	No
Phoenix	Joaquin Hernandez	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
Nashville	John Acree	53	Male	White	April	30	2015	812 Forest Hills Dr	TN	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
Boulder City	John Allen	54	Male	White	March	30	2015	841 Avenue A	NV	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
Robinsonville	John Ballard Gorman	45	Male	White	January	21	2015	3468 Casino Way	MS	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
Sarasota	John Kaafi	33	Male	White	May	7	2015	8th St and N Orange Ave	FL	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
Billings	John Marshall	48	Male	White	January	30	2015	Billings Clinic, 2800 10th Ave N	MT	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
Albuquerque	John O'Keefe	34	Male	White	January	13	2015	Constitution Ave and San Mateo Blvd	NM	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
Wichita	John Quintero	23	Male	Hispanic/Latino	January	3	2015	500 North Oliver Ave	KS	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
Calimesa	John Sawyer	35	Male	White	February	5	2015	1200 Calimesa Blvd	CA	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
Anchorage	John Whittaker	33	Male	Hispanic/Latino	February	10	2015	1503 Medfra St	AK	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
Maricopa	Johnathon Guillory	32	Male	White	January	18	2015	Greenland Park Dr	AZ	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
Green	Jonathan Colley	52	Male	White	May	20	2015	2569 Raber Rd	OH	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
New York	Jonathan Efraim	30	Male	White	April	22	2015	16802 Hillside Ave	NY	40.7098999	-73.7943573	New York Police Department	Gunshot	No
San Bernadino	Jonathan Harden	23	Male	White	February	13	2015	4023 University Pkwy	CA	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
Cabot	Jonathan McIntosh	35	Male	White	May	19	2015	900 E Main St	AR	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
Arlington	Jonathan Paul	42	Male	Black	March	12	2015	300 E Mitchell St	TX	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
Port St Joe	Jonathan Pierce	37	Male	White	February	12	2015	Port St Joe Police Station, 410 Williams Ave	FL	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
Levelland	Jose Antonio Espinoza Ruiz	56	Male	Hispanic/Latino	January	23	2015	202 Avenue A	TX	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
Fairfield	Jose Ceja	36	Male	Hispanic/Latino	January	15	2015	2007 Sousa Ct	CA	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
Delano	Jose Herrera	27	Male	Hispanic/Latino	April	22	2015	3000 W Cecil Ave	CA	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
Green Bay	Joseph Biegert	30	Male	White	February	24	2015	1500 Plymouth Ln	WI	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
Rosemont	Joseph Caffarello	31	Male	White	January	7	2015	6100 Scott St	IL	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
Orlando	Joseph Paffen	46	Male	White	February	8	2015	4501 Hoffner Ave	FL	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
Rufe	Joseph Potts	51	Male	White	April	23	2015	182 N4430 Rd	OK	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
Lawrenceville	Joseph Roy	72	Male	Unknown	May	7	2015	2853 Avalon Meadows Ct	GA	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
Highland	Joseph Slater	28	Male	White	April	15	2015	27767 Base Line	CA	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
Glendale	Joseph Tassinari	63	Male	White	March	24	2015	6600 W Christy Dr	AZ	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
Sunnyvale	Joseph Weber	28	Male	White	April	8	2015	Tasman Dr and Lawrence Expy	CA	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
Mesa	Joshua Deysie	33	Male	Hispanic/Latino	April	29	2015	1400 E Harmony Ave	AZ	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
Tahoka	Joshua Garcia	24	Male	Hispanic/Latino	January	26	2015	2500 FM1054	TX	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
Marion	Joshua Green	27	Male	White	April	28	2015	1408 W Main St	IL	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
Lukachukai	Justin Fowler	24	Male	Native American	March	19	2015	Indian Rte 13	AZ	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
St Paul	Justin Tolkinen	28	Male	White	March	16	2015	400 White Bear Ave	MN	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
St Augustine	Justin Way	28	Male	White	May	11	2015	225 Presidents Cup Way	FL	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
Zion	Justus Howell	17	Male	Black	April	4	2015	2300 Gilead Ave	IL	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
Sebastopol	Karen Janks	46	Female	White	April	23	2015	2661 Gravenstein Hwy S	CA	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
Fallsburg	Karl Taylor	52	Male	Black	April	14	2015	325 Riverside Dr	NY	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
Aurora	Kavonda Payton	39	Male	Black	January	16	2015	138 Del Mar Cir	CO	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
Peoria 	Kaylene Stone	49	Female	White	March	18	2015	6735 W Peoria Ave	AZ	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
Fort Worth	Kelvin Goldston	30	Male	Black	May	11	2015	6024 Wheaton Dr	TX	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
Phoenix	Ken Cockerel	51	Male	White	April	3	2015	W Union Hills Dr and N 39th Ave	AZ	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
Jacksonville	Kendre Alston	16	Male	Black	March	19	2015	1800 Helena St	FL	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
Guthrie	Kenneth Brown	18	Male	White	January	4	2015	NA	OK	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
Chandler	Kenneth Buck	22	Male	Hispanic/Latino	January	5	2015	E Knox Rd	AZ	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
Carrollton	Kenneth Dothard	40	Male	Black	May	28	2015	900 Bankhead Hwy	GA	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
Smyrna	Kenneth Kreyssig	61	Male	White	February	10	2015	645 Smyrna Center Rd	ME	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
Smyrna	Kenneth Mathena	52	Male	White	May	2	2015	30 Malvern Ln	DE	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
Indianapolis	Kent Norman	51	Male	White	February	21	2015	1800 Heather Cir	IN	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
Lyndhurst	Kevin Allen	36	Male	Black	May	29	2015	355 Valley Brook Ave	NJ	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
Roosevelt	Kevin Norton	36	Male	White	May	3	2015	210 W 300 N	UT	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
Columbia	Kimber Key	59	Male	White	April	21	2015	107 White Falls Dr	SC	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
Longview	Kristiana Coignard	17	Female	White	January	22	2015	Longview Police Department, 302 W Cotton St	TX	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
Trenton	Kyle Baker	18	Male	White	May	28	2015	2800 Longmeadow Dr	MI	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
Nocona	Larry Hostetter	41	Male	White	February	9	2015	200 Jordan Dr	TX	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
Anchorage	Larry Kobuk	33	Male	Native American	January	28	2015	Corrections Department, 1400 E 4th Ave	AK	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
Miami Gardens	Lavall Hall	25	Male	Black	February	15	2015	19157 NW 3rd Ave	FL	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
St Louis	Ledarius Williams	23	Male	Black	February	3	2015	Minnesota Ave and Meramec St	MO	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
Pittsburgh	Leslie Sapp III	47	Male	Black	January	6	2015	Redlyn St	PA	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
Penrose	Lester Brown	58	Male	White	March	9	2015	85 Almost Home Rd	NC	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
Aloha	Lewis Lembke	47	Male	White	January	2	2015	4505 SW Masters Loop	OR	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
Landover	Lionel Young	34	Male	Black	May	10	2015	950 Nalley Rd	MD	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
Huntley	Loren Simpson	28	Male	White	January	8	2015	3618 White Buffalo Rd	MT	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
Spokane	Lorenzo Hayes	37	Male	Black	May	13	2015	N Addison St and E Sanson Ave	WA	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
Catskill	Louis Becker	87	Male	White	January	14	2015	New York State Rte 23 and Cairo Junction Rd	NY	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
Boulder	Lue Vang	39	Male	Asian/Pacific Islander	April	22	2015	4100 Eldorado Springs Dr	CO	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
Elk Grove	Luis Chavez-Diaz	27	Male	Hispanic/Latino	April	29	2015	1624 Hood Franklin Rd	CA	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
Los Angeles	Luis Molina Martinez	35	Male	Hispanic/Latino	April	21	2015	3400 Manitou Ave	CA	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
Indianapolis	Mack Long	36	Male	Black	April	12	2015	E 31st St and N Sherman Dr	IN	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
St Paul	Marcus Golden	24	Male	Black	January	14	2015	261 E University Ave	MN	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
Omaha	Marcus Wheeler	26	Male	Black	May	20	2015	3057 Martin Ave	NE	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
Chesapeake	Mario Jordan	34	Male	Black	January	14	2015	Sir Gawaine Dr	VA	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
Columbia	Mark Adair	51	Male	White	April	15	2015	Hitt St and Elm St	MO	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
Salemburg	Mark Cecil Hawkins	49	Male	White	April	24	2015	1940 Turner Rd SE	OR	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
Rockford	Mark Farrar	41	Male	White	May	15	2015	1806 16th Ave	IL	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
Kellyville	Mark Smith	54	Male	White	April	8	2015	W 141st St and 257th W Ave	OK	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
Chino	Paul Johnson	59	Male	White	February	4	2015	7100 Pine Ave	CA	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
Memphis	Markell Atkins	36	Male	Black	February	4	2015	3800 Vernon Ave	TN	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
Fort Lauderdale	Markus Clark	26	Male	Black	May	20	2015	600 NW 27th Ave	FL	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
Stockton	Matautu Nuu	35	Male	Asian/Pacific Islander	January	28	2015	Martinique Ct	CA	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
Savannah	Matthew Ajibade	22	Male	Black	January	1	2015	1050 Carl Griffin Dr	GA	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
Huntingdon	Matthew Belk	27	Male	White	February	13	2015	2420 Terry Rd	TN	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
Sacramento	Matthew Coates	42	Male	White	May	16	2015	2010 61st St	CA	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
San Francisco	Matthew Hoffman	32	Male	White	January	4	2015	630 Valencia St	CA	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
Eaton Rapids Township	Matthew Lundy	32	Male	White	February	17	2015	3800 Canfield Rd	MI	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
Tempe	Matthew Metz	25	Male	White	March	3	2015	College Ave and Curry Rd	AZ	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
Oxnard	Meagan Hockaday	26	Female	Black	March	27	2015	500 W Vineyard Ave	CA	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
Chavies	Michael Asher	53	Male	White	May	4	2015	Doctors Row	KY	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
Boise	Michael Casper	26	Male	White	February	16	2015	Malad St and Gourley St	ID	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
Wilmore	Michael Foster	40	Male	White	April	19	2015	105 Hinkle St	KY	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
Enfield	Michael Gallagher	55	Male	White	May	10	2015	100 Whitfield St	NC	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
Robertsville	Michael Goebel	29	Male	White	January	14	2015	600 Spring Dr	MO	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
Springfield	Michael Ireland	31	Male	White	February	18	2015	1400 N Marion Ave	MO	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
Kaumakani	Michael Kocher Jr	19	Male	White	January	3	2015	2600 Kaumualii Hwy	HI	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
Lake Isabella	Michael Lemon	57	Male	Unknown	April	8	2015	11936 California Rte 178	CA	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
Somerset	Michael Lowrey	40	Male	White	May	22	2015	1534 N Center Ave	PA	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
Claymount	Michael McKillop	35	Male	White	March	8	2015	Northtowne Plaza Shopping Center	DE	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
Beacon	Michael Murphy	35	Male	White	May	7	2015	I-84	NY	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
Evans	Michael Rodriguez	39	Male	Hispanic/Latino	January	5	2015	818 31st St	CO	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
Powder Springs	Michael Smashey	37	Male	White	February	23	2015	4817 W Mceachern Woods Dr	GA	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
Roma	Miguel Anguel de Santos-Rodriguez	36	Male	Hispanic/Latino	January	21	2015	ChapeÌ_å±o Rd	TX	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
Snohomish	Millard Tallant III	62	Male	White	May	26	2015	17500 Tester Rd 	WA	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
Anaheim	Monique Deckard	43	Female	Black	March	8	2015	900 S Euclid St	CA	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
Vancouver	Mychael Lynch	32	Male	White	March	23	2015	707 W 13th St	WA	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
Garland	Nadir Soofi	34	Male	Asian/Pacific Islander	May	3	2015	4999 Naaman Forest Blvd	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
Aurora	Naeschylus Vinzant	37	Male	Black	March	6	2015	16200 E 12th Ave	CO	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
Fairfax	Natasha McKenna	37	Female	Black	February	8	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	VA	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
Ville Platte	Nathan Massey	33	Male	White	January	15	2015	Becky Sue St	LA	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
Mounds	Nehemiah Fischer	35	Male	White	May	29	2015	Hectorville Rd and Bixby Rd	OK	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
Webster	Neil Seifert	40	Male	White	March	27	2015	N Main St	MA	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
Cerritos	Nephi Arriguin	21	Male	Black	May	7	2015	17200 Pires Ave	CA	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
Des Moines	Nicholas Brickman	30	Male	White	January	7	2015	SE 4th St and Scott Ave	IA	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
Atlanta	Nicholas Thomas	23	Male	Black	March	24	2015	2475 Cumberland Pkwy SE	GA	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
Phoenix	Nicolas Tewa	26	Male	Native American	January	27	2015	4130 N Black Canyon Hwy	AZ	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
Gillette	Nikki Burtsfield	39	Female	White	May	20	2015	N Garner Lake Rd and Vaquero Ave	WY	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
San Antonio	Norman Cooper	33	Male	Black	April	19	2015	4800 Legend Well Dr	TX	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
Ridgefield Park	Nuwnah Laroche	34	Female	Black	May	6	2015	I-95	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
New Orleans	Omarr Jackson	37	Male	Black	January	8	2015	Lasalle St and Josephine St	LA	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
Pueblo	Orlando Lopez	26	Male	Hispanic/Latino	January	25	2015	Troy Ave and Oakshire Ln	CO	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
Los Angeles	Pablo Meza	24	Male	Hispanic/Latino	January	17	2015	E 6th St and Mateo St	CA	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
Stockton	Patrick Wetter	25	Male	White	January	6	2015	800 Howard St	CA	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
Anaheim	Paul Anderson	31	Male	Black	April	4	2015	150 E Lincoln Ave	CA	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
Weymouth	Paul Campbell	49	Male	White	January	19	2015	69 Prospect Hill Dr	MA	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
Del Rio	Pedro 'Pete' Juan Saldivar	50	Male	Hispanic/Latino	February	17	2015	US-90 and Charles Dr	TX	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
Vallejo	Philip Conley	37	Male	White	March	21	2015	904 Admiral Callaghan Ln	CA	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
Boiling Springs	Phillip Burgess	28	Male	White	April	9	2015	477 Belcher Rd	SC	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
Houston	Phillip Garcia	26	Male	Hispanic/Latino	January	16	2015	12810 Gulf Fwy	TX	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
San Jose	Phillip Watkins	23	Male	Black	February	11	2015	1300 Sherman St	CA	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
Vineland	Phillip White	32	Male	Black	March	31	2015	118 W Grape St	NJ	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
Bloomington	Quincy Reed Reindl	24	Male	White	January	15	2015	Nesbitt Ave S and 99th St W	MN	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
Stillwater	Ralph Willis	42	Male	White	January	29	2015	604 E Maple Ave	OK	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
Kansas City	Randall Torrence	34	Male	White	May	27	2015	1225 Quindaro Blvd	KS	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
Minneapolis	Raymond Kmetz	68	Male	White	January	26	2015	4401 Xylon Ave N	MN	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
Fort Worth	Reginald McGregor	31	Male	Black	April	21	2015	200 North Retta St	TX	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
Newalla	Richard 'Buddy' Weaver	83	Male	White	April	12	2015	Sleepy Hollow Dr and Misty Glen Dr	OK	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
Reading	Richard Carlin	35	Male	White	February	13	2015	414 Rehr St	PA	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
San Antonio	Richard Castilleja	29	Male	Hispanic/Latino	March	14	2015	2615 Mossrock	TX	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
Rochester	Richard Davis	50	Male	Black	May	31	2015	Tremont St and Morgan St	NY	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
Tehachapi	Richard Hanna	56	Male	Unknown	April	6	2015	400 Steuber Rd	CA	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
Jourdanton	Richard McClendon	43	Male	White	January	13	2015	600 Olive St	TX	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
Topeka	Richard Reed	38	Male	White	April	10	2015	SW Wanamaker Rd and I-70	KS	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
Kenner	Richard White	63	Male	Black	March	20	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	LA	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
Fort Meade	Ricky Hall	27	Male	Black	March	30	2015	NA	MD	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
Kennewick	Roark Cook	36	Male	White	May	4	2015	3320 W 9th Ave	WA	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
Grants Pass	Robert Box	55	Male	White	May	29	2015	108 Fir Canyon Rd	OR	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
Bakersfield	Robert Burdge	36	Male	White	March	19	2015	200 Trask St	CA	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
Lake Jackson	Robert Edwards	68	Male	White	January	14	2015	500 Sycamore St	TX	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
Austin	Robert Francis Mesch	61	Male	White	January	23	2015	120 W Slaughter Ln	TX	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
Pulaski	Robert Frost	46	Male	White	May	5	2015	1847 Bob White Blvd	VA	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
Denham Springs	Robert Kohl	47	Male	White	February	23	2015	175 Bass Pro Blvd	LA	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
Peebles	Robert Rooker	26	Male	White	March	29	2015	Fields Hollow Rd	OH	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
Hawthorne	Robert Washington	37	Male	Black	April	1	2015	14200 Kornblum Ave	CA	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
Rio Linda	Roberto Leon	22	Male	Hispanic/Latino	March	17	2015	Elkhorn Blvd and Dry Creek Rd	CA	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
Key Largo	Roberto Ornelas	18	Male	Hispanic/Latino	January	1	2015	39 N Marlin Ave	FL	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
Los Angeles	Roberto Rodriguez	39	Male	Hispanic/Latino	April	8	2015	4th St and Mathews St	CA	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
Gulfport	Rodney Biggs	49	Male	White	February	26	2015	US-49 and Middle Driveway	MS	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
Tulsa	Rodney Walker	23	Male	Black	January	16	2015	W 11th St	OK	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
Shafter	Rodolfo Velazquez	47	Male	Hispanic/Latino	April	16	2015	West Lerdo Hwy and South Wall St	CA	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
Freeport	Ronald Sneed	32	Male	Black	January	7	2015	300 Yaupon St	TX	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
Harvey	Ronell Wade	45	Male	Black	May	17	2015	15746 Union Ave	IL	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
Laredo	Roy Day	51	Male	White	February	14	2015	Gale St	TX	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
Euless	RubÌ_å©n GarcÌ__a Villalpando	31	Male	Hispanic/Latino	February	20	2015	2500 Texas Hwy 121	TX	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
Pasco	Russell Sharrer	54	Male	White	February	27	2015	1016 N 4th Ave	WA	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
Kingman	Ryan Burgess	31	Male	White	March	11	2015	2241 Lucille Ave	AZ	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
Pomona	Salome Rodriguez Jr	23	Male	Hispanic/Latino	March	13	2015	184 W 3rd St	CA	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
Las Vegas	Salvador Figueroa	29	Male	Hispanic/Latino	January	11	2015	Circle K, 1301 N Eastern Ave	NV	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
Phoenix	Salvador Muna	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
Fridley	Sam Holmes	31	Male	Black	May	8	2015	University Ave NE and I-694	MN	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
Mission	Santos 'Cuate' Cortez Hernandez	24	Male	Hispanic/Latino	April	20	2015	NA	TX	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
Austin	Sawyer Flache	27	Male	White	February	8	2015	Texas Hwy 71 and Silvermine Dr	TX	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
San Jose	Scott Dunham	57	Male	White	March	24	2015	2600 Senter Rd	CA	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
Middletown	Scott McAllister	39	Male	Unknown	May	27	2015	33 Bayside Pkwy	NJ	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
Portage	Sean Pelletier	38	Male	White	May	14	2015	6095 Anna's Ln	MI	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
Burbank	Sergio Navas	34	Male	Hispanic/Latino	March	5	2015	N Pass Ave and W National Ave	CA	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
Moulton	Shane Watkins	39	Male	White	March	19	2015	1040 County Rd 249	AL	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
Joliet	Shaquille Barrow	20	Male	Black	March	2	2015	Richards St	IL	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
Kearny	Shaun Johnson	35	Male	White	May	8	2015	59705 E Bidegain Pl	AZ	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
Hamilton Township	Shawn Clyde	36	Male	White	April	1	2015	110 Nottinghill Ln	NJ	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
Honolulu	Sheldon Haleck	38	Male	Asian/Pacific Islander	March	16	2015	364 S King St	HI	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
Alpine	Simon Hubble	33	Male	White	May	27	2015	3600 Emmanuel Way	CA	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
Minneapolis	Sinthanouxay Khottavongsa	57	Male	Asian/Pacific Islander	January	16	2015	5900 Xerxes Ave N	MN	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
Birmingham	Stanley Grant	38	Male	Black	February	20	2015	2200 Green Springs Hwy	AL	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
CaÌ_å±on City	Stanley Watson	72	Male	White	April	15	2015	3120 East Main St	CO	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
La Paz County	Stephanie Hill	37	Female	White	February	28	2015	I-10	AZ	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
Tacoma	Stephen Cunningham	47	Male	White	May	11	2015	3420 S Proctor St	WA	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
Meridian	Steven Davenport	43	Male	White	April	21	2015	Old Hwy 19 SE	MS	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
Fond du Lac	Steven Snyder	37	Male	White	March	24	2015	760 W Johnson St	WI	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
Old Bridge Township	Talbot Schroeder	75	Male	White	January	14	2015	40 Cedar Grove Pl	NJ	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
Muskogee	Terence Walker	21	Male	Black	January	17	2015	Old Agency Baptist Church	OK	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
Detroit	Terrance Kellom	20	Male	Black	April	27	2015	9500 Evergreen Rd	MI	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
Mansfield	Terrance Moxley	29	Male	Black	March	10	2015	280 N Main St	OH	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
Elkton	Terry Garnett Jr	37	Male	Black	March	11	2015	Augustine Herman Hwy & E Lewis Shore Rd	MD	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
Tulsa	Terry Price	41	Male	Black	February	21	2015	951 West 36th St N	OK	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
Miami	Tevin Barkley	22	Male	Black	April	15	2015	800 NW 75th St	FL	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
Jennings	Thaddeus McCarroll	23	Male	Black	April	17	2015	9200 Riverwood Dr	MO	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
Cleveland	Theodore Johnson	64	Male	Black	March	10	2015	6902 Ottawa Rd	OH	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
St Louis	Thomas Allen Jr	34	Male	Black	March	1	2015	Morton Ave and Chatham Ave	MO	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
Syracuse	Thomas Hamby	49	Male	White	January	8	2015	2964 W 2125 S	UT	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
South El Monte	Thong Kien Ma	32	Male	Asian/Pacific Islander	May	5	2015	10400 Enloe St	CA	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
Sierra Blanca	Tiano Meton	25	Male	Black	January	22	2015	I-10	TX	31.172832	-105.357927	US Border Patrol	Gunshot	Other
Omaha	Tiffany Terry	39	Female	White	January	30	2015	1702 S 50th St	NE	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
Shelton	Tim Elliott	53	Male	Unknown	January	2	2015	600 E Island Lake Dr	WA	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
Ruidoso	Timothy Jones	27	Male	White	May	17	2015	111 Otero Dr	NM	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
Hemet	Todd Allen Hodge	36	Male	White	January	21	2015	40200 Clark Dr	CA	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
Trinidad	Todd Jamal Dye	20	Male	Black	April	24	2015	1505 E Main St	CO	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
Arcola	Tommy Smith	39	Male	White	January	12	2015	224 Circle Dr	IL	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
Madison	Tony Robinson	19	Male	Black	March	6	2015	1125 Williamson St	WI	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
Sulphur Springs	Tony Ross	34	Male	White	March	6	2015	Lamar St and Whitworth St	TX	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
Ruth	Troy Boyd	36	Male	White	March	15	2015	McEwien Swamp Rd	MS	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
Wapanucka	Tyrel Vick	34	Male	White	March	20	2015	Oklahoma Hwy 48 and E1750 Rd	OK	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
Rigby	Tyrell Larsen	31	Male	White	April	6	2015	E 100 N	ID	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
Milwaukee	Tyrone Ryerson	45	Male	Black	March	5	2015	468 E Plainfield Ave	WI	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
Lincoln	Tyson Hubbard	34	Male	White	March	5	2015	27th St and Fletcher Ave	NE	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
Mabank	Unknown	Unknown	Male	Unknown	January	16	2015	Co Rd 2718	TX	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
Austin	Unknown	Unknown	Female	Unknown	May	25	2015	6505 Shirley Ave	TX	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
Rochester	Unknown	Unknown	Male	White	June	1	2015	271 Greece Ridge Center Dr	NY	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
Houston	Victor Reyes	31	Male	Hispanic/Latino	January	31	2015	West Little York Rd	TX	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
Los Angeles	Victor Terrazas	28	Male	Hispanic/Latino	March	25	2015	10200 S Vermont Ave	CA	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
New City	Vincent Cordaro	57	Male	White	February	9	2015	N Little Tor Rd	NY	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
Portsmouth	Walter Brown III	29	Male	Black	March	24	2015	19 Colin Drive S	VA	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
North Charleston	Walter Scott	50	Male	Black	April	4	2015	1945 Remount Rd	SC	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
Forth Worth	Wendell King	40	Male	White	January	29	2015	4800 Hildring Dr E	TX	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
Electra	Wilber Castillo-Gongora	35	Male	Hispanic/Latino	February	5	2015	US-287	TX	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
Hoover	William 'Rusty' Smith	53	Male	White	March	10	2015	700 Valley St	AL	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
Berlin	William Campbell	59	Male	Unknown	January	25	2015	335 New Brooklyn Rd	NJ	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
Portsmouth	William Chapman II	18	Male	Black	April	22	2015	1098 Frederick Blvd	VA	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
Tonasket	William Dick III	28	Male	Native American	April	4	2015	Bureau of Indian Affairs Rd 66	WA	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
Gaston	William Poole	52	Male	White	March	16	2015	130 Wedowee Ln	NC	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
Oakland	Yuvette Henderson	38	Female	Black	February	3	2015	3800 Hollis St	CA	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
Fremont	Zaki Shinwary	48	Male	Unknown	January	16	2015	Lake Arrowhead Ave and Great Salt Lake Dr	CA	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- Data for Name: date; Type: TABLE DATA; Schema: public; Owner: -
--

COPY date (month, day, name, age, gender, raceethnicity, year, streetaddress, city, state, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
month	day	name	age	gender	raceethnicity	year	streetaddress	city	state	latitude	longitude	lawenforcementagency	cause	armed
February	23	A'donte Washington	16	Male	Black	2015	Clearview Ln	Millbrook	AL	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
April	2	Aaron Rutledge	27	Male	White	2015	300 block Iris Park Dr	Pineville	LA	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
March	14	Aaron Siler	26	Male	White	2015	22nd Ave and 56th St	Kenosha	WI	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
March	11	Aaron Valdez	25	Male	Hispanic/Latino	2015	3000 Seminole Ave	South Gate	CA	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
March	19	Adam Jovicic	29	Male	White	2015	364 Hiwood Ave	Munroe Falls	OH	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
March	7	Adam Reinhart	29	Male	White	2015	18th St and Palm Ln	Phoenix	AZ	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
March	27	Adrian Hernandez	22	Male	Hispanic/Latino	2015	4000 Union Ave	Bakersfield	CA	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
March	26	Adrian Solis	35	Male	Hispanic/Latino	2015	1500 Bayview Ave	Wilmington	CA	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
January	28	Alan Alverson	44	Male	White	2015	Pickett Runn Rd	Sunset	TX	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
February	7	Alan James	31	Male	White	2015	200 Abbie St SE	Wyoming	MI	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
April	26	Albert Hanson Jr	76	Male	White	2015	7th Ave and Kansas Ave	Hanford	CA	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
May	12	Alec Ouzounian	40	Male	White	2015	28 Paseo Viento	Rancho Santa Margarita	CA	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
February	20	Alejandro Salazar	Unknown	Male	Hispanic/Latino	2015	1200 E Airtex Dr	Houston	TX	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
February	25	Alexander Long	31	Male	White	2015	25th St and Poplar St	Terre Haute 	IN	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
April	6	Alexander Myers	23	Male	White	2015	5700 block Ashby Dr	Indianapolis	IN	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
May	30	Alexander Rivera	39	Male	Hispanic/Latino	2015	1128 Murfreesboro Pike	Nashville	TN	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
April	30	Alexia Christian	25	Female	Black	2015	141 Pryor St SW	Atlanta	GA	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
May	19	Alfredo Rials-Torres	54	Male	Hispanic/Latino	2015	4219 2nd Road N	Arlington	VA	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
March	17	Alice Brown	24	Female	White	2015	Van Ness Ave and Pine St	San Francisco	CA	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
January	26	Alvin Haynes	57	Male	Black	2015	1 Moreland Dr	San Francisco	CA	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
February	26	Amilcar Perez-Lopez	21	Male	Hispanic/Latino	2015	Folsom St and 24th St	San Francisco	CA	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
January	7	Andre Murphy Sr	42	Male	Black	2015	1223 Omaha Ave	Norfolk	NE	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
February	13	Andres Lara-Rodriguez	21	Male	Hispanic/Latino	2015	S 12th St and Ruby St	Kansas City	KS	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
March	13	Andrew Driver	36	Male	White	2015	9700 Kempster Ave	Fontana	CA	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
April	29	Andrew Jackson	26	Male	White	2015	1200 W Florida Ave	Chickasha	OK	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
March	17	Andrew Shipley	49	Male	White	2015	360 Argyle Ct	Medford	OR	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
January	21	Andrew Toto	54	Male	White	2015	Scobie Pond Rd and Julian Rd	Derry	NH	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
April	23	Andrew Valadez	26	Male	White	2015	Tyler St and Glenoaks Blvd	Sylmar	CA	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
March	6	Andrew Williams	48	Male	Black	2015	Putnam Loop Rd	Putnam Hall	FL	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
January	9	Andy Martinez	33	Male	Hispanic/Latino	2015	4400 Tetons Dr	El Paso	TX	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
April	10	Angel Corona Jr	21	Male	Hispanic/Latino	2015	4740 Barham Ave	Corning	CA	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
March	27	Angelo West	41	Male	Black	2015	Humboldt Ave and Ruthven St	Roxbury	MA	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
February	10	Anthony Bess	48	Male	Black	2015	4545 Aldridge Dr	Memphis	TN	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
May	25	Anthony Briggs	36	Male	Black	2015	1100 E Gateway Dr SE	Huntsville	AL	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
February	22	Anthony Giaquinta	41	Male	Hispanic/Latino	2015	Lower Pond Ct	Clarkesville	GA	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
May	19	Anthony Gomez Jr	29	Male	Black	2015	305 E Walnut St	Lancaster	PA	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
March	9	Anthony Hill	27	Male	Black	2015	3028 Chamblee Dunwoody Rd	Chamblee	GA	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
February	3	Anthony Purvis	45	Male	White	2015	1404 N June Ave	Douglas	GA	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
March	12	Antonio Perez	32	Male	Hispanic/Latino	2015	2400 Flower St	Los Angeles	CA	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
February	10	Antonio Zambrano-Montes	35	Male	Hispanic/Latino	2015	1107 W Lewis St	Pasco	WA	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
January	8	Artago Howard	36	Male	Black	2015	9661 Strong Hwy	Strong	AR	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
March	17	Askari Roberts	35	Male	Black	2015	3189 Morton Bend Rd	Rome	GA	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
March	8	Aurelio Duarte	40	Male	Hispanic/Latino	2015	3632 SW 38th St	Oklahoma City	OK	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
May	17	Austin Goodner	18	Male	White	2015	5236 Robin Ln N	St Petersburg	FL	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
January	6	Autumn Steele	34	Female	White	2015	104 N Garfield Ave	Burlington	IA	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
March	11	Benito Osorio	39	Male	Hispanic/Latino	2015	300 S Main St	Santa Ana	CA	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
March	31	Benjamin Quezada	21	Male	Hispanic/Latino	2015	West Texas Ave and Gaillard St	Baytown	TX	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
March	6	Bernard Moore	62	Male	Black	2015	Metropolitan Pkwy and Fair Dr	Atlanta	GA	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
February	17	Betty Sexton	43	Female	White	2015	2325 Union Rd	Gastonia	NC	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
May	3	Billy Grimm	44	Male	White	2015	Arenal Rd SW and Tapia Blvd SW	Albuquerque	NM	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
April	26	Billy Patrick	29	Male	White	2015	NA	Bunch	OK	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
March	12	Bobby Gross	35	Male	Black	2015	700 14th St NW 	Washington	DC	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
February	22	Bradford Leonard	50	Male	White	2015	900 Castile Rd SE	Palm Bay	FL	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
March	19	Brandon Jones	18	Male	Black	2015	1077 Parkwood Dr	Cleveland	OH	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
April	25	Brandon Lawrence	25	Male	White	2015	800 Simpson Rd	Victoria	TX	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
March	18	Brandon Rapp	31	Male	White	2015	9000 Charles Way	Middleton	ID	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
May	6	Brendon Glenn	29	Male	Black	2015	1602 Pacific Ave	Los Angeles	CA	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
March	31	Brian Babb	49	Male	White	2015	2200 Devos St	Eugene	OR	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
January	11	Brian Barbosa	23	Male	Unknown	2015	8900 Kauffman Ave	South Gate	CA	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
February	10	Brian Fritze	45	Male	White	2015	I-70 and US-6	Glenwood Springs	CO	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
January	6	Brian Pickett	26	Male	Black	2015	1600 E 123rd St	Los Angeles	CA	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
January	6	Brock Nichols	35	Male	White	2015	2388 E Kansas Hwy 4	Assaria	KS	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
February	15	Bruce Steward	34	Male	White	2015	29000 S Wall St	Colton	OR	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
May	12	Bruce Zalonka	46	Male	Asian/Pacific Islander	2015	1031 Nuuanu Ave	Honolulu	HI	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
March	29	Byron Herbert	29	Male	Black	2015	111 Towne Dr	Elizabethtown	KY	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
February	22	Calvon Reid	39	Male	Black	2015	1701 Andros Isle	Coconut Creek	FL	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
March	4	Carl Lao	28	Male	Asian/Pacific Islander	2015	South San Joaquin St and East Church St	Stockton	CA	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
April	22	Carlos Saavedra Ramirez	51	Male	Hispanic/Latino	2015	101 Naco Hwy	Bisbee	AZ	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
January	18	Carter Ray Castle	67	Male	White	2015	Kentucky Rte 7	Gunlock	KY	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
May	14	Cary Martin	53	Male	White	2015	497 Florida Ave	St Augustine	FL	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
May	23	Caso Jackson	25	Male	Black	2015	13331 Strathmoor St	Detroit	MI	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
March	9	Cedrick Bishop	30	Male	Black	2015	Aurora St	Cocoa	FL	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
April	13	Celin Nunez	24	Male	Hispanic/Latino	2015	3 Greens Rd	Houston	TX	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
February	15	Chance Thompson	35	Male	White	2015	Hammonton Smartville Rd	Marysville	CA	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
March	1	Charly 'Africa' Keunang	43	Male	Black	2015	500 San Pedro St	Los Angeles	CA	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
February	27	Chazsten Freeman	24	Male	White	2015	South Carolina Rte 8 and Augusta Rd	Peltzer	SC	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
January	27	Chris Ingram	29	Male	White	2015	Coronado Trail	Morenci	AZ	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
May	21	Chrislon Talbott	38	Male	Black	2015	4585 Frederica St	Owensboro	KY	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
April	14	Christopher Finley	31	Male	White	2015	900 Walnut St	Jonesboro	AR	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
March	22	Christopher Healy	36	Male	White	2015	2300 SE 130th Ave	Portland	OR	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
March	10	Christopher Mitchell	23	Male	White	2015	6530 Georgia Rte 21	Port Wentworth	GA	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
April	3	Christopher Prevatt	38	Male	White	2015	123 Gregory Pl	Winchester	VA	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
March	13	Clifton Reintzel	53	Male	White	2015	600 Main St	Follansbee	WV	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
February	15	Cody Evans	24	Male	White	2015	1600 W 500 N	Provo	UT	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
January	28	Cody Karasek	26	Male	White	2015	4100 Avenue I	Rosenberg	TX	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
February	28	Cornelius Parker	28	Male	Black	2015	E Broadway and US-63	Columbia	MO	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
February	26	Crystal Miley	34	Female	White	2015	5101 Georgia Rte 133	Moultrie	GA	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
May	12	D'Angelo Stallworth	28	Male	Black	2015	7300 Blanding Blvd	Jacksonville	FL	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
May	12	DaJuan Graham	40	Male	Black	2015	13900 Castle Blvd	Silver Spring	MD	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
May	26	Dalton Branch	51	Male	Black	2015	530 Stanley Ave	New York	NY	40.6572562	-73.8886551	New York Police Department	Gunshot	No
April	19	Dana Hlavinka	44	Male	White	2015	1363 Clark Dr	Sidney	NE	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
January	17	Daniel Brumley	25	Male	Hispanic/Latino	2015	NE 36th St	Fort Worth	TX	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
February	16	Daniel Caldwell	56	Male	White	2015	8351 N Cracker Barrel Rd	Marana	AZ	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
April	21	Daniel Covarrubias	37	Male	Hispanic/Latino	2015	3600 SW 108th St	Lakewood	WA	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
April	25	Daniel Davis	58	Male	White	2015	8624 Firestone Cir	Clermont	FL	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
February	24	Daniel Elrod	39	Male	White	2015	1299 Hickory St	Omaha	NE	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
February	15	Daniel Mejia	37	Male	Hispanic/Latino	2015	200 S McNab Pkwy	San Manuel	AZ	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
April	21	Daniel Wolfe	35	Male	Black	2015	1714 Walker Ave	Union	NJ	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
January	24	Darin Hutchins	26	Male	Black	2015	1900 McHenry St	Baltimore	MD	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
March	1	Darrell 'Hubbard' Gatewood	47	Male	Black	2015	616 SW 59th St	Oklahoma City	OK	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
April	16	Darrell Brown	31	Male	Black	2015	402 North Prospect St	Hagerstown	MD	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
May	28	Darrell Morgan	60	Male	White	2015	3164 Charlotte Hwy	Lancaster	SC	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
April	2	Darrin Langford	32	Male	Black	2015	12th Ave and Glenhurst Ct	Rock Island	IL	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
January	24	Daryl Myler	45	Male	White	2015	164 E Main St	Rexburg	ID	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
February	26	David Cuevas	42	Male	Hispanic/Latino	2015	4660 N Socrum Loop Rd	Lakeland	FL	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
May	19	David Gaines	17	Male	White	2015	N 10th St and Gunnison Ave	Grand Junction	CO	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
May	21	David Gandara	22	Male	Hispanic/Latino	2015	5111 Fairbanks Dr	El Paso	TX	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
January	26	David Garcia	33	Male	Hispanic/Latino	2015	1134 E St	Wasco	CA	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
May	7	David Johnson	18	Male	White	2015	300 Stone Monument Dr	Wake Forest	NC	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
April	16	David Kapuscinski	39	Male	White	2015	14680 Middle Gibraltar Rd	Rockwood	MI	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
February	2	David Kassick	59	Male	White	2015	36 Grandview Rd	Hanover	PA	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
April	3	David Lynch	33	Male	White	2015	11974-11998 US-64	Muskogee County	OK	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
April	28	David Parker	58	Male	White	2015	36 Randall Rd	Mansfield	OH	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
May	8	David Schwalm	58	Male	White	2015	168 Auringer Rd	Constantania	NY	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
March	17	David Watford	47	Male	White	2015	US-65	Tallulah	LA	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
March	15	David Werblow	41	Male	White	2015	134 Burban Dr	Branford	CT	41.2693481	-72.8428955	Branford Police Department	Taser	Other
February	9	Dean Bucheit	64	Male	White	2015	13600 Culver Blvd	Los Angeles	CA	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
April	26	Dean Genova	45	Male	White	2015	13822 Brookhurst St	Garden Grove	CA	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
March	26	Deanne Choate	53	Female	White	2015	400 N Birch	Gardner	KS	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
March	17	Declan Owen	24	Male	White	2015	8100 North Carolina Hwy 41	Dublin	NC	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
May	8	Dedrick Marshall	48	Male	Black	2015	3020 Destrehan Ave	Harvey	LA	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
January	23	Demaris Turner	29	Male	Black	2015	1980 NW 46 Ave	Lauderhill	FL	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
May	15	Denis Reyes	40	Male	Hispanic/Latino	2015	274 E 194th St	New York	NY	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
May	17	Dennis Fiel	34	Male	White	2015	7700 Mesa College Dr	San Diego	CA	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
March	22	Denzel Brown	21	Male	Black	2015	1851 Sunrise Hwy	Bay Shore	NY	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
March	4	Derek Cruice	26	Male	White	2015	800 Maybrook Dr	Deltona	FL	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
February	9	Desmond Luster	45	Male	Black	2015	7400 Bonnie View Rd	Dallas	TX	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
April	6	Desmond Willis	25	Male	Black	2015	2515 Manhattan Blvd	Harvey	LA	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
March	1	Deven Guilford	17	Male	White	2015	331 W Grand Ledge Hwy	Roxand Township	MI	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
March	22	Devin Gates	24	Male	Black	2015	2105 Scott Blvd	Santa Clara	CA	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
January	15	Dewayne Carr	42	Male	Black	2015	Chaparral Rd and Hayden Rd	Scottsdale	AZ	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
February	3	Dewayne Ward Jr	29	Male	Black	2015	1000 Claudia Ct	Antioch	CA	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
April	8	Dexter Bethea	42	Male	Black	2015	3022 James Rd	Valdosta	GA	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
March	30	Dominick Wise	30	Male	Black	2015	1301 Spring Meadow Ln	Culpeper	VA	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
April	9	Don Smith	29	Male	Black	2015	8516 N Meridian Rd	Monon	IN	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
April	2	Donald 'Dontay' Ivy	39	Male	Black	2015	Lark St and Second St	Albany	NY	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
April	2	Donald Hicks	63	Male	White	2015	Illinois Rte 145 and Waldo Church Rd	Metropolis	IL	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
March	1	Donald Matkins	49	Male	White	2015	Mt Pleasant Rd	Lucedale	MS	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
April	15	Donte Noble	41	Male	Black	2015	200 Canaan Pointe Dr	Spartanburg	SC	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
January	15	Donte Sowell	27	Male	Black	2015	East 38th St and North Mitthoeffer Rd	Indianapolis	IN	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
February	17	Doug Sparks	30	Male	White	2015	Forest Ave	Tewksbury	MA	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
April	8	Douglas Faith	60	Male	White	2015	Karen Ln and Corinne Dr	San Antonio	TX	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
March	27	Douglas Harris	77	Male	Black	2015	7901 1st Ave S	Birmingham	AL	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
May	30	Ebin Proctor	19	Male	Unknown	2015	Yuma Circle	Cottonwood	AZ	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
March	10	Edixon Franco	37	Male	Hispanic/Latino	2015	Fern Ave and Phillips St	Ontario	CA	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
January	31	Edward Bright Sr	54	Male	Black	2015	9800 Liberty Rd	Randallstown	MD	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
April	17	Elias Cavazos	29	Male	Hispanic/Latino	2015	Girard Street and Acacia Ave	Hemet	CA	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
May	3	Elton Simpson	30	Male	Black	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
May	21	Elvin Diaz	24	Male	Hispanic/Latino	2015	10 Temple Ave	Hackensack	NJ	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
March	21	Enoch Gaver	21	Male	White	2015	2003 E Rodeo Dr	Cottonwood	AZ	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
April	2	Eric Harris	44	Male	Black	2015	1900 block N Harvard Ave	Tulsa	OK	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
May	23	Eric Robinson	40	Male	White	2015	135 N Main St	Eagar	AZ	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
April	7	Erick Rose	32	Male	White	2015	Post Office Neck Rd and Lake Rd	Shawnee	OK	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
April	30	Erick Sanchez	22	Male	Hispanic/Latino	2015	11565 James Watt Dr	El Paso	TX	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
April	18	Erik Tellez	43	Male	White	2015	20th St and Thomas Rd	Phoenix	AZ	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
April	15	Ernesto Flores	52	Male	Hispanic/Latino	2015	11157 Chico Ave	Pomona	CA	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
February	27	Ernesto Javier Canepa Diaz	27	Male	Hispanic/Latino	2015	1000 W 3rd St	Santa Ana	CA	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
April	4	Ethan Noll	34	Male	White	2015	Mountainair St	Edgewood	NM	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
March	17	Eugene Smith II	20	Male	White	2015	313 S Houston Ave	Onalaska	TX	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
March	3	Fednel Rhinvil	25	Male	Black	2015	East Rd and Olivia St	Salisbury	MD	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
April	25	Felix David	24	Male	Black	2015	538 E Sixth St	New York	NY	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
May	27	Feras Morad	20	Male	Unknown	2015	4600 E 15th St	Long Beach	CA	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
February	11	Fletcher Stewart	46	Male	White	2015	Booger Hollow Rd	Dadeville	AL	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
February	2	Francis Rose III	42	Male	White	2015	9000 Buena Vista St	Apple Valley	CA	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
February	25	Francis Spivey	43	Male	White	2015	5300 East Craig Road	Las Vegas	NV	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
April	15	Frank 'Trey' Shephard III	41	Male	Black	2015	Castlegory Rd and Wallisville Rd	Houston	TX	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
March	13	Fred Liggett Jr	59	Male	White	2015	8700 E 97th Ter	Kansas City	MO	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
April	12	Freddie Gray	25	Male	Black	2015	Mount St and Presbury St	Baltimore	MD	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
April	30	Fridoon Rawshannehad	42	Male	White	2015	3200 Hancock St	San Diego	CA	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
March	18	Garland Wingo	64	Male	White	2015	Lake Ella	Tallahassee	FL	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
January	1	Garrett Gagne	22	Male	White	2015	Crowell Rd and Tipcart Dr	Chatham	MA	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
May	27	Garrett Sandeno	24	Male	White	2015	1701 Ridgecrest Rd	Edmond	OK	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
April	25	Gary Collins	63	Male	White	2015	H St NW and 20th Ave NW	Miami	OK	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
March	27	Gary Kendrick	56	Male	White	2015	Shadytree Ln and Glen Arbor Dr	Encinitas	CA	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
March	21	Gary Page	60	Male	White	2015	1790 E Voorhees St	Harmony	IN	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
March	11	Gilbert Fleury	54	Male	White	2015	Cliffs Landing Rd	Bay Minette	AL	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
February	25	Glenn Lewis	37	Male	Black	2015	2201 NW 27th St	Oklahoma City	OK	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
April	9	Gordon Kimbrell Jr	22	Male	White	2015	9265 Quail Roost Dr	Navarre	FL	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
March	30	Gregory Smith	39	Male	White	2015	2293 N Main St	Crown Point	IN	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
April	18	Grover Sapp Jr	45	Male	White	2015	1200 Beck Ave	Panama City	FL	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
May	27	Harry Davis	57	Male	White	2015	Sparta Hwy and Oconee Springs Rd	Eatonton	GA	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
March	27	Harvey Oates	42	Male	White	2015	Horseshoe Run Rd	Fort Ashby	WV	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
January	7	Hashim Abdul-Rasheed	41	Male	Black	2015	4600 International Gateway	Columbus	OH	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
April	23	Hector Morejon	19	Male	Hispanic/Latino	2015	1100 Hoffman Ave	Long Beach	CA	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
February	6	Herbert Hill	26	Male	Black	2015	1000 SW 62nd St	Oklahoma City	OK	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
February	15	Howard Brent Means Jr	34	Male	White	2015	1110 Battleground Dr	Iuka	MS	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
January	16	Howard Robbins	69	Male	White	2015	US-150	Stanford	KY	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
March	9	Hue Dang	64	Female	Asian/Pacific Islander	2015	E Kennedy St	Hackensack	NJ	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
February	2	Hung Trieu	35	Male	Asian/Pacific Islander	2015	13442 Bellaire Blvd	Houston	TX	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
February	28	Ian Sherrod	40	Male	Black	2015	2300 block Main St	Tarboro	NC	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
January	21	Isaac Holmes	19	Male	Black	2015	4200 St Louis Ave	St Louis	MO	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
April	13	Isaac Jimenez	27	Male	Hispanic/Latino	2015	3400 Lincoln Ave	Alton	IL	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
February	4	Izzy Colon	37	Male	Hispanic/Latino	2015	4304 Pershing Pointe Pl	Orlando	FL	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
February	2	Jacob Haglund	17	Male	White	2015	1600 3rd St	Bay City	MI	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
March	27	Jamalis Hall	39	Male	Black	2015	1000 block Mayflower Rd	Fort Pierce	FL	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
February	7	James Allen	74	Male	Black	2015	2701 Mary Ave	Gastonia	NC	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
January	8	James Barker	42	Male	White	2015	600 Second Ave	Salt Lake City	UT	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
June	1	James Bushey	47	Male	White	2015	2225 Texas Hwy 256 Loop	Palestine	TX	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
May	20	James Cooper	43	Male	White	2015	3271 Dartmouth Dr	Charleston	SC	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
March	9	James Damon	46	Male	White	2015	US-40	Craig	CO	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
March	21	James Ellis	44	Male	White	2015	New York State Rte 31A	Clarendon	NY	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
March	11	James Greenwell	31	Male	White	2015	700 N Auburndale St	Memphis	TN	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
May	23	James Horn Jr	47	Male	White	2015	SE 650th Rd	Green Ridge	MO	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
March	13	James Jimenez	41	Male	Hispanic/Latino	2015	1410 Hill Ave	Napa	CA	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
March	22	James Moore	43	Male	White	2015	5900 S Lewis Ave	Tulsa	OK	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
May	31	James Morris	40	Male	Unknown	2015	Juanipero Way and La Loma Dr	Medford	OR	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
May	28	James Strong	32	Male	Black	2015	10900 E 109th Pl	Northglenn	CO	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
March	10	Jamie Croom	31	Male	Black	2015	10064 Elm Grove Garden Dr	Baton Rouge	LA	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
March	19	Jamison Childress	20	Male	White	2015	Kneuman Rd	Sumas	WA	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
February	19	Janisha Fonville	20	Female	Black	2015	Bellefonte Dr	Charlotte	NC	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
April	6	Jared Forsyth	33	Male	White	2015	11120 NW Gainesville Rd	Ocala	FL	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
April	28	Jared Johnson	22	Male	Black	2015	8400 Chef Menteur Hwy	New Orleans	LA	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
February	21	Jason Carter	41	Male	White	2015	298 Gavilan Canyon Rd	Rudioso	NM	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
May	6	Jason Champion	41	Male	Black	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
April	12	Jason Evans	32	Male	White	2015	North Carolina Hwy 242 and Reeda Branch Rd	Salemburg	NC	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
February	14	Jason Hendrix	16	Male	White	2015	1486 Hyde Park Rd	Essex	MD	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
March	30	Jason Moland	29	Male	Black	2015	3700 Beyer Park Dr	Modesto	CA	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
March	20	Jason Smith	42	Male	White	2015	4604 Summit St	Columbus	OH	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
May	21	Javoris Washington	29	Male	Black	2015	SW 29th Ave and SW 29th Terrace	Fort Lauderdale	FL	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
March	17	Jeff Alexander	47	Male	White	2015	1125 1/2 19th St	Bakersfield	CA	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
April	30	Jeffery Adkins	53	Male	Black	2015	200 Elm Rd	Emporia	VA	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
April	17	Jeffery Kemp	18	Male	Black	2015	74th Street and Merrill Ave	Chicago	IL	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
March	22	Jeffrey Jackson	47	Male	White	2015	Kentucky Rte 92	Williamsburg	KY	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
January	14	Jeffrey Nielson	34	Male	White	2015	120 Honey Berry Ct	Draper	UT	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
May	31	Jeffrey Pitts	36	Male	White	2015	3500 Ebenezer Rd	Conyers	GA	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
March	1	Jeffrey Surnow	63	Male	White	2015	Waikoloa Rd	Waikoloa Village	HI	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
March	31	Jeremy Anderson	36	Male	White	2015	1600 Grass Lake Dr	Tampa Bay	FL	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
March	25	Jeremy Kelly	27	Male	Black	2015	Dixie St	Johnsonville	SC	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
February	5	Jeremy Lett	28	Male	Black	2015	2400 W Tharpe St	Tallahassee	FL	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
January	27	Jermonte Fletcher	33	Male	Black	2015	265 Buffalo Ct	Columbus	OH	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
May	21	Jerome Caldwell	32	Male	Black	2015	83 Beaufain St	Charleston	SC	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
February	23	Jerome Nichols	42	Male	White	2015	N Plymouth St	Allentown	PA	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
April	9	Jess Leipold	31	Male	White	2015	45 Major Bell Ln	Gettysburg	PA	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
January	26	Jessica Hernandez	17	Female	Hispanic/Latino	2015	Newport St & E 25th Ave	Denver	CO	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
February	28	Jessica Uribe	28	Female	Unknown	2015	1113 W St Mary's Rd	Tuscon 	AZ	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
May	26	Jessie Williams	24	Male	White	2015	200 John Wesly Blvd	Bossier City	LA	32.5170212	-93.7078476	FBI	Gunshot	Firearm
January	9	Jimmy Foreman	71	Male	Unknown	2015	422 SE 3rd St	England	AR	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
February	4	Jimmy Robinson Jr	51	Male	Black	2015	I-35	Waco	TX	31.593082	-97.108858	Waco Police Department	Gunshot	No
February	4	Joaquin Hernandez	28	Male	Hispanic/Latino	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
April	30	John Acree	53	Male	White	2015	812 Forest Hills Dr	Nashville	TN	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
March	30	John Allen	54	Male	White	2015	841 Avenue A	Boulder City	NV	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
January	21	John Ballard Gorman	45	Male	White	2015	3468 Casino Way	Robinsonville	MS	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
May	7	John Kaafi	33	Male	White	2015	8th St and N Orange Ave	Sarasota	FL	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
January	30	John Marshall	48	Male	White	2015	Billings Clinic, 2800 10th Ave N	Billings	MT	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
January	13	John O'Keefe	34	Male	White	2015	Constitution Ave and San Mateo Blvd	Albuquerque	NM	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
January	3	John Quintero	23	Male	Hispanic/Latino	2015	500 North Oliver Ave	Wichita	KS	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
February	5	John Sawyer	35	Male	White	2015	1200 Calimesa Blvd	Calimesa	CA	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
February	10	John Whittaker	33	Male	Hispanic/Latino	2015	1503 Medfra St	Anchorage	AK	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
January	18	Johnathon Guillory	32	Male	White	2015	Greenland Park Dr	Maricopa	AZ	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
May	20	Jonathan Colley	52	Male	White	2015	2569 Raber Rd	Green	OH	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
April	22	Jonathan Efraim	30	Male	White	2015	16802 Hillside Ave	New York	NY	40.7098999	-73.7943573	New York Police Department	Gunshot	No
February	13	Jonathan Harden	23	Male	White	2015	4023 University Pkwy	San Bernadino	CA	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
May	19	Jonathan McIntosh	35	Male	White	2015	900 E Main St	Cabot	AR	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
March	12	Jonathan Paul	42	Male	Black	2015	300 E Mitchell St	Arlington	TX	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
February	12	Jonathan Pierce	37	Male	White	2015	Port St Joe Police Station, 410 Williams Ave	Port St Joe	FL	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
January	23	Jose Antonio Espinoza Ruiz	56	Male	Hispanic/Latino	2015	202 Avenue A	Levelland	TX	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
January	15	Jose Ceja	36	Male	Hispanic/Latino	2015	2007 Sousa Ct	Fairfield	CA	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
April	22	Jose Herrera	27	Male	Hispanic/Latino	2015	3000 W Cecil Ave	Delano	CA	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
February	24	Joseph Biegert	30	Male	White	2015	1500 Plymouth Ln	Green Bay	WI	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
January	7	Joseph Caffarello	31	Male	White	2015	6100 Scott St	Rosemont	IL	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
February	8	Joseph Paffen	46	Male	White	2015	4501 Hoffner Ave	Orlando	FL	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
April	23	Joseph Potts	51	Male	White	2015	182 N4430 Rd	Rufe	OK	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
May	7	Joseph Roy	72	Male	Unknown	2015	2853 Avalon Meadows Ct	Lawrenceville	GA	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
April	15	Joseph Slater	28	Male	White	2015	27767 Base Line	Highland	CA	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
March	24	Joseph Tassinari	63	Male	White	2015	6600 W Christy Dr	Glendale	AZ	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
April	8	Joseph Weber	28	Male	White	2015	Tasman Dr and Lawrence Expy	Sunnyvale	CA	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
April	29	Joshua Deysie	33	Male	Hispanic/Latino	2015	1400 E Harmony Ave	Mesa	AZ	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
January	26	Joshua Garcia	24	Male	Hispanic/Latino	2015	2500 FM1054	Tahoka	TX	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
April	28	Joshua Green	27	Male	White	2015	1408 W Main St	Marion	IL	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
March	19	Justin Fowler	24	Male	Native American	2015	Indian Rte 13	Lukachukai	AZ	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
March	16	Justin Tolkinen	28	Male	White	2015	400 White Bear Ave	St Paul	MN	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
May	11	Justin Way	28	Male	White	2015	225 Presidents Cup Way	St Augustine	FL	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
April	4	Justus Howell	17	Male	Black	2015	2300 Gilead Ave	Zion	IL	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
April	23	Karen Janks	46	Female	White	2015	2661 Gravenstein Hwy S	Sebastopol	CA	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
April	14	Karl Taylor	52	Male	Black	2015	325 Riverside Dr	Fallsburg	NY	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
January	16	Kavonda Payton	39	Male	Black	2015	138 Del Mar Cir	Aurora	CO	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
March	18	Kaylene Stone	49	Female	White	2015	6735 W Peoria Ave	Peoria 	AZ	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
May	11	Kelvin Goldston	30	Male	Black	2015	6024 Wheaton Dr	Fort Worth	TX	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
April	3	Ken Cockerel	51	Male	White	2015	W Union Hills Dr and N 39th Ave	Phoenix	AZ	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
March	19	Kendre Alston	16	Male	Black	2015	1800 Helena St	Jacksonville	FL	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
January	4	Kenneth Brown	18	Male	White	2015	NA	Guthrie	OK	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
January	5	Kenneth Buck	22	Male	Hispanic/Latino	2015	E Knox Rd	Chandler	AZ	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
May	28	Kenneth Dothard	40	Male	Black	2015	900 Bankhead Hwy	Carrollton	GA	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
February	10	Kenneth Kreyssig	61	Male	White	2015	645 Smyrna Center Rd	Smyrna	ME	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
May	2	Kenneth Mathena	52	Male	White	2015	30 Malvern Ln	Smyrna	DE	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
February	21	Kent Norman	51	Male	White	2015	1800 Heather Cir	Indianapolis	IN	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
May	29	Kevin Allen	36	Male	Black	2015	355 Valley Brook Ave	Lyndhurst	NJ	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
May	3	Kevin Norton	36	Male	White	2015	210 W 300 N	Roosevelt	UT	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
April	21	Kimber Key	59	Male	White	2015	107 White Falls Dr	Columbia	SC	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
January	22	Kristiana Coignard	17	Female	White	2015	Longview Police Department, 302 W Cotton St	Longview	TX	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
May	28	Kyle Baker	18	Male	White	2015	2800 Longmeadow Dr	Trenton	MI	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
February	9	Larry Hostetter	41	Male	White	2015	200 Jordan Dr	Nocona	TX	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
January	28	Larry Kobuk	33	Male	Native American	2015	Corrections Department, 1400 E 4th Ave	Anchorage	AK	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
February	15	Lavall Hall	25	Male	Black	2015	19157 NW 3rd Ave	Miami Gardens	FL	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
February	3	Ledarius Williams	23	Male	Black	2015	Minnesota Ave and Meramec St	St Louis	MO	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
January	6	Leslie Sapp III	47	Male	Black	2015	Redlyn St	Pittsburgh	PA	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
March	9	Lester Brown	58	Male	White	2015	85 Almost Home Rd	Penrose	NC	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
January	2	Lewis Lembke	47	Male	White	2015	4505 SW Masters Loop	Aloha	OR	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
May	10	Lionel Young	34	Male	Black	2015	950 Nalley Rd	Landover	MD	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
January	8	Loren Simpson	28	Male	White	2015	3618 White Buffalo Rd	Huntley	MT	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
May	13	Lorenzo Hayes	37	Male	Black	2015	N Addison St and E Sanson Ave	Spokane	WA	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
January	14	Louis Becker	87	Male	White	2015	New York State Rte 23 and Cairo Junction Rd	Catskill	NY	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
April	22	Lue Vang	39	Male	Asian/Pacific Islander	2015	4100 Eldorado Springs Dr	Boulder	CO	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
April	29	Luis Chavez-Diaz	27	Male	Hispanic/Latino	2015	1624 Hood Franklin Rd	Elk Grove	CA	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
April	21	Luis Molina Martinez	35	Male	Hispanic/Latino	2015	3400 Manitou Ave	Los Angeles	CA	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
April	12	Mack Long	36	Male	Black	2015	E 31st St and N Sherman Dr	Indianapolis	IN	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
January	14	Marcus Golden	24	Male	Black	2015	261 E University Ave	St Paul	MN	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
May	20	Marcus Wheeler	26	Male	Black	2015	3057 Martin Ave	Omaha	NE	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
January	14	Mario Jordan	34	Male	Black	2015	Sir Gawaine Dr	Chesapeake	VA	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
April	15	Mark Adair	51	Male	White	2015	Hitt St and Elm St	Columbia	MO	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
April	24	Mark Cecil Hawkins	49	Male	White	2015	1940 Turner Rd SE	Salemburg	OR	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
May	15	Mark Farrar	41	Male	White	2015	1806 16th Ave	Rockford	IL	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
April	8	Mark Smith	54	Male	White	2015	W 141st St and 257th W Ave	Kellyville	OK	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
February	4	Paul Johnson	59	Male	White	2015	7100 Pine Ave	Chino	CA	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
February	4	Markell Atkins	36	Male	Black	2015	3800 Vernon Ave	Memphis	TN	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
May	20	Markus Clark	26	Male	Black	2015	600 NW 27th Ave	Fort Lauderdale	FL	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
January	28	Matautu Nuu	35	Male	Asian/Pacific Islander	2015	Martinique Ct	Stockton	CA	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
January	1	Matthew Ajibade	22	Male	Black	2015	1050 Carl Griffin Dr	Savannah	GA	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
February	13	Matthew Belk	27	Male	White	2015	2420 Terry Rd	Huntingdon	TN	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
May	16	Matthew Coates	42	Male	White	2015	2010 61st St	Sacramento	CA	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
January	4	Matthew Hoffman	32	Male	White	2015	630 Valencia St	San Francisco	CA	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
February	17	Matthew Lundy	32	Male	White	2015	3800 Canfield Rd	Eaton Rapids Township	MI	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
March	3	Matthew Metz	25	Male	White	2015	College Ave and Curry Rd	Tempe	AZ	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
March	27	Meagan Hockaday	26	Female	Black	2015	500 W Vineyard Ave	Oxnard	CA	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
May	4	Michael Asher	53	Male	White	2015	Doctors Row	Chavies	KY	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
February	16	Michael Casper	26	Male	White	2015	Malad St and Gourley St	Boise	ID	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
April	19	Michael Foster	40	Male	White	2015	105 Hinkle St	Wilmore	KY	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
May	10	Michael Gallagher	55	Male	White	2015	100 Whitfield St	Enfield	NC	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
January	14	Michael Goebel	29	Male	White	2015	600 Spring Dr	Robertsville	MO	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
February	18	Michael Ireland	31	Male	White	2015	1400 N Marion Ave	Springfield	MO	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
January	3	Michael Kocher Jr	19	Male	White	2015	2600 Kaumualii Hwy	Kaumakani	HI	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
April	8	Michael Lemon	57	Male	Unknown	2015	11936 California Rte 178	Lake Isabella	CA	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
May	22	Michael Lowrey	40	Male	White	2015	1534 N Center Ave	Somerset	PA	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
March	8	Michael McKillop	35	Male	White	2015	Northtowne Plaza Shopping Center	Claymount	DE	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
May	7	Michael Murphy	35	Male	White	2015	I-84	Beacon	NY	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
January	5	Michael Rodriguez	39	Male	Hispanic/Latino	2015	818 31st St	Evans	CO	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
February	23	Michael Smashey	37	Male	White	2015	4817 W Mceachern Woods Dr	Powder Springs	GA	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
January	21	Miguel Anguel de Santos-Rodriguez	36	Male	Hispanic/Latino	2015	ChapeÌ_å±o Rd	Roma	TX	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
May	26	Millard Tallant III	62	Male	White	2015	17500 Tester Rd 	Snohomish	WA	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
March	8	Monique Deckard	43	Female	Black	2015	900 S Euclid St	Anaheim	CA	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
March	23	Mychael Lynch	32	Male	White	2015	707 W 13th St	Vancouver	WA	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
May	3	Nadir Soofi	34	Male	Asian/Pacific Islander	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
March	6	Naeschylus Vinzant	37	Male	Black	2015	16200 E 12th Ave	Aurora	CO	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
February	8	Natasha McKenna	37	Female	Black	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	Fairfax	VA	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
January	15	Nathan Massey	33	Male	White	2015	Becky Sue St	Ville Platte	LA	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
May	29	Nehemiah Fischer	35	Male	White	2015	Hectorville Rd and Bixby Rd	Mounds	OK	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
March	27	Neil Seifert	40	Male	White	2015	N Main St	Webster	MA	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
May	7	Nephi Arriguin	21	Male	Black	2015	17200 Pires Ave	Cerritos	CA	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
January	7	Nicholas Brickman	30	Male	White	2015	SE 4th St and Scott Ave	Des Moines	IA	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
March	24	Nicholas Thomas	23	Male	Black	2015	2475 Cumberland Pkwy SE	Atlanta	GA	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
January	27	Nicolas Tewa	26	Male	Native American	2015	4130 N Black Canyon Hwy	Phoenix	AZ	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
May	20	Nikki Burtsfield	39	Female	White	2015	N Garner Lake Rd and Vaquero Ave	Gillette	WY	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
April	19	Norman Cooper	33	Male	Black	2015	4800 Legend Well Dr	San Antonio	TX	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
May	6	Nuwnah Laroche	34	Female	Black	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
January	8	Omarr Jackson	37	Male	Black	2015	Lasalle St and Josephine St	New Orleans	LA	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
January	25	Orlando Lopez	26	Male	Hispanic/Latino	2015	Troy Ave and Oakshire Ln	Pueblo	CO	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
January	17	Pablo Meza	24	Male	Hispanic/Latino	2015	E 6th St and Mateo St	Los Angeles	CA	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
January	6	Patrick Wetter	25	Male	White	2015	800 Howard St	Stockton	CA	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
April	4	Paul Anderson	31	Male	Black	2015	150 E Lincoln Ave	Anaheim	CA	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
January	19	Paul Campbell	49	Male	White	2015	69 Prospect Hill Dr	Weymouth	MA	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
February	17	Pedro 'Pete' Juan Saldivar	50	Male	Hispanic/Latino	2015	US-90 and Charles Dr	Del Rio	TX	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
March	21	Philip Conley	37	Male	White	2015	904 Admiral Callaghan Ln	Vallejo	CA	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
April	9	Phillip Burgess	28	Male	White	2015	477 Belcher Rd	Boiling Springs	SC	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
January	16	Phillip Garcia	26	Male	Hispanic/Latino	2015	12810 Gulf Fwy	Houston	TX	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
February	11	Phillip Watkins	23	Male	Black	2015	1300 Sherman St	San Jose	CA	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
March	31	Phillip White	32	Male	Black	2015	118 W Grape St	Vineland	NJ	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
January	15	Quincy Reed Reindl	24	Male	White	2015	Nesbitt Ave S and 99th St W	Bloomington	MN	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
January	29	Ralph Willis	42	Male	White	2015	604 E Maple Ave	Stillwater	OK	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
May	27	Randall Torrence	34	Male	White	2015	1225 Quindaro Blvd	Kansas City	KS	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
January	26	Raymond Kmetz	68	Male	White	2015	4401 Xylon Ave N	Minneapolis	MN	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
April	21	Reginald McGregor	31	Male	Black	2015	200 North Retta St	Fort Worth	TX	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
April	12	Richard 'Buddy' Weaver	83	Male	White	2015	Sleepy Hollow Dr and Misty Glen Dr	Newalla	OK	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
February	13	Richard Carlin	35	Male	White	2015	414 Rehr St	Reading	PA	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
March	14	Richard Castilleja	29	Male	Hispanic/Latino	2015	2615 Mossrock	San Antonio	TX	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
May	31	Richard Davis	50	Male	Black	2015	Tremont St and Morgan St	Rochester	NY	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
April	6	Richard Hanna	56	Male	Unknown	2015	400 Steuber Rd	Tehachapi	CA	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
January	13	Richard McClendon	43	Male	White	2015	600 Olive St	Jourdanton	TX	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
April	10	Richard Reed	38	Male	White	2015	SW Wanamaker Rd and I-70	Topeka	KS	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
March	20	Richard White	63	Male	Black	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	Kenner	LA	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
March	30	Ricky Hall	27	Male	Black	2015	NA	Fort Meade	MD	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
May	4	Roark Cook	36	Male	White	2015	3320 W 9th Ave	Kennewick	WA	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
May	29	Robert Box	55	Male	White	2015	108 Fir Canyon Rd	Grants Pass	OR	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
March	19	Robert Burdge	36	Male	White	2015	200 Trask St	Bakersfield	CA	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
January	14	Robert Edwards	68	Male	White	2015	500 Sycamore St	Lake Jackson	TX	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
January	23	Robert Francis Mesch	61	Male	White	2015	120 W Slaughter Ln	Austin	TX	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
May	5	Robert Frost	46	Male	White	2015	1847 Bob White Blvd	Pulaski	VA	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
February	23	Robert Kohl	47	Male	White	2015	175 Bass Pro Blvd	Denham Springs	LA	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
March	29	Robert Rooker	26	Male	White	2015	Fields Hollow Rd	Peebles	OH	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
April	1	Robert Washington	37	Male	Black	2015	14200 Kornblum Ave	Hawthorne	CA	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
March	17	Roberto Leon	22	Male	Hispanic/Latino	2015	Elkhorn Blvd and Dry Creek Rd	Rio Linda	CA	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
January	1	Roberto Ornelas	18	Male	Hispanic/Latino	2015	39 N Marlin Ave	Key Largo	FL	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
April	8	Roberto Rodriguez	39	Male	Hispanic/Latino	2015	4th St and Mathews St	Los Angeles	CA	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
February	26	Rodney Biggs	49	Male	White	2015	US-49 and Middle Driveway	Gulfport	MS	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
January	16	Rodney Walker	23	Male	Black	2015	W 11th St	Tulsa	OK	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
April	16	Rodolfo Velazquez	47	Male	Hispanic/Latino	2015	West Lerdo Hwy and South Wall St	Shafter	CA	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
January	7	Ronald Sneed	32	Male	Black	2015	300 Yaupon St	Freeport	TX	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
May	17	Ronell Wade	45	Male	Black	2015	15746 Union Ave	Harvey	IL	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
February	14	Roy Day	51	Male	White	2015	Gale St	Laredo	TX	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
February	20	RubÌ_å©n GarcÌ__a Villalpando	31	Male	Hispanic/Latino	2015	2500 Texas Hwy 121	Euless	TX	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
February	27	Russell Sharrer	54	Male	White	2015	1016 N 4th Ave	Pasco	WA	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
March	11	Ryan Burgess	31	Male	White	2015	2241 Lucille Ave	Kingman	AZ	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
March	13	Salome Rodriguez Jr	23	Male	Hispanic/Latino	2015	184 W 3rd St	Pomona	CA	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
January	11	Salvador Figueroa	29	Male	Hispanic/Latino	2015	Circle K, 1301 N Eastern Ave	Las Vegas	NV	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
February	4	Salvador Muna	28	Male	Hispanic/Latino	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
May	8	Sam Holmes	31	Male	Black	2015	University Ave NE and I-694	Fridley	MN	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
April	20	Santos 'Cuate' Cortez Hernandez	24	Male	Hispanic/Latino	2015	NA	Mission	TX	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
February	8	Sawyer Flache	27	Male	White	2015	Texas Hwy 71 and Silvermine Dr	Austin	TX	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
March	24	Scott Dunham	57	Male	White	2015	2600 Senter Rd	San Jose	CA	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
May	27	Scott McAllister	39	Male	Unknown	2015	33 Bayside Pkwy	Middletown	NJ	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
May	14	Sean Pelletier	38	Male	White	2015	6095 Anna's Ln	Portage	MI	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
March	5	Sergio Navas	34	Male	Hispanic/Latino	2015	N Pass Ave and W National Ave	Burbank	CA	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
March	19	Shane Watkins	39	Male	White	2015	1040 County Rd 249	Moulton	AL	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
March	2	Shaquille Barrow	20	Male	Black	2015	Richards St	Joliet	IL	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
May	8	Shaun Johnson	35	Male	White	2015	59705 E Bidegain Pl	Kearny	AZ	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
April	1	Shawn Clyde	36	Male	White	2015	110 Nottinghill Ln	Hamilton Township	NJ	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
March	16	Sheldon Haleck	38	Male	Asian/Pacific Islander	2015	364 S King St	Honolulu	HI	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
May	27	Simon Hubble	33	Male	White	2015	3600 Emmanuel Way	Alpine	CA	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
January	16	Sinthanouxay Khottavongsa	57	Male	Asian/Pacific Islander	2015	5900 Xerxes Ave N	Minneapolis	MN	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
February	20	Stanley Grant	38	Male	Black	2015	2200 Green Springs Hwy	Birmingham	AL	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
April	15	Stanley Watson	72	Male	White	2015	3120 East Main St	CaÌ_å±on City	CO	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
February	28	Stephanie Hill	37	Female	White	2015	I-10	La Paz County	AZ	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
May	11	Stephen Cunningham	47	Male	White	2015	3420 S Proctor St	Tacoma	WA	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
April	21	Steven Davenport	43	Male	White	2015	Old Hwy 19 SE	Meridian	MS	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
March	24	Steven Snyder	37	Male	White	2015	760 W Johnson St	Fond du Lac	WI	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
January	14	Talbot Schroeder	75	Male	White	2015	40 Cedar Grove Pl	Old Bridge Township	NJ	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
January	17	Terence Walker	21	Male	Black	2015	Old Agency Baptist Church	Muskogee	OK	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
April	27	Terrance Kellom	20	Male	Black	2015	9500 Evergreen Rd	Detroit	MI	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
March	10	Terrance Moxley	29	Male	Black	2015	280 N Main St	Mansfield	OH	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
March	11	Terry Garnett Jr	37	Male	Black	2015	Augustine Herman Hwy & E Lewis Shore Rd	Elkton	MD	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
February	21	Terry Price	41	Male	Black	2015	951 West 36th St N	Tulsa	OK	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
April	15	Tevin Barkley	22	Male	Black	2015	800 NW 75th St	Miami	FL	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
April	17	Thaddeus McCarroll	23	Male	Black	2015	9200 Riverwood Dr	Jennings	MO	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
March	10	Theodore Johnson	64	Male	Black	2015	6902 Ottawa Rd	Cleveland	OH	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
March	1	Thomas Allen Jr	34	Male	Black	2015	Morton Ave and Chatham Ave	St Louis	MO	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
January	8	Thomas Hamby	49	Male	White	2015	2964 W 2125 S	Syracuse	UT	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
May	5	Thong Kien Ma	32	Male	Asian/Pacific Islander	2015	10400 Enloe St	South El Monte	CA	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
January	22	Tiano Meton	25	Male	Black	2015	I-10	Sierra Blanca	TX	31.172832	-105.357927	US Border Patrol	Gunshot	Other
January	30	Tiffany Terry	39	Female	White	2015	1702 S 50th St	Omaha	NE	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
January	2	Tim Elliott	53	Male	Unknown	2015	600 E Island Lake Dr	Shelton	WA	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
May	17	Timothy Jones	27	Male	White	2015	111 Otero Dr	Ruidoso	NM	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
January	21	Todd Allen Hodge	36	Male	White	2015	40200 Clark Dr	Hemet	CA	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
April	24	Todd Jamal Dye	20	Male	Black	2015	1505 E Main St	Trinidad	CO	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
January	12	Tommy Smith	39	Male	White	2015	224 Circle Dr	Arcola	IL	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
March	6	Tony Robinson	19	Male	Black	2015	1125 Williamson St	Madison	WI	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
March	6	Tony Ross	34	Male	White	2015	Lamar St and Whitworth St	Sulphur Springs	TX	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
March	15	Troy Boyd	36	Male	White	2015	McEwien Swamp Rd	Ruth	MS	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
March	20	Tyrel Vick	34	Male	White	2015	Oklahoma Hwy 48 and E1750 Rd	Wapanucka	OK	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
April	6	Tyrell Larsen	31	Male	White	2015	E 100 N	Rigby	ID	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
March	5	Tyrone Ryerson	45	Male	Black	2015	468 E Plainfield Ave	Milwaukee	WI	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
March	5	Tyson Hubbard	34	Male	White	2015	27th St and Fletcher Ave	Lincoln	NE	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
January	16	Unknown	Unknown	Male	Unknown	2015	Co Rd 2718	Mabank	TX	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
May	25	Unknown	Unknown	Female	Unknown	2015	6505 Shirley Ave	Austin	TX	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
June	1	Unknown	Unknown	Male	White	2015	271 Greece Ridge Center Dr	Rochester	NY	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
January	31	Victor Reyes	31	Male	Hispanic/Latino	2015	West Little York Rd	Houston	TX	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
March	25	Victor Terrazas	28	Male	Hispanic/Latino	2015	10200 S Vermont Ave	Los Angeles	CA	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
February	9	Vincent Cordaro	57	Male	White	2015	N Little Tor Rd	New City	NY	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
March	24	Walter Brown III	29	Male	Black	2015	19 Colin Drive S	Portsmouth	VA	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
April	4	Walter Scott	50	Male	Black	2015	1945 Remount Rd	North Charleston	SC	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
January	29	Wendell King	40	Male	White	2015	4800 Hildring Dr E	Forth Worth	TX	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
February	5	Wilber Castillo-Gongora	35	Male	Hispanic/Latino	2015	US-287	Electra	TX	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
March	10	William 'Rusty' Smith	53	Male	White	2015	700 Valley St	Hoover	AL	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
January	25	William Campbell	59	Male	Unknown	2015	335 New Brooklyn Rd	Berlin	NJ	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
April	22	William Chapman II	18	Male	Black	2015	1098 Frederick Blvd	Portsmouth	VA	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
April	4	William Dick III	28	Male	Native American	2015	Bureau of Indian Affairs Rd 66	Tonasket	WA	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
March	16	William Poole	52	Male	White	2015	130 Wedowee Ln	Gaston	NC	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
February	3	Yuvette Henderson	38	Female	Black	2015	3800 Hollis St	Oakland	CA	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
January	16	Zaki Shinwary	48	Male	Unknown	2015	Lake Arrowhead Ave and Great Salt Lake Dr	Fremont	CA	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: -
--

COPY person (name, age, gender, raceethnicity, month, day, year, streetaddress, city, state, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
name	age	gender	raceethnicity	month	day	year	streetaddress	city	state	latitude	longitude	lawenforcementagency	cause	armed
A'donte Washington	16	Male	Black	February	23	2015	Clearview Ln	Millbrook	AL	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
Aaron Rutledge	27	Male	White	April	2	2015	300 block Iris Park Dr	Pineville	LA	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
Aaron Siler	26	Male	White	March	14	2015	22nd Ave and 56th St	Kenosha	WI	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
Aaron Valdez	25	Male	Hispanic/Latino	March	11	2015	3000 Seminole Ave	South Gate	CA	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
Adam Jovicic	29	Male	White	March	19	2015	364 Hiwood Ave	Munroe Falls	OH	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
Adam Reinhart	29	Male	White	March	7	2015	18th St and Palm Ln	Phoenix	AZ	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
Adrian Hernandez	22	Male	Hispanic/Latino	March	27	2015	4000 Union Ave	Bakersfield	CA	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
Adrian Solis	35	Male	Hispanic/Latino	March	26	2015	1500 Bayview Ave	Wilmington	CA	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
Alan Alverson	44	Male	White	January	28	2015	Pickett Runn Rd	Sunset	TX	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
Alan James	31	Male	White	February	7	2015	200 Abbie St SE	Wyoming	MI	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
Albert Hanson Jr	76	Male	White	April	26	2015	7th Ave and Kansas Ave	Hanford	CA	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
Alec Ouzounian	40	Male	White	May	12	2015	28 Paseo Viento	Rancho Santa Margarita	CA	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
Alejandro Salazar	Unknown	Male	Hispanic/Latino	February	20	2015	1200 E Airtex Dr	Houston	TX	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
Alexander Long	31	Male	White	February	25	2015	25th St and Poplar St	Terre Haute 	IN	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
Alexander Myers	23	Male	White	April	6	2015	5700 block Ashby Dr	Indianapolis	IN	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
Alexander Rivera	39	Male	Hispanic/Latino	May	30	2015	1128 Murfreesboro Pike	Nashville	TN	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
Alexia Christian	25	Female	Black	April	30	2015	141 Pryor St SW	Atlanta	GA	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
Alfredo Rials-Torres	54	Male	Hispanic/Latino	May	19	2015	4219 2nd Road N	Arlington	VA	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
Alice Brown	24	Female	White	March	17	2015	Van Ness Ave and Pine St	San Francisco	CA	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
Alvin Haynes	57	Male	Black	January	26	2015	1 Moreland Dr	San Francisco	CA	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
Amilcar Perez-Lopez	21	Male	Hispanic/Latino	February	26	2015	Folsom St and 24th St	San Francisco	CA	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
Andre Murphy Sr	42	Male	Black	January	7	2015	1223 Omaha Ave	Norfolk	NE	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
Andres Lara-Rodriguez	21	Male	Hispanic/Latino	February	13	2015	S 12th St and Ruby St	Kansas City	KS	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
Andrew Driver	36	Male	White	March	13	2015	9700 Kempster Ave	Fontana	CA	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
Andrew Jackson	26	Male	White	April	29	2015	1200 W Florida Ave	Chickasha	OK	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
Andrew Shipley	49	Male	White	March	17	2015	360 Argyle Ct	Medford	OR	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
Andrew Toto	54	Male	White	January	21	2015	Scobie Pond Rd and Julian Rd	Derry	NH	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
Andrew Valadez	26	Male	White	April	23	2015	Tyler St and Glenoaks Blvd	Sylmar	CA	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
Andrew Williams	48	Male	Black	March	6	2015	Putnam Loop Rd	Putnam Hall	FL	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
Andy Martinez	33	Male	Hispanic/Latino	January	9	2015	4400 Tetons Dr	El Paso	TX	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
Angel Corona Jr	21	Male	Hispanic/Latino	April	10	2015	4740 Barham Ave	Corning	CA	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
Angelo West	41	Male	Black	March	27	2015	Humboldt Ave and Ruthven St	Roxbury	MA	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
Anthony Bess	48	Male	Black	February	10	2015	4545 Aldridge Dr	Memphis	TN	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
Anthony Briggs	36	Male	Black	May	25	2015	1100 E Gateway Dr SE	Huntsville	AL	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
Anthony Giaquinta	41	Male	Hispanic/Latino	February	22	2015	Lower Pond Ct	Clarkesville	GA	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
Anthony Gomez Jr	29	Male	Black	May	19	2015	305 E Walnut St	Lancaster	PA	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
Anthony Hill	27	Male	Black	March	9	2015	3028 Chamblee Dunwoody Rd	Chamblee	GA	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
Anthony Purvis	45	Male	White	February	3	2015	1404 N June Ave	Douglas	GA	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
Antonio Perez	32	Male	Hispanic/Latino	March	12	2015	2400 Flower St	Los Angeles	CA	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
Antonio Zambrano-Montes	35	Male	Hispanic/Latino	February	10	2015	1107 W Lewis St	Pasco	WA	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
Artago Howard	36	Male	Black	January	8	2015	9661 Strong Hwy	Strong	AR	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
Askari Roberts	35	Male	Black	March	17	2015	3189 Morton Bend Rd	Rome	GA	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
Aurelio Duarte	40	Male	Hispanic/Latino	March	8	2015	3632 SW 38th St	Oklahoma City	OK	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
Austin Goodner	18	Male	White	May	17	2015	5236 Robin Ln N	St Petersburg	FL	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
Autumn Steele	34	Female	White	January	6	2015	104 N Garfield Ave	Burlington	IA	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
Benito Osorio	39	Male	Hispanic/Latino	March	11	2015	300 S Main St	Santa Ana	CA	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
Benjamin Quezada	21	Male	Hispanic/Latino	March	31	2015	West Texas Ave and Gaillard St	Baytown	TX	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
Bernard Moore	62	Male	Black	March	6	2015	Metropolitan Pkwy and Fair Dr	Atlanta	GA	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
Betty Sexton	43	Female	White	February	17	2015	2325 Union Rd	Gastonia	NC	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
Billy Grimm	44	Male	White	May	3	2015	Arenal Rd SW and Tapia Blvd SW	Albuquerque	NM	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
Billy Patrick	29	Male	White	April	26	2015	NA	Bunch	OK	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
Bobby Gross	35	Male	Black	March	12	2015	700 14th St NW 	Washington	DC	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
Bradford Leonard	50	Male	White	February	22	2015	900 Castile Rd SE	Palm Bay	FL	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
Brandon Jones	18	Male	Black	March	19	2015	1077 Parkwood Dr	Cleveland	OH	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
Brandon Lawrence	25	Male	White	April	25	2015	800 Simpson Rd	Victoria	TX	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
Brandon Rapp	31	Male	White	March	18	2015	9000 Charles Way	Middleton	ID	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
Brendon Glenn	29	Male	Black	May	6	2015	1602 Pacific Ave	Los Angeles	CA	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
Brian Babb	49	Male	White	March	31	2015	2200 Devos St	Eugene	OR	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
Brian Barbosa	23	Male	Unknown	January	11	2015	8900 Kauffman Ave	South Gate	CA	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
Brian Fritze	45	Male	White	February	10	2015	I-70 and US-6	Glenwood Springs	CO	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
Brian Pickett	26	Male	Black	January	6	2015	1600 E 123rd St	Los Angeles	CA	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
Brock Nichols	35	Male	White	January	6	2015	2388 E Kansas Hwy 4	Assaria	KS	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
Bruce Steward	34	Male	White	February	15	2015	29000 S Wall St	Colton	OR	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
Bruce Zalonka	46	Male	Asian/Pacific Islander	May	12	2015	1031 Nuuanu Ave	Honolulu	HI	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
Byron Herbert	29	Male	Black	March	29	2015	111 Towne Dr	Elizabethtown	KY	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
Calvon Reid	39	Male	Black	February	22	2015	1701 Andros Isle	Coconut Creek	FL	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
Carl Lao	28	Male	Asian/Pacific Islander	March	4	2015	South San Joaquin St and East Church St	Stockton	CA	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
Carlos Saavedra Ramirez	51	Male	Hispanic/Latino	April	22	2015	101 Naco Hwy	Bisbee	AZ	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
Carter Ray Castle	67	Male	White	January	18	2015	Kentucky Rte 7	Gunlock	KY	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
Cary Martin	53	Male	White	May	14	2015	497 Florida Ave	St Augustine	FL	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
Caso Jackson	25	Male	Black	May	23	2015	13331 Strathmoor St	Detroit	MI	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
Cedrick Bishop	30	Male	Black	March	9	2015	Aurora St	Cocoa	FL	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
Celin Nunez	24	Male	Hispanic/Latino	April	13	2015	3 Greens Rd	Houston	TX	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
Chance Thompson	35	Male	White	February	15	2015	Hammonton Smartville Rd	Marysville	CA	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
Charly 'Africa' Keunang	43	Male	Black	March	1	2015	500 San Pedro St	Los Angeles	CA	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
Chazsten Freeman	24	Male	White	February	27	2015	South Carolina Rte 8 and Augusta Rd	Peltzer	SC	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
Chris Ingram	29	Male	White	January	27	2015	Coronado Trail	Morenci	AZ	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
Chrislon Talbott	38	Male	Black	May	21	2015	4585 Frederica St	Owensboro	KY	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
Christopher Finley	31	Male	White	April	14	2015	900 Walnut St	Jonesboro	AR	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
Christopher Healy	36	Male	White	March	22	2015	2300 SE 130th Ave	Portland	OR	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
Christopher Mitchell	23	Male	White	March	10	2015	6530 Georgia Rte 21	Port Wentworth	GA	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
Christopher Prevatt	38	Male	White	April	3	2015	123 Gregory Pl	Winchester	VA	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
Clifton Reintzel	53	Male	White	March	13	2015	600 Main St	Follansbee	WV	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
Cody Evans	24	Male	White	February	15	2015	1600 W 500 N	Provo	UT	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
Cody Karasek	26	Male	White	January	28	2015	4100 Avenue I	Rosenberg	TX	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
Cornelius Parker	28	Male	Black	February	28	2015	E Broadway and US-63	Columbia	MO	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
Crystal Miley	34	Female	White	February	26	2015	5101 Georgia Rte 133	Moultrie	GA	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
D'Angelo Stallworth	28	Male	Black	May	12	2015	7300 Blanding Blvd	Jacksonville	FL	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
DaJuan Graham	40	Male	Black	May	12	2015	13900 Castle Blvd	Silver Spring	MD	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
Dalton Branch	51	Male	Black	May	26	2015	530 Stanley Ave	New York	NY	40.6572562	-73.8886551	New York Police Department	Gunshot	No
Dana Hlavinka	44	Male	White	April	19	2015	1363 Clark Dr	Sidney	NE	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
Daniel Brumley	25	Male	Hispanic/Latino	January	17	2015	NE 36th St	Fort Worth	TX	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
Daniel Caldwell	56	Male	White	February	16	2015	8351 N Cracker Barrel Rd	Marana	AZ	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
Daniel Covarrubias	37	Male	Hispanic/Latino	April	21	2015	3600 SW 108th St	Lakewood	WA	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
Daniel Davis	58	Male	White	April	25	2015	8624 Firestone Cir	Clermont	FL	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
Daniel Elrod	39	Male	White	February	24	2015	1299 Hickory St	Omaha	NE	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
Daniel Mejia	37	Male	Hispanic/Latino	February	15	2015	200 S McNab Pkwy	San Manuel	AZ	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
Daniel Wolfe	35	Male	Black	April	21	2015	1714 Walker Ave	Union	NJ	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
Darin Hutchins	26	Male	Black	January	24	2015	1900 McHenry St	Baltimore	MD	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
Darrell 'Hubbard' Gatewood	47	Male	Black	March	1	2015	616 SW 59th St	Oklahoma City	OK	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
Darrell Brown	31	Male	Black	April	16	2015	402 North Prospect St	Hagerstown	MD	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
Darrell Morgan	60	Male	White	May	28	2015	3164 Charlotte Hwy	Lancaster	SC	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
Darrin Langford	32	Male	Black	April	2	2015	12th Ave and Glenhurst Ct	Rock Island	IL	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
Daryl Myler	45	Male	White	January	24	2015	164 E Main St	Rexburg	ID	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
David Cuevas	42	Male	Hispanic/Latino	February	26	2015	4660 N Socrum Loop Rd	Lakeland	FL	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
David Gaines	17	Male	White	May	19	2015	N 10th St and Gunnison Ave	Grand Junction	CO	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
David Gandara	22	Male	Hispanic/Latino	May	21	2015	5111 Fairbanks Dr	El Paso	TX	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
David Garcia	33	Male	Hispanic/Latino	January	26	2015	1134 E St	Wasco	CA	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
David Johnson	18	Male	White	May	7	2015	300 Stone Monument Dr	Wake Forest	NC	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
David Kapuscinski	39	Male	White	April	16	2015	14680 Middle Gibraltar Rd	Rockwood	MI	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
David Kassick	59	Male	White	February	2	2015	36 Grandview Rd	Hanover	PA	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
David Lynch	33	Male	White	April	3	2015	11974-11998 US-64	Muskogee County	OK	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
David Parker	58	Male	White	April	28	2015	36 Randall Rd	Mansfield	OH	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
David Schwalm	58	Male	White	May	8	2015	168 Auringer Rd	Constantania	NY	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
David Watford	47	Male	White	March	17	2015	US-65	Tallulah	LA	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
David Werblow	41	Male	White	March	15	2015	134 Burban Dr	Branford	CT	41.2693481	-72.8428955	Branford Police Department	Taser	Other
Dean Bucheit	64	Male	White	February	9	2015	13600 Culver Blvd	Los Angeles	CA	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
Dean Genova	45	Male	White	April	26	2015	13822 Brookhurst St	Garden Grove	CA	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
Deanne Choate	53	Female	White	March	26	2015	400 N Birch	Gardner	KS	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
Declan Owen	24	Male	White	March	17	2015	8100 North Carolina Hwy 41	Dublin	NC	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
Dedrick Marshall	48	Male	Black	May	8	2015	3020 Destrehan Ave	Harvey	LA	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
Demaris Turner	29	Male	Black	January	23	2015	1980 NW 46 Ave	Lauderhill	FL	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
Denis Reyes	40	Male	Hispanic/Latino	May	15	2015	274 E 194th St	New York	NY	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
Dennis Fiel	34	Male	White	May	17	2015	7700 Mesa College Dr	San Diego	CA	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
Denzel Brown	21	Male	Black	March	22	2015	1851 Sunrise Hwy	Bay Shore	NY	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
Derek Cruice	26	Male	White	March	4	2015	800 Maybrook Dr	Deltona	FL	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
Desmond Luster	45	Male	Black	February	9	2015	7400 Bonnie View Rd	Dallas	TX	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
Desmond Willis	25	Male	Black	April	6	2015	2515 Manhattan Blvd	Harvey	LA	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
Deven Guilford	17	Male	White	March	1	2015	331 W Grand Ledge Hwy	Roxand Township	MI	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
Devin Gates	24	Male	Black	March	22	2015	2105 Scott Blvd	Santa Clara	CA	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
Dewayne Carr	42	Male	Black	January	15	2015	Chaparral Rd and Hayden Rd	Scottsdale	AZ	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
Dewayne Ward Jr	29	Male	Black	February	3	2015	1000 Claudia Ct	Antioch	CA	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
Dexter Bethea	42	Male	Black	April	8	2015	3022 James Rd	Valdosta	GA	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
Dominick Wise	30	Male	Black	March	30	2015	1301 Spring Meadow Ln	Culpeper	VA	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
Don Smith	29	Male	Black	April	9	2015	8516 N Meridian Rd	Monon	IN	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
Donald 'Dontay' Ivy	39	Male	Black	April	2	2015	Lark St and Second St	Albany	NY	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
Donald Hicks	63	Male	White	April	2	2015	Illinois Rte 145 and Waldo Church Rd	Metropolis	IL	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
Donald Matkins	49	Male	White	March	1	2015	Mt Pleasant Rd	Lucedale	MS	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
Donte Noble	41	Male	Black	April	15	2015	200 Canaan Pointe Dr	Spartanburg	SC	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
Donte Sowell	27	Male	Black	January	15	2015	East 38th St and North Mitthoeffer Rd	Indianapolis	IN	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
Doug Sparks	30	Male	White	February	17	2015	Forest Ave	Tewksbury	MA	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
Douglas Faith	60	Male	White	April	8	2015	Karen Ln and Corinne Dr	San Antonio	TX	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
Douglas Harris	77	Male	Black	March	27	2015	7901 1st Ave S	Birmingham	AL	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
Ebin Proctor	19	Male	Unknown	May	30	2015	Yuma Circle	Cottonwood	AZ	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
Edixon Franco	37	Male	Hispanic/Latino	March	10	2015	Fern Ave and Phillips St	Ontario	CA	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
Edward Bright Sr	54	Male	Black	January	31	2015	9800 Liberty Rd	Randallstown	MD	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
Elias Cavazos	29	Male	Hispanic/Latino	April	17	2015	Girard Street and Acacia Ave	Hemet	CA	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
Elton Simpson	30	Male	Black	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
Elvin Diaz	24	Male	Hispanic/Latino	May	21	2015	10 Temple Ave	Hackensack	NJ	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
Enoch Gaver	21	Male	White	March	21	2015	2003 E Rodeo Dr	Cottonwood	AZ	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
Eric Harris	44	Male	Black	April	2	2015	1900 block N Harvard Ave	Tulsa	OK	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
Eric Robinson	40	Male	White	May	23	2015	135 N Main St	Eagar	AZ	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
Erick Rose	32	Male	White	April	7	2015	Post Office Neck Rd and Lake Rd	Shawnee	OK	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
Erick Sanchez	22	Male	Hispanic/Latino	April	30	2015	11565 James Watt Dr	El Paso	TX	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
Erik Tellez	43	Male	White	April	18	2015	20th St and Thomas Rd	Phoenix	AZ	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
Ernesto Flores	52	Male	Hispanic/Latino	April	15	2015	11157 Chico Ave	Pomona	CA	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
Ernesto Javier Canepa Diaz	27	Male	Hispanic/Latino	February	27	2015	1000 W 3rd St	Santa Ana	CA	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
Ethan Noll	34	Male	White	April	4	2015	Mountainair St	Edgewood	NM	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
Eugene Smith II	20	Male	White	March	17	2015	313 S Houston Ave	Onalaska	TX	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
Fednel Rhinvil	25	Male	Black	March	3	2015	East Rd and Olivia St	Salisbury	MD	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
Felix David	24	Male	Black	April	25	2015	538 E Sixth St	New York	NY	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
Feras Morad	20	Male	Unknown	May	27	2015	4600 E 15th St	Long Beach	CA	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
Fletcher Stewart	46	Male	White	February	11	2015	Booger Hollow Rd	Dadeville	AL	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
Francis Rose III	42	Male	White	February	2	2015	9000 Buena Vista St	Apple Valley	CA	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
Francis Spivey	43	Male	White	February	25	2015	5300 East Craig Road	Las Vegas	NV	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
Frank 'Trey' Shephard III	41	Male	Black	April	15	2015	Castlegory Rd and Wallisville Rd	Houston	TX	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
Fred Liggett Jr	59	Male	White	March	13	2015	8700 E 97th Ter	Kansas City	MO	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
Freddie Gray	25	Male	Black	April	12	2015	Mount St and Presbury St	Baltimore	MD	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
Fridoon Rawshannehad	42	Male	White	April	30	2015	3200 Hancock St	San Diego	CA	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
Garland Wingo	64	Male	White	March	18	2015	Lake Ella	Tallahassee	FL	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
Garrett Gagne	22	Male	White	January	1	2015	Crowell Rd and Tipcart Dr	Chatham	MA	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
Garrett Sandeno	24	Male	White	May	27	2015	1701 Ridgecrest Rd	Edmond	OK	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
Gary Collins	63	Male	White	April	25	2015	H St NW and 20th Ave NW	Miami	OK	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
Gary Kendrick	56	Male	White	March	27	2015	Shadytree Ln and Glen Arbor Dr	Encinitas	CA	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
Gary Page	60	Male	White	March	21	2015	1790 E Voorhees St	Harmony	IN	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
Gilbert Fleury	54	Male	White	March	11	2015	Cliffs Landing Rd	Bay Minette	AL	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
Glenn Lewis	37	Male	Black	February	25	2015	2201 NW 27th St	Oklahoma City	OK	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
Gordon Kimbrell Jr	22	Male	White	April	9	2015	9265 Quail Roost Dr	Navarre	FL	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
Gregory Smith	39	Male	White	March	30	2015	2293 N Main St	Crown Point	IN	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
Grover Sapp Jr	45	Male	White	April	18	2015	1200 Beck Ave	Panama City	FL	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
Harry Davis	57	Male	White	May	27	2015	Sparta Hwy and Oconee Springs Rd	Eatonton	GA	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
Harvey Oates	42	Male	White	March	27	2015	Horseshoe Run Rd	Fort Ashby	WV	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
Hashim Abdul-Rasheed	41	Male	Black	January	7	2015	4600 International Gateway	Columbus	OH	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
Hector Morejon	19	Male	Hispanic/Latino	April	23	2015	1100 Hoffman Ave	Long Beach	CA	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
Herbert Hill	26	Male	Black	February	6	2015	1000 SW 62nd St	Oklahoma City	OK	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
Howard Brent Means Jr	34	Male	White	February	15	2015	1110 Battleground Dr	Iuka	MS	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
Howard Robbins	69	Male	White	January	16	2015	US-150	Stanford	KY	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
Hue Dang	64	Female	Asian/Pacific Islander	March	9	2015	E Kennedy St	Hackensack	NJ	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
Hung Trieu	35	Male	Asian/Pacific Islander	February	2	2015	13442 Bellaire Blvd	Houston	TX	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
Ian Sherrod	40	Male	Black	February	28	2015	2300 block Main St	Tarboro	NC	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
Isaac Holmes	19	Male	Black	January	21	2015	4200 St Louis Ave	St Louis	MO	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
Isaac Jimenez	27	Male	Hispanic/Latino	April	13	2015	3400 Lincoln Ave	Alton	IL	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
Izzy Colon	37	Male	Hispanic/Latino	February	4	2015	4304 Pershing Pointe Pl	Orlando	FL	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
Jacob Haglund	17	Male	White	February	2	2015	1600 3rd St	Bay City	MI	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
Jamalis Hall	39	Male	Black	March	27	2015	1000 block Mayflower Rd	Fort Pierce	FL	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
James Allen	74	Male	Black	February	7	2015	2701 Mary Ave	Gastonia	NC	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
James Barker	42	Male	White	January	8	2015	600 Second Ave	Salt Lake City	UT	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
James Bushey	47	Male	White	June	1	2015	2225 Texas Hwy 256 Loop	Palestine	TX	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
James Cooper	43	Male	White	May	20	2015	3271 Dartmouth Dr	Charleston	SC	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
James Damon	46	Male	White	March	9	2015	US-40	Craig	CO	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
James Ellis	44	Male	White	March	21	2015	New York State Rte 31A	Clarendon	NY	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
James Greenwell	31	Male	White	March	11	2015	700 N Auburndale St	Memphis	TN	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
James Horn Jr	47	Male	White	May	23	2015	SE 650th Rd	Green Ridge	MO	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
James Jimenez	41	Male	Hispanic/Latino	March	13	2015	1410 Hill Ave	Napa	CA	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
James Moore	43	Male	White	March	22	2015	5900 S Lewis Ave	Tulsa	OK	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
James Morris	40	Male	Unknown	May	31	2015	Juanipero Way and La Loma Dr	Medford	OR	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
James Strong	32	Male	Black	May	28	2015	10900 E 109th Pl	Northglenn	CO	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
Jamie Croom	31	Male	Black	March	10	2015	10064 Elm Grove Garden Dr	Baton Rouge	LA	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
Jamison Childress	20	Male	White	March	19	2015	Kneuman Rd	Sumas	WA	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
Janisha Fonville	20	Female	Black	February	19	2015	Bellefonte Dr	Charlotte	NC	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
Jared Forsyth	33	Male	White	April	6	2015	11120 NW Gainesville Rd	Ocala	FL	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
Jared Johnson	22	Male	Black	April	28	2015	8400 Chef Menteur Hwy	New Orleans	LA	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
Jason Carter	41	Male	White	February	21	2015	298 Gavilan Canyon Rd	Rudioso	NM	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
Jason Champion	41	Male	Black	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
Jason Evans	32	Male	White	April	12	2015	North Carolina Hwy 242 and Reeda Branch Rd	Salemburg	NC	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
Jason Hendrix	16	Male	White	February	14	2015	1486 Hyde Park Rd	Essex	MD	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
Jason Moland	29	Male	Black	March	30	2015	3700 Beyer Park Dr	Modesto	CA	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
Jason Smith	42	Male	White	March	20	2015	4604 Summit St	Columbus	OH	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
Javoris Washington	29	Male	Black	May	21	2015	SW 29th Ave and SW 29th Terrace	Fort Lauderdale	FL	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
Jeff Alexander	47	Male	White	March	17	2015	1125 1/2 19th St	Bakersfield	CA	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
Jeffery Adkins	53	Male	Black	April	30	2015	200 Elm Rd	Emporia	VA	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
Jeffery Kemp	18	Male	Black	April	17	2015	74th Street and Merrill Ave	Chicago	IL	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
Jeffrey Jackson	47	Male	White	March	22	2015	Kentucky Rte 92	Williamsburg	KY	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
Jeffrey Nielson	34	Male	White	January	14	2015	120 Honey Berry Ct	Draper	UT	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
Jeffrey Pitts	36	Male	White	May	31	2015	3500 Ebenezer Rd	Conyers	GA	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
Jeffrey Surnow	63	Male	White	March	1	2015	Waikoloa Rd	Waikoloa Village	HI	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
Jeremy Anderson	36	Male	White	March	31	2015	1600 Grass Lake Dr	Tampa Bay	FL	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
Jeremy Kelly	27	Male	Black	March	25	2015	Dixie St	Johnsonville	SC	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
Jeremy Lett	28	Male	Black	February	5	2015	2400 W Tharpe St	Tallahassee	FL	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
Jermonte Fletcher	33	Male	Black	January	27	2015	265 Buffalo Ct	Columbus	OH	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
Jerome Caldwell	32	Male	Black	May	21	2015	83 Beaufain St	Charleston	SC	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
Jerome Nichols	42	Male	White	February	23	2015	N Plymouth St	Allentown	PA	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
Jess Leipold	31	Male	White	April	9	2015	45 Major Bell Ln	Gettysburg	PA	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
Jessica Hernandez	17	Female	Hispanic/Latino	January	26	2015	Newport St & E 25th Ave	Denver	CO	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
Jessica Uribe	28	Female	Unknown	February	28	2015	1113 W St Mary's Rd	Tuscon 	AZ	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
Jessie Williams	24	Male	White	May	26	2015	200 John Wesly Blvd	Bossier City	LA	32.5170212	-93.7078476	FBI	Gunshot	Firearm
Jimmy Foreman	71	Male	Unknown	January	9	2015	422 SE 3rd St	England	AR	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
Jimmy Robinson Jr	51	Male	Black	February	4	2015	I-35	Waco	TX	31.593082	-97.108858	Waco Police Department	Gunshot	No
Joaquin Hernandez	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
John Acree	53	Male	White	April	30	2015	812 Forest Hills Dr	Nashville	TN	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
John Allen	54	Male	White	March	30	2015	841 Avenue A	Boulder City	NV	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
John Ballard Gorman	45	Male	White	January	21	2015	3468 Casino Way	Robinsonville	MS	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
John Kaafi	33	Male	White	May	7	2015	8th St and N Orange Ave	Sarasota	FL	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
John Marshall	48	Male	White	January	30	2015	Billings Clinic, 2800 10th Ave N	Billings	MT	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
John O'Keefe	34	Male	White	January	13	2015	Constitution Ave and San Mateo Blvd	Albuquerque	NM	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
John Quintero	23	Male	Hispanic/Latino	January	3	2015	500 North Oliver Ave	Wichita	KS	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
John Sawyer	35	Male	White	February	5	2015	1200 Calimesa Blvd	Calimesa	CA	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
John Whittaker	33	Male	Hispanic/Latino	February	10	2015	1503 Medfra St	Anchorage	AK	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
Johnathon Guillory	32	Male	White	January	18	2015	Greenland Park Dr	Maricopa	AZ	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
Jonathan Colley	52	Male	White	May	20	2015	2569 Raber Rd	Green	OH	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
Jonathan Efraim	30	Male	White	April	22	2015	16802 Hillside Ave	New York	NY	40.7098999	-73.7943573	New York Police Department	Gunshot	No
Jonathan Harden	23	Male	White	February	13	2015	4023 University Pkwy	San Bernadino	CA	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
Jonathan McIntosh	35	Male	White	May	19	2015	900 E Main St	Cabot	AR	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
Jonathan Paul	42	Male	Black	March	12	2015	300 E Mitchell St	Arlington	TX	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
Jonathan Pierce	37	Male	White	February	12	2015	Port St Joe Police Station, 410 Williams Ave	Port St Joe	FL	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
Jose Antonio Espinoza Ruiz	56	Male	Hispanic/Latino	January	23	2015	202 Avenue A	Levelland	TX	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
Jose Ceja	36	Male	Hispanic/Latino	January	15	2015	2007 Sousa Ct	Fairfield	CA	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
Jose Herrera	27	Male	Hispanic/Latino	April	22	2015	3000 W Cecil Ave	Delano	CA	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
Joseph Biegert	30	Male	White	February	24	2015	1500 Plymouth Ln	Green Bay	WI	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
Joseph Caffarello	31	Male	White	January	7	2015	6100 Scott St	Rosemont	IL	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
Joseph Paffen	46	Male	White	February	8	2015	4501 Hoffner Ave	Orlando	FL	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
Joseph Potts	51	Male	White	April	23	2015	182 N4430 Rd	Rufe	OK	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
Joseph Roy	72	Male	Unknown	May	7	2015	2853 Avalon Meadows Ct	Lawrenceville	GA	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
Joseph Slater	28	Male	White	April	15	2015	27767 Base Line	Highland	CA	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
Joseph Tassinari	63	Male	White	March	24	2015	6600 W Christy Dr	Glendale	AZ	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
Joseph Weber	28	Male	White	April	8	2015	Tasman Dr and Lawrence Expy	Sunnyvale	CA	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
Joshua Deysie	33	Male	Hispanic/Latino	April	29	2015	1400 E Harmony Ave	Mesa	AZ	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
Joshua Garcia	24	Male	Hispanic/Latino	January	26	2015	2500 FM1054	Tahoka	TX	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
Joshua Green	27	Male	White	April	28	2015	1408 W Main St	Marion	IL	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
Justin Fowler	24	Male	Native American	March	19	2015	Indian Rte 13	Lukachukai	AZ	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
Justin Tolkinen	28	Male	White	March	16	2015	400 White Bear Ave	St Paul	MN	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
Justin Way	28	Male	White	May	11	2015	225 Presidents Cup Way	St Augustine	FL	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
Justus Howell	17	Male	Black	April	4	2015	2300 Gilead Ave	Zion	IL	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
Karen Janks	46	Female	White	April	23	2015	2661 Gravenstein Hwy S	Sebastopol	CA	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
Karl Taylor	52	Male	Black	April	14	2015	325 Riverside Dr	Fallsburg	NY	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
Kavonda Payton	39	Male	Black	January	16	2015	138 Del Mar Cir	Aurora	CO	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
Kaylene Stone	49	Female	White	March	18	2015	6735 W Peoria Ave	Peoria 	AZ	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
Kelvin Goldston	30	Male	Black	May	11	2015	6024 Wheaton Dr	Fort Worth	TX	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
Ken Cockerel	51	Male	White	April	3	2015	W Union Hills Dr and N 39th Ave	Phoenix	AZ	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
Kendre Alston	16	Male	Black	March	19	2015	1800 Helena St	Jacksonville	FL	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
Kenneth Brown	18	Male	White	January	4	2015	NA	Guthrie	OK	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
Kenneth Buck	22	Male	Hispanic/Latino	January	5	2015	E Knox Rd	Chandler	AZ	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
Kenneth Dothard	40	Male	Black	May	28	2015	900 Bankhead Hwy	Carrollton	GA	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
Kenneth Kreyssig	61	Male	White	February	10	2015	645 Smyrna Center Rd	Smyrna	ME	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
Kenneth Mathena	52	Male	White	May	2	2015	30 Malvern Ln	Smyrna	DE	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
Kent Norman	51	Male	White	February	21	2015	1800 Heather Cir	Indianapolis	IN	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
Kevin Allen	36	Male	Black	May	29	2015	355 Valley Brook Ave	Lyndhurst	NJ	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
Kevin Norton	36	Male	White	May	3	2015	210 W 300 N	Roosevelt	UT	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
Kimber Key	59	Male	White	April	21	2015	107 White Falls Dr	Columbia	SC	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
Kristiana Coignard	17	Female	White	January	22	2015	Longview Police Department, 302 W Cotton St	Longview	TX	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
Kyle Baker	18	Male	White	May	28	2015	2800 Longmeadow Dr	Trenton	MI	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
Larry Hostetter	41	Male	White	February	9	2015	200 Jordan Dr	Nocona	TX	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
Larry Kobuk	33	Male	Native American	January	28	2015	Corrections Department, 1400 E 4th Ave	Anchorage	AK	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
Lavall Hall	25	Male	Black	February	15	2015	19157 NW 3rd Ave	Miami Gardens	FL	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
Ledarius Williams	23	Male	Black	February	3	2015	Minnesota Ave and Meramec St	St Louis	MO	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
Leslie Sapp III	47	Male	Black	January	6	2015	Redlyn St	Pittsburgh	PA	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
Lester Brown	58	Male	White	March	9	2015	85 Almost Home Rd	Penrose	NC	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
Lewis Lembke	47	Male	White	January	2	2015	4505 SW Masters Loop	Aloha	OR	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
Lionel Young	34	Male	Black	May	10	2015	950 Nalley Rd	Landover	MD	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
Loren Simpson	28	Male	White	January	8	2015	3618 White Buffalo Rd	Huntley	MT	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
Lorenzo Hayes	37	Male	Black	May	13	2015	N Addison St and E Sanson Ave	Spokane	WA	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
Louis Becker	87	Male	White	January	14	2015	New York State Rte 23 and Cairo Junction Rd	Catskill	NY	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
Lue Vang	39	Male	Asian/Pacific Islander	April	22	2015	4100 Eldorado Springs Dr	Boulder	CO	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
Luis Chavez-Diaz	27	Male	Hispanic/Latino	April	29	2015	1624 Hood Franklin Rd	Elk Grove	CA	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
Luis Molina Martinez	35	Male	Hispanic/Latino	April	21	2015	3400 Manitou Ave	Los Angeles	CA	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
Mack Long	36	Male	Black	April	12	2015	E 31st St and N Sherman Dr	Indianapolis	IN	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
Marcus Golden	24	Male	Black	January	14	2015	261 E University Ave	St Paul	MN	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
Marcus Wheeler	26	Male	Black	May	20	2015	3057 Martin Ave	Omaha	NE	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
Mario Jordan	34	Male	Black	January	14	2015	Sir Gawaine Dr	Chesapeake	VA	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
Mark Adair	51	Male	White	April	15	2015	Hitt St and Elm St	Columbia	MO	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
Mark Cecil Hawkins	49	Male	White	April	24	2015	1940 Turner Rd SE	Salemburg	OR	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
Mark Farrar	41	Male	White	May	15	2015	1806 16th Ave	Rockford	IL	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
Mark Smith	54	Male	White	April	8	2015	W 141st St and 257th W Ave	Kellyville	OK	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
Paul Johnson	59	Male	White	February	4	2015	7100 Pine Ave	Chino	CA	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
Markell Atkins	36	Male	Black	February	4	2015	3800 Vernon Ave	Memphis	TN	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
Markus Clark	26	Male	Black	May	20	2015	600 NW 27th Ave	Fort Lauderdale	FL	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
Matautu Nuu	35	Male	Asian/Pacific Islander	January	28	2015	Martinique Ct	Stockton	CA	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
Matthew Ajibade	22	Male	Black	January	1	2015	1050 Carl Griffin Dr	Savannah	GA	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
Matthew Belk	27	Male	White	February	13	2015	2420 Terry Rd	Huntingdon	TN	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
Matthew Coates	42	Male	White	May	16	2015	2010 61st St	Sacramento	CA	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
Matthew Hoffman	32	Male	White	January	4	2015	630 Valencia St	San Francisco	CA	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
Matthew Lundy	32	Male	White	February	17	2015	3800 Canfield Rd	Eaton Rapids Township	MI	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
Matthew Metz	25	Male	White	March	3	2015	College Ave and Curry Rd	Tempe	AZ	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
Meagan Hockaday	26	Female	Black	March	27	2015	500 W Vineyard Ave	Oxnard	CA	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
Michael Asher	53	Male	White	May	4	2015	Doctors Row	Chavies	KY	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
Michael Casper	26	Male	White	February	16	2015	Malad St and Gourley St	Boise	ID	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
Michael Foster	40	Male	White	April	19	2015	105 Hinkle St	Wilmore	KY	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
Michael Gallagher	55	Male	White	May	10	2015	100 Whitfield St	Enfield	NC	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
Michael Goebel	29	Male	White	January	14	2015	600 Spring Dr	Robertsville	MO	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
Michael Ireland	31	Male	White	February	18	2015	1400 N Marion Ave	Springfield	MO	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
Michael Kocher Jr	19	Male	White	January	3	2015	2600 Kaumualii Hwy	Kaumakani	HI	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
Michael Lemon	57	Male	Unknown	April	8	2015	11936 California Rte 178	Lake Isabella	CA	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
Michael Lowrey	40	Male	White	May	22	2015	1534 N Center Ave	Somerset	PA	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
Michael McKillop	35	Male	White	March	8	2015	Northtowne Plaza Shopping Center	Claymount	DE	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
Michael Murphy	35	Male	White	May	7	2015	I-84	Beacon	NY	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
Michael Rodriguez	39	Male	Hispanic/Latino	January	5	2015	818 31st St	Evans	CO	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
Michael Smashey	37	Male	White	February	23	2015	4817 W Mceachern Woods Dr	Powder Springs	GA	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
Miguel Anguel de Santos-Rodriguez	36	Male	Hispanic/Latino	January	21	2015	ChapeÌ_å±o Rd	Roma	TX	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
Millard Tallant III	62	Male	White	May	26	2015	17500 Tester Rd 	Snohomish	WA	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
Monique Deckard	43	Female	Black	March	8	2015	900 S Euclid St	Anaheim	CA	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
Mychael Lynch	32	Male	White	March	23	2015	707 W 13th St	Vancouver	WA	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
Nadir Soofi	34	Male	Asian/Pacific Islander	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
Naeschylus Vinzant	37	Male	Black	March	6	2015	16200 E 12th Ave	Aurora	CO	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
Natasha McKenna	37	Female	Black	February	8	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	Fairfax	VA	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
Nathan Massey	33	Male	White	January	15	2015	Becky Sue St	Ville Platte	LA	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
Nehemiah Fischer	35	Male	White	May	29	2015	Hectorville Rd and Bixby Rd	Mounds	OK	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
Neil Seifert	40	Male	White	March	27	2015	N Main St	Webster	MA	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
Nephi Arriguin	21	Male	Black	May	7	2015	17200 Pires Ave	Cerritos	CA	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
Nicholas Brickman	30	Male	White	January	7	2015	SE 4th St and Scott Ave	Des Moines	IA	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
Nicholas Thomas	23	Male	Black	March	24	2015	2475 Cumberland Pkwy SE	Atlanta	GA	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
Nicolas Tewa	26	Male	Native American	January	27	2015	4130 N Black Canyon Hwy	Phoenix	AZ	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
Nikki Burtsfield	39	Female	White	May	20	2015	N Garner Lake Rd and Vaquero Ave	Gillette	WY	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
Norman Cooper	33	Male	Black	April	19	2015	4800 Legend Well Dr	San Antonio	TX	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
Nuwnah Laroche	34	Female	Black	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
Omarr Jackson	37	Male	Black	January	8	2015	Lasalle St and Josephine St	New Orleans	LA	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
Orlando Lopez	26	Male	Hispanic/Latino	January	25	2015	Troy Ave and Oakshire Ln	Pueblo	CO	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
Pablo Meza	24	Male	Hispanic/Latino	January	17	2015	E 6th St and Mateo St	Los Angeles	CA	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
Patrick Wetter	25	Male	White	January	6	2015	800 Howard St	Stockton	CA	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
Paul Anderson	31	Male	Black	April	4	2015	150 E Lincoln Ave	Anaheim	CA	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
Paul Campbell	49	Male	White	January	19	2015	69 Prospect Hill Dr	Weymouth	MA	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
Pedro 'Pete' Juan Saldivar	50	Male	Hispanic/Latino	February	17	2015	US-90 and Charles Dr	Del Rio	TX	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
Philip Conley	37	Male	White	March	21	2015	904 Admiral Callaghan Ln	Vallejo	CA	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
Phillip Burgess	28	Male	White	April	9	2015	477 Belcher Rd	Boiling Springs	SC	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
Phillip Garcia	26	Male	Hispanic/Latino	January	16	2015	12810 Gulf Fwy	Houston	TX	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
Phillip Watkins	23	Male	Black	February	11	2015	1300 Sherman St	San Jose	CA	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
Phillip White	32	Male	Black	March	31	2015	118 W Grape St	Vineland	NJ	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
Quincy Reed Reindl	24	Male	White	January	15	2015	Nesbitt Ave S and 99th St W	Bloomington	MN	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
Ralph Willis	42	Male	White	January	29	2015	604 E Maple Ave	Stillwater	OK	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
Randall Torrence	34	Male	White	May	27	2015	1225 Quindaro Blvd	Kansas City	KS	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
Raymond Kmetz	68	Male	White	January	26	2015	4401 Xylon Ave N	Minneapolis	MN	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
Reginald McGregor	31	Male	Black	April	21	2015	200 North Retta St	Fort Worth	TX	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
Richard 'Buddy' Weaver	83	Male	White	April	12	2015	Sleepy Hollow Dr and Misty Glen Dr	Newalla	OK	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
Richard Carlin	35	Male	White	February	13	2015	414 Rehr St	Reading	PA	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
Richard Castilleja	29	Male	Hispanic/Latino	March	14	2015	2615 Mossrock	San Antonio	TX	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
Richard Davis	50	Male	Black	May	31	2015	Tremont St and Morgan St	Rochester	NY	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
Richard Hanna	56	Male	Unknown	April	6	2015	400 Steuber Rd	Tehachapi	CA	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
Richard McClendon	43	Male	White	January	13	2015	600 Olive St	Jourdanton	TX	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
Richard Reed	38	Male	White	April	10	2015	SW Wanamaker Rd and I-70	Topeka	KS	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
Richard White	63	Male	Black	March	20	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	Kenner	LA	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
Ricky Hall	27	Male	Black	March	30	2015	NA	Fort Meade	MD	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
Roark Cook	36	Male	White	May	4	2015	3320 W 9th Ave	Kennewick	WA	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
Robert Box	55	Male	White	May	29	2015	108 Fir Canyon Rd	Grants Pass	OR	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
Robert Burdge	36	Male	White	March	19	2015	200 Trask St	Bakersfield	CA	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
Robert Edwards	68	Male	White	January	14	2015	500 Sycamore St	Lake Jackson	TX	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
Robert Francis Mesch	61	Male	White	January	23	2015	120 W Slaughter Ln	Austin	TX	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
Robert Frost	46	Male	White	May	5	2015	1847 Bob White Blvd	Pulaski	VA	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
Robert Kohl	47	Male	White	February	23	2015	175 Bass Pro Blvd	Denham Springs	LA	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
Robert Rooker	26	Male	White	March	29	2015	Fields Hollow Rd	Peebles	OH	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
Robert Washington	37	Male	Black	April	1	2015	14200 Kornblum Ave	Hawthorne	CA	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
Roberto Leon	22	Male	Hispanic/Latino	March	17	2015	Elkhorn Blvd and Dry Creek Rd	Rio Linda	CA	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
Roberto Ornelas	18	Male	Hispanic/Latino	January	1	2015	39 N Marlin Ave	Key Largo	FL	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
Roberto Rodriguez	39	Male	Hispanic/Latino	April	8	2015	4th St and Mathews St	Los Angeles	CA	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
Rodney Biggs	49	Male	White	February	26	2015	US-49 and Middle Driveway	Gulfport	MS	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
Rodney Walker	23	Male	Black	January	16	2015	W 11th St	Tulsa	OK	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
Rodolfo Velazquez	47	Male	Hispanic/Latino	April	16	2015	West Lerdo Hwy and South Wall St	Shafter	CA	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
Ronald Sneed	32	Male	Black	January	7	2015	300 Yaupon St	Freeport	TX	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
Ronell Wade	45	Male	Black	May	17	2015	15746 Union Ave	Harvey	IL	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
Roy Day	51	Male	White	February	14	2015	Gale St	Laredo	TX	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
RubÌ_å©n GarcÌ__a Villalpando	31	Male	Hispanic/Latino	February	20	2015	2500 Texas Hwy 121	Euless	TX	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
Russell Sharrer	54	Male	White	February	27	2015	1016 N 4th Ave	Pasco	WA	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
Ryan Burgess	31	Male	White	March	11	2015	2241 Lucille Ave	Kingman	AZ	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
Salome Rodriguez Jr	23	Male	Hispanic/Latino	March	13	2015	184 W 3rd St	Pomona	CA	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
Salvador Figueroa	29	Male	Hispanic/Latino	January	11	2015	Circle K, 1301 N Eastern Ave	Las Vegas	NV	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
Salvador Muna	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
Sam Holmes	31	Male	Black	May	8	2015	University Ave NE and I-694	Fridley	MN	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
Santos 'Cuate' Cortez Hernandez	24	Male	Hispanic/Latino	April	20	2015	NA	Mission	TX	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
Sawyer Flache	27	Male	White	February	8	2015	Texas Hwy 71 and Silvermine Dr	Austin	TX	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
Scott Dunham	57	Male	White	March	24	2015	2600 Senter Rd	San Jose	CA	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
Scott McAllister	39	Male	Unknown	May	27	2015	33 Bayside Pkwy	Middletown	NJ	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
Sean Pelletier	38	Male	White	May	14	2015	6095 Anna's Ln	Portage	MI	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
Sergio Navas	34	Male	Hispanic/Latino	March	5	2015	N Pass Ave and W National Ave	Burbank	CA	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
Shane Watkins	39	Male	White	March	19	2015	1040 County Rd 249	Moulton	AL	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
Shaquille Barrow	20	Male	Black	March	2	2015	Richards St	Joliet	IL	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
Shaun Johnson	35	Male	White	May	8	2015	59705 E Bidegain Pl	Kearny	AZ	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
Shawn Clyde	36	Male	White	April	1	2015	110 Nottinghill Ln	Hamilton Township	NJ	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
Sheldon Haleck	38	Male	Asian/Pacific Islander	March	16	2015	364 S King St	Honolulu	HI	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
Simon Hubble	33	Male	White	May	27	2015	3600 Emmanuel Way	Alpine	CA	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
Sinthanouxay Khottavongsa	57	Male	Asian/Pacific Islander	January	16	2015	5900 Xerxes Ave N	Minneapolis	MN	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
Stanley Grant	38	Male	Black	February	20	2015	2200 Green Springs Hwy	Birmingham	AL	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
Stanley Watson	72	Male	White	April	15	2015	3120 East Main St	CaÌ_å±on City	CO	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
Stephanie Hill	37	Female	White	February	28	2015	I-10	La Paz County	AZ	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
Stephen Cunningham	47	Male	White	May	11	2015	3420 S Proctor St	Tacoma	WA	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
Steven Davenport	43	Male	White	April	21	2015	Old Hwy 19 SE	Meridian	MS	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
Steven Snyder	37	Male	White	March	24	2015	760 W Johnson St	Fond du Lac	WI	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
Talbot Schroeder	75	Male	White	January	14	2015	40 Cedar Grove Pl	Old Bridge Township	NJ	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
Terence Walker	21	Male	Black	January	17	2015	Old Agency Baptist Church	Muskogee	OK	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
Terrance Kellom	20	Male	Black	April	27	2015	9500 Evergreen Rd	Detroit	MI	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
Terrance Moxley	29	Male	Black	March	10	2015	280 N Main St	Mansfield	OH	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
Terry Garnett Jr	37	Male	Black	March	11	2015	Augustine Herman Hwy & E Lewis Shore Rd	Elkton	MD	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
Terry Price	41	Male	Black	February	21	2015	951 West 36th St N	Tulsa	OK	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
Tevin Barkley	22	Male	Black	April	15	2015	800 NW 75th St	Miami	FL	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
Thaddeus McCarroll	23	Male	Black	April	17	2015	9200 Riverwood Dr	Jennings	MO	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
Theodore Johnson	64	Male	Black	March	10	2015	6902 Ottawa Rd	Cleveland	OH	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
Thomas Allen Jr	34	Male	Black	March	1	2015	Morton Ave and Chatham Ave	St Louis	MO	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
Thomas Hamby	49	Male	White	January	8	2015	2964 W 2125 S	Syracuse	UT	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
Thong Kien Ma	32	Male	Asian/Pacific Islander	May	5	2015	10400 Enloe St	South El Monte	CA	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
Tiano Meton	25	Male	Black	January	22	2015	I-10	Sierra Blanca	TX	31.172832	-105.357927	US Border Patrol	Gunshot	Other
Tiffany Terry	39	Female	White	January	30	2015	1702 S 50th St	Omaha	NE	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
Tim Elliott	53	Male	Unknown	January	2	2015	600 E Island Lake Dr	Shelton	WA	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
Timothy Jones	27	Male	White	May	17	2015	111 Otero Dr	Ruidoso	NM	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
Todd Allen Hodge	36	Male	White	January	21	2015	40200 Clark Dr	Hemet	CA	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
Todd Jamal Dye	20	Male	Black	April	24	2015	1505 E Main St	Trinidad	CO	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
Tommy Smith	39	Male	White	January	12	2015	224 Circle Dr	Arcola	IL	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
Tony Robinson	19	Male	Black	March	6	2015	1125 Williamson St	Madison	WI	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
Tony Ross	34	Male	White	March	6	2015	Lamar St and Whitworth St	Sulphur Springs	TX	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
Troy Boyd	36	Male	White	March	15	2015	McEwien Swamp Rd	Ruth	MS	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
Tyrel Vick	34	Male	White	March	20	2015	Oklahoma Hwy 48 and E1750 Rd	Wapanucka	OK	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
Tyrell Larsen	31	Male	White	April	6	2015	E 100 N	Rigby	ID	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
Tyrone Ryerson	45	Male	Black	March	5	2015	468 E Plainfield Ave	Milwaukee	WI	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
Tyson Hubbard	34	Male	White	March	5	2015	27th St and Fletcher Ave	Lincoln	NE	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
Unknown	Unknown	Male	Unknown	January	16	2015	Co Rd 2718	Mabank	TX	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
Unknown	Unknown	Female	Unknown	May	25	2015	6505 Shirley Ave	Austin	TX	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
Unknown	Unknown	Male	White	June	1	2015	271 Greece Ridge Center Dr	Rochester	NY	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
Victor Reyes	31	Male	Hispanic/Latino	January	31	2015	West Little York Rd	Houston	TX	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
Victor Terrazas	28	Male	Hispanic/Latino	March	25	2015	10200 S Vermont Ave	Los Angeles	CA	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
Vincent Cordaro	57	Male	White	February	9	2015	N Little Tor Rd	New City	NY	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
Walter Brown III	29	Male	Black	March	24	2015	19 Colin Drive S	Portsmouth	VA	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
Walter Scott	50	Male	Black	April	4	2015	1945 Remount Rd	North Charleston	SC	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
Wendell King	40	Male	White	January	29	2015	4800 Hildring Dr E	Forth Worth	TX	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
Wilber Castillo-Gongora	35	Male	Hispanic/Latino	February	5	2015	US-287	Electra	TX	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
William 'Rusty' Smith	53	Male	White	March	10	2015	700 Valley St	Hoover	AL	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
William Campbell	59	Male	Unknown	January	25	2015	335 New Brooklyn Rd	Berlin	NJ	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
William Chapman II	18	Male	Black	April	22	2015	1098 Frederick Blvd	Portsmouth	VA	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
William Dick III	28	Male	Native American	April	4	2015	Bureau of Indian Affairs Rd 66	Tonasket	WA	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
William Poole	52	Male	White	March	16	2015	130 Wedowee Ln	Gaston	NC	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
Yuvette Henderson	38	Female	Black	February	3	2015	3800 Hollis St	Oakland	CA	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
Zaki Shinwary	48	Male	Unknown	January	16	2015	Lake Arrowhead Ave and Great Salt Lake Dr	Fremont	CA	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- Data for Name: raceethnicity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY raceethnicity (raceethnicity, name, age, gender, month, day, year, streetaddress, city, state, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
raceethnicity	name	age	gender	month	day	year	streetaddress	city	state	latitude	longitude	lawenforcementagency	cause	armed
Black	A'donte Washington	16	Male	February	23	2015	Clearview Ln	Millbrook	AL	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
White	Aaron Rutledge	27	Male	April	2	2015	300 block Iris Park Dr	Pineville	LA	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
White	Aaron Siler	26	Male	March	14	2015	22nd Ave and 56th St	Kenosha	WI	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
Hispanic/Latino	Aaron Valdez	25	Male	March	11	2015	3000 Seminole Ave	South Gate	CA	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
White	Adam Jovicic	29	Male	March	19	2015	364 Hiwood Ave	Munroe Falls	OH	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
White	Adam Reinhart	29	Male	March	7	2015	18th St and Palm Ln	Phoenix	AZ	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
Hispanic/Latino	Adrian Hernandez	22	Male	March	27	2015	4000 Union Ave	Bakersfield	CA	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
Hispanic/Latino	Adrian Solis	35	Male	March	26	2015	1500 Bayview Ave	Wilmington	CA	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
White	Alan Alverson	44	Male	January	28	2015	Pickett Runn Rd	Sunset	TX	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
White	Alan James	31	Male	February	7	2015	200 Abbie St SE	Wyoming	MI	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
White	Albert Hanson Jr	76	Male	April	26	2015	7th Ave and Kansas Ave	Hanford	CA	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
White	Alec Ouzounian	40	Male	May	12	2015	28 Paseo Viento	Rancho Santa Margarita	CA	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
Hispanic/Latino	Alejandro Salazar	Unknown	Male	February	20	2015	1200 E Airtex Dr	Houston	TX	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
White	Alexander Long	31	Male	February	25	2015	25th St and Poplar St	Terre Haute 	IN	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
White	Alexander Myers	23	Male	April	6	2015	5700 block Ashby Dr	Indianapolis	IN	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
Hispanic/Latino	Alexander Rivera	39	Male	May	30	2015	1128 Murfreesboro Pike	Nashville	TN	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
Black	Alexia Christian	25	Female	April	30	2015	141 Pryor St SW	Atlanta	GA	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
Hispanic/Latino	Alfredo Rials-Torres	54	Male	May	19	2015	4219 2nd Road N	Arlington	VA	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
White	Alice Brown	24	Female	March	17	2015	Van Ness Ave and Pine St	San Francisco	CA	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
Black	Alvin Haynes	57	Male	January	26	2015	1 Moreland Dr	San Francisco	CA	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
Hispanic/Latino	Amilcar Perez-Lopez	21	Male	February	26	2015	Folsom St and 24th St	San Francisco	CA	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
Black	Andre Murphy Sr	42	Male	January	7	2015	1223 Omaha Ave	Norfolk	NE	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
Hispanic/Latino	Andres Lara-Rodriguez	21	Male	February	13	2015	S 12th St and Ruby St	Kansas City	KS	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
White	Andrew Driver	36	Male	March	13	2015	9700 Kempster Ave	Fontana	CA	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
White	Andrew Jackson	26	Male	April	29	2015	1200 W Florida Ave	Chickasha	OK	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
White	Andrew Shipley	49	Male	March	17	2015	360 Argyle Ct	Medford	OR	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
White	Andrew Toto	54	Male	January	21	2015	Scobie Pond Rd and Julian Rd	Derry	NH	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
White	Andrew Valadez	26	Male	April	23	2015	Tyler St and Glenoaks Blvd	Sylmar	CA	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
Black	Andrew Williams	48	Male	March	6	2015	Putnam Loop Rd	Putnam Hall	FL	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
Hispanic/Latino	Andy Martinez	33	Male	January	9	2015	4400 Tetons Dr	El Paso	TX	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
Hispanic/Latino	Angel Corona Jr	21	Male	April	10	2015	4740 Barham Ave	Corning	CA	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
Black	Angelo West	41	Male	March	27	2015	Humboldt Ave and Ruthven St	Roxbury	MA	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
Black	Anthony Bess	48	Male	February	10	2015	4545 Aldridge Dr	Memphis	TN	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
Black	Anthony Briggs	36	Male	May	25	2015	1100 E Gateway Dr SE	Huntsville	AL	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
Hispanic/Latino	Anthony Giaquinta	41	Male	February	22	2015	Lower Pond Ct	Clarkesville	GA	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
Black	Anthony Gomez Jr	29	Male	May	19	2015	305 E Walnut St	Lancaster	PA	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
Black	Anthony Hill	27	Male	March	9	2015	3028 Chamblee Dunwoody Rd	Chamblee	GA	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
White	Anthony Purvis	45	Male	February	3	2015	1404 N June Ave	Douglas	GA	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
Hispanic/Latino	Antonio Perez	32	Male	March	12	2015	2400 Flower St	Los Angeles	CA	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
Hispanic/Latino	Antonio Zambrano-Montes	35	Male	February	10	2015	1107 W Lewis St	Pasco	WA	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
Black	Artago Howard	36	Male	January	8	2015	9661 Strong Hwy	Strong	AR	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
Black	Askari Roberts	35	Male	March	17	2015	3189 Morton Bend Rd	Rome	GA	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
Hispanic/Latino	Aurelio Duarte	40	Male	March	8	2015	3632 SW 38th St	Oklahoma City	OK	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
White	Austin Goodner	18	Male	May	17	2015	5236 Robin Ln N	St Petersburg	FL	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
White	Autumn Steele	34	Female	January	6	2015	104 N Garfield Ave	Burlington	IA	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
Hispanic/Latino	Benito Osorio	39	Male	March	11	2015	300 S Main St	Santa Ana	CA	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
Hispanic/Latino	Benjamin Quezada	21	Male	March	31	2015	West Texas Ave and Gaillard St	Baytown	TX	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
Black	Bernard Moore	62	Male	March	6	2015	Metropolitan Pkwy and Fair Dr	Atlanta	GA	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
White	Betty Sexton	43	Female	February	17	2015	2325 Union Rd	Gastonia	NC	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
White	Billy Grimm	44	Male	May	3	2015	Arenal Rd SW and Tapia Blvd SW	Albuquerque	NM	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
White	Billy Patrick	29	Male	April	26	2015	NA	Bunch	OK	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
Black	Bobby Gross	35	Male	March	12	2015	700 14th St NW 	Washington	DC	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
White	Bradford Leonard	50	Male	February	22	2015	900 Castile Rd SE	Palm Bay	FL	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
Black	Brandon Jones	18	Male	March	19	2015	1077 Parkwood Dr	Cleveland	OH	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
White	Brandon Lawrence	25	Male	April	25	2015	800 Simpson Rd	Victoria	TX	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
White	Brandon Rapp	31	Male	March	18	2015	9000 Charles Way	Middleton	ID	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
Black	Brendon Glenn	29	Male	May	6	2015	1602 Pacific Ave	Los Angeles	CA	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
White	Brian Babb	49	Male	March	31	2015	2200 Devos St	Eugene	OR	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
Unknown	Brian Barbosa	23	Male	January	11	2015	8900 Kauffman Ave	South Gate	CA	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
White	Brian Fritze	45	Male	February	10	2015	I-70 and US-6	Glenwood Springs	CO	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
Black	Brian Pickett	26	Male	January	6	2015	1600 E 123rd St	Los Angeles	CA	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
White	Brock Nichols	35	Male	January	6	2015	2388 E Kansas Hwy 4	Assaria	KS	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
White	Bruce Steward	34	Male	February	15	2015	29000 S Wall St	Colton	OR	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
Asian/Pacific Islander	Bruce Zalonka	46	Male	May	12	2015	1031 Nuuanu Ave	Honolulu	HI	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
Black	Byron Herbert	29	Male	March	29	2015	111 Towne Dr	Elizabethtown	KY	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
Black	Calvon Reid	39	Male	February	22	2015	1701 Andros Isle	Coconut Creek	FL	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
Asian/Pacific Islander	Carl Lao	28	Male	March	4	2015	South San Joaquin St and East Church St	Stockton	CA	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
Hispanic/Latino	Carlos Saavedra Ramirez	51	Male	April	22	2015	101 Naco Hwy	Bisbee	AZ	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
White	Carter Ray Castle	67	Male	January	18	2015	Kentucky Rte 7	Gunlock	KY	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
White	Cary Martin	53	Male	May	14	2015	497 Florida Ave	St Augustine	FL	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
Black	Caso Jackson	25	Male	May	23	2015	13331 Strathmoor St	Detroit	MI	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
Black	Cedrick Bishop	30	Male	March	9	2015	Aurora St	Cocoa	FL	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
Hispanic/Latino	Celin Nunez	24	Male	April	13	2015	3 Greens Rd	Houston	TX	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
White	Chance Thompson	35	Male	February	15	2015	Hammonton Smartville Rd	Marysville	CA	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
Black	Charly 'Africa' Keunang	43	Male	March	1	2015	500 San Pedro St	Los Angeles	CA	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
White	Chazsten Freeman	24	Male	February	27	2015	South Carolina Rte 8 and Augusta Rd	Peltzer	SC	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
White	Chris Ingram	29	Male	January	27	2015	Coronado Trail	Morenci	AZ	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
Black	Chrislon Talbott	38	Male	May	21	2015	4585 Frederica St	Owensboro	KY	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
White	Christopher Finley	31	Male	April	14	2015	900 Walnut St	Jonesboro	AR	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
White	Christopher Healy	36	Male	March	22	2015	2300 SE 130th Ave	Portland	OR	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
White	Christopher Mitchell	23	Male	March	10	2015	6530 Georgia Rte 21	Port Wentworth	GA	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
White	Christopher Prevatt	38	Male	April	3	2015	123 Gregory Pl	Winchester	VA	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
White	Clifton Reintzel	53	Male	March	13	2015	600 Main St	Follansbee	WV	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
White	Cody Evans	24	Male	February	15	2015	1600 W 500 N	Provo	UT	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
White	Cody Karasek	26	Male	January	28	2015	4100 Avenue I	Rosenberg	TX	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
Black	Cornelius Parker	28	Male	February	28	2015	E Broadway and US-63	Columbia	MO	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
White	Crystal Miley	34	Female	February	26	2015	5101 Georgia Rte 133	Moultrie	GA	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
Black	D'Angelo Stallworth	28	Male	May	12	2015	7300 Blanding Blvd	Jacksonville	FL	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
Black	DaJuan Graham	40	Male	May	12	2015	13900 Castle Blvd	Silver Spring	MD	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
Black	Dalton Branch	51	Male	May	26	2015	530 Stanley Ave	New York	NY	40.6572562	-73.8886551	New York Police Department	Gunshot	No
White	Dana Hlavinka	44	Male	April	19	2015	1363 Clark Dr	Sidney	NE	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
Hispanic/Latino	Daniel Brumley	25	Male	January	17	2015	NE 36th St	Fort Worth	TX	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
White	Daniel Caldwell	56	Male	February	16	2015	8351 N Cracker Barrel Rd	Marana	AZ	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
Hispanic/Latino	Daniel Covarrubias	37	Male	April	21	2015	3600 SW 108th St	Lakewood	WA	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
White	Daniel Davis	58	Male	April	25	2015	8624 Firestone Cir	Clermont	FL	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
White	Daniel Elrod	39	Male	February	24	2015	1299 Hickory St	Omaha	NE	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
Hispanic/Latino	Daniel Mejia	37	Male	February	15	2015	200 S McNab Pkwy	San Manuel	AZ	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
Black	Daniel Wolfe	35	Male	April	21	2015	1714 Walker Ave	Union	NJ	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
Black	Darin Hutchins	26	Male	January	24	2015	1900 McHenry St	Baltimore	MD	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
Black	Darrell 'Hubbard' Gatewood	47	Male	March	1	2015	616 SW 59th St	Oklahoma City	OK	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
Black	Darrell Brown	31	Male	April	16	2015	402 North Prospect St	Hagerstown	MD	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
White	Darrell Morgan	60	Male	May	28	2015	3164 Charlotte Hwy	Lancaster	SC	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
Black	Darrin Langford	32	Male	April	2	2015	12th Ave and Glenhurst Ct	Rock Island	IL	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
White	Daryl Myler	45	Male	January	24	2015	164 E Main St	Rexburg	ID	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
Hispanic/Latino	David Cuevas	42	Male	February	26	2015	4660 N Socrum Loop Rd	Lakeland	FL	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
White	David Gaines	17	Male	May	19	2015	N 10th St and Gunnison Ave	Grand Junction	CO	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
Hispanic/Latino	David Gandara	22	Male	May	21	2015	5111 Fairbanks Dr	El Paso	TX	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
Hispanic/Latino	David Garcia	33	Male	January	26	2015	1134 E St	Wasco	CA	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
White	David Johnson	18	Male	May	7	2015	300 Stone Monument Dr	Wake Forest	NC	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
White	David Kapuscinski	39	Male	April	16	2015	14680 Middle Gibraltar Rd	Rockwood	MI	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
White	David Kassick	59	Male	February	2	2015	36 Grandview Rd	Hanover	PA	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
White	David Lynch	33	Male	April	3	2015	11974-11998 US-64	Muskogee County	OK	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
White	David Parker	58	Male	April	28	2015	36 Randall Rd	Mansfield	OH	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
White	David Schwalm	58	Male	May	8	2015	168 Auringer Rd	Constantania	NY	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
White	David Watford	47	Male	March	17	2015	US-65	Tallulah	LA	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
White	David Werblow	41	Male	March	15	2015	134 Burban Dr	Branford	CT	41.2693481	-72.8428955	Branford Police Department	Taser	Other
White	Dean Bucheit	64	Male	February	9	2015	13600 Culver Blvd	Los Angeles	CA	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
White	Dean Genova	45	Male	April	26	2015	13822 Brookhurst St	Garden Grove	CA	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
White	Deanne Choate	53	Female	March	26	2015	400 N Birch	Gardner	KS	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
White	Declan Owen	24	Male	March	17	2015	8100 North Carolina Hwy 41	Dublin	NC	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
Black	Dedrick Marshall	48	Male	May	8	2015	3020 Destrehan Ave	Harvey	LA	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
Black	Demaris Turner	29	Male	January	23	2015	1980 NW 46 Ave	Lauderhill	FL	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
Hispanic/Latino	Denis Reyes	40	Male	May	15	2015	274 E 194th St	New York	NY	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
White	Dennis Fiel	34	Male	May	17	2015	7700 Mesa College Dr	San Diego	CA	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
Black	Denzel Brown	21	Male	March	22	2015	1851 Sunrise Hwy	Bay Shore	NY	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
White	Derek Cruice	26	Male	March	4	2015	800 Maybrook Dr	Deltona	FL	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
Black	Desmond Luster	45	Male	February	9	2015	7400 Bonnie View Rd	Dallas	TX	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
Black	Desmond Willis	25	Male	April	6	2015	2515 Manhattan Blvd	Harvey	LA	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
White	Deven Guilford	17	Male	March	1	2015	331 W Grand Ledge Hwy	Roxand Township	MI	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
Black	Devin Gates	24	Male	March	22	2015	2105 Scott Blvd	Santa Clara	CA	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
Black	Dewayne Carr	42	Male	January	15	2015	Chaparral Rd and Hayden Rd	Scottsdale	AZ	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
Black	Dewayne Ward Jr	29	Male	February	3	2015	1000 Claudia Ct	Antioch	CA	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
Black	Dexter Bethea	42	Male	April	8	2015	3022 James Rd	Valdosta	GA	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
Black	Dominick Wise	30	Male	March	30	2015	1301 Spring Meadow Ln	Culpeper	VA	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
Black	Don Smith	29	Male	April	9	2015	8516 N Meridian Rd	Monon	IN	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
Black	Donald 'Dontay' Ivy	39	Male	April	2	2015	Lark St and Second St	Albany	NY	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
White	Donald Hicks	63	Male	April	2	2015	Illinois Rte 145 and Waldo Church Rd	Metropolis	IL	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
White	Donald Matkins	49	Male	March	1	2015	Mt Pleasant Rd	Lucedale	MS	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
Black	Donte Noble	41	Male	April	15	2015	200 Canaan Pointe Dr	Spartanburg	SC	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
Black	Donte Sowell	27	Male	January	15	2015	East 38th St and North Mitthoeffer Rd	Indianapolis	IN	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
White	Doug Sparks	30	Male	February	17	2015	Forest Ave	Tewksbury	MA	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
White	Douglas Faith	60	Male	April	8	2015	Karen Ln and Corinne Dr	San Antonio	TX	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
Black	Douglas Harris	77	Male	March	27	2015	7901 1st Ave S	Birmingham	AL	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
Unknown	Ebin Proctor	19	Male	May	30	2015	Yuma Circle	Cottonwood	AZ	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
Hispanic/Latino	Edixon Franco	37	Male	March	10	2015	Fern Ave and Phillips St	Ontario	CA	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
Black	Edward Bright Sr	54	Male	January	31	2015	9800 Liberty Rd	Randallstown	MD	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
Hispanic/Latino	Elias Cavazos	29	Male	April	17	2015	Girard Street and Acacia Ave	Hemet	CA	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
Black	Elton Simpson	30	Male	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
Hispanic/Latino	Elvin Diaz	24	Male	May	21	2015	10 Temple Ave	Hackensack	NJ	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
White	Enoch Gaver	21	Male	March	21	2015	2003 E Rodeo Dr	Cottonwood	AZ	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
Black	Eric Harris	44	Male	April	2	2015	1900 block N Harvard Ave	Tulsa	OK	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
White	Eric Robinson	40	Male	May	23	2015	135 N Main St	Eagar	AZ	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
White	Erick Rose	32	Male	April	7	2015	Post Office Neck Rd and Lake Rd	Shawnee	OK	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
Hispanic/Latino	Erick Sanchez	22	Male	April	30	2015	11565 James Watt Dr	El Paso	TX	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
White	Erik Tellez	43	Male	April	18	2015	20th St and Thomas Rd	Phoenix	AZ	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
Hispanic/Latino	Ernesto Flores	52	Male	April	15	2015	11157 Chico Ave	Pomona	CA	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
Hispanic/Latino	Ernesto Javier Canepa Diaz	27	Male	February	27	2015	1000 W 3rd St	Santa Ana	CA	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
White	Ethan Noll	34	Male	April	4	2015	Mountainair St	Edgewood	NM	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
White	Eugene Smith II	20	Male	March	17	2015	313 S Houston Ave	Onalaska	TX	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
Black	Fednel Rhinvil	25	Male	March	3	2015	East Rd and Olivia St	Salisbury	MD	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
Black	Felix David	24	Male	April	25	2015	538 E Sixth St	New York	NY	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
Unknown	Feras Morad	20	Male	May	27	2015	4600 E 15th St	Long Beach	CA	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
White	Fletcher Stewart	46	Male	February	11	2015	Booger Hollow Rd	Dadeville	AL	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
White	Francis Rose III	42	Male	February	2	2015	9000 Buena Vista St	Apple Valley	CA	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
White	Francis Spivey	43	Male	February	25	2015	5300 East Craig Road	Las Vegas	NV	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
Black	Frank 'Trey' Shephard III	41	Male	April	15	2015	Castlegory Rd and Wallisville Rd	Houston	TX	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
White	Fred Liggett Jr	59	Male	March	13	2015	8700 E 97th Ter	Kansas City	MO	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
Black	Freddie Gray	25	Male	April	12	2015	Mount St and Presbury St	Baltimore	MD	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
White	Fridoon Rawshannehad	42	Male	April	30	2015	3200 Hancock St	San Diego	CA	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
White	Garland Wingo	64	Male	March	18	2015	Lake Ella	Tallahassee	FL	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
White	Garrett Gagne	22	Male	January	1	2015	Crowell Rd and Tipcart Dr	Chatham	MA	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
White	Garrett Sandeno	24	Male	May	27	2015	1701 Ridgecrest Rd	Edmond	OK	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
White	Gary Collins	63	Male	April	25	2015	H St NW and 20th Ave NW	Miami	OK	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
White	Gary Kendrick	56	Male	March	27	2015	Shadytree Ln and Glen Arbor Dr	Encinitas	CA	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
White	Gary Page	60	Male	March	21	2015	1790 E Voorhees St	Harmony	IN	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
White	Gilbert Fleury	54	Male	March	11	2015	Cliffs Landing Rd	Bay Minette	AL	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
Black	Glenn Lewis	37	Male	February	25	2015	2201 NW 27th St	Oklahoma City	OK	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
White	Gordon Kimbrell Jr	22	Male	April	9	2015	9265 Quail Roost Dr	Navarre	FL	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
White	Gregory Smith	39	Male	March	30	2015	2293 N Main St	Crown Point	IN	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
White	Grover Sapp Jr	45	Male	April	18	2015	1200 Beck Ave	Panama City	FL	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
White	Harry Davis	57	Male	May	27	2015	Sparta Hwy and Oconee Springs Rd	Eatonton	GA	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
White	Harvey Oates	42	Male	March	27	2015	Horseshoe Run Rd	Fort Ashby	WV	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
Black	Hashim Abdul-Rasheed	41	Male	January	7	2015	4600 International Gateway	Columbus	OH	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
Hispanic/Latino	Hector Morejon	19	Male	April	23	2015	1100 Hoffman Ave	Long Beach	CA	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
Black	Herbert Hill	26	Male	February	6	2015	1000 SW 62nd St	Oklahoma City	OK	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
White	Howard Brent Means Jr	34	Male	February	15	2015	1110 Battleground Dr	Iuka	MS	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
White	Howard Robbins	69	Male	January	16	2015	US-150	Stanford	KY	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
Asian/Pacific Islander	Hue Dang	64	Female	March	9	2015	E Kennedy St	Hackensack	NJ	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
Asian/Pacific Islander	Hung Trieu	35	Male	February	2	2015	13442 Bellaire Blvd	Houston	TX	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
Black	Ian Sherrod	40	Male	February	28	2015	2300 block Main St	Tarboro	NC	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
Black	Isaac Holmes	19	Male	January	21	2015	4200 St Louis Ave	St Louis	MO	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
Hispanic/Latino	Isaac Jimenez	27	Male	April	13	2015	3400 Lincoln Ave	Alton	IL	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
Hispanic/Latino	Izzy Colon	37	Male	February	4	2015	4304 Pershing Pointe Pl	Orlando	FL	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
White	Jacob Haglund	17	Male	February	2	2015	1600 3rd St	Bay City	MI	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
Black	Jamalis Hall	39	Male	March	27	2015	1000 block Mayflower Rd	Fort Pierce	FL	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
Black	James Allen	74	Male	February	7	2015	2701 Mary Ave	Gastonia	NC	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
White	James Barker	42	Male	January	8	2015	600 Second Ave	Salt Lake City	UT	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
White	James Bushey	47	Male	June	1	2015	2225 Texas Hwy 256 Loop	Palestine	TX	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
White	James Cooper	43	Male	May	20	2015	3271 Dartmouth Dr	Charleston	SC	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
White	James Damon	46	Male	March	9	2015	US-40	Craig	CO	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
White	James Ellis	44	Male	March	21	2015	New York State Rte 31A	Clarendon	NY	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
White	James Greenwell	31	Male	March	11	2015	700 N Auburndale St	Memphis	TN	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
White	James Horn Jr	47	Male	May	23	2015	SE 650th Rd	Green Ridge	MO	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
Hispanic/Latino	James Jimenez	41	Male	March	13	2015	1410 Hill Ave	Napa	CA	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
White	James Moore	43	Male	March	22	2015	5900 S Lewis Ave	Tulsa	OK	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
Unknown	James Morris	40	Male	May	31	2015	Juanipero Way and La Loma Dr	Medford	OR	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
Black	James Strong	32	Male	May	28	2015	10900 E 109th Pl	Northglenn	CO	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
Black	Jamie Croom	31	Male	March	10	2015	10064 Elm Grove Garden Dr	Baton Rouge	LA	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
White	Jamison Childress	20	Male	March	19	2015	Kneuman Rd	Sumas	WA	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
Black	Janisha Fonville	20	Female	February	19	2015	Bellefonte Dr	Charlotte	NC	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
White	Jared Forsyth	33	Male	April	6	2015	11120 NW Gainesville Rd	Ocala	FL	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
Black	Jared Johnson	22	Male	April	28	2015	8400 Chef Menteur Hwy	New Orleans	LA	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
White	Jason Carter	41	Male	February	21	2015	298 Gavilan Canyon Rd	Rudioso	NM	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
Black	Jason Champion	41	Male	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
White	Jason Evans	32	Male	April	12	2015	North Carolina Hwy 242 and Reeda Branch Rd	Salemburg	NC	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
White	Jason Hendrix	16	Male	February	14	2015	1486 Hyde Park Rd	Essex	MD	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
Black	Jason Moland	29	Male	March	30	2015	3700 Beyer Park Dr	Modesto	CA	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
White	Jason Smith	42	Male	March	20	2015	4604 Summit St	Columbus	OH	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
Black	Javoris Washington	29	Male	May	21	2015	SW 29th Ave and SW 29th Terrace	Fort Lauderdale	FL	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
White	Jeff Alexander	47	Male	March	17	2015	1125 1/2 19th St	Bakersfield	CA	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
Black	Jeffery Adkins	53	Male	April	30	2015	200 Elm Rd	Emporia	VA	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
Black	Jeffery Kemp	18	Male	April	17	2015	74th Street and Merrill Ave	Chicago	IL	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
White	Jeffrey Jackson	47	Male	March	22	2015	Kentucky Rte 92	Williamsburg	KY	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
White	Jeffrey Nielson	34	Male	January	14	2015	120 Honey Berry Ct	Draper	UT	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
White	Jeffrey Pitts	36	Male	May	31	2015	3500 Ebenezer Rd	Conyers	GA	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
White	Jeffrey Surnow	63	Male	March	1	2015	Waikoloa Rd	Waikoloa Village	HI	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
White	Jeremy Anderson	36	Male	March	31	2015	1600 Grass Lake Dr	Tampa Bay	FL	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
Black	Jeremy Kelly	27	Male	March	25	2015	Dixie St	Johnsonville	SC	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
Black	Jeremy Lett	28	Male	February	5	2015	2400 W Tharpe St	Tallahassee	FL	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
Black	Jermonte Fletcher	33	Male	January	27	2015	265 Buffalo Ct	Columbus	OH	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
Black	Jerome Caldwell	32	Male	May	21	2015	83 Beaufain St	Charleston	SC	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
White	Jerome Nichols	42	Male	February	23	2015	N Plymouth St	Allentown	PA	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
White	Jess Leipold	31	Male	April	9	2015	45 Major Bell Ln	Gettysburg	PA	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
Hispanic/Latino	Jessica Hernandez	17	Female	January	26	2015	Newport St & E 25th Ave	Denver	CO	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
Unknown	Jessica Uribe	28	Female	February	28	2015	1113 W St Mary's Rd	Tuscon 	AZ	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
White	Jessie Williams	24	Male	May	26	2015	200 John Wesly Blvd	Bossier City	LA	32.5170212	-93.7078476	FBI	Gunshot	Firearm
Unknown	Jimmy Foreman	71	Male	January	9	2015	422 SE 3rd St	England	AR	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
Black	Jimmy Robinson Jr	51	Male	February	4	2015	I-35	Waco	TX	31.593082	-97.108858	Waco Police Department	Gunshot	No
Hispanic/Latino	Joaquin Hernandez	28	Male	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
White	John Acree	53	Male	April	30	2015	812 Forest Hills Dr	Nashville	TN	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
White	John Allen	54	Male	March	30	2015	841 Avenue A	Boulder City	NV	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
White	John Ballard Gorman	45	Male	January	21	2015	3468 Casino Way	Robinsonville	MS	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
White	John Kaafi	33	Male	May	7	2015	8th St and N Orange Ave	Sarasota	FL	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
White	John Marshall	48	Male	January	30	2015	Billings Clinic, 2800 10th Ave N	Billings	MT	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
White	John O'Keefe	34	Male	January	13	2015	Constitution Ave and San Mateo Blvd	Albuquerque	NM	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
Hispanic/Latino	John Quintero	23	Male	January	3	2015	500 North Oliver Ave	Wichita	KS	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
White	John Sawyer	35	Male	February	5	2015	1200 Calimesa Blvd	Calimesa	CA	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
Hispanic/Latino	John Whittaker	33	Male	February	10	2015	1503 Medfra St	Anchorage	AK	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
White	Johnathon Guillory	32	Male	January	18	2015	Greenland Park Dr	Maricopa	AZ	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
White	Jonathan Colley	52	Male	May	20	2015	2569 Raber Rd	Green	OH	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
White	Jonathan Efraim	30	Male	April	22	2015	16802 Hillside Ave	New York	NY	40.7098999	-73.7943573	New York Police Department	Gunshot	No
White	Jonathan Harden	23	Male	February	13	2015	4023 University Pkwy	San Bernadino	CA	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
White	Jonathan McIntosh	35	Male	May	19	2015	900 E Main St	Cabot	AR	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
Black	Jonathan Paul	42	Male	March	12	2015	300 E Mitchell St	Arlington	TX	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
White	Jonathan Pierce	37	Male	February	12	2015	Port St Joe Police Station, 410 Williams Ave	Port St Joe	FL	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
Hispanic/Latino	Jose Antonio Espinoza Ruiz	56	Male	January	23	2015	202 Avenue A	Levelland	TX	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
Hispanic/Latino	Jose Ceja	36	Male	January	15	2015	2007 Sousa Ct	Fairfield	CA	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
Hispanic/Latino	Jose Herrera	27	Male	April	22	2015	3000 W Cecil Ave	Delano	CA	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
White	Joseph Biegert	30	Male	February	24	2015	1500 Plymouth Ln	Green Bay	WI	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
White	Joseph Caffarello	31	Male	January	7	2015	6100 Scott St	Rosemont	IL	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
White	Joseph Paffen	46	Male	February	8	2015	4501 Hoffner Ave	Orlando	FL	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
White	Joseph Potts	51	Male	April	23	2015	182 N4430 Rd	Rufe	OK	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
Unknown	Joseph Roy	72	Male	May	7	2015	2853 Avalon Meadows Ct	Lawrenceville	GA	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
White	Joseph Slater	28	Male	April	15	2015	27767 Base Line	Highland	CA	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
White	Joseph Tassinari	63	Male	March	24	2015	6600 W Christy Dr	Glendale	AZ	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
White	Joseph Weber	28	Male	April	8	2015	Tasman Dr and Lawrence Expy	Sunnyvale	CA	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
Hispanic/Latino	Joshua Deysie	33	Male	April	29	2015	1400 E Harmony Ave	Mesa	AZ	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
Hispanic/Latino	Joshua Garcia	24	Male	January	26	2015	2500 FM1054	Tahoka	TX	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
White	Joshua Green	27	Male	April	28	2015	1408 W Main St	Marion	IL	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
Native American	Justin Fowler	24	Male	March	19	2015	Indian Rte 13	Lukachukai	AZ	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
White	Justin Tolkinen	28	Male	March	16	2015	400 White Bear Ave	St Paul	MN	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
White	Justin Way	28	Male	May	11	2015	225 Presidents Cup Way	St Augustine	FL	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
Black	Justus Howell	17	Male	April	4	2015	2300 Gilead Ave	Zion	IL	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
White	Karen Janks	46	Female	April	23	2015	2661 Gravenstein Hwy S	Sebastopol	CA	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
Black	Karl Taylor	52	Male	April	14	2015	325 Riverside Dr	Fallsburg	NY	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
Black	Kavonda Payton	39	Male	January	16	2015	138 Del Mar Cir	Aurora	CO	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
White	Kaylene Stone	49	Female	March	18	2015	6735 W Peoria Ave	Peoria 	AZ	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
Black	Kelvin Goldston	30	Male	May	11	2015	6024 Wheaton Dr	Fort Worth	TX	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
White	Ken Cockerel	51	Male	April	3	2015	W Union Hills Dr and N 39th Ave	Phoenix	AZ	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
Black	Kendre Alston	16	Male	March	19	2015	1800 Helena St	Jacksonville	FL	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
White	Kenneth Brown	18	Male	January	4	2015	NA	Guthrie	OK	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
Hispanic/Latino	Kenneth Buck	22	Male	January	5	2015	E Knox Rd	Chandler	AZ	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
Black	Kenneth Dothard	40	Male	May	28	2015	900 Bankhead Hwy	Carrollton	GA	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
White	Kenneth Kreyssig	61	Male	February	10	2015	645 Smyrna Center Rd	Smyrna	ME	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
White	Kenneth Mathena	52	Male	May	2	2015	30 Malvern Ln	Smyrna	DE	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
White	Kent Norman	51	Male	February	21	2015	1800 Heather Cir	Indianapolis	IN	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
Black	Kevin Allen	36	Male	May	29	2015	355 Valley Brook Ave	Lyndhurst	NJ	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
White	Kevin Norton	36	Male	May	3	2015	210 W 300 N	Roosevelt	UT	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
White	Kimber Key	59	Male	April	21	2015	107 White Falls Dr	Columbia	SC	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
White	Kristiana Coignard	17	Female	January	22	2015	Longview Police Department, 302 W Cotton St	Longview	TX	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
White	Kyle Baker	18	Male	May	28	2015	2800 Longmeadow Dr	Trenton	MI	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
White	Larry Hostetter	41	Male	February	9	2015	200 Jordan Dr	Nocona	TX	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
Native American	Larry Kobuk	33	Male	January	28	2015	Corrections Department, 1400 E 4th Ave	Anchorage	AK	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
Black	Lavall Hall	25	Male	February	15	2015	19157 NW 3rd Ave	Miami Gardens	FL	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
Black	Ledarius Williams	23	Male	February	3	2015	Minnesota Ave and Meramec St	St Louis	MO	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
Black	Leslie Sapp III	47	Male	January	6	2015	Redlyn St	Pittsburgh	PA	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
White	Lester Brown	58	Male	March	9	2015	85 Almost Home Rd	Penrose	NC	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
White	Lewis Lembke	47	Male	January	2	2015	4505 SW Masters Loop	Aloha	OR	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
Black	Lionel Young	34	Male	May	10	2015	950 Nalley Rd	Landover	MD	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
White	Loren Simpson	28	Male	January	8	2015	3618 White Buffalo Rd	Huntley	MT	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
Black	Lorenzo Hayes	37	Male	May	13	2015	N Addison St and E Sanson Ave	Spokane	WA	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
White	Louis Becker	87	Male	January	14	2015	New York State Rte 23 and Cairo Junction Rd	Catskill	NY	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
Asian/Pacific Islander	Lue Vang	39	Male	April	22	2015	4100 Eldorado Springs Dr	Boulder	CO	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
Hispanic/Latino	Luis Chavez-Diaz	27	Male	April	29	2015	1624 Hood Franklin Rd	Elk Grove	CA	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
Hispanic/Latino	Luis Molina Martinez	35	Male	April	21	2015	3400 Manitou Ave	Los Angeles	CA	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
Black	Mack Long	36	Male	April	12	2015	E 31st St and N Sherman Dr	Indianapolis	IN	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
Black	Marcus Golden	24	Male	January	14	2015	261 E University Ave	St Paul	MN	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
Black	Marcus Wheeler	26	Male	May	20	2015	3057 Martin Ave	Omaha	NE	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
Black	Mario Jordan	34	Male	January	14	2015	Sir Gawaine Dr	Chesapeake	VA	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
White	Mark Adair	51	Male	April	15	2015	Hitt St and Elm St	Columbia	MO	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
White	Mark Cecil Hawkins	49	Male	April	24	2015	1940 Turner Rd SE	Salemburg	OR	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
White	Mark Farrar	41	Male	May	15	2015	1806 16th Ave	Rockford	IL	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
White	Mark Smith	54	Male	April	8	2015	W 141st St and 257th W Ave	Kellyville	OK	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
White	Paul Johnson	59	Male	February	4	2015	7100 Pine Ave	Chino	CA	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
Black	Markell Atkins	36	Male	February	4	2015	3800 Vernon Ave	Memphis	TN	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
Black	Markus Clark	26	Male	May	20	2015	600 NW 27th Ave	Fort Lauderdale	FL	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
Asian/Pacific Islander	Matautu Nuu	35	Male	January	28	2015	Martinique Ct	Stockton	CA	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
Black	Matthew Ajibade	22	Male	January	1	2015	1050 Carl Griffin Dr	Savannah	GA	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
White	Matthew Belk	27	Male	February	13	2015	2420 Terry Rd	Huntingdon	TN	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
White	Matthew Coates	42	Male	May	16	2015	2010 61st St	Sacramento	CA	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
White	Matthew Hoffman	32	Male	January	4	2015	630 Valencia St	San Francisco	CA	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
White	Matthew Lundy	32	Male	February	17	2015	3800 Canfield Rd	Eaton Rapids Township	MI	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
White	Matthew Metz	25	Male	March	3	2015	College Ave and Curry Rd	Tempe	AZ	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
Black	Meagan Hockaday	26	Female	March	27	2015	500 W Vineyard Ave	Oxnard	CA	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
White	Michael Asher	53	Male	May	4	2015	Doctors Row	Chavies	KY	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
White	Michael Casper	26	Male	February	16	2015	Malad St and Gourley St	Boise	ID	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
White	Michael Foster	40	Male	April	19	2015	105 Hinkle St	Wilmore	KY	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
White	Michael Gallagher	55	Male	May	10	2015	100 Whitfield St	Enfield	NC	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
White	Michael Goebel	29	Male	January	14	2015	600 Spring Dr	Robertsville	MO	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
White	Michael Ireland	31	Male	February	18	2015	1400 N Marion Ave	Springfield	MO	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
White	Michael Kocher Jr	19	Male	January	3	2015	2600 Kaumualii Hwy	Kaumakani	HI	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
Unknown	Michael Lemon	57	Male	April	8	2015	11936 California Rte 178	Lake Isabella	CA	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
White	Michael Lowrey	40	Male	May	22	2015	1534 N Center Ave	Somerset	PA	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
White	Michael McKillop	35	Male	March	8	2015	Northtowne Plaza Shopping Center	Claymount	DE	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
White	Michael Murphy	35	Male	May	7	2015	I-84	Beacon	NY	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
Hispanic/Latino	Michael Rodriguez	39	Male	January	5	2015	818 31st St	Evans	CO	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
White	Michael Smashey	37	Male	February	23	2015	4817 W Mceachern Woods Dr	Powder Springs	GA	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
Hispanic/Latino	Miguel Anguel de Santos-Rodriguez	36	Male	January	21	2015	ChapeÌ_å±o Rd	Roma	TX	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
White	Millard Tallant III	62	Male	May	26	2015	17500 Tester Rd 	Snohomish	WA	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
Black	Monique Deckard	43	Female	March	8	2015	900 S Euclid St	Anaheim	CA	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
White	Mychael Lynch	32	Male	March	23	2015	707 W 13th St	Vancouver	WA	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
Asian/Pacific Islander	Nadir Soofi	34	Male	May	3	2015	4999 Naaman Forest Blvd	Garland	TX	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
Black	Naeschylus Vinzant	37	Male	March	6	2015	16200 E 12th Ave	Aurora	CO	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
Black	Natasha McKenna	37	Female	February	8	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	Fairfax	VA	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
White	Nathan Massey	33	Male	January	15	2015	Becky Sue St	Ville Platte	LA	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
White	Nehemiah Fischer	35	Male	May	29	2015	Hectorville Rd and Bixby Rd	Mounds	OK	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
White	Neil Seifert	40	Male	March	27	2015	N Main St	Webster	MA	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
Black	Nephi Arriguin	21	Male	May	7	2015	17200 Pires Ave	Cerritos	CA	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
White	Nicholas Brickman	30	Male	January	7	2015	SE 4th St and Scott Ave	Des Moines	IA	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
Black	Nicholas Thomas	23	Male	March	24	2015	2475 Cumberland Pkwy SE	Atlanta	GA	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
Native American	Nicolas Tewa	26	Male	January	27	2015	4130 N Black Canyon Hwy	Phoenix	AZ	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
White	Nikki Burtsfield	39	Female	May	20	2015	N Garner Lake Rd and Vaquero Ave	Gillette	WY	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
Black	Norman Cooper	33	Male	April	19	2015	4800 Legend Well Dr	San Antonio	TX	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
Black	Nuwnah Laroche	34	Female	May	6	2015	I-95	Ridgefield Park	NJ	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
Black	Omarr Jackson	37	Male	January	8	2015	Lasalle St and Josephine St	New Orleans	LA	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
Hispanic/Latino	Orlando Lopez	26	Male	January	25	2015	Troy Ave and Oakshire Ln	Pueblo	CO	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
Hispanic/Latino	Pablo Meza	24	Male	January	17	2015	E 6th St and Mateo St	Los Angeles	CA	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
White	Patrick Wetter	25	Male	January	6	2015	800 Howard St	Stockton	CA	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
Black	Paul Anderson	31	Male	April	4	2015	150 E Lincoln Ave	Anaheim	CA	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
White	Paul Campbell	49	Male	January	19	2015	69 Prospect Hill Dr	Weymouth	MA	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
Hispanic/Latino	Pedro 'Pete' Juan Saldivar	50	Male	February	17	2015	US-90 and Charles Dr	Del Rio	TX	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
White	Philip Conley	37	Male	March	21	2015	904 Admiral Callaghan Ln	Vallejo	CA	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
White	Phillip Burgess	28	Male	April	9	2015	477 Belcher Rd	Boiling Springs	SC	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
Hispanic/Latino	Phillip Garcia	26	Male	January	16	2015	12810 Gulf Fwy	Houston	TX	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
Black	Phillip Watkins	23	Male	February	11	2015	1300 Sherman St	San Jose	CA	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
Black	Phillip White	32	Male	March	31	2015	118 W Grape St	Vineland	NJ	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
White	Quincy Reed Reindl	24	Male	January	15	2015	Nesbitt Ave S and 99th St W	Bloomington	MN	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
White	Ralph Willis	42	Male	January	29	2015	604 E Maple Ave	Stillwater	OK	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
White	Randall Torrence	34	Male	May	27	2015	1225 Quindaro Blvd	Kansas City	KS	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
White	Raymond Kmetz	68	Male	January	26	2015	4401 Xylon Ave N	Minneapolis	MN	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
Black	Reginald McGregor	31	Male	April	21	2015	200 North Retta St	Fort Worth	TX	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
White	Richard 'Buddy' Weaver	83	Male	April	12	2015	Sleepy Hollow Dr and Misty Glen Dr	Newalla	OK	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
White	Richard Carlin	35	Male	February	13	2015	414 Rehr St	Reading	PA	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
Hispanic/Latino	Richard Castilleja	29	Male	March	14	2015	2615 Mossrock	San Antonio	TX	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
Black	Richard Davis	50	Male	May	31	2015	Tremont St and Morgan St	Rochester	NY	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
Unknown	Richard Hanna	56	Male	April	6	2015	400 Steuber Rd	Tehachapi	CA	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
White	Richard McClendon	43	Male	January	13	2015	600 Olive St	Jourdanton	TX	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
White	Richard Reed	38	Male	April	10	2015	SW Wanamaker Rd and I-70	Topeka	KS	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
Black	Richard White	63	Male	March	20	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	Kenner	LA	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
Black	Ricky Hall	27	Male	March	30	2015	NA	Fort Meade	MD	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
White	Roark Cook	36	Male	May	4	2015	3320 W 9th Ave	Kennewick	WA	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
White	Robert Box	55	Male	May	29	2015	108 Fir Canyon Rd	Grants Pass	OR	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
White	Robert Burdge	36	Male	March	19	2015	200 Trask St	Bakersfield	CA	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
White	Robert Edwards	68	Male	January	14	2015	500 Sycamore St	Lake Jackson	TX	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
White	Robert Francis Mesch	61	Male	January	23	2015	120 W Slaughter Ln	Austin	TX	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
White	Robert Frost	46	Male	May	5	2015	1847 Bob White Blvd	Pulaski	VA	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
White	Robert Kohl	47	Male	February	23	2015	175 Bass Pro Blvd	Denham Springs	LA	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
White	Robert Rooker	26	Male	March	29	2015	Fields Hollow Rd	Peebles	OH	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
Black	Robert Washington	37	Male	April	1	2015	14200 Kornblum Ave	Hawthorne	CA	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
Hispanic/Latino	Roberto Leon	22	Male	March	17	2015	Elkhorn Blvd and Dry Creek Rd	Rio Linda	CA	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
Hispanic/Latino	Roberto Ornelas	18	Male	January	1	2015	39 N Marlin Ave	Key Largo	FL	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
Hispanic/Latino	Roberto Rodriguez	39	Male	April	8	2015	4th St and Mathews St	Los Angeles	CA	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
White	Rodney Biggs	49	Male	February	26	2015	US-49 and Middle Driveway	Gulfport	MS	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
Black	Rodney Walker	23	Male	January	16	2015	W 11th St	Tulsa	OK	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
Hispanic/Latino	Rodolfo Velazquez	47	Male	April	16	2015	West Lerdo Hwy and South Wall St	Shafter	CA	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
Black	Ronald Sneed	32	Male	January	7	2015	300 Yaupon St	Freeport	TX	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
Black	Ronell Wade	45	Male	May	17	2015	15746 Union Ave	Harvey	IL	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
White	Roy Day	51	Male	February	14	2015	Gale St	Laredo	TX	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
Hispanic/Latino	RubÌ_å©n GarcÌ__a Villalpando	31	Male	February	20	2015	2500 Texas Hwy 121	Euless	TX	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
White	Russell Sharrer	54	Male	February	27	2015	1016 N 4th Ave	Pasco	WA	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
White	Ryan Burgess	31	Male	March	11	2015	2241 Lucille Ave	Kingman	AZ	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
Hispanic/Latino	Salome Rodriguez Jr	23	Male	March	13	2015	184 W 3rd St	Pomona	CA	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
Hispanic/Latino	Salvador Figueroa	29	Male	January	11	2015	Circle K, 1301 N Eastern Ave	Las Vegas	NV	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
Hispanic/Latino	Salvador Muna	28	Male	February	4	2015	E Baseline Rd and S 48th St	Phoenix	AZ	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
Black	Sam Holmes	31	Male	May	8	2015	University Ave NE and I-694	Fridley	MN	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
Hispanic/Latino	Santos 'Cuate' Cortez Hernandez	24	Male	April	20	2015	NA	Mission	TX	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
White	Sawyer Flache	27	Male	February	8	2015	Texas Hwy 71 and Silvermine Dr	Austin	TX	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
White	Scott Dunham	57	Male	March	24	2015	2600 Senter Rd	San Jose	CA	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
Unknown	Scott McAllister	39	Male	May	27	2015	33 Bayside Pkwy	Middletown	NJ	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
White	Sean Pelletier	38	Male	May	14	2015	6095 Anna's Ln	Portage	MI	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
Hispanic/Latino	Sergio Navas	34	Male	March	5	2015	N Pass Ave and W National Ave	Burbank	CA	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
White	Shane Watkins	39	Male	March	19	2015	1040 County Rd 249	Moulton	AL	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
Black	Shaquille Barrow	20	Male	March	2	2015	Richards St	Joliet	IL	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
White	Shaun Johnson	35	Male	May	8	2015	59705 E Bidegain Pl	Kearny	AZ	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
White	Shawn Clyde	36	Male	April	1	2015	110 Nottinghill Ln	Hamilton Township	NJ	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
Asian/Pacific Islander	Sheldon Haleck	38	Male	March	16	2015	364 S King St	Honolulu	HI	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
White	Simon Hubble	33	Male	May	27	2015	3600 Emmanuel Way	Alpine	CA	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
Asian/Pacific Islander	Sinthanouxay Khottavongsa	57	Male	January	16	2015	5900 Xerxes Ave N	Minneapolis	MN	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
Black	Stanley Grant	38	Male	February	20	2015	2200 Green Springs Hwy	Birmingham	AL	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
White	Stanley Watson	72	Male	April	15	2015	3120 East Main St	CaÌ_å±on City	CO	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
White	Stephanie Hill	37	Female	February	28	2015	I-10	La Paz County	AZ	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
White	Stephen Cunningham	47	Male	May	11	2015	3420 S Proctor St	Tacoma	WA	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
White	Steven Davenport	43	Male	April	21	2015	Old Hwy 19 SE	Meridian	MS	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
White	Steven Snyder	37	Male	March	24	2015	760 W Johnson St	Fond du Lac	WI	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
White	Talbot Schroeder	75	Male	January	14	2015	40 Cedar Grove Pl	Old Bridge Township	NJ	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
Black	Terence Walker	21	Male	January	17	2015	Old Agency Baptist Church	Muskogee	OK	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
Black	Terrance Kellom	20	Male	April	27	2015	9500 Evergreen Rd	Detroit	MI	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
Black	Terrance Moxley	29	Male	March	10	2015	280 N Main St	Mansfield	OH	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
Black	Terry Garnett Jr	37	Male	March	11	2015	Augustine Herman Hwy & E Lewis Shore Rd	Elkton	MD	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
Black	Terry Price	41	Male	February	21	2015	951 West 36th St N	Tulsa	OK	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
Black	Tevin Barkley	22	Male	April	15	2015	800 NW 75th St	Miami	FL	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
Black	Thaddeus McCarroll	23	Male	April	17	2015	9200 Riverwood Dr	Jennings	MO	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
Black	Theodore Johnson	64	Male	March	10	2015	6902 Ottawa Rd	Cleveland	OH	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
Black	Thomas Allen Jr	34	Male	March	1	2015	Morton Ave and Chatham Ave	St Louis	MO	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
White	Thomas Hamby	49	Male	January	8	2015	2964 W 2125 S	Syracuse	UT	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
Asian/Pacific Islander	Thong Kien Ma	32	Male	May	5	2015	10400 Enloe St	South El Monte	CA	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
Black	Tiano Meton	25	Male	January	22	2015	I-10	Sierra Blanca	TX	31.172832	-105.357927	US Border Patrol	Gunshot	Other
White	Tiffany Terry	39	Female	January	30	2015	1702 S 50th St	Omaha	NE	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
Unknown	Tim Elliott	53	Male	January	2	2015	600 E Island Lake Dr	Shelton	WA	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
White	Timothy Jones	27	Male	May	17	2015	111 Otero Dr	Ruidoso	NM	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
White	Todd Allen Hodge	36	Male	January	21	2015	40200 Clark Dr	Hemet	CA	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
Black	Todd Jamal Dye	20	Male	April	24	2015	1505 E Main St	Trinidad	CO	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
White	Tommy Smith	39	Male	January	12	2015	224 Circle Dr	Arcola	IL	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
Black	Tony Robinson	19	Male	March	6	2015	1125 Williamson St	Madison	WI	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
White	Tony Ross	34	Male	March	6	2015	Lamar St and Whitworth St	Sulphur Springs	TX	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
White	Troy Boyd	36	Male	March	15	2015	McEwien Swamp Rd	Ruth	MS	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
White	Tyrel Vick	34	Male	March	20	2015	Oklahoma Hwy 48 and E1750 Rd	Wapanucka	OK	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
White	Tyrell Larsen	31	Male	April	6	2015	E 100 N	Rigby	ID	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
Black	Tyrone Ryerson	45	Male	March	5	2015	468 E Plainfield Ave	Milwaukee	WI	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
White	Tyson Hubbard	34	Male	March	5	2015	27th St and Fletcher Ave	Lincoln	NE	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
Unknown	Unknown	Unknown	Male	January	16	2015	Co Rd 2718	Mabank	TX	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
Unknown	Unknown	Unknown	Female	May	25	2015	6505 Shirley Ave	Austin	TX	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
White	Unknown	Unknown	Male	June	1	2015	271 Greece Ridge Center Dr	Rochester	NY	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
Hispanic/Latino	Victor Reyes	31	Male	January	31	2015	West Little York Rd	Houston	TX	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
Hispanic/Latino	Victor Terrazas	28	Male	March	25	2015	10200 S Vermont Ave	Los Angeles	CA	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
White	Vincent Cordaro	57	Male	February	9	2015	N Little Tor Rd	New City	NY	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
Black	Walter Brown III	29	Male	March	24	2015	19 Colin Drive S	Portsmouth	VA	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
Black	Walter Scott	50	Male	April	4	2015	1945 Remount Rd	North Charleston	SC	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
White	Wendell King	40	Male	January	29	2015	4800 Hildring Dr E	Forth Worth	TX	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
Hispanic/Latino	Wilber Castillo-Gongora	35	Male	February	5	2015	US-287	Electra	TX	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
White	William 'Rusty' Smith	53	Male	March	10	2015	700 Valley St	Hoover	AL	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
Unknown	William Campbell	59	Male	January	25	2015	335 New Brooklyn Rd	Berlin	NJ	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
Black	William Chapman II	18	Male	April	22	2015	1098 Frederick Blvd	Portsmouth	VA	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
Native American	William Dick III	28	Male	April	4	2015	Bureau of Indian Affairs Rd 66	Tonasket	WA	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
White	William Poole	52	Male	March	16	2015	130 Wedowee Ln	Gaston	NC	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
Black	Yuvette Henderson	38	Female	February	3	2015	3800 Hollis St	Oakland	CA	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
Unknown	Zaki Shinwary	48	Male	January	16	2015	Lake Arrowhead Ave and Great Salt Lake Dr	Fremont	CA	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: -
--

COPY state (state, name, age, gender, raceethnicity, month, day, year, streetaddress, city, latitude, longitude, lawenforcementagency, cause, armed) FROM stdin;
state	name	age	gender	raceethnicity	month	day	year	streetaddress	city	latitude	longitude	lawenforcementagency	cause	armed
AL	A'donte Washington	16	Male	Black	February	23	2015	Clearview Ln	Millbrook	32.529577	-86.362829	Millbrook Police Department	Gunshot	No
LA	Aaron Rutledge	27	Male	White	April	2	2015	300 block Iris Park Dr	Pineville	31.3217392	-92.4348602	Rapides Parish Sheriff's Office	Gunshot	No
WI	Aaron Siler	26	Male	White	March	14	2015	22nd Ave and 56th St	Kenosha	42.5835597	-87.8357101	Kenosha Police Department	Gunshot	No
CA	Aaron Valdez	25	Male	Hispanic/Latino	March	11	2015	3000 Seminole Ave	South Gate	33.9392976	-118.2194634	South Gate Police Department	Gunshot	Firearm
OH	Adam Jovicic	29	Male	White	March	19	2015	364 Hiwood Ave	Munroe Falls	41.1485748	-81.4298782	Kent Police Department	Gunshot	No
AZ	Adam Reinhart	29	Male	White	March	7	2015	18th St and Palm Ln	Phoenix	33.4693799	-112.0433197	Phoenix Police Department	Gunshot	No
CA	Adrian Hernandez	22	Male	Hispanic/Latino	March	27	2015	4000 Union Ave	Bakersfield	35.3956975	-119.0027449	Bakersfield Police Department	Gunshot	Firearm
CA	Adrian Solis	35	Male	Hispanic/Latino	March	26	2015	1500 Bayview Ave	Wilmington	33.7930495	-118.2709256	Los Angeles Police Department	Gunshot	Non-lethal firearm
TX	Alan Alverson	44	Male	White	January	28	2015	Pickett Runn Rd	Sunset	30.6653042	-96.4014816	Wise County Sheriff's Department and Texas DPS 	Gunshot	Firearm
MI	Alan James	31	Male	White	February	7	2015	200 Abbie St SE	Wyoming	42.8932381	-85.6605835	Kentwood Police Department and Wyoming DPS	Gunshot	Other
CA	Albert Hanson Jr	76	Male	White	April	26	2015	7th Ave and Kansas Ave	Hanford	36.2109603	-119.5828798	Kings County Sheriff's Office	Gunshot	Knife
CA	Alec Ouzounian	40	Male	White	May	12	2015	28 Paseo Viento	Rancho Santa Margarita	33.6533852	-117.6133728	Orange County Sheriff's Department	Gunshot	No
TX	Alejandro Salazar	Unknown	Male	Hispanic/Latino	February	20	2015	1200 E Airtex Dr	Houston	29.9832049	-95.4038566	US Marshals Service	Gunshot	No
IN	Alexander Long	31	Male	White	February	25	2015	25th St and Poplar St	Terre Haute 	39.4629302	-87.3788602	Terre Haute Police Department 	Gunshot	Firearm
IN	Alexander Myers	23	Male	White	April	6	2015	5700 block Ashby Dr	Indianapolis	39.7669106	-86.1499634	Indianapolis Metropolitan Police Department	Gunshot	Non-lethal firearm
TN	Alexander Rivera	39	Male	Hispanic/Latino	May	30	2015	1128 Murfreesboro Pike	Nashville	36.1259117	-86.7090149	Metro Nashville Police Department	Gunshot	Firearm
GA	Alexia Christian	25	Female	Black	April	30	2015	141 Pryor St SW	Atlanta	33.7512627	-84.3930283	Atlanta Police Department	Gunshot	Vehicle
VA	Alfredo Rials-Torres	54	Male	Hispanic/Latino	May	19	2015	4219 2nd Road N	Arlington	38.8731527	-77.1050099	Arlington Police Department	Gunshot	Firearm
CA	Alice Brown	24	Female	White	March	17	2015	Van Ness Ave and Pine St	San Francisco	37.7894309	-122.4220984	San Francisco Police Department	Gunshot	Firearm
CA	Alvin Haynes	57	Male	Black	January	26	2015	1 Moreland Dr	San Francisco	37.6279793	-122.4539337	San Francisco Sheriff's Department	Death in custody	No
CA	Amilcar Perez-Lopez	21	Male	Hispanic/Latino	February	26	2015	Folsom St and 24th St	San Francisco	37.7525108	-122.4140801	San Francisco Police Department	Gunshot	Vehicle
NE	Andre Murphy Sr	42	Male	Black	January	7	2015	1223 Omaha Ave	Norfolk	42.0185249	-97.3862886	Norfolk Police Division	Death in custody	No
KS	Andres Lara-Rodriguez	21	Male	Hispanic/Latino	February	13	2015	S 12th St and Ruby St	Kansas City	39.0714403	-94.6402303	Kansas City KS Police Department and Kansas Highway Patrol	Gunshot	Other
CA	Andrew Driver	36	Male	White	March	13	2015	9700 Kempster Ave	Fontana	34.0774421	-117.4297614	Fontana Police Department	Gunshot	Firearm
OK	Andrew Jackson	26	Male	White	April	29	2015	1200 W Florida Ave	Chickasha	35.0401063	-97.9480673	Grady County Sheriff's Department and Chickasha Police Department	Gunshot	Firearm
OR	Andrew Shipley	49	Male	White	March	17	2015	360 Argyle Ct	Medford	42.3301735	-122.898735	Medford Police Department	Gunshot	Firearm
NH	Andrew Toto	54	Male	White	January	21	2015	Scobie Pond Rd and Julian Rd	Derry	42.9080801	-71.3366499	Derry Police Department	Gunshot	Firearm
CA	Andrew Valadez	26	Male	White	April	23	2015	Tyler St and Glenoaks Blvd	Sylmar	34.31029	-118.4531897	Los Angeles Police Department	Gunshot	Firearm
FL	Andrew Williams	48	Male	Black	March	6	2015	Putnam Loop Rd	Putnam Hall	29.743281	-81.963951	Putnam County Sheriff's Office	Gunshot	Firearm
TX	Andy Martinez	33	Male	Hispanic/Latino	January	9	2015	4400 Tetons Dr	El Paso	31.8576378	-106.4396178	El Paso Police Department	Gunshot	Firearm
CA	Angel Corona Jr	21	Male	Hispanic/Latino	April	10	2015	4740 Barham Ave	Corning	39.9362717	-122.2013168	Tehama County Sheriff's Department	Gunshot	Knife
MA	Angelo West	41	Male	Black	March	27	2015	Humboldt Ave and Ruthven St	Roxbury	42.3126099	-71.0899229	Boston Police Department	Gunshot	Firearm
TN	Anthony Bess	48	Male	Black	February	10	2015	4545 Aldridge Dr	Memphis	35.0246391	-90.0544891	Memphis Police Department	Gunshot	Vehicle
AL	Anthony Briggs	36	Male	Black	May	25	2015	1100 E Gateway Dr SE	Huntsville	34.6168404	-86.5641098	Huntsville Police Department	Gunshot	Knife
GA	Anthony Giaquinta	41	Male	Hispanic/Latino	February	22	2015	Lower Pond Ct	Clarkesville	34.6314812	-83.5972519	Habersham County Sheriff's Office	Gunshot	Firearm
PA	Anthony Gomez Jr	29	Male	Black	May	19	2015	305 E Walnut St	Lancaster	40.0434474	-76.2999885	Lancaster Police Department	Gunshot	Knife
GA	Anthony Hill	27	Male	Black	March	9	2015	3028 Chamblee Dunwoody Rd	Chamblee	33.8942184	-84.3032227	DeKalb County Sheriff's Department	Gunshot	No
GA	Anthony Purvis	45	Male	White	February	3	2015	1404 N June Ave	Douglas	31.5233612	-82.8451767	Douglas Police Department	Gunshot	Firearm
CA	Antonio Perez	32	Male	Hispanic/Latino	March	12	2015	2400 Flower St	Los Angeles	34.0280075	-118.2735977	Los Angeles County Sheriff's Department	Gunshot	Firearm
WA	Antonio Zambrano-Montes	35	Male	Hispanic/Latino	February	10	2015	1107 W Lewis St	Pasco	46.2285118	-119.1019287	Pasco Police Department	Gunshot	Firearm
AR	Artago Howard	36	Male	Black	January	8	2015	9661 Strong Hwy	Strong	33.1112823	-92.3590775	Union County Sheriff's Office	Gunshot	Firearm
GA	Askari Roberts	35	Male	Black	March	17	2015	3189 Morton Bend Rd	Rome	34.2185669	-85.3869934	Floyd County Sheriff's Office	Taser	Knife
OK	Aurelio Duarte	40	Male	Hispanic/Latino	March	8	2015	3632 SW 38th St	Oklahoma City	35.4262543	-97.5826111	Oklahoma City Police Department	Gunshot	Vehicle
FL	Austin Goodner	18	Male	White	May	17	2015	5236 Robin Ln N	St Petersburg	27.8200741	-82.6588058	St Petersburg Police Department	Gunshot	Firearm
IA	Autumn Steele	34	Female	White	January	6	2015	104 N Garfield Ave	Burlington	40.8100281	-91.1185837	Burlington Police Department	Gunshot	Firearm
CA	Benito Osorio	39	Male	Hispanic/Latino	March	11	2015	300 S Main St	Santa Ana	33.7431641	-117.867981	Santa Ana Police Department	Gunshot	Knife
TX	Benjamin Quezada	21	Male	Hispanic/Latino	March	31	2015	West Texas Ave and Gaillard St	Baytown	29.7330154	-94.9706357	Baytown Police Department	Gunshot	Other
GA	Bernard Moore	62	Male	Black	March	6	2015	Metropolitan Pkwy and Fair Dr	Atlanta	33.7033899	-84.4080502	Atlanta Police Department	Struck by vehicle	No
NC	Betty Sexton	43	Female	White	February	17	2015	2325 Union Rd	Gastonia	35.2286491	-81.1696243	Gastonia Police Department	Gunshot	Firearm
NM	Billy Grimm	44	Male	White	May	3	2015	Arenal Rd SW and Tapia Blvd SW	Albuquerque	35.05179	-106.6883397	Bernalillo County Sheriff's Department	Gunshot	Firearm
OK	Billy Patrick	29	Male	White	April	26	2015	NA	Bunch	35.6848412	-94.7619019	Oklahoma Department of Wildlife Conservation	Gunshot	Firearm
DC	Bobby Gross	35	Male	Black	March	12	2015	700 14th St NW 	Washington	38.8984573	-77.032015	Washington DC Metro Transit Police	Gunshot	Firearm
FL	Bradford Leonard	50	Male	White	February	22	2015	900 Castile Rd SE	Palm Bay	27.9906769	-80.6457672	Palm Bay Police Department	Gunshot	Knife
OH	Brandon Jones	18	Male	Black	March	19	2015	1077 Parkwood Dr	Cleveland	41.5285759	-81.6090775	Cleveland Division of Police	Gunshot	Firearm
TX	Brandon Lawrence	25	Male	White	April	25	2015	800 Simpson Rd	Victoria	28.8776989	-97.0015351	Victoria Police Department	Gunshot	Firearm
ID	Brandon Rapp	31	Male	White	March	18	2015	9000 Charles Way	Middleton	43.7041283	-116.5797195	Canyon County Sheriff's Office	Gunshot	Knife
CA	Brendon Glenn	29	Male	Black	May	6	2015	1602 Pacific Ave	Los Angeles	33.9877281	-118.4717178	Los Angeles Police Department	Gunshot	Firearm
OR	Brian Babb	49	Male	White	March	31	2015	2200 Devos St	Eugene	44.0894276	-123.1812222	Eugene Police Department	Gunshot	Firearm
CA	Brian Barbosa	23	Male	Unknown	January	11	2015	8900 Kauffman Ave	South Gate	33.9523485	-118.1889472	South Gate Police Department	Gunshot	Firearm
CO	Brian Fritze	45	Male	White	February	10	2015	I-70 and US-6	Glenwood Springs	39.5608522	-107.3613187	Garfield County Sheriff's Office	Gunshot	Knife
CA	Brian Pickett	26	Male	Black	January	6	2015	1600 E 123rd St	Los Angeles	33.9208252	-118.2461601	Los Angeles County Sheriff's Department	Taser	Firearm
KS	Brock Nichols	35	Male	White	January	6	2015	2388 E Kansas Hwy 4	Assaria	38.7112324	-97.5695687	Saline County Sheriff's Office	Gunshot	Knife
OR	Bruce Steward	34	Male	White	February	15	2015	29000 S Wall St	Colton	45.1577606	-122.4377594	Clackamas County Sheriff's Office	Gunshot	Non-lethal firearm
HI	Bruce Zalonka	46	Male	Asian/Pacific Islander	May	12	2015	1031 Nuuanu Ave	Honolulu	21.3106435	-157.8625984	US Marshals Service	Gunshot	No
KY	Byron Herbert	29	Male	Black	March	29	2015	111 Towne Dr	Elizabethtown	37.734657	-85.888427	Elizabethtown Police Department	Gunshot	Knife
FL	Calvon Reid	39	Male	Black	February	22	2015	1701 Andros Isle	Coconut Creek	26.256782	-80.167854	Coconut Creek Police Department	Taser	Firearm
CA	Carl Lao	28	Male	Asian/Pacific Islander	March	4	2015	South San Joaquin St and East Church St	Stockton	37.9482801	-121.2858499	Stockton Police Department and San Joaquin County Sheriff's Office	Gunshot	Knife
AZ	Carlos Saavedra Ramirez	51	Male	Hispanic/Latino	April	22	2015	101 Naco Hwy	Bisbee	31.3995342	-109.9178085	Bisbee Police Department	Gunshot	Knife
KY	Carter Ray Castle	67	Male	White	January	18	2015	Kentucky Rte 7	Gunlock	37.5631485	-82.9268265	Magoffin County Sheriff's Office and Kentucky State Police	Gunshot	Firearm
FL	Cary Martin	53	Male	White	May	14	2015	497 Florida Ave	St Augustine	29.850338	-81.2775116	St Johns County Sheriff's Office	Gunshot	Firearm
MI	Caso Jackson	25	Male	Black	May	23	2015	13331 Strathmoor St	Detroit	42.3859138	-83.1876144	Detroit Police Department	Gunshot	No
FL	Cedrick Bishop	30	Male	Black	March	9	2015	Aurora St	Cocoa	28.35171	-80.748771	Brevard County Sheriff's Office	Gunshot	Knife
TX	Celin Nunez	24	Male	Hispanic/Latino	April	13	2015	3 Greens Rd	Houston	29.9494667	-95.4163284	Houston Police Department	Gunshot	No
CA	Chance Thompson	35	Male	White	February	15	2015	Hammonton Smartville Rd	Marysville	39.1221504	-121.5654984	Yuba County Sheriff's Office	Taser	Firearm
CA	Charly 'Africa' Keunang	43	Male	Black	March	1	2015	500 San Pedro St	Los Angeles	34.0437775	-118.243721	Los Angeles Police Department	Gunshot	Vehicle
SC	Chazsten Freeman	24	Male	White	February	27	2015	South Carolina Rte 8 and Augusta Rd	Peltzer	34.6285944	-82.3912225	Greenville County Sheriff's Office	Gunshot	Firearm
AZ	Chris Ingram	29	Male	White	January	27	2015	Coronado Trail	Morenci	33.0515518	-109.3249283	Clifton Police Department and Greenlee County Sheriff's Office	Gunshot	Firearm
KY	Chrislon Talbott	38	Male	Black	May	21	2015	4585 Frederica St	Owensboro	37.7242317	-87.1226807	Owensboro Police Department and Kentucky State Police	Gunshot	Firearm
AR	Christopher Finley	31	Male	White	April	14	2015	900 Walnut St	Jonesboro	35.8342552	-90.7173691	Jonesboro Police Department	Gunshot	No
OR	Christopher Healy	36	Male	White	March	22	2015	2300 SE 130th Ave	Portland	45.5057439	-122.5299	Portland Police Department	Gunshot	Other
GA	Christopher Mitchell	23	Male	White	March	10	2015	6530 Georgia Rte 21	Port Wentworth	32.1656761	-81.1842117	Port Wentworth Police Department	Gunshot	Firearm
VA	Christopher Prevatt	38	Male	White	April	3	2015	123 Gregory Pl	Winchester	39.1907845	-78.128479	Frederick County Sheriff's Office	Gunshot	Firearm
WV	Clifton Reintzel	53	Male	White	March	13	2015	600 Main St	Follansbee	40.3233614	-80.5951533	West Virginia State Police	Gunshot	No
UT	Cody Evans	24	Male	White	February	15	2015	1600 W 500 N	Provo	40.2463989	-111.6674271	Provo Police Department	Gunshot	Knife
TX	Cody Karasek	26	Male	White	January	28	2015	4100 Avenue I	Rosenberg	29.5576077	-95.7844925	Rosenburg Police Department	Gunshot	Firearm
MO	Cornelius Parker	28	Male	Black	February	28	2015	E Broadway and US-63	Columbia	38.9464501	-92.2934712	Boone County Sheriff's Department	Gunshot	Firearm
GA	Crystal Miley	34	Female	White	February	26	2015	5101 Georgia Rte 133	Moultrie	31.0882878	-83.6398052	Worth County Sheriff's Office	Gunshot	Knife
FL	D'Angelo Stallworth	28	Male	Black	May	12	2015	7300 Blanding Blvd	Jacksonville	30.2145387	-81.7372566	Jacksonville Police Department	Gunshot	Firearm
MD	DaJuan Graham	40	Male	Black	May	12	2015	13900 Castle Blvd	Silver Spring	39.0841484	-76.9422684	Montgomery County Police Department	Taser	Firearm
NY	Dalton Branch	51	Male	Black	May	26	2015	530 Stanley Ave	New York	40.6572562	-73.8886551	New York Police Department	Gunshot	No
NE	Dana Hlavinka	44	Male	White	April	19	2015	1363 Clark Dr	Sidney	41.121974	-102.982879	Sidney Police Department	Gunshot	Firearm
TX	Daniel Brumley	25	Male	Hispanic/Latino	January	17	2015	NE 36th St	Fort Worth	32.810365	-97.342555	Fort Worth Police Department	Gunshot	Firearm
AZ	Daniel Caldwell	56	Male	White	February	16	2015	8351 N Cracker Barrel Rd	Marana	32.3580589	-111.0924911	Marana Police Department	Gunshot	Knife
WA	Daniel Covarrubias	37	Male	Hispanic/Latino	April	21	2015	3600 SW 108th St	Lakewood	47.1592102	-122.4849472	Lakewood Police Department	Gunshot	Firearm
FL	Daniel Davis	58	Male	White	April	25	2015	8624 Firestone Cir	Clermont	28.5670815	-81.8123245	Lake County Sheriff's Office	Gunshot	Firearm
NE	Daniel Elrod	39	Male	White	February	24	2015	1299 Hickory St	Omaha	41.2427938	-95.9331281	Omaha Police Department	Gunshot	Firearm
AZ	Daniel Mejia	37	Male	Hispanic/Latino	February	15	2015	200 S McNab Pkwy	San Manuel	32.6101336	-110.6317321	Pinal County Sheriff's Office	Gunshot	No
NJ	Daniel Wolfe	35	Male	Black	April	21	2015	1714 Walker Ave	Union	40.7107079	-74.2532176	New Jersey State Police	Gunshot	Knife
MD	Darin Hutchins	26	Male	Black	January	24	2015	1900 McHenry St	Baltimore	39.2844658	-76.6468658	Baltimore Police Department	Gunshot	Firearm
OK	Darrell 'Hubbard' Gatewood	47	Male	Black	March	1	2015	616 SW 59th St	Oklahoma City	35.4057617	-97.524292	Oklahoma City Police Department	Taser	Firearm
MD	Darrell Brown	31	Male	Black	April	16	2015	402 North Prospect St	Hagerstown	39.6494503	-77.7206332	Hagerstown Police Department	Taser	Firearm
SC	Darrell Morgan	60	Male	White	May	28	2015	3164 Charlotte Hwy	Lancaster	34.7966959	-80.7973288	Lancaster County Sheriff's Department	Gunshot	No
IL	Darrin Langford	32	Male	Black	April	2	2015	12th Ave and Glenhurst Ct	Rock Island	41.4996099	-90.5816397	Rock Island Police Department	Gunshot	No
ID	Daryl Myler	45	Male	White	January	24	2015	164 E Main St	Rexburg	43.8255653	-111.7787094	Rexburg Police Department	Gunshot	Non-lethal firearm
FL	David Cuevas	42	Male	Hispanic/Latino	February	26	2015	4660 N Socrum Loop Rd	Lakeland	28.1034451	-81.9506454	Lakeland Police Department	Gunshot	Firearm
CO	David Gaines	17	Male	White	May	19	2015	N 10th St and Gunnison Ave	Grand Junction	39.0733903	-108.5559598	Grand Junction Police Department	Gunshot	Firearm
TX	David Gandara	22	Male	Hispanic/Latino	May	21	2015	5111 Fairbanks Dr	El Paso	31.9034023	-106.4228592	El Paso Police Department	Gunshot	Firearm
CA	David Garcia	33	Male	Hispanic/Latino	January	26	2015	1134 E St	Wasco	35.5890732	-119.3347549	Kern County Sheriff's Office	Gunshot	Firearm
NC	David Johnson	18	Male	White	May	7	2015	300 Stone Monument Dr	Wake Forest	35.9575348	-78.527153	Wake Forest Police Department	Gunshot	No
MI	David Kapuscinski	39	Male	White	April	16	2015	14680 Middle Gibraltar Rd	Rockwood	42.0951881	-83.2008743	Gibraltar Police Department	Taser	Firearm
PA	David Kassick	59	Male	White	February	2	2015	36 Grandview Rd	Hanover	39.7720299	-76.9661789	Hummelstown Police Department	Gunshot	Firearm
OK	David Lynch	33	Male	White	April	3	2015	11974-11998 US-64	Muskogee County	35.7550087	-95.4025574	Warner Police Department	Taser	Firearm
OH	David Parker	58	Male	White	April	28	2015	36 Randall Rd	Mansfield	40.7386665	-82.5156326	Mansfield Police Department	Gunshot	Firearm
NY	David Schwalm	58	Male	White	May	8	2015	168 Auringer Rd	Constantania	43.265415	-76.005973	Oswego County Sheriff's Department	Gunshot	No
LA	David Watford	47	Male	White	March	17	2015	US-65	Tallulah	32.3727417	-91.1993637	Louisiana State Troopers	Struck by vehicle	Firearm
CT	David Werblow	41	Male	White	March	15	2015	134 Burban Dr	Branford	41.2693481	-72.8428955	Branford Police Department	Taser	Other
CA	Dean Bucheit	64	Male	White	February	9	2015	13600 Culver Blvd	Los Angeles	34.0021591	-118.4123077	Los Angeles Police Department	Struck by vehicle	Firearm
CA	Dean Genova	45	Male	White	April	26	2015	13822 Brookhurst St	Garden Grove	33.7610283	-117.953743	Fountain Valley Police Department	Gunshot	Firearm
KS	Deanne Choate	53	Female	White	March	26	2015	400 N Birch	Gardner	38.816658	-94.9135437	Gardner Police Department	Gunshot	Firearm
NC	Declan Owen	24	Male	White	March	17	2015	8100 North Carolina Hwy 41	Dublin	34.6425728	-78.7416717	Bladen County Sheriff's Office and Bladenboro Police Department	Gunshot	Knife
LA	Dedrick Marshall	48	Male	Black	May	8	2015	3020 Destrehan Ave	Harvey	29.8598535	-90.0722601	Jefferson Parish Sheriff's Office	Gunshot	Firearm
FL	Demaris Turner	29	Male	Black	January	23	2015	1980 NW 46 Ave	Lauderhill	26.1503577	-80.2101228	Lauderhill Police Department	Gunshot	No
NY	Denis Reyes	40	Male	Hispanic/Latino	May	15	2015	274 E 194th St	New York	40.8646202	-73.8924332	New York Police Department	Death in custody	Firearm
CA	Dennis Fiel	34	Male	White	May	17	2015	7700 Mesa College Dr	San Diego	32.8019612	-117.154332	San Diego Police Department	Gunshot	Vehicle
NY	Denzel Brown	21	Male	Black	March	22	2015	1851 Sunrise Hwy	Bay Shore	40.7399445	-73.2372284	Suffolk County Police Department	Gunshot	Firearm
FL	Derek Cruice	26	Male	White	March	4	2015	800 Maybrook Dr	Deltona	28.8863035	-81.2532239	Volusia County Sheriff's Office	Gunshot	Unknown
TX	Desmond Luster	45	Male	Black	February	9	2015	7400 Bonnie View Rd	Dallas	32.6565955	-96.7502993	Dallas Police Department	Gunshot	Firearm
LA	Desmond Willis	25	Male	Black	April	6	2015	2515 Manhattan Blvd	Harvey	29.8768171	-90.0489899	Jefferson Parish Sheriff's Office	Gunshot	Firearm
MI	Deven Guilford	17	Male	White	March	1	2015	331 W Grand Ledge Hwy	Roxand Township	42.7556214	-84.8926637	Eaton County Sheriff's Office	Gunshot	Non-lethal firearm
CA	Devin Gates	24	Male	Black	March	22	2015	2105 Scott Blvd	Santa Clara	37.3612938	-121.959137	Santa Clara Police Department	Gunshot	Other
AZ	Dewayne Carr	42	Male	Black	January	15	2015	Chaparral Rd and Hayden Rd	Scottsdale	33.50943	-111.9087198	Scottsdale Police Department	Gunshot	Knife
CA	Dewayne Ward Jr	29	Male	Black	February	3	2015	1000 Claudia Ct	Antioch	37.9996185	-121.8187332	Contra Costa Sheriff's Office	Gunshot	Firearm
GA	Dexter Bethea	42	Male	Black	April	8	2015	3022 James Rd	Valdosta	30.8424794	-83.3328619	Lowndes County Sheriff's Office	Gunshot	Knife
VA	Dominick Wise	30	Male	Black	March	30	2015	1301 Spring Meadow Ln	Culpeper	38.4843175	-77.9793973	Culpeper Police Department	Taser	Firearm
IN	Don Smith	29	Male	Black	April	9	2015	8516 N Meridian Rd	Monon	40.8749496	-86.8776412	Indiana State Police, Tippecanoe County Sheriff's Department	Gunshot	Firearm
NY	Donald 'Dontay' Ivy	39	Male	Black	April	2	2015	Lark St and Second St	Albany	42.6610199	-73.7579497	City of Albany Police Department	Taser	Firearm
IL	Donald Hicks	63	Male	White	April	2	2015	Illinois Rte 145 and Waldo Church Rd	Metropolis	37.1760399	-88.6766698	Metropolis Police Department	Gunshot	Non-lethal firearm
MS	Donald Matkins	49	Male	White	March	1	2015	Mt Pleasant Rd	Lucedale	30.8003197	-88.6320801	George County Sheriff's Department	Gunshot	Firearm
SC	Donte Noble	41	Male	Black	April	15	2015	200 Canaan Pointe Dr	Spartanburg	34.9038367	-81.9115352	Spartanburg Police Department	Gunshot	Firearm
IN	Donte Sowell	27	Male	Black	January	15	2015	East 38th St and North Mitthoeffer Rd	Indianapolis	39.8262703	-85.9910497	Indianapolis Metropolitan Police Department	Gunshot	Other
MA	Doug Sparks	30	Male	White	February	17	2015	Forest Ave	Tewksbury	42.6146317	-71.2831421	Tewksbury Police Department	Gunshot	No
TX	Douglas Faith	60	Male	White	April	8	2015	Karen Ln and Corinne Dr	San Antonio	29.4894164	-98.4276711	San Antonio Police Department	Gunshot	Knife
AL	Douglas Harris	77	Male	Black	March	27	2015	7901 1st Ave S	Birmingham	33.5637512	-86.7238083	Birmingham Police Department	Gunshot	No
AZ	Ebin Proctor	19	Male	Unknown	May	30	2015	Yuma Circle	Cottonwood	34.6895294	-111.9851837	Yavapai County SheriffÌ_Ì_åÈs Office	Gunshot	No
CA	Edixon Franco	37	Male	Hispanic/Latino	March	10	2015	Fern Ave and Phillips St	Ontario	34.0500802	-117.6546599	Ontario Police Department	Gunshot	Firearm
MD	Edward Bright Sr	54	Male	Black	January	31	2015	9800 Liberty Rd	Randallstown	39.3798716	-76.820209	Baltimore County Police Department	Gunshot	Firearm
CA	Elias Cavazos	29	Male	Hispanic/Latino	April	17	2015	Girard Street and Acacia Ave	Hemet	33.7439798	-116.95425	Riverside County Sheriff's Department and California Highway Patrol	Gunshot	Firearm
TX	Elton Simpson	30	Male	Black	May	3	2015	4999 Naaman Forest Blvd	Garland	32.9599406	-96.6389561	Garland Police Department	Gunshot	No
NJ	Elvin Diaz	24	Male	Hispanic/Latino	May	21	2015	10 Temple Ave	Hackensack	40.9011307	-74.040863	Hackensack Police Department	Gunshot	Knife
AZ	Enoch Gaver	21	Male	White	March	21	2015	2003 E Rodeo Dr	Cottonwood	34.713047	-112.0006409	Cottonwood Police Department	Gunshot	Firearm
OK	Eric Harris	44	Male	Black	April	2	2015	1900 block N Harvard Ave	Tulsa	36.1497383	-95.9933319	Tulsa County Sheriff's Office	Gunshot	Firearm
AZ	Eric Robinson	40	Male	White	May	23	2015	135 N Main St	Eagar	34.1133387	-109.2914933	Eagar Police Department and Apache County Sheriff's Office	Gunshot	Firearm
OK	Erick Rose	32	Male	White	April	7	2015	Post Office Neck Rd and Lake Rd	Shawnee	35.33308	-97.0646703	Pottawatomie County Sheriff's Office	Gunshot	Knife
TX	Erick Sanchez	22	Male	Hispanic/Latino	April	30	2015	11565 James Watt Dr	El Paso	31.7398815	-106.3106995	El Paso Police Department	Gunshot	Knife
AZ	Erik Tellez	43	Male	White	April	18	2015	20th St and Thomas Rd	Phoenix	33.4802603	-112.0388203	Phoenix Police Department	Gunshot	Firearm
CA	Ernesto Flores	52	Male	Hispanic/Latino	April	15	2015	11157 Chico Ave	Pomona	34.0511284	-117.720726	San Bernardino County Sheriff's Office	Gunshot	Knife
CA	Ernesto Javier Canepa Diaz	27	Male	Hispanic/Latino	February	27	2015	1000 W 3rd St	Santa Ana	33.7470254	-117.8777748	Santa Ana Police Department	Gunshot	No
NM	Ethan Noll	34	Male	White	April	4	2015	Mountainair St	Edgewood	35.0556297	-106.1947021	New Mexico State Police	Gunshot	Vehicle
TX	Eugene Smith II	20	Male	White	March	17	2015	313 S Houston Ave	Onalaska	30.706146	-94.930023	Onalaska Police Department	Gunshot	No
MD	Fednel Rhinvil	25	Male	Black	March	3	2015	East Rd and Olivia St	Salisbury	38.3791997	-75.6071202	Maryland State Police	Gunshot	Firearm
NY	Felix David	24	Male	Black	April	25	2015	538 E Sixth St	New York	40.5887968	-73.9643034	New York Police Department	Gunshot	Knife
CA	Feras Morad	20	Male	Unknown	May	27	2015	4600 E 15th St	Long Beach	33.785408	-118.1393127	Long Beach Police Department	Gunshot	Firearm
AL	Fletcher Stewart	46	Male	White	February	11	2015	Booger Hollow Rd	Dadeville	32.864521	-85.7209778	Tallapoosa County Sheriff's Department	Gunshot	Firearm
CA	Francis Rose III	42	Male	White	February	2	2015	9000 Buena Vista St	Apple Valley	34.4155171	-117.1768954	San Bernardino County Sheriff's Department	Gunshot	Firearm
NV	Francis Spivey	43	Male	White	February	25	2015	5300 East Craig Road	Las Vegas	36.2421112	-115.0569458	Las Vegas Metro Police (Swat)	Gunshot	Firearm
TX	Frank 'Trey' Shephard III	41	Male	Black	April	15	2015	Castlegory Rd and Wallisville Rd	Houston	29.806377	-95.1731886	Harris County Sheriff's Office	Gunshot	No
MO	Fred Liggett Jr	59	Male	White	March	13	2015	8700 E 97th Ter	Kansas City	38.9474373	-94.4866943	US Marshals Service	Gunshot	No
MD	Freddie Gray	25	Male	Black	April	12	2015	Mount St and Presbury St	Baltimore	39.3079703	-76.6448703	Baltimore Police Department	Death in custody	Firearm
CA	Fridoon Rawshannehad	42	Male	White	April	30	2015	3200 Hancock St	San Diego	32.7543667	-117.2051807	San Diego Police Department	Gunshot	Firearm
FL	Garland Wingo	64	Male	White	March	18	2015	Lake Ella	Tallahassee	30.4609642	-84.2794113	Tallahassee Police Department	Gunshot	Firearm
MA	Garrett Gagne	22	Male	White	January	1	2015	Crowell Rd and Tipcart Dr	Chatham	41.6848183	-69.966423	Chatham Police Department	Struck by vehicle	Unknown
OK	Garrett Sandeno	24	Male	White	May	27	2015	1701 Ridgecrest Rd	Edmond	35.6332283	-97.4577179	Edmond Police Department	Gunshot	Knife
OK	Gary Collins	63	Male	White	April	25	2015	H St NW and 20th Ave NW	Miami	36.8973899	-94.8865503	Oklahoma Highway Patrol	Gunshot	No
CA	Gary Kendrick	56	Male	White	March	27	2015	Shadytree Ln and Glen Arbor Dr	Encinitas	33.0497403	-117.24153	San Diego County Sheriff's Department	Gunshot	No
IN	Gary Page	60	Male	White	March	21	2015	1790 E Voorhees St	Harmony	39.5332565	-87.0744171	Clay County Sheriff's Department	Gunshot	No
AL	Gilbert Fleury	54	Male	White	March	11	2015	Cliffs Landing Rd	Bay Minette	30.8661098	-87.880188	Baldwin County Sheriff's Office	Gunshot	Firearm
OK	Glenn Lewis	37	Male	Black	February	25	2015	2201 NW 27th St	Oklahoma City	35.4976883	-97.5500717	Oklahoma City Police Department	Gunshot	No
FL	Gordon Kimbrell Jr	22	Male	White	April	9	2015	9265 Quail Roost Dr	Navarre	30.4130363	-86.8348923	Santa Rosa County Sheriff's Office	Gunshot	Firearm
IN	Gregory Smith	39	Male	White	March	30	2015	2293 N Main St	Crown Point	41.4479828	-87.371109	Lake County Sheriff's Department	Taser	Firearm
FL	Grover Sapp Jr	45	Male	White	April	18	2015	1200 Beck Ave	Panama City	30.1703529	-85.7008362	Panama City Police Department	Gunshot	Knife
GA	Harry Davis	57	Male	White	May	27	2015	Sparta Hwy and Oconee Springs Rd	Eatonton	33.3434998	-83.2064702	Putnam County Sheriff's Department	Gunshot	No
WV	Harvey Oates	42	Male	White	March	27	2015	Horseshoe Run Rd	Fort Ashby	39.481971	-78.812003	West Virginia State Police	Gunshot	Firearm
OH	Hashim Abdul-Rasheed	41	Male	Black	January	7	2015	4600 International Gateway	Columbus	39.997512	-82.890052	Columbus Police Department	Gunshot	Firearm
CA	Hector Morejon	19	Male	Hispanic/Latino	April	23	2015	1100 Hoffman Ave	Long Beach	33.780946	-118.1735922	Long Beach Police Department	Gunshot	No
OK	Herbert Hill	26	Male	Black	February	6	2015	1000 SW 62nd St	Oklahoma City	35.4030647	-97.5325623	Oklahoma City Police Department	Gunshot	Knife
MS	Howard Brent Means Jr	34	Male	White	February	15	2015	1110 Battleground Dr	Iuka	34.8047029	-88.202415	Iuka Police Department	Gunshot	No
KY	Howard Robbins	69	Male	White	January	16	2015	US-150	Stanford	37.51334	-84.5990601	Stanford Police Department	Struck by vehicle	No
NJ	Hue Dang	64	Female	Asian/Pacific Islander	March	9	2015	E Kennedy St	Hackensack	40.8674316	-74.0377197	Bergen County Prosecutor's Department	Struck by vehicle	No
TX	Hung Trieu	35	Male	Asian/Pacific Islander	February	2	2015	13442 Bellaire Blvd	Houston	29.704109	-95.621871	Harris County Attorney's Department	Gunshot	No
NC	Ian Sherrod	40	Male	Black	February	28	2015	2300 block Main St	Tarboro	35.9069519	-77.5407562	Tarboro Police Department and Edgecombe Sheriff's Office	Gunshot	No
MO	Isaac Holmes	19	Male	Black	January	21	2015	4200 St Louis Ave	St Louis	38.6609879	-90.2338638	St Louis Metropolitan Police Department	Gunshot	Firearm
IL	Isaac Jimenez	27	Male	Hispanic/Latino	April	13	2015	3400 Lincoln Ave	Alton	38.8918839	-90.1335983	Alton Police Department	Gunshot	No
FL	Izzy Colon	37	Male	Hispanic/Latino	February	4	2015	4304 Pershing Pointe Pl	Orlando	28.4995747	-81.3055038	Orlando Police Department	Gunshot	Firearm
MI	Jacob Haglund	17	Male	White	February	2	2015	1600 3rd St	Bay City	43.5996857	-83.8729324	Bay City Police Department	Gunshot	Knife
FL	Jamalis Hall	39	Male	Black	March	27	2015	1000 block Mayflower Rd	Fort Pierce	27.4486504	-80.3266068	Saint Lucie County Sheriff's Office	Gunshot	Firearm
NC	James Allen	74	Male	Black	February	7	2015	2701 Mary Ave	Gastonia	35.2658062	-81.2271642	Gastonia Police Department	Gunshot	Firearm
UT	James Barker	42	Male	White	January	8	2015	600 Second Ave	Salt Lake City	40.7716665	-111.8714082	Salt Lake City Police Department	Gunshot	Firearm
TX	James Bushey	47	Male	White	June	1	2015	2225 Texas Hwy 256 Loop	Palestine	31.774197	-95.6519569	Palestine Police Department	Gunshot	No
SC	James Cooper	43	Male	White	May	20	2015	3271 Dartmouth Dr	Charleston	32.8577843	-80.0776596	North Charleston Police Department	Gunshot	Knife
CO	James Damon	46	Male	White	March	9	2015	US-40	Craig	40.5144005	-107.4890213	Moffat County Sheriff's Office and Colorado Parks and Wildlife Law Enforcement	Gunshot	No
NY	James Ellis	44	Male	White	March	21	2015	New York State Rte 31A	Clarendon	43.1940384	-78.065712	Orleans County Sheriff's Office	Gunshot	Firearm
TN	James Greenwell	31	Male	White	March	11	2015	700 N Auburndale St	Memphis	35.1571117	-90.0000664	Memphis Police Department	Gunshot	Other
MO	James Horn Jr	47	Male	White	May	23	2015	SE 650th Rd	Green Ridge	38.6578484	-93.5117188	Pettis County Sheriff's Office	Gunshot	Firearm
CA	James Jimenez	41	Male	Hispanic/Latino	March	13	2015	1410 Hill Ave	Napa	38.306118	-122.2744522	Napa Police Department	Gunshot	Firearm
OK	James Moore	43	Male	White	March	22	2015	5900 S Lewis Ave	Tulsa	36.0787522	-95.9580338	Tulsa Police Department	Struck by vehicle	Vehicle
OR	James Morris	40	Male	Unknown	May	31	2015	Juanipero Way and La Loma Dr	Medford	42.311009	-122.8316269	Medford Police Department	Gunshot	Non-lethal firearm
CO	James Strong	32	Male	Black	May	28	2015	10900 E 109th Pl	Northglenn	39.8945198	-104.9772263	Northglenn Police Department	Gunshot	Firearm
LA	Jamie Croom	31	Male	Black	March	10	2015	10064 Elm Grove Garden Dr	Baton Rouge	30.5366734	-91.1694337	US Marshals Service	Gunshot	Vehicle
WA	Jamison Childress	20	Male	White	March	19	2015	Kneuman Rd	Sumas	49.0000114	-122.2853775	US Border Patrol	Gunshot	Firearm
NC	Janisha Fonville	20	Female	Black	February	19	2015	Bellefonte Dr	Charlotte	35.2506218	-80.8187485	Charlotte-Mecklenburg Police Department	Gunshot	Firearm
FL	Jared Forsyth	33	Male	White	April	6	2015	11120 NW Gainesville Rd	Ocala	29.3102512	-82.1930542	Ocala Police Department	Gunshot	No
LA	Jared Johnson	22	Male	Black	April	28	2015	8400 Chef Menteur Hwy	New Orleans	30.0135784	-89.988533	New Orleans Police Department	Gunshot	Other
NM	Jason Carter	41	Male	White	February	21	2015	298 Gavilan Canyon Rd	Rudioso	33.3267975	-105.6342545	New Mexico State Police and US Marshals Service	Gunshot	No
NJ	Jason Champion	41	Male	Black	May	6	2015	I-95	Ridgefield Park	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	No
NC	Jason Evans	32	Male	White	April	12	2015	North Carolina Hwy 242 and Reeda Branch Rd	Salemburg	35.0643602	-78.4907397	Sampson County Sheriff's Office	Gunshot	Knife
MD	Jason Hendrix	16	Male	White	February	14	2015	1486 Hyde Park Rd	Essex	39.2983478	-76.4401614	Baltimore County Police Department	Gunshot	Firearm
CA	Jason Moland	29	Male	Black	March	30	2015	3700 Beyer Park Dr	Modesto	37.6910477	-120.9706879	Ceres Police Department	Gunshot	Knife
OH	Jason Smith	42	Male	White	March	20	2015	4604 Summit St	Columbus	40.059024	-82.997337	Columbus Division of Police	Gunshot	Unknown
FL	Javoris Washington	29	Male	Black	May	21	2015	SW 29th Ave and SW 29th Terrace	Fort Lauderdale	26.1071098	-80.1828401	Fort Lauderdale Police Department	Gunshot	Unknown
CA	Jeff Alexander	47	Male	White	March	17	2015	1125 1/2 19th St	Bakersfield	35.376175	-119.0144849	Bakersfield Police Department	Gunshot	Firearm
VA	Jeffery Adkins	53	Male	Black	April	30	2015	200 Elm Rd	Emporia	36.6105907	-77.5013888	Greensville County Sheriff's Office and Virginia State Police	Gunshot	Other
IL	Jeffery Kemp	18	Male	Black	April	17	2015	74th Street and Merrill Ave	Chicago	41.7607203	-87.57246	Chicago Police Department	Gunshot	No
KY	Jeffrey Jackson	47	Male	White	March	22	2015	Kentucky Rte 92	Williamsburg	36.7391205	-84.1332397	Whitley County Sheriff's Department and Kentucky State Police	Death in custody	Firearm
UT	Jeffrey Nielson	34	Male	White	January	14	2015	120 Honey Berry Ct	Draper	40.5398552	-111.8872467	West Valley City Police Department and Draper Police Police Department	Gunshot	No
GA	Jeffrey Pitts	36	Male	White	May	31	2015	3500 Ebenezer Rd	Conyers	33.5961237	-84.0463328	Rockdale County Sheriff's office	Gunshot	Firearm
HI	Jeffrey Surnow	63	Male	White	March	1	2015	Waikoloa Rd	Waikoloa Village	19.915194	-155.831754	Hawaii Police Department	Struck by vehicle	Firearm
FL	Jeremy Anderson	36	Male	White	March	31	2015	1600 Grass Lake Dr	Tampa Bay	28.1022091	-82.4886322	Tampa Bay Police Department [US Marshals Service Task Force]	Gunshot	No
SC	Jeremy Kelly	27	Male	Black	March	25	2015	Dixie St	Johnsonville	33.8190804	-79.4618912	Johnsonville Police Department and Florence County Sheriff's Department (Swat)	Gunshot	Firearm
FL	Jeremy Lett	28	Male	Black	February	5	2015	2400 W Tharpe St	Tallahassee	30.4664764	-84.3292542	Tallahassee Police Department	Gunshot	Vehicle
OH	Jermonte Fletcher	33	Male	Black	January	27	2015	265 Buffalo Ct	Columbus	39.879382	-82.9963372	Columbus Police Department, Ohio State Highway Patrol	Gunshot	No
SC	Jerome Caldwell	32	Male	Black	May	21	2015	83 Beaufain St	Charleston	32.7795741	-79.9380436	South Carolina State Law Enforcement Division	Gunshot	No
PA	Jerome Nichols	42	Male	White	February	23	2015	N Plymouth St	Allentown	40.632019	-75.4338379	Catasauqua Police Department	Gunshot	Knife
PA	Jess Leipold	31	Male	White	April	9	2015	45 Major Bell Ln	Gettysburg	39.8576944	-77.1596814	Pennsylvania State Police	Gunshot	Firearm
CO	Jessica Hernandez	17	Female	Hispanic/Latino	January	26	2015	Newport St & E 25th Ave	Denver	39.7534	-104.9093599	Denver Police Department	Gunshot	Firearm
AZ	Jessica Uribe	28	Female	Unknown	February	28	2015	1113 W St Mary's Rd	Tuscon 	34.2929649	-111.6646957	Tucson Police Department	Gunshot	Firearm
LA	Jessie Williams	24	Male	White	May	26	2015	200 John Wesly Blvd	Bossier City	32.5170212	-93.7078476	FBI	Gunshot	Firearm
AR	Jimmy Foreman	71	Male	Unknown	January	9	2015	422 SE 3rd St	England	34.5426491	-91.9658922	England Police Department	Gunshot	Firearm
TX	Jimmy Robinson Jr	51	Male	Black	February	4	2015	I-35	Waco	31.593082	-97.108858	Waco Police Department	Gunshot	No
AZ	Joaquin Hernandez	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Other
TN	John Acree	53	Male	White	April	30	2015	812 Forest Hills Dr	Nashville	36.0540047	-86.7787399	Nashville Metropolitan Police Department	Gunshot	Firearm
NV	John Allen	54	Male	White	March	30	2015	841 Avenue A	Boulder City	35.9727325	-114.8414688	Boulder City Police Department	Gunshot	No
MS	John Ballard Gorman	45	Male	White	January	21	2015	3468 Casino Way	Robinsonville	34.8307787	-90.32121	Mississippi Gaming Commission	Gunshot	Firearm
FL	John Kaafi	33	Male	White	May	7	2015	8th St and N Orange Ave	Sarasota	27.3431099	-82.5386202	Sarasota Police Department	Unknown	Other
MT	John Marshall	48	Male	White	January	30	2015	Billings Clinic, 2800 10th Ave N	Billings	45.789441	-108.5132285	Billings Police Department	Gunshot	Firearm
NM	John O'Keefe	34	Male	White	January	13	2015	Constitution Ave and San Mateo Blvd	Albuquerque	35.0946403	-106.5861697	Albuquerque Police Department	Gunshot	Firearm
KS	John Quintero	23	Male	Hispanic/Latino	January	3	2015	500 North Oliver Ave	Wichita	37.6939376	-97.2804936	Wichita Police Department	Gunshot	Knife
CA	John Sawyer	35	Male	White	February	5	2015	1200 Calimesa Blvd	Calimesa	33.9951673	-117.0581017	Riverside County Sheriff's Department	Gunshot	Firearm
AK	John Whittaker	33	Male	Hispanic/Latino	February	10	2015	1503 Medfra St	Anchorage	61.2075577	-149.8582001	Anchorage Police Department	Gunshot	Knife
AZ	Johnathon Guillory	32	Male	White	January	18	2015	Greenland Park Dr	Maricopa	33.0835686	-112.0429306	Maricopa Police Department	Gunshot	Firearm
OH	Jonathan Colley	52	Male	White	May	20	2015	2569 Raber Rd	Green	40.9656982	-81.4294357	Summit County Sheriff's Office	Gunshot	Firearm
NY	Jonathan Efraim	30	Male	White	April	22	2015	16802 Hillside Ave	New York	40.7098999	-73.7943573	New York Police Department	Gunshot	No
CA	Jonathan Harden	23	Male	White	February	13	2015	4023 University Pkwy	San Bernadino	34.164711	-117.3321762	San Bernardino Police Department	Gunshot	Firearm
AR	Jonathan McIntosh	35	Male	White	May	19	2015	900 E Main St	Cabot	34.9675325	-92.0081317	Lonoke County Sheriff's Office and Arkansas Department of Community Correction	Gunshot	Knife
TX	Jonathan Paul	42	Male	Black	March	12	2015	300 E Mitchell St	Arlington	32.7282829	-97.1045675	Arlington Police Department	Death in custody	No
FL	Jonathan Pierce	37	Male	White	February	12	2015	Port St Joe Police Station, 410 Williams Ave	Port St Joe	29.812402	-85.301915	Port St Joe Police Department	Gunshot	No
TX	Jose Antonio Espinoza Ruiz	56	Male	Hispanic/Latino	January	23	2015	202 Avenue A	Levelland	33.5913373	-102.3692241	Levelland Police Department	Gunshot	No
CA	Jose Ceja	36	Male	Hispanic/Latino	January	15	2015	2007 Sousa Ct	Fairfield	38.2652893	-121.9976044	Fairfield Police Department	Gunshot	Disputed
CA	Jose Herrera	27	Male	Hispanic/Latino	April	22	2015	3000 W Cecil Ave	Delano	35.7697792	-119.3015518	California Department of Corrections and Rehabilitation	Gunshot	Firearm
WI	Joseph Biegert	30	Male	White	February	24	2015	1500 Plymouth Ln	Green Bay	44.5266283	-88.0578916	Green Bay Police Department	Gunshot	Firearm
IL	Joseph Caffarello	31	Male	White	January	7	2015	6100 Scott St	Rosemont	41.9897374	-87.8759104	Rosemont Police Department	Gunshot	Firearm
FL	Joseph Paffen	46	Male	White	February	8	2015	4501 Hoffner Ave	Orlando	28.4805509	-81.3283666	Orange County Sheriff's Office	Gunshot	Firearm
OK	Joseph Potts	51	Male	White	April	23	2015	182 N4430 Rd	Rufe	34.1277084	-95.156517	Choctaw County Sheriff's Office and Hugo Police Department	Gunshot	Firearm
GA	Joseph Roy	72	Male	Unknown	May	7	2015	2853 Avalon Meadows Ct	Lawrenceville	33.9334145	-84.0869064	Gwinnett County Sheriff's Department	Gunshot	Firearm
CA	Joseph Slater	28	Male	White	April	15	2015	27767 Base Line	Highland	34.1207352	-117.198616	Highland Police Department	Death in custody	Knife
AZ	Joseph Tassinari	63	Male	White	March	24	2015	6600 W Christy Dr	Glendale	33.5838023	-112.2006413	Glendale Police Department	Gunshot	Firearm
CA	Joseph Weber	28	Male	White	April	8	2015	Tasman Dr and Lawrence Expy	Sunnyvale	37.4033102	-121.9956697	Sunnyvale Police Department	Gunshot	Firearm
AZ	Joshua Deysie	33	Male	Hispanic/Latino	April	29	2015	1400 E Harmony Ave	Mesa	33.3896023	-111.8006046	Mesa Police Department	Gunshot	Knife
TX	Joshua Garcia	24	Male	Hispanic/Latino	January	26	2015	2500 FM1054	Tahoka	33.1661153	-101.6661762	Lynn County Sheriff's Office	Gunshot	Knife
IL	Joshua Green	27	Male	White	April	28	2015	1408 W Main St	Marion	37.7308112	-88.9412637	Marion Police Department, Illinois State Police and Williamson County Sheriff's Department	Gunshot	Firearm
AZ	Justin Fowler	24	Male	Native American	March	19	2015	Indian Rte 13	Lukachukai	36.4117088	-109.25	Navajo Police Department	Gunshot	Firearm
MN	Justin Tolkinen	28	Male	White	March	16	2015	400 White Bear Ave	St Paul	44.9535713	-93.0245514	St Paul Police Department	Gunshot	Firearm
FL	Justin Way	28	Male	White	May	11	2015	225 Presidents Cup Way	St Augustine	29.9727812	-81.4809528	St Johns County Sheriff's Office	Gunshot	Firearm
IL	Justus Howell	17	Male	Black	April	4	2015	2300 Gilead Ave	Zion	42.4539375	-87.8439407	Zion Police Department	Gunshot	Firearm
CA	Karen Janks	46	Female	White	April	23	2015	2661 Gravenstein Hwy S	Sebastopol	38.3767128	-122.7918701	Sonoma County Sheriff's Office	Gunshot	Vehicle
NY	Karl Taylor	52	Male	Black	April	14	2015	325 Riverside Dr	Fallsburg	41.7404167	-74.5979552	New York Department of Corrections and Community Supervision	Death in custody	Firearm
CO	Kavonda Payton	39	Male	Black	January	16	2015	138 Del Mar Cir	Aurora	39.7281647	-104.8446426	Aurora Police Department	Gunshot	Vehicle
AZ	Kaylene Stone	49	Female	White	March	18	2015	6735 W Peoria Ave	Peoria 	33.5812721	-112.2033386	Glendale Police Department	Gunshot	Non-lethal firearm
TX	Kelvin Goldston	30	Male	Black	May	11	2015	6024 Wheaton Dr	Fort Worth	32.6606293	-97.3954849	Fort Worth Police Department	Gunshot	No
AZ	Ken Cockerel	51	Male	White	April	3	2015	W Union Hills Dr and N 39th Ave	Phoenix	33.6546099	-112.1431998	Phoenix Police Department	Gunshot	No
FL	Kendre Alston	16	Male	Black	March	19	2015	1800 Helena St	Jacksonville	30.3778403	-81.6836172	Jacksonville Sheriff's Office	Gunshot	Firearm
OK	Kenneth Brown	18	Male	White	January	4	2015	NA	Guthrie	35.8801193	-97.4228592	Oklahoma State Police	Gunshot	Non-lethal firearm
AZ	Kenneth Buck	22	Male	Hispanic/Latino	January	5	2015	E Knox Rd	Chandler	33.3269806	-111.8252487	Chandler Police Department	Gunshot	No
GA	Kenneth Dothard	40	Male	Black	May	28	2015	900 Bankhead Hwy	Carrollton	33.5906563	-85.0489044	Carrolton Police Department	Gunshot	Firearm
ME	Kenneth Kreyssig	61	Male	White	February	10	2015	645 Smyrna Center Rd	Smyrna	46.1598784	-68.1000068	Maine State Troopers and Aroostook County Sheriff's Department	Gunshot	Knife
DE	Kenneth Mathena	52	Male	White	May	2	2015	30 Malvern Ln	Smyrna	39.2800324	-75.6028052	Smyrna Police Department	Gunshot	Firearm
IN	Kent Norman	51	Male	White	February	21	2015	1800 Heather Cir	Indianapolis	39.7927158	-85.9919228	Indianapolis Metropolitan Police Department	Gunshot	Firearm
NJ	Kevin Allen	36	Male	Black	May	29	2015	355 Valley Brook Ave	Lyndhurst	40.8121343	-74.1246445	Lyndhurst Police Department	Gunshot	Firearm
UT	Kevin Norton	36	Male	White	May	3	2015	210 W 300 N	Roosevelt	40.3023154	-109.9969961	Roosevelt Police Department	Gunshot	No
SC	Kimber Key	59	Male	White	April	21	2015	107 White Falls Dr	Columbia	34.0728226	-81.1996384	Lexington County Sheriff's Office	Gunshot	No
TX	Kristiana Coignard	17	Female	White	January	22	2015	Longview Police Department, 302 W Cotton St	Longview	32.49541	-94.746094	Longview Police Department	Gunshot	Firearm
MI	Kyle Baker	18	Male	White	May	28	2015	2800 Longmeadow Dr	Trenton	42.1408048	-83.2159779	Trenton Police Department	Gunshot	No
TX	Larry Hostetter	41	Male	White	February	9	2015	200 Jordan Dr	Nocona	33.78727	-97.7127638	Nocona Police Department	Gunshot	Other
AK	Larry Kobuk	33	Male	Native American	January	28	2015	Corrections Department, 1400 E 4th Ave	Anchorage	61.218408	-149.858016	Anchorage Corrections Department	Death in custody	Knife
FL	Lavall Hall	25	Male	Black	February	15	2015	19157 NW 3rd Ave	Miami Gardens	25.9503192	-80.2074225	Miami Gardens Police Department	Gunshot	Firearm
MO	Ledarius Williams	23	Male	Black	February	3	2015	Minnesota Ave and Meramec St	St Louis	38.5800999	-90.2375297	St Louis Metropolitan Police Department	Gunshot	No
PA	Leslie Sapp III	47	Male	Black	January	6	2015	Redlyn St	Pittsburgh	40.413045	-79.991463	US Marshals Service, Pennsylvania State Police, Allegheny County Sheriff's Office	Gunshot	Firearm
NC	Lester Brown	58	Male	White	March	9	2015	85 Almost Home Rd	Penrose	35.2702599	-82.6380997	North Carolina Alcohol Law Enforcement, Transylvania County Sheriff's Office, Homeland Security	Gunshot	Firearm
OR	Lewis Lembke	47	Male	White	January	2	2015	4505 SW Masters Loop	Aloha	45.4866905	-122.8912506	Washington County Sheriff's Office	Gunshot	No
MD	Lionel Young	34	Male	Black	May	10	2015	950 Nalley Rd	Landover	38.9048424	-76.8766708	Prince George's County Sheriff's Office	Gunshot	Firearm
MT	Loren Simpson	28	Male	White	January	8	2015	3618 White Buffalo Rd	Huntley	45.8630638	-108.3131864	Yellowstone County Sheriff's Office	Gunshot	Firearm
WA	Lorenzo Hayes	37	Male	Black	May	13	2015	N Addison St and E Sanson Ave	Spokane	47.7065501	-117.4032799	Spokane Police Department	Death in custody	No
NY	Louis Becker	87	Male	White	January	14	2015	New York State Rte 23 and Cairo Junction Rd	Catskill	42.262431	-73.9357393	New York State Troopers	Struck by vehicle	Firearm
CO	Lue Vang	39	Male	Asian/Pacific Islander	April	22	2015	4100 Eldorado Springs Dr	Boulder	39.9386327	-105.2570694	Boulder County Sheriff's Office	Gunshot	Firearm
CA	Luis Chavez-Diaz	27	Male	Hispanic/Latino	April	29	2015	1624 Hood Franklin Rd	Elk Grove	38.3685913	-121.4939194	California Department of Fish and Wildlife	Gunshot	Knife
CA	Luis Molina Martinez	35	Male	Hispanic/Latino	April	21	2015	3400 Manitou Ave	Los Angeles	34.0717621	-118.2049866	Los Angeles Police Department	Gunshot	Firearm
IN	Mack Long	36	Male	Black	April	12	2015	E 31st St and N Sherman Dr	Indianapolis	39.8115999	-86.1025699	Indianapolis Metropolitan Police Department	Gunshot	Vehicle
MN	Marcus Golden	24	Male	Black	January	14	2015	261 E University Ave	St Paul	44.9580421	-93.0942535	St Paul Police Department	Gunshot	Vehicle
NE	Marcus Wheeler	26	Male	Black	May	20	2015	3057 Martin Ave	Omaha	41.3234673	-95.9593735	Omaha Police Department	Gunshot	No
VA	Mario Jordan	34	Male	Black	January	14	2015	Sir Gawaine Dr	Chesapeake	36.781304	-76.347865	Chesapeake City Police Department	Gunshot	Firearm
MO	Mark Adair	51	Male	White	April	15	2015	Hitt St and Elm St	Columbia	38.9484698	-92.3255698	Columbia Police Department and University of Missouri Police	Gunshot	Other
OR	Mark Cecil Hawkins	49	Male	White	April	24	2015	1940 Turner Rd SE	Salemburg	44.913921	-122.996177	Salem Police Department	Gunshot	Firearm
IL	Mark Farrar	41	Male	White	May	15	2015	1806 16th Ave	Rockford	42.2503929	-89.0685043	Rockford Police Department	Gunshot	Firearm
OK	Mark Smith	54	Male	White	April	8	2015	W 141st St and 257th W Ave	Kellyville	35.9593201	-96.2797198	Creek County Sheriff's Department and Bristow Police Department	Gunshot	No
CA	Paul Johnson	59	Male	White	February	4	2015	7100 Pine Ave	Chino	33.9534248	-117.6501793	Corona Police Department	Gunshot	No
TN	Markell Atkins	36	Male	Black	February	4	2015	3800 Vernon Ave	Memphis	35.1648337	-89.9334182	Shelby County Sheriff's Department [US Marshals Service Task Force]	Gunshot	Firearm
FL	Markus Clark	26	Male	Black	May	20	2015	600 NW 27th Ave	Fort Lauderdale	26.1292725	-80.1778488	Broward Sheriff's Office	Unknown	Firearm
CA	Matautu Nuu	35	Male	Asian/Pacific Islander	January	28	2015	Martinique Ct	Stockton	38.02911	-121.3156891	Stockton Police Department	Gunshot	Firearm
GA	Matthew Ajibade	22	Male	Black	January	1	2015	1050 Carl Griffin Dr	Savannah	32.0666924	-81.1678772	Chatham County Sheriff's Office	Death in custody	Other
TN	Matthew Belk	27	Male	White	February	13	2015	2420 Terry Rd	Huntingdon	35.9514389	-88.5734558	Carroll County Sheriff's Office	Gunshot	Other
CA	Matthew Coates	42	Male	White	May	16	2015	2010 61st St	Sacramento	38.5515137	-121.4342575	Sacramento Police Department	Gunshot	Firearm
CA	Matthew Hoffman	32	Male	White	January	4	2015	630 Valencia St	San Francisco	37.7628479	-122.4220047	San Francisco Police Department	Gunshot	Other
MI	Matthew Lundy	32	Male	White	February	17	2015	3800 Canfield Rd	Eaton Rapids Township	42.5121727	-84.7003385	Eaton County Sheriff's Office	Gunshot	Other
AZ	Matthew Metz	25	Male	White	March	3	2015	College Ave and Curry Rd	Tempe	33.4402203	-111.9308198	Tempe Police Department	Gunshot	Firearm
CA	Meagan Hockaday	26	Female	Black	March	27	2015	500 W Vineyard Ave	Oxnard	34.2278137	-119.1828842	Oxnard Police Department	Gunshot	No
KY	Michael Asher	53	Male	White	May	4	2015	Doctors Row	Chavies	37.3803482	-83.2437286	Kentucky State Police	Gunshot	No
ID	Michael Casper	26	Male	White	February	16	2015	Malad St and Gourley St	Boise	43.5789295	-116.2223222	Boise Police Department	Gunshot	Knife
KY	Michael Foster	40	Male	White	April	19	2015	105 Hinkle St	Wilmore	37.8669354	-84.6608786	Wilmore Police Department	Gunshot	Non-lethal firearm
NC	Michael Gallagher	55	Male	White	May	10	2015	100 Whitfield St	Enfield	36.1811831	-77.6669817	Enfield Police Department	Taser	Firearm
MO	Michael Goebel	29	Male	White	January	14	2015	600 Spring Dr	Robertsville	38.3187816	-90.7944026	St Louis County Police Department	Gunshot	No
MO	Michael Ireland	31	Male	White	February	18	2015	1400 N Marion Ave	Springfield	37.2242855	-93.3193785	Springfield Police Department	Gunshot	No
HI	Michael Kocher Jr	19	Male	White	January	3	2015	2600 Kaumualii Hwy	Kaumakani	21.9338608	-159.6427002	Kauai Police Department	Struck by vehicle	Knife
CA	Michael Lemon	57	Male	Unknown	April	8	2015	11936 California Rte 178	Lake Isabella	35.6425591	-118.4136963	Kern County Sheriff's Office	Taser	Firearm
PA	Michael Lowrey	40	Male	White	May	22	2015	1534 N Center Ave	Somerset	40.035759	-79.0743942	Pennsylvania State Police	Gunshot	Knife
DE	Michael McKillop	35	Male	White	March	8	2015	Northtowne Plaza Shopping Center	Claymount	39.8179254	-75.4563524	Delaware State Police	Gunshot	Firearm
NY	Michael Murphy	35	Male	White	May	7	2015	I-84	Beacon	41.517724	-73.979344	Beacon Police Department	Gunshot	Firearm
CO	Michael Rodriguez	39	Male	Hispanic/Latino	January	5	2015	818 31st St	Evans	40.3840446	-104.6920242	Evans Police Department	Gunshot	Firearm
GA	Michael Smashey	37	Male	White	February	23	2015	4817 W Mceachern Woods Dr	Powder Springs	33.9112854	-84.6947861	Cobb County Sheriff's Office	Gunshot	No
TX	Miguel Anguel de Santos-Rodriguez	36	Male	Hispanic/Latino	January	21	2015	ChapeÌ_å±o Rd	Roma	26.5522499	-99.1332092	US Border Patrol	Gunshot	Firearm
WA	Millard Tallant III	62	Male	White	May	26	2015	17500 Tester Rd 	Snohomish	47.8377751	-122.0135761	Snohomish County Sheriff's Office	Gunshot	Knife
CA	Monique Deckard	43	Female	Black	March	8	2015	900 S Euclid St	Anaheim	33.8200747	-117.941376	Anaheim Police Department	Gunshot	Firearm
WA	Mychael Lynch	32	Male	White	March	23	2015	707 W 13th St	Vancouver	45.6310601	-122.678255	Clark County Sheriff's Department	Death in custody	Knife
TX	Nadir Soofi	34	Male	Asian/Pacific Islander	May	3	2015	4999 Naaman Forest Blvd	Garland	32.9599406	-96.6389561	Garland Police Department	Gunshot	Vehicle
CO	Naeschylus Vinzant	37	Male	Black	March	6	2015	16200 E 12th Ave	Aurora	39.7354916	-104.7992847	Aurora Police Department	Gunshot	No
VA	Natasha McKenna	37	Female	Black	February	8	2015	Fairfax County Adult Detention Center, 10520 Judicial Dr	Fairfax	38.84399	-77.311132	Fairfax County Sheriff's Office	Taser	No
LA	Nathan Massey	33	Male	White	January	15	2015	Becky Sue St	Ville Platte	30.751305	-92.437994	Evangeline Parish Sheriff's Office	Gunshot	Knife
OK	Nehemiah Fischer	35	Male	White	May	29	2015	Hectorville Rd and Bixby Rd	Mounds	35.84183	-95.8906098	Oklahoma Highway Patrol	Gunshot	No
MA	Neil Seifert	40	Male	White	March	27	2015	N Main St	Webster	42.0585899	-71.8781281	Webster Police Department	Gunshot	No
CA	Nephi Arriguin	21	Male	Black	May	7	2015	17200 Pires Ave	Cerritos	33.8749829	-118.0503535	Los Angeles County Sheriff's Department	Gunshot	Firearm
IA	Nicholas Brickman	30	Male	White	January	7	2015	SE 4th St and Scott Ave	Des Moines	41.5810397	-93.609646	Des Moines Police Department	Gunshot	Firearm
GA	Nicholas Thomas	23	Male	Black	March	24	2015	2475 Cumberland Pkwy SE	Atlanta	33.86441	-84.477958	Smyrna Police Department	Gunshot	Knife
AZ	Nicolas Tewa	26	Male	Native American	January	27	2015	4130 N Black Canyon Hwy	Phoenix	33.4962463	-112.1153488	Phoenix Police Department	Gunshot	No
WY	Nikki Burtsfield	39	Female	White	May	20	2015	N Garner Lake Rd and Vaquero Ave	Gillette	44.3019303	-105.4499397	Campbell County Sheriff's Office	Gunshot	Firearm
TX	Norman Cooper	33	Male	Black	April	19	2015	4800 Legend Well Dr	San Antonio	29.5922401	-98.4028975	San Antonio Police Department	Taser	Vehicle
NJ	Nuwnah Laroche	34	Female	Black	May	6	2015	I-95	Ridgefield Park	40.86306	-74.0112915	New Jersey State Police	Struck by vehicle	Firearm
LA	Omarr Jackson	37	Male	Black	January	8	2015	Lasalle St and Josephine St	New Orleans	29.9412498	-90.0852399	New Orleans Police Department	Gunshot	Firearm
CO	Orlando Lopez	26	Male	Hispanic/Latino	January	25	2015	Troy Ave and Oakshire Ln	Pueblo	38.2854206	-104.573478	Pueblo Police Department	Gunshot	Firearm
CA	Pablo Meza	24	Male	Hispanic/Latino	January	17	2015	E 6th St and Mateo St	Los Angeles	34.0383897	-118.2327244	Los Angeles Police Department	Gunshot	No
CA	Patrick Wetter	25	Male	White	January	6	2015	800 Howard St	Stockton	37.9297473	-121.2981304	Stockton Police Department	Gunshot	Other
CA	Paul Anderson	31	Male	Black	April	4	2015	150 E Lincoln Ave	Anaheim	33.8366709	-117.9137003	Anaheim Police Department	Gunshot	Knife
MA	Paul Campbell	49	Male	White	January	19	2015	69 Prospect Hill Dr	Weymouth	42.2566948	-70.9316177	Weymouth Police Department	Gunshot	Firearm
TX	Pedro 'Pete' Juan Saldivar	50	Male	Hispanic/Latino	February	17	2015	US-90 and Charles Dr	Del Rio	29.3685202	-100.8305995	Del Rio Police Department and Val Verde County Sheriff's Office	Gunshot	No
CA	Philip Conley	37	Male	White	March	21	2015	904 Admiral Callaghan Ln	Vallejo	38.1320534	-122.2226868	Vallejo Police Department	Gunshot	Firearm
SC	Phillip Burgess	28	Male	White	April	9	2015	477 Belcher Rd	Boiling Springs	35.022747	-82.0061417	Spartanburg County Sheriff's Office	Gunshot	Other
TX	Phillip Garcia	26	Male	Hispanic/Latino	January	16	2015	12810 Gulf Fwy	Houston	29.6131928	-95.2134526	Houston Police Department	Gunshot	Firearm
CA	Phillip Watkins	23	Male	Black	February	11	2015	1300 Sherman St	San Jose	37.316599	-121.8759895	San Jose Police Department	Gunshot	Firearm
NJ	Phillip White	32	Male	Black	March	31	2015	118 W Grape St	Vineland	39.4848213	-75.0345688	Vineland Police Department	Death in custody	Firearm
MN	Quincy Reed Reindl	24	Male	White	January	15	2015	Nesbitt Ave S and 99th St W	Bloomington	44.8254901	-93.35841	Bloomington Police Department	Gunshot	Knife
OK	Ralph Willis	42	Male	White	January	29	2015	604 E Maple Ave	Stillwater	36.1211052	-97.0501251	Stillwater Police Department	Gunshot	Firearm
KS	Randall Torrence	34	Male	White	May	27	2015	1225 Quindaro Blvd	Kansas City	39.1362457	-94.6423798	Kansas City KS Police Department	Taser	Firearm
MN	Raymond Kmetz	68	Male	White	January	26	2015	4401 Xylon Ave N	Minneapolis	45.035038	-93.3867416	Minneapolis Police Department	Gunshot	Other
TX	Reginald McGregor	31	Male	Black	April	21	2015	200 North Retta St	Fort Worth	32.7670361	-97.3038536	Fort Worth Police Department	Gunshot	Firearm
OK	Richard 'Buddy' Weaver	83	Male	White	April	12	2015	Sleepy Hollow Dr and Misty Glen Dr	Newalla	35.3752202	-97.1720599	Oklahoma City Police Department	Gunshot	No
PA	Richard Carlin	35	Male	White	February	13	2015	414 Rehr St	Reading	40.3287582	-75.9080353	Pennsylvania State Police	Gunshot	Firearm
TX	Richard Castilleja	29	Male	Hispanic/Latino	March	14	2015	2615 Mossrock	San Antonio	29.5134506	-98.53582	San Antonio Police Department	Gunshot	Firearm
NY	Richard Davis	50	Male	Black	May	31	2015	Tremont St and Morgan St	Rochester	43.1478502	-77.6309502	Rochester Police Department	Taser	Firearm
CA	Richard Hanna	56	Male	Unknown	April	6	2015	400 Steuber Rd	Tehachapi	35.1274796	-118.4139481	Tehachapi Police Department	Gunshot	Firearm
TX	Richard McClendon	43	Male	White	January	13	2015	600 Olive St	Jourdanton	28.91159	-98.5429517	Jourdanton Police Department	Gunshot	Firearm
KS	Richard Reed	38	Male	White	April	10	2015	SW Wanamaker Rd and I-70	Topeka	39.0536007	-95.7618132	Topeka Police Department	Gunshot	Firearm
LA	Richard White	63	Male	Black	March	20	2015	Louis Armstrong New Orleans International Airport, 900 Airline Dr	Kenner	29.9859313	-90.2577119	Jefferson Parish Sheriff's Office	Gunshot	Disputed
MD	Ricky Hall	27	Male	Black	March	30	2015	NA	Fort Meade	39.1066513	-76.7348022	NSA Police Department	Gunshot	Firearm
WA	Roark Cook	36	Male	White	May	4	2015	3320 W 9th Ave	Kennewick	46.2013702	-119.1680069	Kennewick Police Department/Tri-City Swat Team	Gunshot	Firearm
OR	Robert Box	55	Male	White	May	29	2015	108 Fir Canyon Rd	Grants Pass	42.3600731	-123.4464111	Oregon State Police	Gunshot	Knife
CA	Robert Burdge	36	Male	White	March	19	2015	200 Trask St	Bakersfield	35.3536224	-119.3315506	Bakersfield Police Department (Swat)	Gunshot	Firearm
TX	Robert Edwards	68	Male	White	January	14	2015	500 Sycamore St	Lake Jackson	29.0344224	-95.4281493	Lake Jackson Police Department	Gunshot	No
TX	Robert Francis Mesch	61	Male	White	January	23	2015	120 W Slaughter Ln	Austin	30.1676178	-97.7891617	Austin Police Department	Gunshot	No
VA	Robert Frost	46	Male	White	May	5	2015	1847 Bob White Blvd	Pulaski	37.0585149	-80.7449909	Pulaski Police Department	Gunshot	No
LA	Robert Kohl	47	Male	White	February	23	2015	175 Bass Pro Blvd	Denham Springs	30.4504135	-90.9602784	Denham Springs Police Department	Gunshot	Firearm
OH	Robert Rooker	26	Male	White	March	29	2015	Fields Hollow Rd	Peebles	39.083271	-83.2555466	Pike County Sheriff's Department	Gunshot	Vehicle
CA	Robert Washington	37	Male	Black	April	1	2015	14200 Kornblum Ave	Hawthorne	33.9017922	-118.3373257	Hawthorne Police Department	Gunshot	No
CA	Roberto Leon	22	Male	Hispanic/Latino	March	17	2015	Elkhorn Blvd and Dry Creek Rd	Rio Linda	38.6837699	-121.4383999	California Highway Patrol	Gunshot	Knife
FL	Roberto Ornelas	18	Male	Hispanic/Latino	January	1	2015	39 N Marlin Ave	Key Largo	25.1559029	-80.3902588	Monroe County Sheriff's Office	Unknown	Knife
CA	Roberto Rodriguez	39	Male	Hispanic/Latino	April	8	2015	4th St and Mathews St	Los Angeles	34.0401299	-118.2106698	Los Angeles Police Department	Gunshot	No
MS	Rodney Biggs	49	Male	White	February	26	2015	US-49 and Middle Driveway	Gulfport	30.4247537	-89.0925243	Gulfport Police Department	Gunshot	Other
OK	Rodney Walker	23	Male	Black	January	16	2015	W 11th St	Tulsa	36.1459389	-95.9928436	Department of Veteran Affairs	Gunshot	Firearm
CA	Rodolfo Velazquez	47	Male	Hispanic/Latino	April	16	2015	West Lerdo Hwy and South Wall St	Shafter	35.4998598	-119.28055	Shafter Police Department	Gunshot	Firearm
TX	Ronald Sneed	32	Male	Black	January	7	2015	300 Yaupon St	Freeport	28.9552215	-95.3685641	Freeport Police Department	Gunshot	Knife
IL	Ronell Wade	45	Male	Black	May	17	2015	15746 Union Ave	Harvey	41.6037641	-87.6340616	Harvey Police Department	Gunshot	No
TX	Roy Day	51	Male	White	February	14	2015	Gale St	Laredo	27.554155	-99.478091	Laredo Police Department	Gunshot	Knife
TX	RubÌ_å©n GarcÌ__a Villalpando	31	Male	Hispanic/Latino	February	20	2015	2500 Texas Hwy 121	Euless	32.8722464	-97.0993902	Grapevine Police Department	Gunshot	Vehicle
WA	Russell Sharrer	54	Male	White	February	27	2015	1016 N 4th Ave	Pasco	46.2375755	-119.0959167	Franklin County Corrections Division	Death in custody	Firearm
AZ	Ryan Burgess	31	Male	White	March	11	2015	2241 Lucille Ave	Kingman	35.2040901	-114.0249939	Kingman Police Department	Gunshot	Firearm
CA	Salome Rodriguez Jr	23	Male	Hispanic/Latino	March	13	2015	184 W 3rd St	Pomona	34.056838	-117.7509385	Los Angeles Police Department	Gunshot	Knife
NV	Salvador Figueroa	29	Male	Hispanic/Latino	January	11	2015	Circle K, 1301 N Eastern Ave	Las Vegas	36.18512	-115.116428	North Las Vegas Police Department	Gunshot	No
AZ	Salvador Muna	28	Male	Hispanic/Latino	February	4	2015	E Baseline Rd and S 48th St	Phoenix	33.3781938	-111.978452	Tempe, Chandler and Mesa Police Departments [US Marshals Service Task Force]	Gunshot	Firearm
MN	Sam Holmes	31	Male	Black	May	8	2015	University Ave NE and I-694	Fridley	45.0686548	-93.2634647	Lino Lakes Police Department	Gunshot	No
TX	Santos 'Cuate' Cortez Hernandez	24	Male	Hispanic/Latino	April	20	2015	NA	Mission	26.2153301	-98.3257904	Hidalgo County Sheriff's Office	Gunshot	Firearm
TX	Sawyer Flache	27	Male	White	February	8	2015	Texas Hwy 71 and Silvermine Dr	Austin	30.2470483	-97.8883914	Austin Police Department	Gunshot	No
CA	Scott Dunham	57	Male	White	March	24	2015	2600 Senter Rd	San Jose	37.3052139	-121.8414917	San Jose Police Department	Gunshot	Firearm
NJ	Scott McAllister	39	Male	Unknown	May	27	2015	33 Bayside Pkwy	Middletown	40.4439697	-74.1128845	Monmouth County Emergency Response Team	Gunshot	Non-lethal firearm
MI	Sean Pelletier	38	Male	White	May	14	2015	6095 Anna's Ln	Portage	42.2294236	-85.640723	Michigan State Police, Kalamazoo County Sheriff's Office and Portage Police Department	Gunshot	Firearm
CA	Sergio Navas	34	Male	Hispanic/Latino	March	5	2015	N Pass Ave and W National Ave	Burbank	34.1510618	-118.3435524	Los Angeles Police Department	Gunshot	Firearm
AL	Shane Watkins	39	Male	White	March	19	2015	1040 County Rd 249	Moulton	34.5668413	-87.2866505	Lawrence County Sheriff's Office	Gunshot	Other
IL	Shaquille Barrow	20	Male	Black	March	2	2015	Richards St	Joliet	41.525211	-88.074195	Joliet Police Department	Gunshot	Firearm
AZ	Shaun Johnson	35	Male	White	May	8	2015	59705 E Bidegain Pl	Kearny	33.0784683	-110.9232864	Pinal County Sheriff's Office	Gunshot	No
NJ	Shawn Clyde	36	Male	White	April	1	2015	110 Nottinghill Ln	Hamilton Township	40.216132	-74.7106603	Hamilton Police Department	Gunshot	Firearm
HI	Sheldon Haleck	38	Male	Asian/Pacific Islander	March	16	2015	364 S King St	Honolulu	21.3065129	-157.8598659	Honolulu Police Department	Taser	No
CA	Simon Hubble	33	Male	White	May	27	2015	3600 Emmanuel Way	Alpine	32.750515	-116.7029652	San Diego County Sheriff's Department	Gunshot	Firearm
MN	Sinthanouxay Khottavongsa	57	Male	Asian/Pacific Islander	January	16	2015	5900 Xerxes Ave N	Minneapolis	45.0622444	-93.3187485	Brooklyn Center Police Department	Taser	Firearm
AL	Stanley Grant	38	Male	Black	February	20	2015	2200 Green Springs Hwy	Birmingham	33.4814291	-86.8241706	Homewood Police Department	Gunshot	Firearm
CO	Stanley Watson	72	Male	White	April	15	2015	3120 East Main St	CaÌ_å±on City	38.4461021	-105.1917953	CaÌ_å±on City Police Department	Gunshot	Firearm
AZ	Stephanie Hill	37	Female	White	February	28	2015	I-10	La Paz County	32.230201	-110.982089	Riverside County Sheriff's Department	Gunshot	No
WA	Stephen Cunningham	47	Male	White	May	11	2015	3420 S Proctor St	Tacoma	47.2285385	-122.4888763	Tacoma Police Department	Gunshot	Knife
MS	Steven Davenport	43	Male	White	April	21	2015	Old Hwy 19 SE	Meridian	32.3308716	-88.5660095	Lauderdale County Sheriff's Office	Taser	No
WI	Steven Snyder	37	Male	White	March	24	2015	760 W Johnson St	Fond du Lac	43.7826881	-88.4753418	Wisconsin State Police	Gunshot	Firearm
NJ	Talbot Schroeder	75	Male	White	January	14	2015	40 Cedar Grove Pl	Old Bridge Township	40.4052734	-74.3010178	Old Bridge Police Department	Gunshot	Knife
OK	Terence Walker	21	Male	Black	January	17	2015	Old Agency Baptist Church	Muskogee	35.766201	-95.3946991	Muskogee Police Department	Gunshot	Firearm
MI	Terrance Kellom	20	Male	Black	April	27	2015	9500 Evergreen Rd	Detroit	42.3648081	-83.2359631	Immigration and Customs Enforcement	Gunshot	Firearm
OH	Terrance Moxley	29	Male	Black	March	10	2015	280 N Main St	Mansfield	40.766098	-82.5142975	Mansfield Police Department	Taser	Firearm
MD	Terry Garnett Jr	37	Male	Black	March	11	2015	Augustine Herman Hwy & E Lewis Shore Rd	Elkton	39.5735002	-75.8158102	Cecil County Sheriff's Office	Gunshot	Knife
OK	Terry Price	41	Male	Black	February	21	2015	951 West 36th St N	Tulsa	36.2059747	-96.0020301	Osage Nation Police Department	Taser	Firearm
FL	Tevin Barkley	22	Male	Black	April	15	2015	800 NW 75th St	Miami	25.8430748	-80.2112122	Miami-Dade Police Department	Gunshot	Knife
MO	Thaddeus McCarroll	23	Male	Black	April	17	2015	9200 Riverwood Dr	Jennings	38.7234116	-90.2447968	St Louis County Police Department	Gunshot	Knife
OH	Theodore Johnson	64	Male	Black	March	10	2015	6902 Ottawa Rd	Cleveland	41.4501534	-81.6409378	Cleveland Division of Police	Gunshot	No
MO	Thomas Allen Jr	34	Male	Black	March	1	2015	Morton Ave and Chatham Ave	St Louis	38.6732101	-90.2913402	Wellston Police Department	Gunshot	Firearm
UT	Thomas Hamby	49	Male	White	January	8	2015	2964 W 2125 S	Syracuse	41.0832634	-112.0831375	Syracuse Police Department, Davis County Sheriff's Office	Gunshot	Firearm
CA	Thong Kien Ma	32	Male	Asian/Pacific Islander	May	5	2015	10400 Enloe St	South El Monte	34.0536053	-118.0453592	Los Angeles County Sheriff's Department	Gunshot	Knife
TX	Tiano Meton	25	Male	Black	January	22	2015	I-10	Sierra Blanca	31.172832	-105.357927	US Border Patrol	Gunshot	Other
NE	Tiffany Terry	39	Female	White	January	30	2015	1702 S 50th St	Omaha	41.2427368	-95.9904175	Omaha Police Department	Gunshot	Firearm
WA	Tim Elliott	53	Male	Unknown	January	2	2015	600 E Island Lake Dr	Shelton	47.2465324	-123.1194992	Mason County Sheriff's Office	Gunshot	Non-lethal firearm
NM	Timothy Jones	27	Male	White	May	17	2015	111 Otero Dr	Ruidoso	33.3575249	-105.6732559	Ruidoso Police Department	Gunshot	Firearm
CA	Todd Allen Hodge	36	Male	White	January	21	2015	40200 Clark Dr	Hemet	33.7417183	-116.9542389	Riverside County Sheriff's Department	Gunshot	Firearm
CO	Todd Jamal Dye	20	Male	Black	April	24	2015	1505 E Main St	Trinidad	37.1747471	-104.4915234	Trinidad Police Department	Gunshot	Firearm
IL	Tommy Smith	39	Male	White	January	12	2015	224 Circle Dr	Arcola	39.691962	-88.3028705	Tuscola Police Department	Gunshot	Firearm
WI	Tony Robinson	19	Male	Black	March	6	2015	1125 Williamson St	Madison	43.0824051	-89.3650055	Madison Police Department	Gunshot	Firearm
TX	Tony Ross	34	Male	White	March	6	2015	Lamar St and Whitworth St	Sulphur Springs	33.1287286	-95.5938203	Sulphur Springs Police Department	Taser	Knife
MS	Troy Boyd	36	Male	White	March	15	2015	McEwien Swamp Rd	Ruth	31.3249302	-90.3153381	Pike County Sheriff's Office	Gunshot	Firearm
OK	Tyrel Vick	34	Male	White	March	20	2015	Oklahoma Hwy 48 and E1750 Rd	Wapanucka	34.476518	-96.4245157	Oklahoma Highway Patrol and Tupelo Police Department	Gunshot	Firearm
ID	Tyrell Larsen	31	Male	White	April	6	2015	E 100 N	Rigby	43.6411095	-111.7173996	Jefferson County Sheriff Department	Gunshot	No
WI	Tyrone Ryerson	45	Male	Black	March	5	2015	468 E Plainfield Ave	Milwaukee	42.9687729	-87.9034882	Milwaukee Police Department	Gunshot	Non-lethal firearm
NE	Tyson Hubbard	34	Male	White	March	5	2015	27th St and Fletcher Ave	Lincoln	40.8747297	-96.6818701	US Marshals Service	Gunshot	Unknown
TX	Unknown	Unknown	Male	Unknown	January	16	2015	Co Rd 2718	Mabank	32.4071388	-96.0738907	Texas Rangers/ ATF	Gunshot	Other
TX	Unknown	Unknown	Female	Unknown	May	25	2015	6505 Shirley Ave	Austin	32.4071388	-96.0738907	Austin Police Department	Gunshot	Knife
NY	Unknown	Unknown	Male	White	June	1	2015	271 Greece Ridge Center Dr	Rochester	32.4071388	-96.0738907	New York State Police, Monroe County Sheriff's Department and Gates Police Department	Gunshot	Firearm
TX	Victor Reyes	31	Male	Hispanic/Latino	January	31	2015	West Little York Rd	Houston	29.865415	-95.524052	Houston County Sheriff's Department	Gunshot	No
CA	Victor Terrazas	28	Male	Hispanic/Latino	March	25	2015	10200 S Vermont Ave	Los Angeles	33.9436035	-118.2912674	Los Angeles County Sheriff's Department	Gunshot	Firearm
NY	Vincent Cordaro	57	Male	White	February	9	2015	N Little Tor Rd	New City	41.1689186	-74.0044327	Clarkstown Police Department	Gunshot	Firearm
VA	Walter Brown III	29	Male	Black	March	24	2015	19 Colin Drive S	Portsmouth	36.8185692	-76.3703384	Portsmouth Police Department	Gunshot	Other
SC	Walter Scott	50	Male	Black	April	4	2015	1945 Remount Rd	North Charleston	32.8991127	-80.0138016	North Charleston Police Department	Gunshot	Knife
TX	Wendell King	40	Male	White	January	29	2015	4800 Hildring Dr E	Forth Worth	32.6786003	-97.3807373	Fort Worth Police Department	Gunshot	Unknown
TX	Wilber Castillo-Gongora	35	Male	Hispanic/Latino	February	5	2015	US-287	Electra	34.044584	-98.931198	Wichita County Sheriff's Office	Taser	Unknown
AL	William 'Rusty' Smith	53	Male	White	March	10	2015	700 Valley St	Hoover	33.4149311	-86.8515567	Hoover Police Department	Gunshot	No
NJ	William Campbell	59	Male	Unknown	January	25	2015	335 New Brooklyn Rd	Berlin	39.7491188	-74.929306	Winslow Police Department	Gunshot	Non-lethal firearm
VA	William Chapman II	18	Male	Black	April	22	2015	1098 Frederick Blvd	Portsmouth	36.8290138	-76.3414383	Portsmouth Police Department	Gunshot	No
WA	William Dick III	28	Male	Native American	April	4	2015	Bureau of Indian Affairs Rd 66	Tonasket	48.7085419	-119.4368286	US Forest Service 	Taser	Firearm
NC	William Poole	52	Male	White	March	16	2015	130 Wedowee Ln	Gaston	35.205776	-81.240669	Gaston County Police Department	Gunshot	Firearm
CA	Yuvette Henderson	38	Female	Black	February	3	2015	3800 Hollis St	Oakland	37.8271294	-122.2844925	Emeryville Police Department	Gunshot	Firearm
CA	Zaki Shinwary	48	Male	Unknown	January	16	2015	Lake Arrowhead Ave and Great Salt Lake Dr	Fremont	37.5864713	-122.0600103	Fremont Police Department	Gunshot	Firearm
\.


--
-- PostgreSQL database dump complete
--

