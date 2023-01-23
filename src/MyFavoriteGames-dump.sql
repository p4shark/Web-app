--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    capture character varying,
    description character varying,
    image character varying,
    screenshots integer,
    genre integer
);


ALTER TABLE public.games OWNER TO postgres;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    genre character varying
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games (id, capture, description, image, screenshots, genre) FROM stdin;
1	DOTA 2	Dota 2 - Самая популярная игра в SteamЕжедневно миллионы игроков по всему миру сражаются от лица одного из более сотни героев Dota 2, и даже после тысячи часов в ней есть чему научиться. Благодаря регулярным обновлениям игра живёт своей жизнью: геймплей, возможности и герои постоянно преображаются.Одно поле боя, неиссякаемые возможностиИгра может похвастаться бесконечным разнообразием героев, способностей и предметов, благодаря чему каждый матч уникален. 	dota2.jpg	\N	1
6	The Witcher 3: Wild hunt	Ты - Геральт из Ривии, наемный убийца монстров. Перед вами раздираемый войной, кишащий монстрами континент, который вы можете исследовать по своему желанию. Ваш текущий контракт? Выслеживание Цири — Дитя Пророчества, живого оружия, способного изменить облик мира.	Witcher3.jpg	\N	5
2	Hollow Knight	Hollow Knight – это эпическое приключение в огромном разрушенном королевстве, полном насекомых и героев. Исследуйте извилистые пещеры, сражайтесь с порчеными тварями и заводите дружбу со странными жуками – все это в классической двухмерной ручной рисовке\n\n	HK.jpg	\N	2
8	Machinarium	Machinarium – это отмеченная наградами независимая приключенческая игра, разработанная творцами игр Samorost и Botanicula. Помоги роботу Йозефу спасти его подругу Берту, похищенную бандитами из Братства Черных Шляп	Machinarium.jpg	\N	4
5	Portal 2	В Portal 2 вы откроете для себя инновационный геймплей, сюжет и музыку, которая помогла оригиналу заработать более 70 наград в игровой индустрии, а также создала целый культ имени самой себя.	Portal2.jpg	\N	4
9	METRO: Exodus	Метро: Исход» – новый сюжетный шутер от компании 4A Games, в котором открытый бой и стелс сочетаются с выживанием и исследованием одного из самых атмосферных игровых миров в истории	MExodus.jpg	\N	6
4	Portal	Portal™ — новая игра от Valve для одного игрока. Portal, действие которого происходит в загадочных лабораториях компании Aperture, был назван одной из самых новаторских игр современности и предлагает вниманию игрока множество часов непохожей ни на что головоломки.	Portal.jpg	\N	4
3	Don't Starve	Don't Starve - бескомпромиссная игра на выживание в дикой природе, полная науки и магии. Войдите в странный и неизведанный мир, полный странных существ, опасностей и сюрпризов. ... Собирайте ресурсы для создания предметов и сооружений, соответствующих вашему стилю выживания	DS.jpg	\N	3
7	The Elder Scrolls V: Skyrim	The Elder Scrolls 5: Skyrim — это ролевая игра с элементами экшена в открытом мире. Была разработана и выпущена компанией Bethesda для PS3, Xbox 360 и PC 11 ноября 2011 года. Является пятой игрой в серии The Elder Scrolls, развила события игровой вселенной, предложила новые игровые механики и возможности, как для серии, так и для жанра RPG.	Skyrim.jpg	\N	5
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (id, genre) FROM stdin;
1	MOBA
2	Souls Like
3	Survival
4	Puzzle
5	RPG
6	Action
\.


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

