--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.16
-- Dumped by pg_dump version 9.1.16
-- Started on 2016-09-02 23:51:13

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 319 (class 1259 OID 26793)
-- Dependencies: 6
-- Name: ies; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ies (
    id_ies integer NOT NULL,
    no_ies text NOT NULL,
    sigla_ies text NOT NULL
);


ALTER TABLE public.ies OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 26785)
-- Dependencies: 319 6
-- Name: ies_id_ies_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ies_id_ies_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ies_id_ies_seq OWNER TO postgres;

--
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 318
-- Name: ies_id_ies_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ies_id_ies_seq OWNED BY ies.id_ies;


--
-- TOC entry 326 (class 1259 OID 26832)
-- Dependencies: 6
-- Name: site_areas_conhecimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_areas_conhecimento (
    cod_grande_area integer NOT NULL,
    cod_area integer NOT NULL,
    nome_area text
);


ALTER TABLE public.site_areas_conhecimento OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 26838)
-- Dependencies: 6 326
-- Name: site_areas_conhecimento_cod_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_areas_conhecimento_cod_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_areas_conhecimento_cod_area_seq OWNER TO postgres;

--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 327
-- Name: site_areas_conhecimento_cod_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_areas_conhecimento_cod_area_seq OWNED BY site_areas_conhecimento.cod_area;


--
-- TOC entry 328 (class 1259 OID 26840)
-- Dependencies: 326 6
-- Name: site_areas_conhecimento_cod_grande_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_areas_conhecimento_cod_grande_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_areas_conhecimento_cod_grande_area_seq OWNER TO postgres;

--
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 328
-- Name: site_areas_conhecimento_cod_grande_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_areas_conhecimento_cod_grande_area_seq OWNED BY site_areas_conhecimento.cod_grande_area;


--
-- TOC entry 315 (class 1259 OID 26700)
-- Dependencies: 6
-- Name: site_avaliadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_avaliadores (
    id integer NOT NULL,
    nome text,
    cpf text,
    titulacao text,
    lattes text,
    criado_em date,
    area text,
    email text
);


ALTER TABLE public.site_avaliadores OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 26706)
-- Dependencies: 315 6
-- Name: site_auditores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_auditores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_auditores_id_seq OWNER TO postgres;

--
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 316
-- Name: site_auditores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_auditores_id_seq OWNED BY site_avaliadores.id;


--
-- TOC entry 320 (class 1259 OID 26801)
-- Dependencies: 6
-- Name: site_especialidades; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_especialidades (
    cod_sub_area integer NOT NULL,
    cod_especialidade integer NOT NULL,
    nome_especialidade text
);


ALTER TABLE public.site_especialidades OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 26807)
-- Dependencies: 6 320
-- Name: site_especialidades_cod_especialidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_especialidades_cod_especialidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_especialidades_cod_especialidade_seq OWNER TO postgres;

--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 321
-- Name: site_especialidades_cod_especialidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_especialidades_cod_especialidade_seq OWNED BY site_especialidades.cod_especialidade;


--
-- TOC entry 322 (class 1259 OID 26809)
-- Dependencies: 6 320
-- Name: site_especialidades_cod_sub_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_especialidades_cod_sub_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_especialidades_cod_sub_area_seq OWNER TO postgres;

--
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 322
-- Name: site_especialidades_cod_sub_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_especialidades_cod_sub_area_seq OWNED BY site_especialidades.cod_sub_area;


--
-- TOC entry 329 (class 1259 OID 26842)
-- Dependencies: 6
-- Name: site_grandes_areas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_grandes_areas (
    cod_area integer NOT NULL,
    nome_area text
);


ALTER TABLE public.site_grandes_areas OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 26848)
-- Dependencies: 329 6
-- Name: site_grandes_areas_cod_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_grandes_areas_cod_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_grandes_areas_cod_area_seq OWNER TO postgres;

--
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 330
-- Name: site_grandes_areas_cod_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_grandes_areas_cod_area_seq OWNED BY site_grandes_areas.cod_area;


--
-- TOC entry 323 (class 1259 OID 26816)
-- Dependencies: 6
-- Name: site_sub_areas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_sub_areas (
    cod_area integer NOT NULL,
    cod_sub_area integer NOT NULL,
    nome_sub_area text
);


ALTER TABLE public.site_sub_areas OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 26822)
-- Dependencies: 6 323
-- Name: site_sub_areas_cod_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_sub_areas_cod_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_sub_areas_cod_area_seq OWNER TO postgres;

--
-- TOC entry 2389 (class 0 OID 0)
-- Dependencies: 324
-- Name: site_sub_areas_cod_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_sub_areas_cod_area_seq OWNED BY site_sub_areas.cod_area;


--
-- TOC entry 325 (class 1259 OID 26824)
-- Dependencies: 6 323
-- Name: site_sub_areas_cod_sub_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_sub_areas_cod_sub_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_sub_areas_cod_sub_area_seq OWNER TO postgres;

--
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 325
-- Name: site_sub_areas_cod_sub_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_sub_areas_cod_sub_area_seq OWNED BY site_sub_areas.cod_sub_area;


--
-- TOC entry 2246 (class 2604 OID 26799)
-- Dependencies: 319 318 319
-- Name: id_ies; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ies ALTER COLUMN id_ies SET DEFAULT nextval('ies_id_ies_seq'::regclass);


--
-- TOC entry 2251 (class 2604 OID 26850)
-- Dependencies: 328 326
-- Name: cod_grande_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_areas_conhecimento ALTER COLUMN cod_grande_area SET DEFAULT nextval('site_areas_conhecimento_cod_grande_area_seq'::regclass);


--
-- TOC entry 2252 (class 2604 OID 26851)
-- Dependencies: 327 326
-- Name: cod_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_areas_conhecimento ALTER COLUMN cod_area SET DEFAULT nextval('site_areas_conhecimento_cod_area_seq'::regclass);


--
-- TOC entry 2245 (class 2604 OID 26852)
-- Dependencies: 316 315
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_avaliadores ALTER COLUMN id SET DEFAULT nextval('site_auditores_id_seq'::regclass);


--
-- TOC entry 2247 (class 2604 OID 26853)
-- Dependencies: 322 320
-- Name: cod_sub_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_especialidades ALTER COLUMN cod_sub_area SET DEFAULT nextval('site_especialidades_cod_sub_area_seq'::regclass);


--
-- TOC entry 2248 (class 2604 OID 26854)
-- Dependencies: 321 320
-- Name: cod_especialidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_especialidades ALTER COLUMN cod_especialidade SET DEFAULT nextval('site_especialidades_cod_especialidade_seq'::regclass);


--
-- TOC entry 2253 (class 2604 OID 26855)
-- Dependencies: 330 329
-- Name: cod_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_grandes_areas ALTER COLUMN cod_area SET DEFAULT nextval('site_grandes_areas_cod_area_seq'::regclass);


--
-- TOC entry 2249 (class 2604 OID 26856)
-- Dependencies: 324 323
-- Name: cod_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_sub_areas ALTER COLUMN cod_area SET DEFAULT nextval('site_sub_areas_cod_area_seq'::regclass);


--
-- TOC entry 2250 (class 2604 OID 26857)
-- Dependencies: 325 323
-- Name: cod_sub_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_sub_areas ALTER COLUMN cod_sub_area SET DEFAULT nextval('site_sub_areas_cod_sub_area_seq'::regclass);


--
-- TOC entry 2366 (class 0 OID 26793)
-- Dependencies: 319 2378
-- Data for Name: ies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (17, 'UNIVERSIDADE FEDERAL DE UBERLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (18, 'UNIVERSIDADE CATÓLICA DE PELOTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (19, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (20, 'UNIVERSIDADE DE PASSO FUNDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (21, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (22, 'UNIVERSIDADE PRESBITERIANA MACKENZIE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (23, 'UNIVERSIDADE FEEVALE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (24, 'UNIVERSIDADE ESTADUAL DE SANTA CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (26, 'UNIVERSIDADE VALE DO RIO VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (27, 'UNIVERSIDADE ESTADUAL DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (28, 'UNIVERSIDADE JOSÉ DO ROSÁRIO VELLANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (29, 'CENTRO DE EDUCAÇÃO TÉCNICA DA UTRAMIG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (73, 'CENTRO UNIVERSITÁRIO DE ARARAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (31, 'FACULDADE DE TECNOLOGIA DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (32, 'FACULDADE DE TECNOLOGIA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (33, 'FACULDADE DE TECNOLOGIA DE AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (35, 'FACULDADE DE TECNOLOGIA DE JAHU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (36, 'UNIVERSIDADE DO ESTADO DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (37, 'UNIVERSIDADE DO ESTADO DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (38, 'FUNDAÇÃO UNIVERSIDADE DO ESTADO DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (39, 'FACULDADE ESTADUAL DE CIÊNCIAS ECONÔMICAS DE APUCARANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (40, 'UNIVERSIDADE ESTADUAL DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (41, 'UNIVERSIDADE ESTADUAL DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (42, 'UNIVERSIDADE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (43, 'UNIVERSIDADE ESTADUAL PAULISTA JÚLIO DE MESQUITA FILHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (44, 'UNIVERSIDADE ESTADUAL DE MARINGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (45, 'FACULDADE DE DIREITO DE SÃO BERNARDO DO CAMPO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (46, 'FACULDADE DE DIREITO DE FRANCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (47, 'CENTRO UNIVERSITÁRIO DE FRANCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (49, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE PENÁPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (50, 'UNIVERSIDADE DO ESTADO DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (51, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DA MATA SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (52, 'CENTRO DE ENSINO SUPERIOR DE ARCOVERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (53, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE SÃO JOSÉ DO RIO PARDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (55, 'UNIVERSIDADE REGIONAL DE BLUMENAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (56, 'FACULDADE DA REGIÃO DOS LAGOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (57, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (58, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE CATANDUVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (59, 'CENTRO UNIVERSITÁRIO PARA O DESENVOLVIMENTO DO ALTO VALE DO ITAJAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (60, 'UNIVERSIDADE DA REGIÃO DE JOINVILLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (61, 'UNIVERSIDADE DO OESTE DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (62, 'UNIVERSIDADE DO VALE DO ITAJAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (63, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE MACAÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (64, 'CENTRO UNIVERSITÁRIO DE BRUSQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (65, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE PENEDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (66, 'FACULDADE DE MEDICINA DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (67, 'ESCOLA SUPERIOR DE EDUCAÇÃO FÍSICA DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (68, 'UNIVERSIDADE ESTADUAL DO VALE DO ACARAÚ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (69, 'FACULDADE DE DIREITO DE CONSELHEIRO LAFAIETE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (70, 'UNIVERSIDADE FEDERAL DE SÃO JOÃO DEL REI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (71, 'FACULDADES INTEGRADAS RUI BARBOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (72, 'CENTRO UNIVERSITÁRIO DE ARARAQUARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (81, 'FACULDADE DE DIREITO DE VARGINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (75, 'FACULDADE DE EDUCAÇÃO FÍSICA DE BARRA BONITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (76, 'CENTRO UNIVERSITÁRIO CLARETIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (77, 'UNIVERSIDADE DO SAGRADO CORAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (78, 'CENTRO UNIVERSITÁRIO BARÃO DE MAUÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (79, 'FACULDADE DE CIÊNCIAS ECONÔMICAS DO TRIÂNGULO MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (80, 'UNIVERSIDADE SEVERINO SOMBRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (82, 'CENTRO UNIVERSITÁRIO DO TRIÂNGULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (83, 'UNIVERSIDADE DE UBERABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (84, 'FACULDADE DE CIÊNCIAS HUMANAS DE OLINDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (85, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (86, 'CENTRO UNIVERSITÁRIO DE RIO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (87, 'FACULDADE DE MEDICINA DE SÃO JOSÉ DO RIO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (88, 'UNIVERSIDADE DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (90, 'FACULDADE DE CIÊNCIAS CONTÁBEIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (91, 'CONSERVATÓRIO BRASILEIRO DE MÚSICA - CENTRO UNIVERSITÁRIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (92, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE CARUARU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (93, 'FACULDADE FRASSINETTI DO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (94, 'CENTRO UNIVERSITÁRIO ASSUNÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (95, 'CENTRO UNIVERSITÁRIO BELAS ARTES DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (96, 'UNIVERSIDADE ESTÁCIO DE SÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (97, 'UNIVERSIDADE VEIGA DE ALMEIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (98, 'FAI - CENTRO DE ENSINO SUPERIOR EM GESTÃO, TECNOLOGIA E EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (99, 'UNIVERSIDADE METODISTA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (100, 'FACULDADES DA FUNDAÇÃO DE ENSINO DE MOCOCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (101, 'FACULDADE DE DIREITO DO SUL DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (30, 'UNIVERSIDADE ESTADUAL DE CIÊNCIAS DA SAÚDE DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2, 'UNIVERSIDADE DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (4, 'UNIVERSIDADE FEDERAL DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (5, 'UNIVERSIDADE FEDERAL DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (6, 'UNIVERSIDADE FEDERAL DE OURO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (7, 'UNIVERSIDADE FEDERAL DE SÃO CARLOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (8, 'UNIVERSIDADE FEDERAL DE VIÇOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (9, 'UNIVERSIDADE ESTADUAL DE LONDRINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (11, 'UNIVERSIDADE CATÓLICA DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (12, 'UNIVERSIDADE FEDERAL DO RIO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (13, 'UNIVERSIDADE DE CAXIAS DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (15, 'UNIVERSIDADE CATÓLICA DE PETRÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (16, 'UNIVERSIDADE GAMA FILHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (116, 'CENTRO UNIVERSITÁRIO MOURA LACERDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (117, 'UNIVERSIDADE DE RIBEIRÃO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (118, 'CENTRO UNIVERSITÁRIO FECAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (120, 'UNIVERSIDADE DO GRANDE ABC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (121, 'CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (122, 'CENTRO UNIVERSITÁRIO DAS FACULDADES ASSOCIADAS DE ENSINO - FAE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (233, 'CENTRO UNIVERSITÁRIO LUTERANO DE PALMAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (123, 'FACULDADE DE EDUCAÇÃO CIÊNCIAS E ARTES DOM BOSCO DE MONTE APRAZÍVEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (124, 'FACULDADE SÃO JUDAS TADEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (125, 'UNIVERSIDADE CRUZEIRO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (126, 'CENTRO UNIVERSITÁRIO DE VOTUPORANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (127, 'FACULDADE DE MEDICINA DO ABC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (128, 'INSTITUTO DE ENSINO SUPERIOR SANTO ANDRÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (129, 'CENTRO UNIVERSITÁRIO LUSÍADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (130, 'UNIVERSIDADE CATÓLICA DE SANTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (132, 'FACULDADES OSWALDO CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (133, 'UNIVERSIDADE SANTA ÚRSULA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (135, 'FACULDADE DO CLUBE NÁUTICO MOGIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (136, 'CENTRO UNIVERSITÁRIO FIEO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (137, 'CENTRO UNIVERSITÁRIO CAPITAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (138, 'FACULDADE DE ENGENHARIA E AGRIMENSURA DE PIRASSUNUNGA - FEAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (139, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE PIRAJU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (140, 'FACULDADES INTEGRADAS CAMPOS SALLES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (141, 'FACULDADES INTEGRADAS DE OURINHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (142, 'UNIVERSIDADE METODISTA DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (144, 'FACULDADE DE DIREITO DA ALTA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (145, 'FACULDADE FACCAT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (146, 'FACULDADES ESEFAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (147, 'UNIVERSIDADE DO OESTE PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (148, 'UNIVERSIDADE DO VALE DO PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (149, 'FACULDADE DE DIREITO DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (150, 'CENTRO UNIVERSITÁRIO AUGUSTO MOTTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (151, 'FACULDADES INTEGRADAS SIMONSEN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (152, 'FACULDADES INTEGRADAS HÉLIO ALONSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (153, 'FACULDADE DE MEDICINA DE ITAJUBÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (154, 'FACULDADE DE DIREITO DO VALE DO RIO DOCE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (155, 'FACULDADE TRÊS DE MAIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (156, 'UNIVERSIDADE DE SANTA CRUZ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (158, 'UNIVERSIDADE NORTE DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (159, 'FACULDADE DE JANDAIA DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (160, 'FACULDADE DE CIÊNCIAS ECONÔMICAS, ADMINISTRATIVAS E CONTÁBEIS DE DIVINÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (161, 'FACULDADE DE MEDICINA DE BARBACENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (162, 'UNIVERSIDADE PRESIDENTE ANTÔNIO CARLOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (163, 'UNIVERSIDADE NOVE DE JULHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (164, 'UNIVERSIDADE CAMILO CASTELO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (165, 'UNIVERSIDADE PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (166, 'UNIVERSIDADE IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (167, 'FACULDADE MACHADO SOBRINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (169, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (170, 'FACULDADE SANTA EMÍLIA DE RODAT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (171, 'CENTRO UNIVERSITÁRIO NEWTON PAIVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (172, 'CENTRO UNIVERSITÁRIO UNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (173, 'ESCOLA DE ENGENHARIA KENNEDY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (174, 'INSTITUTO SUPERIOR DE CIÊNCIAS APLICADAS - ISCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (175, 'CENTRO UNIVERSITÁRIO DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (176, 'FACULDADE DE CIÊNCIAS MÉDICAS DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (177, 'CENTRO UNIVERSITÁRIO DE JOÃO PESSOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (178, 'FACULDADE EVANGÉLICA DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (179, 'UNIVERSIDADE TUIUTI DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (181, 'FACULDADE PAULISTA DE SERVIÇO SOCIAL DE SÃO CAETANO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (182, 'FACULDADE PAULISTA DE SERVIÇO SOCIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (183, 'FACULDADE MOZARTEUM DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (184, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE PONTE NOVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (185, 'UNIVERSIDADE ESTADUAL DE MONTES CLAROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (187, 'FACULDADE PAULISTA DE ARTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (188, 'FACULDADE DE MÚSICA CARLOS GOMES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (189, 'FACULDADE DE BIBLIOTECONOMIA E CIÊNCIA DA INFORMAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (190, 'ESCOLA DE SOCIOLOGIA E POLÍTICA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (191, 'CENTRO UNIVERSITÁRIO DAS FACULDADES METROPOLITANAS UNIDAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (192, 'UNIVERSIDADE DE SANTO AMARO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (193, 'CENTRO UNIVERSITÁRIO ANHANGUERA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (194, 'UNIVERSIDADE DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (195, 'CENTRO UNIVERSITÁRIO DE ANÁPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (196, 'UNIVERSIDADE SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (197, 'CENTRO UNIVERSITÁRIO DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (198, 'UNIVERSIDADE CATÓLICA DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (199, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE LUCÉLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (200, 'FACULDADE RUY BARBOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (201, 'UNIVERSIDADE TIRADENTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (202, 'ESCOLA DE ENGENHARIA DE AGRIMENSURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (203, 'CENTRO UNIVERSITÁRIO DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (204, 'UNIVERSIDADE CATÓLICA DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (131, 'FACULDADE DE SÃO BERNARDO DO CAMPO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (105, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS SOUZA MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (106, 'FACULDADE DE ENGENHARIA SOUZA MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (107, 'ESCOLA DE ENFERMAGEM DA FUNDAÇÃO TÉCNICO EDUCACIONAL SOUZA MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (108, 'FACULDADE MORAES JÚNIOR - MACKENZIE RIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (109, 'FACULDADE DE EDUCAÇÃO SUPERIOR DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (110, 'CENTRO UNIVERSITÁRIO DA CIDADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (111, 'FACULDADE CÁSPER LÍBERO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (112, 'FACULDADE BRASILEIRA DE CIÊNCIAS JURÍDICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (113, 'FACULDADE DE ECONOMIA E FINANÇAS DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (114, 'UNIVERSIDADE SÃO JUDAS TADEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (115, 'CENTRO UNIVERSITÁRIO ÍTALO-BRASILEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (219, 'FACULDADE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (220, 'FACULDADE SANTA MARCELINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (221, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS SANTA MARCELINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (222, 'UNIVERSIDADE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (223, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE ITUVERAVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (224, 'FACULDADE DOUTOR FRANCISCO MAEDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (225, 'FACULDADE DE DIREITO DE ITÚ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (226, 'UNIVERSIDADE DO CONTESTADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (227, 'UNIVERSIDADE DE CRUZ ALTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (229, 'UNIVERSIDADE LUTERANA DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (230, 'CENTRO UNIVERSITÁRIO LUTERANO DE JI-PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (231, 'CENTRO UNIVERSITÁRIO LUTERANO DE SANTARÉM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (232, 'CENTRO UNIVERSITÁRIO LUTERANO DE MANAUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (234, 'FACULDADE CAMAQÜENSE DE CIÊNCIAS CONTÁBEIS E ADMINISTRATIVAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (236, 'CENTRO UNIVERSITÁRIO SANT´ANNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (237, 'UNIVERSIDADE BANDEIRANTE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (238, 'UNIVERSIDADE IBIRAPUERA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (239, 'FACULDADE DE ARTES PLÁSTICAS DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (241, 'FACULDADE DE ENGENHARIA DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (242, 'FACULDADE DE COMUNICAÇÃO E MARKETING DA - FUNDAÇÃO ARMANDO ÁLVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (243, 'FACULDADE DE ECONOMIA DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (245, 'UNIVERSIDADE ANHEMBI MORUMBI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (246, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE ITAPETININGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (247, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE ITAPETININGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (248, 'UNIVERSIDADE DO GRANDE RIO PROFESSOR JOSÉ DE SOUZA HERDY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (250, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (251, 'FACULDADE DE MEDICINA DE PETRÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (252, 'CENTRO UNIVERSITÁRIO SERRA DOS ÓRGÃOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (253, 'UNIVERSIDADE GUARULHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (254, 'UNIVERSIDADE DO EXTREMO SUL CATARINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (255, 'CENTRO UNIVERSITÁRIO METROPOLITANO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (256, 'CENTRO UNIVERSITÁRIO DE VOLTA REDONDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (257, 'CENTRO DE ENSINO SUPERIOR DE VALENÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (258, 'FACULDADE DE EDUCAÇÃO CIÊNCIAS E LETRAS DON DOMÊNICO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (259, 'FACULDADE DE ADMINISTRAÇÃO CIÊNCIAS ECON E CONTÁBEIS DE GUARATINGUETÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (260, 'FACULDADE DE EDUCAÇÃO DE GUARATINGUETÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (261, 'UNIVERSIDADE DO SUL DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (262, 'FACULDADE DE CIÊNCIAS E LETRAS DE BRAGANÇA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (263, 'UNIVERSIDADE DE FRANCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (264, 'ESCOLA SUPERIOR DE CIÊNCIAS DA SANTA CASA DE MISERICÓRDIA DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (265, 'CENTRO UNIVERSITÁRIO MONTE SERRAT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (266, 'FACULDADE DE MEDICINA DE CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (267, 'FACULDADE TRIÂNGULO MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (269, 'FACULDADES INTEGRADAS DE CRUZEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (270, 'ESCOLA DE ENFERMAGEM WENCESLAU BRAZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (271, 'UNIVERSIDADE VALE DO RIO DOCE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (272, 'CENTRO UNIVERSITÁRIO DE BARRA MANSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (273, 'CENTRO UNIVERSITÁRIO PLÍNIO LEITE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (274, 'CENTRO UNIVERSITÁRIO MOACYR SREDER BASTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (275, 'FACULDADE DE EDUCAÇÃO SÃO LUÍS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (276, 'CENTRO UNIVERSITÁRIO DO DISTRITO FEDERAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (277, 'UNIVERSIDADE CATÓLICA DO SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (278, 'UNIVERSIDADE DE MOGI DAS CRUZES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (279, 'CENTRO UNIVERSITÁRIO CELSO LISBOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (280, 'UNIVERSIDADE BRAZ CUBAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (281, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (282, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (283, 'FACULDADE DE MÚSICA DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (284, 'UNIVERSIDADE REGIONAL DO NOROESTE DO ESTADO DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (285, 'FACULDADES INTEGRADAS DE ITAPETININGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (286, 'ESCOLA BAHIANA DE MEDICINA E SAÚDE PÚBLICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (288, 'FACULDADE DE CIÊNCIAS DA FUNDAÇÃO INSTITUTO TECNOLÓGICO DE OSASCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (289, 'FACULDADE DE CIÊNCIAS HUMANAS DE ITABIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (290, 'FACULDADE DE CIÊNCIAS ADMINISTRATIVAS E CONTÁBEIS DE ITABIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (291, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (292, 'UNIVERSIDADE DO ESTADO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (293, 'UNIVERSIDADE FEDERAL DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (294, 'UNIVERSIDADE FEDERAL DO ACRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (295, 'UNIVERSIDADE ESTADUAL DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (296, 'UNIVERSIDADE DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (297, 'CONSERVATÓRIO DE MÚSICA DE NITERÓI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (298, 'ESCOLA DE MÚSICA E BELAS ARTES DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (299, 'FACULDADE DE ARTES DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (300, 'UNIVERSIDADE ESTADUAL DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (301, 'UNIVERSIDADE FEDERAL DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (206, 'FOCCA - FACULDADE DE OLINDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (207, 'ESCOLA SUPERIOR DE RELAÇÕES PÚBLICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (208, 'UNIVERSIDADE DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (209, 'FACULDADE DE CIÊNCIAS HUMANAS ESUDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (211, 'FACULDADE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (212, 'UNIVERSIDADE CIDADE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (213, 'UNIVERSIDADE DE MARÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (214, 'FACULDADE ESTADUAL DE CIÊNCIAS E LETRAS DE CAMPO MOURÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (215, 'UNIVERSIDADE REGIONAL INTEGRADA DO ALTO URUGUAI E DAS MISSÕES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (216, 'CENTRO UNIVERSITÁRIO FRANCISCANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (217, 'CENTRO UNIVERSITÁRIO FILADÉLFIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (218, 'FACULDADE DE MEDICINA DE MARÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (244, 'FACULDADE DE COMPUTAÇÃO E INFORMÁTICA DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (316, 'UNIVERSIDADE FEDERAL DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (317, 'UNIVERSIDADE FEDERAL DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (319, 'UNIVERSIDADE FEDERAL RURAL DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (320, 'UNIVERSIDADE TECNOLÓGICA FEDERAL DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (321, 'UNIVERSIDADE FEDERAL RURAL DO SEMI-ÁRIDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (322, 'UNIVERSIDADE FEDERAL RURAL DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (323, 'UNIVERSIDADE FEDERAL DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (324, 'UNIVERSIDADE FEDERAL DE LAVRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (326, 'CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (327, 'UNIVERSIDADE FEDERAL DE ALFENAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (328, 'UNIVERSIDADE FEDERAL DOS VALES DO JEQUITINHONHA E MUCURI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (329, 'UNIVERSIDADE FEDERAL DO TRIÂNGULO MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (330, 'UNIVERSIDADE FEDERAL DE ITAJUBÁ - UNIFEI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (331, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (332, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (333, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (334, 'INSTITUTO TECNOLÓGICO DE AERONÁUTICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (335, 'UNIVERSIDADE MUNICIPAL DE SÃO CAETANO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (336, 'FACULDADE DE DIREITO DE CACHOEIRO DO ITAPEMIRIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (338, 'ESCOLA SUPERIOR DE CRUZEIRO "PREFEITO HAMILTON VIEIRA MENDES"
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (339, 'UNIVERSIDADE ESTADUAL DO OESTE DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (340, 'CENTRO UNIVERSITÁRIO METODISTA BENNETT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (341, 'FACULDADE DE FILOSOFIA SANTA DOROTÉIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (343, 'CENTRO DE ESTUDOS SUPERIORES DE MACEIÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (344, 'FACULDADES INTEGRADAS SILVA E SOUZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (345, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS CARLOS QUEIROZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (346, 'FACULDADE CENECISTA DE CAPIVARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (347, 'FACULDADE CENECISTA DE OSÓRIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (348, 'FACULDADE CENECISTA DE VARGINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (349, 'CENTRO DE ENSINO SUPERIOR CENECISTA DE FARROUPILHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (350, 'INSTITUTO MILITAR DE ENGENHARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (351, 'UNIVERSIDADE FEDERAL DE PELOTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (352, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (353, 'FACULDADE DE ENGENHARIA SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (354, 'FACULDADE DE DIREITO MILTON CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (355, 'FACULDADES INTEGRADAS MARIA THEREZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (356, 'CENTRO UNIVERSITÁRIO LA SALLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (357, 'CENTRO UNIVERSITÁRIO DE JARAGUÁ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (358, 'FACULDADE DE ENFERMAGEM LUIZA DE MARILLAC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (374, 'UNIVERSIDADE ANHANGUERA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (360, 'CENTRO UNIVERSITÁRIO DE UNIÃO DA VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (362, 'FACULDADE DE ADMINISTRAÇÃO DE GOVERNADOR VALADARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (363, 'FACULDADE SANTA CECÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (364, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE SERRA TALHADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (365, 'FACULDADES INTEGRADAS CORAÇÃO DE JESUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (366, 'UNIVERSIDADE SALGADO DE OLIVEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (367, 'CENTRO UNIVERSITÁRIO VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (368, 'UNIVERSIDADE DE TAUBATÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (369, 'UNIVERSIDADE ESTADUAL DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (370, 'FACULDADES INTEGRADAS DE JACAREPAGUÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (371, 'CENTRO UNIVERSITÁRIO DE ENSINO SUPERIOR DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (372, 'UNIVERSIDADE NILTON LINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (373, 'UNIVERSIDADE SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (375, 'FACULDADE DE ENGENHARIA DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (376, 'CENTRO UNIVERSITÁRIO DA GRANDE DOURADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (377, 'CENTRO DE ENSINO SUPERIOR DO VALE SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (378, 'FACULDADE DE REABILITAÇÃO DA ASCE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (379, 'FACULDADES INTEGRADAS DE PEDRO LEOPOLDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (380, 'FACULDADE DO NOROESTE DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (382, 'FACULDADE DE CIÊNCIAS APLICADAS DE LIMOEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (383, 'FACULDADE ESTADUAL DE FILOSOFIA CIÊNCIAS LETRAS UNIÃO DA VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (384, 'UNIVERSIDADE ESTADUAL DO SUDOESTE DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (385, 'FACULDADE DE CIÊNCIAS APLICADAS E SOCIAIS DE PETROLINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (386, 'UNIVERSIDADE FEDERAL DO ESTADO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (387, 'UNIVERSIDADE FEDERAL DE MATO GROSSO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (388, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DE RONDÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (389, 'FACULDADE DE CIÊNCIAS DA ADMINISTRAÇÃO DE GARANHUNS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (390, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE GOIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (391, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE ARARIPINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (392, 'FACULDADE DE CIÊNCIAS AGRÁRIAS DE ARARIPINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (393, 'FACULDADE SÃO JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (394, 'FACULDADE DE ARTES DULCINA DE MORAES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (396, 'FACULDADE BÉTHENCOURT DA SILVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (397, 'CENTRO UNIVERSITÁRIO HERMÍNIO DA SILVEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (398, 'CENTRO UNIVERSITÁRIO FRANCISCANO DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (399, 'FACULDADES INTEGRADAS DE BOTUCATU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (359, 'FACULDADES ASSOCIADAS DE UBERABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (303, 'UNIVERSIDADE FEDERAL DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (304, 'UNIVERSIDADE FEDERAL FLUMINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (306, 'UNIVERSIDADE FEDERAL RURAL DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (307, 'UNIVERSIDADE FEDERAL DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (308, 'UNIVERSIDADE FEDERAL DE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (309, 'UNIVERSIDADE FEDERAL DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (310, 'UNIVERSIDADE FEDERAL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (311, 'UNIVERSIDADE FEDERAL DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (312, 'UNIVERSIDADE FEDERAL DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (313, 'UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (314, 'UNIVERSIDADE FEDERAL DE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (315, 'UNIVERSIDADE FEDERAL DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (414, 'CENTRO UNIVERSITÁRIO SÃO CAMILO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (415, 'FACULDADES INTEGRADAS TERESA D´ÁVILA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (416, 'CENTRO UNIVERSITÁRIO SÃO CAMILO - ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (417, 'ESCOLA SUPERIOR DE ENSINO HELENA ANTIPOFF
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (418, 'FACULDADE DE EDUCAÇÃO E CIÊNCIAS HUMANAS DE ANICUNS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (419, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE SÃO MANUEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (420, 'UNIVERSIDADE REGIONAL DO CARIRI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (422, 'CENTRO UNIVERSITÁRIO UNIRG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (423, 'FACULDADE DE PARÁ DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (424, 'FACULDADE DE CIÊNCIAS HUMANAS DO SERTÃO CENTRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (425, 'CENTRO DE ENSINO SUPERIOR DE CATALÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (426, 'CENTRO DE ENSINO SUPERIOR DE JATAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (427, 'UNIVERSIDADE ESTADUAL DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (428, 'FACULDADES INTEGRADAS DO TAPAJÓS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (429, 'FACULDADE DE CIÊNCIAS MÉDICAS E PARAMÉDICAS FLUMINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (430, 'FACULDADE DE CIÊNCIAS HUMANAS DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (431, 'FACULDADES SPEI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (432, 'INSTITUTO UNIFICADO DE ENSINO SUPERIOR OBJETIVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (433, 'FACULDADE PINHEIRO GUIMARÃES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (434, 'FACULDADES INTEGRADAS DE NAVIRAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (436, 'FACULDADE ALVORADA DE EDUCAÇÃO FÍSICA E DESPORTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (437, 'FACULDADE DE EDUCAÇÃO THEREZA PORTO MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (438, 'FACULDADE DE TECNOLOGIA THEREZA PORTO MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (439, 'FACULDADE DE PONTA PORÃ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (440, 'UNIVERSIDADE DE CUIABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (441, 'FACULDADE ANHANGUERA DE RONDONÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (442, 'FACULDADE DE EDUCAÇÃO DE TANGARÁ DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (443, 'FACULDADE DE RONDÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (444, 'UNIVERSIDADE FEDERAL DE RORAIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (445, 'FACULDADE DE ENFERMAGEM DO HOSPITAL ISRAELITA ALBERT EINSTEIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (446, 'CENTRO UNIVERSITÁRIO DO ESTADO DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (448, 'CENTRO UNIVERSITÁRIO DE VÁRZEA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (449, 'FACULDADES INTEGRADAS DE DIAMANTINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (450, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DO VALE DO SÃO LOURENÇO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (451, 'FACULDADE AVEC DE VILHENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (452, 'FACULDADE DE ARACRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (453, 'FACULDADE MONTENEGRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (454, 'CENTRO UNIVERSITÁRIO CARIOCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (455, 'FACULDADE INTERAÇÃO AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (456, 'FACULDADE DE DIREITO E CIÊNCIAS SOCIAIS DO LESTE DE MINAS - FADILESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (457, 'CENTRO TÉCNICO-EDUCACIONAL SUPERIOR DO OESTE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (458, 'FACULDADES INTEGRADAS DE CASSILÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (459, 'ESCOLA SUPERIOR DE ESTUDOS EMPRESARIAIS E INFORMÁTICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (460, 'CENTRO UNIVERSITÁRIO DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (461, 'FACULDADE DE FILOSOFIA E CIÊNCIAS HUMANAS DE GOIATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (462, 'FACULDADE PRESBITERIANA GAMMON
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (464, 'FACULDADE DE SÃO LOURENÇO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (465, 'UNIVERSIDADE DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (466, 'UNIVERSIDADE FEDERAL DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (467, 'FACULDADE DE CIÊNCIAS HUMANAS DO VALE DO RIO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (468, 'FACULDADE DE CIÊNCIAS ADMINISTRATIVAS DE CURVELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (469, 'FACULDADES INTEGRADAS DE ARIQUEMES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (470, 'FACULDADE DE CIÊNCIAS HUMANAS DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (471, 'FACULDADE DE CIÊNCIAS TECNOLÓGICAS DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (472, 'FACULDADE VITORIANA DE CIÊNCIAS CONTÁBEIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (473, 'FACULDADE VITORIANA DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (474, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE BIRIGUI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (476, 'FACULDADE DA FUNDAÇÃO EDUCACIONAL ARAÇATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (477, 'FACULDADE DE ADMINISTRAÇÃO DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (478, 'FACULDADE PIAUIENSE DE PROCESSAMENTO DE DADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (479, 'FACULDADE PARAIBANA DE PROCESSAMENTO DE DADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (480, 'FACULDADE JESUÍTA DE FILOSOFIA E TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (481, 'FACULDADE DE INFORMÁTICA E ADMINISTRAÇÃO PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (482, 'CENTRO DE ENSINO SUPERIOR DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (483, 'FACULDADE ESTÁCIO DE SÁ DE CAMPO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (484, 'FACULDADE DE INFORMÁTICA DE CUIABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (485, 'FACULDADES UNIFICADAS DE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (486, 'FACULDADE DE ESTUDOS SOCIAIS APLICADOS DE VIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (487, 'FACULDADE DE ECONOMIA E PROCESSAMENTO DE DADOS DE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (488, 'CENTRO UNIVERSITÁRIO DO LESTE DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (489, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (491, 'FACULDADE DE HORTOLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (492, 'ESCOLA DE GOVERNO PROFESSOR PAULO NEVES DE CARVALHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (493, 'FACULDADE ANHANGUERA DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (494, 'FACULDADE DE CIÊNCIAS ECONÔMICAS E ADMINISTRATIVAS SANTA RITA DE CÁSSIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (495, 'FACULDADE DE CIÊNCIAS ADMINISTRATIVAS E DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (496, 'FACULDADE ESCOLA PAULISTA DE DIREITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (401, 'UNIVERSIDADE POTIGUAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (402, 'UNIVERSIDADE DO ESTADO DE MATO GROSSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (403, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS APLICADAS DO CABO DE SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (404, 'FACULDADE DE EDUCAÇÃO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (405, 'ESCOLA DE EDUCAÇÃO FÍSICA DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (406, 'FACULDADE DE ADMINISTRAÇÃO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (408, 'FACULDADE ESTADUAL DE FILOSOFIA, CIÊNCIAS E LETRAS DE PARANAGUÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (409, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DO ALTO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (410, 'FACULDADE DE CIÊNCIAS HUMANAS DE CURVELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (411, 'UNIVERSIDADE ESTADUAL DE PONTA GROSSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (412, 'FACULDADES INTEGRADAS MARIA IMACULADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (413, 'FACULDADE PITÁGORAS DE LINHARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (511, 'FACULDADE CATÓLICA DE ANÁPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (512, 'FACULDADES MAGSUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (513, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (514, 'INSTITUTO DE CIÊNCIAS SOCIAIS E HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (515, 'UNIÃO DE ENSINO SUPERIOR DE NOVA MUTUM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (516, 'UNIVERSIDADE SANTA CECÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (517, 'UNIVERSIDADE METROPOLITANA DE SANTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (518, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (520, 'FACULDADE DE LUCÉLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (521, 'FACULDADES INTEGRADAS DE PONTA PORÃ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (522, 'FACULDADE SÃO CAMILO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (523, 'FACULDADE PRUDENTE DE MORAES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (524, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO DE RUBIATABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (525, 'FACULDADE DE EDUCAÇÃO E CULTURA MONTESSORI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (526, 'ESCOLA SUPERIOR EM MEIO AMBIENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (527, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE CONGONHAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (528, 'FACULDADE SENAI-CETIQT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (529, 'FACULDADE FLAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (530, 'CENTRO UNIVERSITáRIO DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (532, 'FACULDADE SUDOESTE PAULISTANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (547, 'UNIÃO DAS FACULDADES DOS GRANDES LAGOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (534, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE UNAÍ - FACTU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (535, 'FACULDADE DE CIÊNCIAS DE TIMBAÚBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (536, 'UNIVERSIDADE ESTADUAL DO NORTE FLUMINENSE DARCY RIBEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (537, 'UNIVERSIDADE ESTADUAL DE MATO GROSSO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (538, 'FACULDADE DE ECONOMIA E FINANÇAS IBMEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (539, 'CENTRO UNIVERSITÁRIO SALESIANO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (540, 'UNIÃO DE ESCOLAS SUPERIORES DA FUNESO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (541, 'UNIVERSIDADE DO ESTADO DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (542, 'FACULDADES INTEGRADAS DE TRÊS LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (543, 'CENTRO UNIVERSITÁRIO UNIVATES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (544, 'UNIVERSIDADE POSITIVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (546, 'CENTRO UNIVERSITÁRIO ANHANGÜERA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (553, 'CENTRO UNIVERSITáRIO ESTáCIO DA BAHIA', 'FIB
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (548, 'FACULDADE CAMPOS ELÍSEOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (549, 'INSTITUTO DE ENSINO SUPERIOR FUCAPI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (550, 'FACULDADE DE CIÊNCIAS CONTÁBEIS - MACEIÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (551, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (552, 'FACULDADE MAURÍCIO DE NASSAU DE SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (554, 'FACULDADE LOURENÇO FILHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (556, 'FACULDADE BATISTA DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (557, 'FACULDADE BATISTA DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (558, 'FACULDADE DE CIÊNCIAS ECONÔMICAS E ADMINISTRATIVAS DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (559, 'INSTITUTO DE ENSINO E PESQUISA OBJETIVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (560, 'FACULDADE DE JUSSARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (561, 'FACULDADE ALDETE MARIA ALVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (562, 'INSTITUTO DE ENSINO SUPERIOR CENECISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (563, 'INSTITUTO DE ENSINO SUPERIOR DA FUNLEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (564, 'FACULDADE AFIRMATIVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (565, 'INSTITUTO DE EDUCAÇÃO SUPERIOR DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (566, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE CAJAZEIRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (567, 'FACULDADE ESTáCIO DO RECIFE - ESTáCIO FIR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (568, 'FACULDADE INTEGRADO DE CAMPO MOURÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (569, 'FACULDADE MARINGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (570, 'FACULDADE ARTHUR SÁ EARP NETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (571, 'FACULDADE DE ENGENHARIA DE RESENDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (573, 'FACULDADE CENECISTA DE BENTO GONÇALVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (574, 'FACULDADE METODISTA DE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (575, 'FACULDADE DE EDUCAÇÃO DE COLORADO DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (576, 'FACULDADES INTEGRADAS APARÍCIO CARVALHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (577, 'FACULDADE SÃO LUÍS DE FRANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (578, 'FACULDADES INTEGRADAS DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (579, 'FACULDADE DE CIÊNCIAS JURÍDICAS E GERENCIAIS DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (580, 'FACULDADE DE PRESIDENTE EPITÁCIO - FAPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (581, 'FACULDADES INTEGRADAS DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (582, 'FACULDADE DE EDUCAÇÃO E CIÊNCIAS GERENCIAIS DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (583, 'FACULDADE CARLOS DRUMMOND DE ANDRADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (584, 'FACULDADE DE ADMINISTRAÇÃO SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (585, 'FACULDADE ESTáCIO DO CEARá - ESTáCIO FIC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (586, 'CENTRO UNIVERSITÁRIO EURO-AMERICANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (587, 'FACULDADE SANTA TEREZINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (588, 'UNIÃO DAS ESCOLAS DO GRUPO FAIMI DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (589, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA FLUMINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (590, 'FACULDADE OSVALDO CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (591, 'INSTITUTO DE EDUCAÇÃO SUPERIOR UNYAHNA DE SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (592, 'INSTITUTO DE EDUCAÇÃO SUPERIOR UNYAHNA DE BARREIRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (593, 'FACULDADES INTEGRADAS ESPÍRITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (594, 'UNIVERSIDADE ESTADUAL DO CENTRO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (595, 'UNIVERSIDADE DE ITAÚNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (502, 'FACULDADES INTEGRADAS DE PARANAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (498, 'FACULDADE DE EDUCAÇÃO E CIÊNCIAS GERENCIAIS DE INDAIATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (499, 'FACULDADE ALAGOANA DE ADMINISTRAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (500, 'FACULDADE DE BELFORD ROXO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (501, 'FACULDADE SANTA LÚCIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (533, 'INSTITUTO SUPERIOR E CENTRO EDUCACIONAL LUTERANO', 'BOM JESUS/IELUSC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (503, 'FACULDADE DE ADMINISTRAÇÃO DE FÁTIMA DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (505, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE NAVIRAI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (506, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE CASCAVEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (507, 'FACULDADE REGES DE DRACENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (508, 'FACULDADE DE ADMINISTRAÇÃO E CIÊNCIAS CONTÁBEIS DE SÃO ROQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (509, 'FACULDADE INTERLAGOS DE EDUCAÇÃO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (510, 'CENTRO UNIVERSITÁRIO ANHANGUERA DE CAMPO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (611, 'ESCOLA SUPERIOR SÃO FRANCISCO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (612, 'CENTRO DE ENSINO SUPERIOR DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (613, 'FACULDADE CAMBURY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (614, 'INSPER INSTITUTO DE ENSINO E PESQUISA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (615, 'FACULDADE DE ALTA FLORESTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (617, 'FACULDADE METROPOLITANA DE CAMAÇARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (618, 'FACULDADE ANHANGUERA DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (619, 'FACULDADE DE SABARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (620, 'FACULDADES RIOGRANDENSES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (621, 'FACULDADE BRASÍLIA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (622, 'INSTITUTO DE ENSINO SUPERIOR DE AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (623, 'CENTRO UNIVERSITÁRIO JORGE AMADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (624, 'CENTRO UNIVERSITÁRIO MÓDULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (625, 'UNIVERSIDADE DO PLANALTO CATARINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (626, 'FACULDADE INTEGRAL CANTAREIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (627, 'INSTITUTO DE ENSINO SUPERIOR DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (629, 'FACULDADE DE TECNOLOGIA DE PONTA PORÃ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (630, 'FACULDADE SENAI DE TECNOLOGIA MECATRÔNICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (631, 'CENTRO UNIVERSITÁRIO DE MARINGÁ - CEUMAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (632, 'FACULDADE DE CIÊNCIAS SOCIAIS E APLICADAS DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (633, 'FACULDADE DE ADMINISTRAÇÃO MILTON CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (634, 'FACULDADE SANTA RITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (635, 'FACULDADE DE AMAMBAI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (636, 'FACULDADE EDUCACIONAL DA LAPA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (637, 'FACULDADE DE NATAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (638, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (639, 'FACULDADE FLEMING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (641, 'FACULDADE GAMMON
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (642, 'CENTRO UNIVERSITÁRIO DE JALES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (643, 'CENTRO UNIVERSITÁRIO AMPARENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (644, 'INSTITUTO DE ENSINO SUPERIOR DO ACRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (657, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE NOVA ANDRADINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (646, 'CENTRO REGIONAL UNIVERSITÁRIO DE ESPÍRITO SANTO DO PINHAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (647, 'INSTITUTO CENECISTA DE ENSINO SUPERIOR DE SANTO ÂNGELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (648, 'CENTRO UNIVERSITÁRIO CAMPOS DE ANDRADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (649, 'CENTRO UNIVERSITÁRIO CÂNDIDO RONDON
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (650, 'FACULDADE NOSSA SENHORA APARECIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (651, 'FACULDADE PADRÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (653, 'FACULDADE DE ADMINISTRAÇÃO DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (654, 'FACULDADE BRASILEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (655, 'FACULDADE DE CASTELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (656, 'FACULDADE CANDIDO MENDES DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (688, 'FACULDADE ESTáCIO DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (658, 'FACULDADE DE PEDAGOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (659, 'FACULDADE DE EDUCAÇÃO DE COSTA RICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (660, 'FACULDADE PROMOVE DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (661, 'FACULDADE METODISTA GRANBERY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (662, 'FACULDADE DE ADMINISTRAÇÃO DE ITABIRITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (663, 'FACULDADE BOA VIAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (664, 'FACULDADE DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (666, 'FACULDADE DE CIÊNCIAS APLICADAS DE CASCAVEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (667, 'FACULDADE BEZERRA DE ARAÚJO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (668, 'FACULDADE NATALENSE PARA O DESENVOLVIMENTO DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (669, 'FACULDADES INTEGRADAS URUBUPUNGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (670, 'INSTITUTO DE ENSINO SUPERIOR DA GRANDE FLORIANÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (671, 'CENTRO UNIVERSITÁRIO DO INSTITUTO DE ENSINO SUPERIOR COC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (672, 'FACULDADE SANT´ANNA DE SALTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (673, 'FACULDADE CAMPO LIMPO PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (674, 'FACULDADE DO GUARUJÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (675, 'INSTITUTO TAUBATÉ DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (676, 'FACULDADE DE ITÁPOLIS - FACITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (678, 'FACULDADE DE CIÊNCIAS SOCIAIS E AGRÁRIAS DE ITAPEVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (679, 'INSTITUTO MANCHESTER PAULISTA DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (680, 'FACULDADE SENAI DE TECNOLOGIA AMBIENTAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (681, 'FACULDADE DE DIREITO DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (682, 'FACULDADE ALBERT EINSTEIN DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (683, 'FACULDADE DO NORTE PIONEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (684, 'FACULDADES ADAMANTINENSES INTEGRADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (685, 'FACULDADE DAS AMÉRICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (686, 'FACULDADE MORUMBI SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (687, 'ESCOLA SUPERIOR DE MARKETING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (689, 'FACULDADES INTEGRADAS DE FERNANDÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (691, 'INSTITUTO MATONENSE MUNICIPAL DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (692, 'FACULDADE BATISTA BRASILEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (693, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA GOIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (694, 'FACULDADES INTEGRADAS DE RIBEIRÃO PIRES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (695, 'FACULDADE DE CIÊNCIAS JURÍDICAS, GERENCIAIS E EDUCAÇÃO DE SINOP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (696, 'FACULDADE DE CIÊNCIAS HUMANAS DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (697, 'FACULDADE NOVO MILÊNIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (698, 'FACULDADE JESUS MARIA JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (699, 'FACULDADE DE AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (700, 'TREVISAN ESCOLA SUPERIOR DE NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (645, 'FACULDADE SÃO FRANCISCO DE BARREIRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (598, 'FACULDADE SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (599, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS DE IGARASSU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (601, 'FACULDADE GAMA E SOUZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (602, 'FACULDADES INTEGRADAS DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (603, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE TIMBAÚBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (604, 'FACULDADE DE CIÊNCIAS HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (605, 'CENTRO UNIVERSITÁRIO NOSSA SENHORA DO PATROCÍNIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (606, 'FACULDADE SENAI DE TECNOLOGIA GRÁFICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (607, 'FACULDADE DE ADMINISTRAÇÃO E NEGÓCIOS DE SERGIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (608, 'UNIVERSIDADE CÂNDIDO MENDES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (609, 'FACULDADE SALESIANA DE SANTA TERESA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (610, 'FACULDADE CENECISTA DE ITABORAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (715, 'FACULDADE CECAP DO LAGO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (717, 'INSTITUTO DE ENSINO SUPERIOR THATHI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (718, 'FACULDADE ASSIS GURGACZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (719, 'FACULDADE MATER DEI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (720, 'FACULDADE DE PEDAGOGIA DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (721, 'FACULDADE BORGES DE MENDONÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (722, 'FACULDADE ANHANGUERA DE OSASCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (723, 'FACULDADE BATISTA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (724, 'FACULDADE DO VALE DO JAGUARIBE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (726, 'INSTITUTO DE ENSINO SUPERIOR DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (727, 'FACULDADES INTEGRADAS DE JAHU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (728, 'FACULDADES INTEGRADAS DE SANTA FÉ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (730, 'FACULDADE DE PEDAGOGIA DE AFONSO CLÁUDIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (731, 'FACULDADE CAPIXABA DE NOVA VENÉCIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (732, 'FACULDADE SÃO GABRIEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (733, 'FACULDADE UBAENSE OZANAM COELHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (734, 'FACULDADE VISCONDE DE CAIRÚ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (735, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE VITÓRIA DA CONQUISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (736, 'CENTRO UNIVERSITÁRIO ADVENTISTA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (737, 'FACULDADE BARDDAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (738, 'FACULDADE DE MIRANDÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (739, 'FACULDADE CASA BRANCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (740, 'FACULDADE DE CIÊNCIAS SOCIAIS DE GUARANTÃ DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (742, 'FACULDADES INTEGRADAS SÃO PEDRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (743, 'FACULDADE MARTHA FALCÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (744, 'ESCOLA SUPERIOR DE TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (745, 'FACULDADE JOSÉ LACERDA FILHO DE CIÊNCIAS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (746, 'FACULDADE SANTA HELENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (747, 'FACULDADES INTEGRADAS IPEP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (749, 'FACULDADE SUMARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (750, 'FACULDADE CASTRO ALVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (751, 'FACULDADE DE CALDAS NOVAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (752, 'FACULDADE DINÂMICA DAS CATARATAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (753, 'FACULDADE UNISSA DE SARANDI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (754, 'FACULDADE METROPOLITANA DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (755, 'FACULDADE ADELMAR ROSADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (756, 'INSTITUTO DE CIÊNCIAS SOCIAIS E HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (757, 'FACULDADE DE PIMENTA BUENO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (758, 'FACULDADE DE PIRACANJUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (759, 'FACULDADE DO CENTRO LESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (760, 'ÁREA1 - FACULDADE DE CIÊNCIA E TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (761, 'FACULDADE DOIS DE JULHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (762, 'FACULDADE ANHAGUERA DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (763, 'FACULDADE DE PRIMAVERA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (764, 'FACULDADE SÃO LUCAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (765, 'FACULDADE MAGISTER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (766, 'FACULDADE CENECISTA DE CAMPO LARGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (767, 'CENTRO UNIVERSITÁRIO TOLEDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (768, 'CENTRO UNIVERSITÁRIO CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (769, 'FACULDADES DE DRACENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (770, 'CENTRO UNIVERSITÁRIO DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (771, 'FACULDADE IDEAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (772, 'INSTITUTO LUTERANO DE ENSINO SUPERIOR DE ITUMBIARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (773, 'FACULDADE DA SERRA GAÚCHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (774, 'INSTITUTO DE ENSINO SUPERIOR PLANALTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (776, 'FACULDADE INGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (777, 'FACULDADE BERTIOGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (778, 'FACULDADE ORÍGENES LESSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (779, 'INSTITUTO DE ENSINO SUPERIOR DE ITAPIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (780, 'FACULDADE DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (781, 'ESCOLA SUPERIOR BATISTA DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (782, 'ESCOLA SUPERIOR DE TECNOLOGIA E EDUCAÇÃO DE RIO CLARO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (783, 'FACULDADE DE ADMINISTRAÇÃO DE EMPRESAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (784, 'FACULDADE DE CIÊNCIAS ECONÔMICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (785, 'INSTITUTO APHONSIANO DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (786, 'FACULDADE DE TECNOLOGIA DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (787, 'FACULDADE DE DIREITO DE TANGARÁ DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (788, 'FACULDADE NACIONAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (789, 'FACULDADES INTEGRADAS EINSTEIN DE LIMEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (790, 'CENTRO UNIVERSITÁRIO DO INSTITUTO MAUÁ DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (792, 'FACULDADE DE EDUCAÇÃO, ADMINISTRAÇÃO E TECNOLOGIA DE IBAITI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (793, 'CENTRO UNIVERSITÁRIO DO CERRADO-PATROCÍNIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (794, 'FACULDADES INTEGRADAS DE SÃO CARLOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (795, 'FACULDADE ATENAS MARANHENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (796, 'FACULDADE CIODONTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (797, 'FACULDADE SALESIANA DO NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (798, 'FACULDADE SANTÍSSIMO SACRAMENTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (799, 'FACULDADE ANHANGUERA DE SERTÃOZINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (706, 'FACULDADE JUVÊNCIO TERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (707, 'FACULDADE TECSOMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (708, 'FACULDADE EDUVALE DE AVARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (709, 'FACULDADE DE INFORMÁTICA LEMOS DE CASTRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (801, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (802, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (803, 'INSTITUTO PARAIBANO DE ENSINO RENOVADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (804, 'FACULDADE ALFACASTELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (805, 'FACULDADE MÓDULO PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (806, 'FACULDADE DE RIBEIRÃO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (808, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, MARKETING E COMUNICAÇÃO DE UBERLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (725, 'INSTITUTO SUPERIOR TUPY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (702, 'FACULDADE UNIDA DE SUZANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (704, 'FACULDADE DE EDUCAÇÃO DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (705, 'FACULDADE SUDOESTE PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (710, 'FACULDADE DE APUCARANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (711, 'ESCOLA SUPERIOR DE ENSINO ANÍSIO TEIXEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (712, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING DE PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (713, 'FACULDADE DE COMUNICAÇÃO E TURISMO DE OLINDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (714, 'FACULDADE COTEMIG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (818, 'FACULDADE INTERNACIONAL DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (820, 'FACULDADE ALVES FARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (821, 'FACULDADE CATÓLICA SALESIANA DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (822, 'FACULDADE ESTÁCIO DE SÁ DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (823, 'FACULDADE DE ADMINISTRAÇÃO DE SANTA CRUZ DO RIO PARDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (824, 'INSTITUTO DE ENSINO SUPERIOR E FORMAÇÃO AVANÇADA DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (825, 'FACULDADE ANHANGUERA DE TABOÃO DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (826, 'FACULDADE DE ENSINO SUPERIOR DE SÃO MIGUEL DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (827, 'FACULDADE LATINO AMERICANA DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (828, 'FACULDADE PITÁGORAS DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (829, 'FACULDADE DOUTOR LEOCÁDIO JOSÉ CORREIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (830, 'FACULDADE MAURÍCIO DE NASSAU DE MACEIÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (831, 'FACULDADE DE MEDICINA VETERINÁRIA E ZOOTECNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (832, 'INSTITUTO CENECISTA FAYAL DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (833, 'FACULDADE PROJEÇÃO DE CEILÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (835, 'FACULDADE ESTÁCIO DE SÁ DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (836, 'FACULDADE ESTÁCIO DE SÁ DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (837, 'INSTITUTO DE CIÊNCIAS JURÍDICAS E SOCIAIS PROFESSOR CAMILLO FILHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (838, 'FACULDADE VALE DO CRICARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (839, 'FACULDADE DE EDUCAÇÃO DE PORTO VELHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (840, 'FACULDADE DE VINHEDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (841, 'FACULDADE SANTA TEREZINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (842, 'FACULDADE DE PATO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (843, 'FACULDADE FIA DE ADMINISTRAÇÃO E NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (844, 'INSTITUTO DE ESTUDOS SUPERIORES DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (845, 'FACULDADE DE DIREITO FRANCISCO BELTRÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (846, 'FACULDADES INTEGRADAS OLGA METTIG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (848, 'FACULDADE SENAI DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (850, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS NOSSA SENHORA APARECIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (851, 'FACULDADE DE CIÊNCIAS, LETRAS E EDUCAÇÃO DO NOROESTE DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (852, 'FACULDADE SÃO JUDAS TADEU DE PINHAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (853, 'FACULDADE DE TELÊMACO BORBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (854, 'FACULDADE PROJEÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (855, 'INSTITUTO DE ENSINO SUPERIOR DE RONDÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (856, 'FACULDADE FLAMINGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (857, 'CENTRO UNIVERSITÁRIO GERALDO DI BIASE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (858, 'FACULDADE DECISÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (860, 'FACULDADE DE EDUCAÇÃO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (861, 'FACULDADE DE MEDICINA ESTÁCIO DE JUAZEIRO DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (862, 'FACULDADE DE EDUCAÇÃO FÍSICA DE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (863, 'FACULDADE PIAUIENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (864, 'FACULDADES INTEGRADAS DO VALE DO RIBEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (865, 'FACULDADE SETE DE SETEMBRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (866, 'UNIVERSIDADE FUMEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (867, 'INSTITUTO DE ENSINO SUPERIOR DE JOÃO MONLEVADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (868, 'CENTRO UNIVERSITÁRIO DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (870, 'FACULDADE DE ILHA SOLTEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (871, 'FACULDADE DE SAÚDE, CIÊNCIAS HUMANAS E TECNOLÓGICAS DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (872, 'FACULDADE SUL FLUMINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (873, 'FACULDADE UNIME DE CIÊNCIAS JURÍDICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (874, 'FACULDADE VIZINHANÇA VALE DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (875, 'FACULDADES INTEGRADAS DE CARATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (876, 'FACULDADES INTEGRADAS DE ARARAQUARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (877, 'FACULDADE UNIME DE CIÊNCIAS SOCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (878, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (879, 'FACULDADE ALFREDO NASSER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (880, 'FACULDADE EDUCACIONAL DE MEDIANEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (881, 'CENTRO UNIVERSITÁRIO DO PLANALTO DE ARAXÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (882, 'INSTITUTO DE ENSINO SUPERIOR BLAURO CARDOSO DE MATTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (883, 'FACULDADE INTERMUNICIPAL DO NOROESTE DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (884, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA SUL-RIO-GRANDENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (885, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO SENA AIRES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (886, 'FACULDADE DA CIDADE DE SANTA LUZIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (887, 'FACULDADE DECISÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (888, 'FACULDADE DE TECNOLOGIA DE INDAIATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (890, 'FACULDADE ENERGIA DE ADMINISTRAÇÃO E NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (891, 'UNIVERSIDADE DO VALE DO SAPUCAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (892, 'FACULDADES INTEGRADAS DE TANGARÁ DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (893, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (894, 'FACULDADE SEAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (895, 'FACULDADE DE ODONTOLOGIA DE MANAUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (896, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (897, 'FACULDADE SANTA FÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (898, 'FACULDADE POLITÉCNICA DE UBERLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (899, 'INSTITUTO DE ENSINO SUPERIOR PRESIDENTE TANCREDO DE ALMEIDA NEVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (900, 'INSTITUTO DE CIÊNCIAS DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (901, 'FACULDADE CIDADE DE COROMANDEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (903, 'FACULDADE VALE DO APORÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (904, 'FACULDADE LUTERANA SÃO MARCOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (905, 'FACULDADE DOS CERRADOS PIAUIENSES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (906, 'FACULDADE DAS ATIVIDADES EMPRESARIAIS DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (907, 'FACULDADE EDUCACIONAL DE ARAPOTI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (908, 'FACULDADE SUL BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (909, 'FACULDADE ADVENTISTA PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (910, 'FACULDADE ASTORGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (849, 'FACULDADE CENECISTA DE JOINVILLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (810, 'CENTRO UNIVERSITÁRIO LEONARDO DA VINCI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (811, 'FACULDADES INTEGRADAS INTERAMERICANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (812, 'FACULDADE ANCHIETA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (813, 'FACULDADE IBMEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (814, 'FACULDADE ESTÁCIO DE SÁ DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (815, 'FACULDADE DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (816, 'FACULDADE PARAÍSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (817, 'FACULDADE DE JAGUARIÚNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (921, 'FACULDADE DE CIÊNCIAS HUMANAS DE AGUAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (922, 'FACULDADE PITÁGORAS DE LONDRINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (923, 'FACULDADE BATISTA DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (924, 'CASTELLI ESCOLA SUPERIOR DE HOTELARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (925, 'FACULDADE DE CIÊNCIAS JURÍDICAS E SOCIAIS DE MACEIÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (926, 'FACULDADE DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (927, 'FACULDADE HÉLIO ROCHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (928, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (929, 'FACULDADE SOCIAL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (931, 'FACULDADE ANÍSIO TEIXEIRA DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (932, 'FACULDADE UNIME DE EDUCAÇÃO E COMUNICAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (933, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE JEQUIÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (934, 'FACULDADE DE EDUCAÇÃO CIÊNCIAS E LETRAS DE PARAÍSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (935, 'FACULDADE DE ENSINO E CULTURA DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (936, 'FACULDADE J. SIMÕES ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (937, 'FACULDADE DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (938, 'FACULDADE DE GUAÇUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (939, 'FACULDADE CENECISTA DE SETE LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (941, 'FACULDADE EDUCACIONAL DE DOIS VIZINHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (942, 'FACULDADE INTEGRADA DA GRANDE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (943, 'FACULDADE ESTÁCIO DE SÁ DE OURINHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (944, 'FACULDADE DE CIÊNCIAS SOCIAIS E TECNOLÓGICAS FACITEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (946, 'FACULDADE CAPIXABA DE ADMINISTRAÇÃO E EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (947, 'FACULDADE ARAGUAIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (948, 'FACULDADE DA SAÚDE E ECOLOGIA HUMANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (949, 'FACULDADE KENNEDY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (950, 'FACULDADE NOVOS HORIZONTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (951, 'FACULDADE DE NEGÓCIOS DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (952, 'INSTITUTO METROPOLITANO DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (953, 'FACULDADE ASA DE BRUMADINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (954, 'INSTITUTO ESPERANÇA DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (955, 'INSTITUTO SALESIANO DE FILOSOFIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (956, 'FACULDADE METROPOLITANA DA GRANDE RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (957, 'FACULDADE SÃO MIGUEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (958, 'FACULDADE DE ENSINO SUPERIOR DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (959, 'FACULDADE DE CIÊNCIAS DE WENCESLAU BRAZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (960, 'FACULDADE DE CAMPINA GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (961, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA MATER CHRISTI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (963, 'FACULDADE SALESIANA MARIA AUXILIADORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (964, 'FACULDADE PIAUIENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (965, 'FACULDADE BARDDAL DE CIÊNCIAS CONTÁBEIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (966, 'FACULDADE BARDDAL DE ARTES APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (967, 'FACULDADE SANTA IZILDINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (968, 'FACULDADE DE SÃO VICENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (969, 'FACULDADE PRÁXIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (970, 'ESCOLA SUPERIOR DE TECNOLOGIA E EDUCAÇÃO DE PORTO FERREIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (971, 'FACULDADE ITANHAÉM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (973, 'FACULDADE DE EDUCAÇÃO DE BOM DESPACHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (974, 'FACULDADE CENTRAL DE CRISTALINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (975, 'FACULDADE ESCRITOR OSMAN DA COSTA LINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (976, 'FACULDADE DE EDUCAÇÃO DE JARU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (977, 'FACULDADE PROMOVE DE SETE LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (978, 'FACULDADE MACHADO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (979, 'FACULDADE ATUAL DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (981, 'FACULDADE DE INFORMÁTICA DO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (982, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (983, 'INSTITUTO PERNAMBUCANO DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (984, 'FACULDADE INTEGRADA DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (985, 'FACULDADE DE NEGÓCIOS E TECNOLOGIAS DA INFORMAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (986, 'FACULDADE DE PRESIDENTE PRUDENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (987, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (988, 'FACULDADE DE TECNOLOGIA DE SÃO VICENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (989, 'ESCOLA SUPERIOR DE GESTÃO COMERCIAL E MARKETING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (990, 'FACULDADE DO SUL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (991, 'FACULDADE UNIÃO DAS AMÉRICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (992, 'FACULDADE DE IMPERATRIZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (993, 'FACULDADE NOBRE DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (994, 'FACULDADE DE VIÇOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (995, 'FACULDADE DE PORTO VELHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (997, 'FACULDADE DE GUARARAPES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (998, 'FACULDADE XV DE AGOSTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (999, 'FACULDADE SANTA AMÉLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1000, 'FACULDADE DE CARIACICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1001, 'FACULDADE INTERAMERICANA DE PORTO VELHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1002, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1003, 'FACULDADE GENNARI E PEARTREE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1005, 'FACULDADE INTEGRAL DIFERENCIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1006, 'FACULDADE DE CIÊNCIAS APLICADAS DOUTOR LEÃO SAMPAIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1007, 'INSTITUTO SUPERIOR DE EDUCAÇÃO LA SALLE - ISE LA SALLE/RJ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1008, 'INSTITUTO LUTERANO DE ENSINO SUPERIOR DE PORTO VELHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1009, 'IMP DE ENSINO SUPERIOR - IMP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1010, 'FACULDADE DE TECNOLOGIA INTERAMÉRICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1011, 'FACULDADE DE TECNOLOGIA CARLOS DRUMMOND DE ANDRADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1012, 'FACULDADE DE TECNOLOGIA OSWALDO CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1013, 'FACULDADE LUSO-BRASILEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1014, 'UNIDADE DE ENSINO SUPERIOR EXPOENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1015, 'FACULDADE AUTÔNOMA DE DIREITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (972, 'ESCOLA SUPERIOR DE CRICIÚMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (912, 'FACULDADE ANGEL VIANNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (913, 'INSTITUTO BLUMENAUENSE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (914, 'FACULDADE ERNESTO RISCALI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (915, 'FACULDADE SANTA RITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (916, 'FACULDADE NETWORK
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (917, 'FACULDADE DO INTERIOR PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (919, 'FACULDADE MARECHAL RONDON
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (920, 'FACULDADE REUNIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1027, 'FACULDADE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1028, 'FACULDADE NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1029, 'FACULDADE DE ITAPIRANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1030, 'FACULDADE EDUCACIONAL DE PONTA GROSSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1031, 'FACULDADE DO VALE DO IPOJUCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1033, 'FACULDADE METROPOLITANA DE GUARAMIRIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1034, 'FACULDADE AIEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1035, 'FACULDADE HORIZONTINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1036, 'FACULDADE INTESP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1037, 'FACULDADE DE ARTES, CIÊNCIAS E TECNOLOGIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1038, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1039, 'FACULDADE ANHANGUERA DE SãO CAETANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1040, 'FACULDADE DE COLIDER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1041, 'INSTITUTO MACHADENSE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1043, 'FACULDADE CATUAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1044, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO SUL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1045, 'FACULDADE DE EDUCAÇÃO DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1046, 'FACULDADE NORTE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1047, 'FACULDADE EDUCACIONAL DE CORNÉLIO PROCÓPIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1048, 'FACULDADE DE REALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1049, 'FACULDADE DOM BOSCO DE UBIRATÃ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1050, 'FACULDADE DE CIÊNCIAS DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1051, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1052, 'FACULDADE DE MAUÁ - FAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1053, 'FACULDADE DOS GUARARAPES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1054, 'FACULDADE FERNÃO DIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1056, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1057, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1058, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1059, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1060, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA  DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1061, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1062, 'FACULDADE DE CIÊNCIAS SOCIAIS E APLICADAS DE DIAMANTINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1063, 'FACULDADE DO INSTITUTO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1064, 'INSTITUTO DE ENSINO SUPERIOR DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1065, 'FACULDADE ESTáCIO DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1066, 'FACULDADE PITÁGORAS DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1067, 'FACULDADE FARIAS BRITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1069, 'FACULDADE LIONS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1070, 'FACULDADE SUL-AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1071, 'INSTITUTO DE ENSINO SUPERIOR DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1072, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE ITABIRITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1073, 'FACULDADE DE ESTUDOS SUPERIORES DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1074, 'FACULDADE LUTERANA DE TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1075, 'ESCOLA DA CIDADE - FACULDADE DE ARQUITETURA E URBANISMO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1076, 'FACULDADE ANHANGUERA DE PASSO FUNDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1077, 'FACULDADE CENTRO PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1078, 'FACULDADE DE JABOTICABAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1079, 'FACULDADE DE ARUJÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1080, 'FACULDADE DE AGUDOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1081, 'FACULDADE INTEGRADA DE ENSINO SUPERIOR DE COLINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1082, 'CENTRO UNIVERSITÁRIO FUNDAÇÃO DE ENSINO OCTÁVIO BASTOS - FEOB
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1083, 'ESCOLA DE ESTUDOS SUPERIORES DE VIÇOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1084, 'FACULDADES INTEGRADAS RIO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1085, 'FACULDADES INTEGRADAS DE VÁRZEA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1086, 'FACULDADE CASTELO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1088, 'FACULDADES INTEGRADAS MACHADO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1089, 'FACULDADE DE ADMINISTRAÇÃO DE CAMPO BELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1090, 'FACULDADES INTEGRADAS STELLA MARIS DE ANDRADINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1091, 'FEFISA - FACULDADES INTEGRADAS DE SANTO ANDRÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1092, 'CENTRO UNIVERSITÁRIO DE LINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1093, 'FACULDADE ATENAS MARANHENSE DE IMPERATRIZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1094, 'FACULDADE ALVORADA DE TECNOLOGIA E EDUCAÇÃO DE MARINGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1095, 'ESCOLA BRASILEIRA DE ADMINISTRAÇÃO PÚBLICA E DE EMPRESAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1096, 'FACULDADE SABERES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1097, 'FACULDADE DE TECNOLOGIA IBTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1098, 'FACULDADES INTEGRADAS CLARETIANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1099, 'FACULDADE DO NORTE NOVO DE APUCARANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1100, 'FACULDADE DEHONIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1101, 'FACULDADE INTEGRADA EUCLIDES FERNANDES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1103, 'FACULDADE DA REGIÃO SERRANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1104, 'FACULDADE DE MANTENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1105, 'FACULDADE DE ADMINISTRAÇÃO DA ASSOCIAÇÃO BRASILIENSE DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1106, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ALVORADA PLUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1107, 'FACULDADE DE CIÊNCIAS EMPRESARIAIS E ESTUDOS COSTEIROS DE NATAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1108, 'FACULDADE DE CIÊNCIAS GERENCIAIS DE SANTOS DUMONT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1109, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE SANTOS DUMONT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1110, 'CENTRO UNIVERSITÁRIO DE ITAJUBÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1111, 'FACULDADES INTEGRADAS REGIONAIS DE AVARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1112, 'FACULDADES INTEGRADAS SANTA CRUZ DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1113, 'FACULDADE MERCÚRIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1114, 'FACULDADE DE TECNOLOGIA DE OURINHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1116, 'FACULDADE MUNICIPAL PROFESSOR FRANCO MONTORO DE MOGI GUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1117, 'FACULDADE ATUAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1224, 'FACULDADE DE EDUCAÇÃO DE NOVA ANDRADINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1018, 'FACULDADE INDEPENDENTE DO NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1019, 'FACULDADE PADRE JOÃO BAGOZZI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1021, 'FACULDADE DE TECNOLOGIA SENAI CHAPECÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1022, 'FACULDADE DE EDUCAÇÃO REGIONAL SERRANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1023, 'FACULDADE DE JOSÉ BONIFÁCIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1024, 'FACULDADE ESPÍRITO SANTENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1025, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1026, 'FACULDADE REGIONAL SERRANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1127, 'FACULDADE ÁVILA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1128, 'FACULDADE SARTRE COC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1130, 'ESCOLA DE NEGÓCIOS DO ESTADO DA BAHIA - ENEB
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1131, 'FACULDADE EUROPÉIA DE ADMINISTRAÇÃO E MARKETING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1132, 'FACULDADE CHRISTUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1133, 'FACULDADE DO LITORAL SUL PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1134, 'FACULDADE DO NOROESTE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1136, 'FACULDADE CATÓLICA DE UBERLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1137, 'FACULDADE CRISTO REI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1138, 'FACULDADE SÃO CAMILO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1139, 'INSTITUTO DE ENSINO SUPERIOR MATERDEI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1140, 'FACULDADE EDUCACIONAL DE COLOMBO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1141, 'ESCOLA DE ENSINO SUPERIOR ALTERNATIVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1142, 'FACULDADE PEREIRA DE FREITAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1143, 'FACULDADE BAIANA DE CIÊNCIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1144, 'FACULDADE DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1146, 'FACULDADE CAPIVARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1162, 'INSTITUTO DE ENSINO SUPERIOR DE LONDRINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1148, 'FACULDADE DE SÃO BENTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1149, 'FACULDADE DE DIREITO PADRE ARNALDO JANSSEN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1150, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1151, 'FACULDADE DE ADMINISTRAÇÃO DE CATAGUASES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1152, 'FACULDADES INTEGRADAS DO VALE DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1153, 'FACULDADE CENECISTA ILHA DO GOVERNADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1155, 'INSTITUTO DE ENSINO SUPERIOR FRANCISCANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1156, 'FACULDADE PALOTINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1157, 'FACULDADE BIRIGUI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1158, 'FACULDADE SINOP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1159, 'FACULDADE LA SALLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1160, 'FACULDADE EVANGÉLICA DE SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1161, 'FACULDADE GLOBAL DE UMUARAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1163, 'FACULDADE DE NOVA SERRANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1164, 'FACULDADE CUIABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1165, 'FACULDADE SERRANA DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1166, 'FACULDADE DE TECNOLOGIA IBRATEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1167, 'FACULDADE DE SORRISO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1168, 'FACULDADE LEGALE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1169, 'FACULDADE DE ENSINO SUPERIOR DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1170, 'FACULDADE DE PAULÍNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1171, 'FACULDADE DE ORLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1174, 'INSTITUTO BATISTA DE ENSINO SUPERIOR DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1175, 'FACULDADE DE TECNOLOGIA SENAI JOINVILLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1176, 'FACULDADE DE TECNOLOGIA SENAI BLUMENAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1178, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO CENTRO EDUCACIONAL NOSSA SENHORA AUXILIADORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1179, 'FACULDADE DE TECNOLOGIA EM HOTELARIA, GASTRONOMIA E TURISMO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1180, 'FACULDADE DE TECNOLOGIA DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1181, 'FACULDADE ALBERT EINSTEIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1182, 'FACULDADE DO VALE DO ITAPECURÚ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1183, 'FACULDADE ATLÂNTICO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1184, 'FACULDADE DOS IMIGRANTES - FAI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1185, 'FACULDADE DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1186, 'FACULDADE TIJUCUSSU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1187, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ORÍGENES LESSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1188, 'CENTRO DE ESTUDOS SUPERIORES APRENDIZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1189, 'FACULDADE METROPOLITANA DA GRANDE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1190, 'FACULDADE SINERGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1191, 'FACULDADE DE CIÊNCIAS GERENCIAIS DE MANHUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1192, 'FACULDADE ESTÁCIO DE SÁ DE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1193, 'FACULDADE AVANTIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1194, 'INSTITUTO DE ENSINO SUPERIOR DE PIEDADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1195, 'FACULDADE DE MEDICINA NOVA ESPERANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1196, 'INSTITUTO CUIABÁ DE ENSINO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1197, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ELVIRA DAYRELL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1198, 'SEMINÁRIO ADVENTISTA LATINO-AMERICANO DE TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1199, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE SINOP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1200, 'FACULDADE DE TAQUARITINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1202, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE PESQUEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1203, 'FACULDADE SETELAGOANA DE CIÊNCIAS GERENCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1204, 'INSTITUTO SANTO TOMÁS DE AQUINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1205, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE SALGUEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1206, 'FACULDADE JK - UNIDADE II - GAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1207, 'FACULDADE DE ROLIM DE MOURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1208, 'FACULDADE DE GUANAMBI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1209, 'FACULDADE DE CAMPINA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1210, 'INSTITUTO SUPERIOR DE EDUCAÇÃO CAMPO LIMPO PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1212, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE FLORESTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1213, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE ARAGUAÍNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1214, 'FACULDADE JAGUARIAÍVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1215, 'FACULDADE ESTáCIO DO PARá - ESTáCIO FAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1216, 'FACULDADE UNIME DE CIÊNCIAS EXATAS E TECNOLÓGICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1217, 'FACULDADE CIDADE LUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1218, 'FACULDADE DO FUTURO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1219, 'FACULDADE SUDAMÉRICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1220, 'FACULDADE FIGUEIREDO COSTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1221, 'FACULDADE VALE DO SALGADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1222, 'FACULDADE AMADEUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1223, 'INSTITUTO DE ESTUDOS SUPERIORES DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1147, 'FACULDADE DE CIÊNCIAS EXATAS E TECNOLÓGICAS SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1119, 'FACULDADE EDUCACIONAL DE ARAUCÁRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1120, 'FACULDADE CASA DO ESTUDANTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1121, 'FACULDADE DA ESCADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1122, 'FACULDADE DE CIÊNCIAS AGRÁRIAS E DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1123, 'FACULDADE RANCHARIENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1124, 'UNIDADE DE ENSINO SUPERIOR DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1125, 'FACULDADE DE MONTE ALTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1126, 'FACULDADE DE DIREITO DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1235, 'FACULDADE DE CIÊNCIAS MÉDICAS DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1236, 'FACULDADE CENECISTA DE NOVA PETRÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1237, 'INSTITUTO BAIANO DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1238, 'INSTITUTO DE ENSINO SUPERIOR DE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1239, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PRÓ-SABER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1241, 'FACULDADE KURIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1242, 'FACULDADE DE AURIFLAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1243, 'INSTITUTO SUPERIOR DE TEOLOGIA APLICADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1244, 'FACULDADE DOM BOSCO DE PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1245, 'FACULDADE DE CIÊNCIA E TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1246, 'INSTITUTO DE FILOSOFIA E DE TEOLOGIA PAULO VI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1247, 'FACULDADE ESTáCIO DE SERGIPE - ESTáCIO FASE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1248, 'FACULDADE MAX PLANCK
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1249, 'FACULDADE CALAFIORI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1250, 'ESCOLA DE DIREITO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1251, 'ESCOLA DE DIREITO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1252, 'ESCOLA DE ECONOMIA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1253, 'FACULDADE FAPAN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1254, 'FACULDADE BARÃO DO RIO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1256, 'FACULDADE DA IGREJA MINISTÉRIO FAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1257, 'FACULDADE CATÓLICA RAINHA DO SERTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1258, 'FACULDADE SÃO MARCOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1259, 'INSTITUTO SUPERIOR DE EDUCAÇÃO NOSSA SENHORA DE LOURDES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1260, 'FACULDADE TEOLÓGICA BATISTA DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1261, 'FACULDADE INFÓRIUM DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1262, 'FACULDADE DO ACRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1263, 'FACULDADE METROPOLITANA DE MANAUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1264, 'FACULDADE DE PALMAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1265, 'FACULDADE MATO GROSSO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1266, 'FACULDADE DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1267, 'INSTITUTO SUPERIOR DE EDUCAÇÃO BERLAAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1269, 'FACULDADE SÃO TOMÁS DE AQUINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1270, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SANT''ANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1271, 'FACULDADE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1272, 'FACULDADE SANT''ANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1273, 'INSTITUTO SUPERIOR DE EDUCAÇÃO EUGÊNIO GOMES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1274, 'FACULDADE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1275, 'FACULDADE CAMPO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1277, 'FACULDADE GUAIANÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1278, 'FACULDADE DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1279, 'FACULDADE METROPOLITANA DE BLUMENAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1280, 'INSTITUTO PAULISTA DE ENSINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1281, 'RATIO - FACULDADE TEOLÓGICA E FILOSÓFICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1282, 'CENTRO UNIVERSITÁRIO FUNDAÇÃO SANTO ANDRÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1283, 'FACULDADE CENECISTA NOSSA SENHORA DOS ANJOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1284, 'FACULDADE SALESIANA DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1286, 'FACULDADE DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1287, 'FACULDADE ANHANGUERA DE PELOTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1288, 'INSTITUTO SUPERIOR DE EDUCAÇÃO IVOTI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1289, 'FACULDADE ANHANGUERA DO RIO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1290, 'FACULDADE MONTEIRO LOBATO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1291, 'FACULDADE VALE DO GORUTUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1292, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE GUARATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1293, 'FACULDADE DE TUPI PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1294, 'FACULDADE FAE SÃO JOSÉ DOS PINHAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1295, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1296, 'FACULDADE SETE DE SETEMBRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1297, 'FACULDADE VICTOR HUGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1299, 'FACULDADE TEOLÓGICA BATISTA EQUATORIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1300, 'FACULDADE DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1301, 'FACULDADE DO SUDESTE MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1302, 'FACULDADE DO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1303, 'FACULDADE PARAÍBANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1304, 'FACULDADE DA CIDADE DE MACEIÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1305, 'FACULDADE DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1306, 'FACULDADE UNIÃO AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1307, 'FACULDADE CHAFIC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1308, 'FACULDADE SERGIPANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1309, 'FACULDADE STELLA MARIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1310, 'FACULDADE DIADEMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1312, 'FACULDADE CAMBURY DE FORMOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1313, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE EXTREMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1314, 'FACULDADE PITÁGORAS DE IPATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1315, 'FACULDADE DE DIREITO SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1316, 'FACULDADE INTEGRADA METROPOLITANA DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1317, 'FACULDADE DE CAFELÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1318, 'ESCOLA SUPERIOR DE TEOLOGIA E ESPIRITUALIDADE FRANCISCANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1319, 'FACULDADE ALMEIDA RODRIGUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1320, 'FACULDADES INTEGRADAS DE ANGELES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1321, 'FACULDADE DE DIREITO DE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1322, 'FACULDADE FIDELIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1323, 'FACULDADE GEREMÁRIO DANTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1325, 'FACULDADE LUTERANA RUI BARBOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1326, 'FACULDADE DO DESCOBRIMENTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1327, 'ESCOLA SUPERIOR DE EDUCAÇÃO CORPORATIVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1328, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ATENEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1329, 'FACULDADE ATENEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1330, 'FACULDADE DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1331, 'FACULDADE UNIÃO BANDEIRANTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1332, 'FACULDADE ITEANA DE BOTUCATU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1669, 'FACULDADE ALFA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1333, 'FACULDADE CÂNDIDO RONDON - FCR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1226, 'FACULDADE METROPOLITANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1227, 'FACULDADE DE CIÊNCIAS EMPRESARIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1228, 'FACULDADE DE TEOLOGIA E CIÊNCIAS HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1230, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PADRÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1231, 'INSTITUTO DE ENSINO SUPERIOR DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1232, 'FACULDADE REGIONAL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1233, 'FACULDADE ANGLO-AMERICANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1234, 'FACULDADE DE ITAITUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1345, 'FACULDADE PAN AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1346, 'FACULDADE PADRÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1347, 'FACULDADE DE CIÊNCIAS MÉDICAS DE CAMPINA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1349, 'FACULDADE CATÓLICA DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1350, 'FACULDADE DE SISTEMAS DE INFORMAÇÃO DE PARAÍSO DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1351, 'FACULDADE DE ODONTOLOGIA SÃO LEOPOLDO MANDIC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1352, 'INSTITUTO DE ENSINO SUPERIOR SANTO ANTÔNIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1353, 'FACULDADE ESTáCIO DO AMAPá - ESTáCIO FAMAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1354, 'FACULDADE MERIDIONAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1355, 'FACULDADE INTEGRADA DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1356, 'FACULDADE DE FILOSOFIA E TEOLOGIA PAULO VI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1357, 'FACULDADE DE CAMPO VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1358, 'FACULDADE FUCAPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1359, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE CAMPO VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1360, 'FACULDADE DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1361, 'FACULDADE CIDADE DO SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1363, 'FACULDADE ASCES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1364, 'FACULDADE CEARENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1365, 'FACULDADE DE ENSINO SUPERIOR DE FLORIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1366, 'FACULDADE PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1367, 'FACULDADE DE CIÊNCIA E TECNOLOGIA DE MONTES CLAROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1368, 'FACULDADE INTEGRADA BRASIL AMAZONIA - FIBRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1369, 'FACULDADE DE CIÊNCIAS E TECNOLOGIAS DE CAMPOS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1370, 'FACULDADE ESTÁCIO MONTESSORI DE IBIÚNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1371, 'FACULDADE DE CIÊNCIAS CONTÁBEIS LUIZ MENDES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1372, 'FACULDADE TÁHIRIH
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1373, 'FACULDADE PITÁGORAS DE TEIXEIRA DE FREITAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1374, 'FACULDADE CIDADE DE JOÃO PINHEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1375, 'FACULDADE DE CIÊNCIAS BIOMÉDICAS DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1376, 'FACULDADE PROMOVE DE JANAÚBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1377, 'FACULDADE JOÃO CALVINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1378, 'INSTITUTO EDUCACIONAL DE CASTRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1379, 'FACULDADE DE DIREITO PROMOVE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1380, 'FACULDADES INTEGRADAS IPIRANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1382, 'FACULDADE DE ESTUDOS AVANÇADOS DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1383, 'FACULDADE ESTáCIO DE NATAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1384, 'FACULDADE CBES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1385, 'FACULDADE SÃO LUÍS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1386, 'FACULDADE JOANA D''ARC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1387, 'FACULDADE DE DIREITO PROFESSOR DAMÁSIO DE JESUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1388, 'FACUDADE IEDUCARE - FIED
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1389, 'INSTITUTO TEOLÓGICO FRANCISCANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1390, 'INSTITUTO MACAPAENSE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1391, 'INSTITUTO SALVADOR DE ENSINO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1392, 'FACULDADE MARIA MILZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1393, 'FACULDADE ARQUIDIOCESANA DE MARIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1394, 'FACULDADE DE ADMINISTRAÇÃO DE MARIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1396, 'FACULDADE PROCESSUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1397, 'FACULDADE CATÓLICA DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1398, 'FACULDADE LEONARDO DA VINCI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1399, 'FACULDADE ANGLICANA DE ERECHIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1400, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO CECAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1401, 'FACULDADE DE PINDAMONHANGABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1402, 'FACULDADE ATENEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1403, 'FACULDADE APOIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1404, 'FACULDADE EINSTEIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1405, 'FACULDADE ESTÁCIO DE SÁ DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1406, 'FACULDADE DIVINÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1407, 'FACULDADE DE ARTE E DESIGN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1408, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1409, 'FACULDADE DE DIREITO UNIDADE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1410, 'FACULDADE ARTHUR THOMAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1411, 'INSTITUTO NATALENSE DE EDUCAÇÃO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1412, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO SUL DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1413, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE IGUAPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1414, 'FACULDADE DO SUDESTE GOIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1416, 'FACULDADE SÃO GERALDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1417, 'FACULDADE VENDA NOVA DO IMIGRANTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1418, 'FACULDADE EVANGÉLICA DO MEIO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1419, 'FACULDADE DE TEOLOGIA, FILOSOFIA E CIÊNCIAS HUMANAS GAMALIEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1420, 'FACULDADE PAULISTA DE EDUCAÇÃO E COMUNICAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1421, 'INSTITUTO SUPERIOR DE CIÊNCIAS DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1422, 'FACULDADE DE EDUCAÇÃO SANTA TEREZINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1423, 'FIAM-FAAM - CENTRO UNIVERSITÁRIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1424, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE PENEDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1425, 'FACULDADE DE DIREITO DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1427, 'FACULDADE DE CIÊNCIAS ADMINISTRATIVAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1428, 'UNIVERSIDADE FEDERAL DE CAMPINA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1429, 'ABEU - CENTRO UNIVERSITÁRIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1430, 'INSTITUTO DE ENSINO SUPERIOR DE OLINDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1431, 'FACULDADE ZACARIAS DE GÓES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1432, 'FACULDADE DE TECNOLOGIA FAESA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1433, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1434, 'FACULDADE REDENTOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1435, 'FACULDADE REGIONAL DE FILOSOFIA, CIÊNCIAS E LETRAS DE CANDEIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1436, 'FACULDADE TEOLÓGICA SUL AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1437, 'FACULDADES INTEGRADAS SOARES DE OLIVEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1438, 'FACULDADES PITÁGORAS UNIDADE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1439, 'INSTITUTO SUPERIOR DE MÚSICA DE SÃO LEOPOLDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1335, 'INSTITUTO SUPERIOR MENDES DE ALMEIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1336, 'FACULDADE MONTES BELOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1337, 'FACULDADE DA ALDEIA DE CARAPICUÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1339, 'FACULDADE DA AMAZÔNIA OCIDENTAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1341, 'INSTITUIÇÃO DE ENSINO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1342, 'ESCOLA SUPERIOR MADRE CELESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2110, 'FACULDADE POLIS DAS ARTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1343, 'FACULDADE ESPÍRITO SANTENSE DE CIÊNCIAS JURÍDICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1344, 'FACULDADE ANHANGUERA DE MATÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1450, 'FACULDADE SANTO ANTÔNIO DE PÁDUA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1451, 'FACULDADE SÃO BENTO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1452, 'FACULDADE DE DIREITO DE ITABIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1453, 'FACULDADE DE AMPÉRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1454, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1455, 'FACULDADE DO TAPAJÓS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1456, 'FACULDADE DO LITORAL PARANAENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1458, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E DE ADMINISTRAÇÃO DO VALE DO JURUENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1459, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO VALE DO JURUENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1460, 'FACULDADES INTEGRADAS DO EXTREMO SUL DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1461, 'FACULDADE DINÂMICA DO VALE DO PIRANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1462, 'FACULDADE DE TECNOLOGIA SENAI CONCÓRDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1463, 'FACULDADE DE CIÊNCIAS DA SAÚDE DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1464, 'FACULDADE SÃO VICENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1465, 'FACULDADE INTEGRADA DE SANTA MARIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1466, 'FACULDADE TAMANDARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1467, 'FACULDADE UNIDA DE VITÓRIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1468, 'FACULDADE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1470, 'FACULDADE LA SALLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1471, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SÃO JUDAS TADEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1472, 'FACULDADE DOM ALBERTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1473, 'FACULDADE INESP - INSTITUTO NACIONAL DE ENSINO E PESQUISA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1474, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE PARAÍSO DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1475, 'FACULDADE SENAC MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1476, 'FACULDADE CATÓLICA DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1477, 'FACULDADE MARISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1478, 'INSTITUTO DE ENSINO SUPERIOR DO SUL DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1479, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO DE EMPRESAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1480, 'UNIPB - FACULDADE UNIDA DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1481, 'INSTITUTO TECNOLÓGICO DE CARATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1482, 'FACULDADE CATÓLICA DOM ORIONE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1483, 'INSTITUTO SUPERIOR DE EDUCAÇÃO VERA CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1484, 'ESCOLA SUPERIOR DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1486, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS CAPIM GROSSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1487, 'FACULDADE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1488, 'FACULDADE DO VALE DO ITAJAÍ MIRIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1489, 'FACULDADE ANHANGUERA DE VALPARAÍSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1490, 'FACULDADE DO SERTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1491, 'FACULDADE DE CIÊNCIAS GERENCIAIS DE SÃO GOTARDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1492, 'FACULDADE EMPRESARIAL DE CHAPECÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1493, 'FACULDADE UNIDA DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1494, 'CENTRO DE ENSINO SUPERIOR DE ILHÉUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1495, 'FACULDADE DE MACAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1496, 'CENTRO UNIVERSITáRIO UNIFAFIBE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1498, 'FACULDADE DE INFORMÁTICA DE OURO PRETO DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1499, 'FACULDADE DE TECNOLOGIA DO NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1500, 'FACULDADE FAE BLUMENAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1501, 'FACULDADES PEQUENO PRÍNCIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1502, 'FACULDADE DE CIÊNCIAS AGRÁRIAS E EXATAS DE PRIMAVERA DO LESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1503, 'FACULDADE UNIÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1504, 'FACULDADE DE CIÊNCIAS SOCIAIS E HUMANAS SOBRAL PINTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1505, 'FACULDADE SÃO FRANCISCO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1506, 'FACULDADE DE IPORÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1507, 'FANEESP - FACULDADE NACIONAL DE EDUCAÇÃO E ENSINO SUPERIOR DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1508, 'FACULDADE CCAA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1509, 'FACULDADE MODELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1510, 'FACULDADE EVANGÉLICA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1511, 'FACULDADES ITECNE DE CASCAVEL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1512, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ANÍSIO TEIXEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1514, 'FACULDADE SÃO SEBASTIÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1515, 'FACULDADE IDC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1516, 'FACULDADE NOSSA SENHORA DE FÁTIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1517, 'FACULDADE EVANGÉLICA DO PIAUI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1518, 'FACULDADE DOM BOSCO DE GOIOERÊ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1519, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PROGRAMUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1520, 'FACULDADE MAURÍCIO DE NASSAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1521, 'FACULDADE SUL DA AMÉRICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1523, 'FACULDADE PARANAPANEMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1524, 'FACULDADE DE CIÊNCIAS MÉDICAS E DA SAÚDE DE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1525, 'FACULDADE SALESIANA DOM BOSCO DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1526, 'FACULDADE REINALDO RAMOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1527, 'FACULDADE DE TEOLOGIA UMBANDISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1528, 'ESCOLA SUPERIOR DOM HELDER CÂMARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1529, 'FACULDADE PITÁGORAS DE TECNOLOGIA DE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1530, 'FACULDADE SÃO FRANCISCO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1531, 'FACULDADE DE BELÉM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1532, 'FACULDADE SERRA DO CARMO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1533, 'FACULDADE METROPOLITANA DE CAIEIRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1534, 'FACULDADE SÃO CAMILO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1535, 'FACULDADE ZUMBI DOS PALMARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1536, 'FACULDADE BARÃO DE PIRATININGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1537, 'FACULDADE DE EDUCAÇÃO E TECNOLOGIA DA REGIÃO MISSIONEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1538, 'FACULDADE SATC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1539, 'FACULDADE CONCÓRDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1540, 'FACULDADE JK - GUARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1542, 'FACULDADE DO ESTADO DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1543, 'FACULDADE VERDE NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1544, 'FACULDADE PAN AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1545, 'FACULDADE DE CIÊNCIA E TECNOLOGIA ALBERT EINSTEIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1546, 'FACULDADE CIDADE DE PATOS DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1441, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PAULO MARTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1442, 'FACULDADE SÃO SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1444, 'ESCOLA BRASILEIRA DE ECONOMIA E FINANÇAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1445, 'FACULDADE DE JUAZEIRO DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1446, 'FACULDADE TEOLÓGICA BATISTA ANA WOLLERMAN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1447, 'FACULDADE PENSAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1448, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE TUPI PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1449, 'FACULDADE META
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1558, 'INSTITUTO SUPERIOR DE EDUCAÇÃO OCIDENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1559, 'FACULDADE BARRETOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1561, 'FACULDADE DE CIÊNCIAS JURÍDICAS E SOCIAIS APLICADAS DE PRIMAVERA DO LESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1562, 'FACULDADE CENECISTA DE RONDONÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1563, 'INSTITUTO DE ENSINO SUPERIOR SANTA CECÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1564, 'FACULDADE DO INSTITUTO NACIONAL DE PÓS-GRADUAÇÃO DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1565, 'FACULDADE DO INSTITUTO NACIONAL DE PÓS-GRADUAÇÃO DE SÃO JOSÉ DOS CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1566, 'FAJOPA - FACULDADE JOÃO PAULO II
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1567, 'FACULDADE SANTA RITA DE CÁSSIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1568, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SANTA RITA DE CÁSSIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1570, 'FACULDADE DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1571, 'FACULDADE DELTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1572, 'CHRISTUS FACULDADE DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1573, 'FACULDADE TEOLÓGICA DE CIÊNCIAS HUMANAS E SOCIAIS LOGOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1574, 'FACULDADE POTIGUAR DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1575, 'FACULDADE DE SAÚDE E DESENVOLVIMENTO HUMANO SANTO AGOSTINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1576, 'FACULDADE DE ODONTOLOGIA DO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1577, 'FACULDADE ANCHIETA DO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1578, 'FACULDADE PITÁGORAS DE DIVINÓPOLIS - FPD
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1579, 'UNIVERSIDADE COMUNITÁRIA DA REGIÃO DE CHAPECÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1580, 'FACULDADE DE TECNOLOGIA SENAI RIO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1581, 'FACULDADE DE TECNOLOGIA SENAI JARAGUÁ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1582, 'FACULDADE DE TECNOLOGIA SENAI BRUSQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1584, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ANGLO-AMERICANO DE FOZ DO IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1585, 'FACULDADE DE TECNOLOGIA SENAI FLORIANÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1586, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1587, 'INSTITUTO FEDERAL DE EDUCAçãO, CIêNCIA E TECNOLOGIA DO SERTãO PERNAMBUCANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1588, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA  DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1589, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1591, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA  DO TRIÂNGULO MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1592, 'FACULDADE DE TECNOLOGIA IBTA CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1593, 'FACULDADES INTEGRADAS ASSOCIAÇÃO DE ENSINO DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1594, 'FACULDADE EQUIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1595, 'UNIVERSIDADE DO ESTADO DO AMAZONAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1596, 'FACULDADE DE TECNOLOGIA DO COMÉRCIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1597, 'INSTITUTO SUPERIOR DE EDUCAÇÃO EQUIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1598, 'FACULDADE DE ADMINISTRAÇÃO DA FESPSP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1599, 'INSTITUTO SUPERIOR DE EDUCAÇÃO UNIÃO DAS AMÉRICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1600, 'CENTRO DE ENSINO SUPERIOR ARCANJO MIKAEL DE ARAPIRACA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1601, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SERGIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1602, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE RORAIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1603, 'FACULDADE DE SÃO ROQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1604, 'INSTITUTO SUPERIOR DE EDUCAÇÃO CORAÇÃO DE JESUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1606, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1607, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1608, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE CAJAZEIRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1609, 'FACULDADES INTEGRADAS DOS CAMPOS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1610, 'FACULDADE DE MINAS BH
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1611, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ALBERT EINSTEIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1612, 'FACULDADE DE QUATRO MARCOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1613, 'FACULDADE DE CIÊNCIAS BIOLÓGICAS E DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1614, 'FACULDADE DE ARAÇATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1615, 'FACULDADE ENTRE RIOS DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1616, 'FACULDADE DE CIÊNCIAS DA BAHIA - FACIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1617, 'ESCOLA SUPERIOR DE CIÊNCIAS DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1618, 'FACULDADE DE FARMÁCIA E BIOQUÍMICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1619, 'FACULDADE DE ENFERMAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1620, 'FACULDADE DE MEDICINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1621, 'FACULDADE DE SISTEMA DE INFORMAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1622, 'FACULDADE DE ADMINISTRAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1623, 'FACULDADE LUIZ EDUARDO MAGALHÃES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1624, 'FACULDADE IGUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1625, 'FACULDADE DE ODONTOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1626, 'FACULDADE QUIRINÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1627, 'FACULDADE MADRE THAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1629, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO SUDESTE DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1630, 'FACULDADE SANTO ANTONIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1631, 'FACULDADE DE TECNOLOGIA ENIAC-FAPI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1632, 'FACULDADE DE TECNOLOGIA SENAC FLORIANÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1633, 'FACULDADE DE TECNOLOGIA INFORMÁTICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1634, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE JUNQUEIRÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1636, 'FACULDADES INTEGRADAS DE PATOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1637, 'FACULDADE DE TECNOLOGIA IPUC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1638, 'FACULDADE INED DE RIO CLARO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1639, 'FACULDADE DE TECNOLOGIA TERMOMECÂNICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1640, 'FACULDADE DE TECNOLOGIA INTERNACIONAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1641, 'FACULDADE DE TECNOLOGIA SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1642, 'FACULDADE DE ENSINO SUPERIOR DE CATALÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1643, 'INSTITUTO DE EDUCAÇÃO E ENSINO SUPERIOR DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1644, 'FACULDADE DE TECNOLOGIA SENAC RIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1549, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE BARRETOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1550, 'FACULDADE DEL REY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1551, 'FACULDADE DE TALENTOS HUMANOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1553, 'FACULDADE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1554, 'FACULDADE DO BAIXO PARNAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1555, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, DIREITO E ECONOMIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1556, 'FACULDADE DO PANTANAL MATOGROSSENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1557, 'FACULDADE PROJEÇÃO DO GUARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1656, 'INSTITUTO DE ENSINO SUPERIOR MÚLTIPLO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1657, 'FACULDADE DE TEOLOGIA INTEGRADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1658, 'FACULDADE MONTESSORIANO DE SALVADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1659, 'FACULDADE MISSIONEIRA DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1660, 'FACULDADE PARAÍSO DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1661, 'FACULDADE RAÍZES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1662, 'FACULDADE DA ACADEMIA BRASILEIRA DE EDUCAÇÃO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1663, 'FACULDADE DE ENSINO SUPERIOR DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1664, 'FACULDADE LS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1666, 'FACULDADE DE SAÚDE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1667, 'FACULDADE EÇA DE QUEIROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1668, 'FACULDADE JOSÉ AUGUSTO VIEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1670, 'FACULDADE DE MARKETING E NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1671, 'FACULDADE DO SERIDÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1672, 'FACULDADES INTEGRADAS DE CIÊNCIAS HUMANAS, SAÚDE E EDUCAÇÃO DE GUARULHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1673, 'FACULDADE DE SAÚDE IBITURUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1674, 'FACULDADE DE ARARAQUARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1675, 'FACULDADE DO LITORAL CATARINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1676, 'FACULDADE INEDI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1677, 'INSTITUTO SUPERIOR DE EDUCAÇÃO IBITURUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1678, 'FACULDADE POLITÉCNICA DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1679, 'INSTITUTO DE ENSINO SUPERIOR E PESQUISA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1680, 'INSTITUTO SUPERIOR DE ENSINO E PESQUISA DE ITUIUTABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1681, 'FACULDADE DE FILOSOFIA DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1682, 'FACULDADE DE ENFERMAGEM DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1683, 'FACULDADE DE DIREITO DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1684, 'FACULDADE DE ENGENHARIA DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1685, 'FACULDADE DE INFORMÁTICA DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1686, 'FACULDADE DE SERVIÇO SOCIAL DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1688, 'FACULDADE DE ADMINISTRAÇÃO DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1689, 'FACULDADE EDUCAÇÃO FÍSICA DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1690, 'FACULDADE DE MODA DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1691, 'FACULDADE DE FILOSOFIA E LETRAS DE DIAMANTINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1692, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS NOSSA SENHORA DE SION
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1693, 'FACULDADE DE CIÊNCIAS EXATAS E HUMANAS DA CAMPANHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1694, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE DIAMANTINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1695, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE DIVINÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1696, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE CLÁUDIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1697, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO ALTO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1698, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE ITUIUTABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1699, 'FACULDADE SENAC/RS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1700, 'CENTRO DE ENSINO SUPERIOR DE CONSELHEIRO LAFAIETE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1701, 'FACULDADE PINHALZINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1702, 'FACULDADE DA FRONTEIRA - FAF
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1704, 'FACULDADE DE ADMINISTRAÇÃO DE EMPRESAS IBRAFEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1705, 'FACULDADE VICENTINA - FAVI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1706, 'FACULDADE DE PRESIDENTE VENCESLAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1707, 'FACULDADE DE CIÊNCIAS GERENCIAIS ALVES FORTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1708, 'FACULDADES INTEGRADAS DA VITÓRIA DE SANTO ANTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1709, 'FACULDADE DE CIÊNCIAS DA SAÚDE ARCHIMEDES THEODORO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1710, 'FACULDADE JANGADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1711, 'FACULDADE CATÓLICA DE POUSO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1713, 'FACULDADE EVANGÉLICA DE TECNOLOGIA, CIÊNCIAS E BIOTECNOLOGIA DA CGADB
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1714, 'CENTRO UNIVERSITÁRIO EURÍPEDES DE MARÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1715, 'FACULDADE DE NANUQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1716, 'FACULDADE CERES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1717, 'FACULDADE DE TEOLOGIA EVANGÉLICA EM CURITIBA - FATEV
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1718, 'FACULDADES INTEGRADAS SÉVIGNÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1719, 'FACULDADE ANGLICANA DE TAPEJARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1720, 'INSTITUTO DE ENSINO SUPERIOR DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1721, 'FACULDADE NOVO HAMBURGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1722, 'FACULDADE DE DESENVOLVIMENTO E INTEGRAÇÃO REGIONAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1723, 'FACULDADE TEOLÓGICA BATISTA DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1724, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SANTA CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1725, 'FACULDADE SANTA CRUZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1727, 'FACULDADE DOM PEDRO II
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1728, 'FACULDADE DE ENFERMAGEM SÃO VICENTE DE PAULA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1729, 'FACULDADE AMÉRICA LATINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1730, 'FACULDADES INTEGRADAS DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1731, 'FACULDADES INTEGRADAS TORRICELLI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1732, 'ESCOLA SUPERIOR ASSOCIADA DE GOIÂNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1733, 'FACULDADES INTEGRADAS IPITANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1735, 'FACULDADES INTEGRADAS DA UNIÃO DE ENSINO SUPERIOR CERTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1736, 'FACULDADE ANHANGUERA DE VALINHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1737, 'FACULDADES INTEGRADAS IESGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1738, 'ESCOLA SUPERIOR DE CIÊNCIAS SOCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1739, 'FACULDADE PERNAMBUCANA DE SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1740, 'FACULDADE DE CIÊNCIAS HUMANAS E EXATAS DO SERTÃO DO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1741, 'FACULDADE MARIO SCHENBERG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1742, 'FACULDADE CATÓLICA NOSSA SENHORA DAS VITÓRIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1743, 'FACULDADE DAMAS DA INSTRUÇÃO CRISTÃ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1744, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL DE BARRETOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1745, 'FACULDADE CATÓLICA SANTA TERESINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1746, 'FACULDADE ANHANGUERA DE CUIABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1646, 'UNIVERSIDADE ESTADUAL DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1647, 'FACULDADE DE TECNOLOGIA DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1648, 'FACULDADE DE GETÚLIO VARGAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1650, 'FACULDADE GUARAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1651, 'FACULDADE SÃO FRANCISCO DE JUAZEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1653, 'CENTRO UNIVERSITÁRIO DO SUL DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1654, 'CENTRO UNIVERSITÁRIO DE PATOS DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1655, 'CENTRO UNIVERSITÁRIO DE LAVRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1757, 'FACULDADES INTEGRADAS DO VALE DO IVAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1758, 'FACULDADE PEDRO II
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1759, 'FACULDADE DE TECNOLOGIA TUPY DE SÃO BENTO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1760, 'FACULDADE DE TECNOLOGIA IPEP DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1761, 'FACULDADE DE TECNOLOGIA SAINT PASTOUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1762, 'FACULDADE PORTAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1763, 'ESCOLA SUPERIOR NACIONAL DE SEGUROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1764, 'FACULDADE CIÊNCIAS DA VIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1765, 'FACULDADE MARANHENSE SÃO JOSÉ DOS COCAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1766, 'FACULDADE DE EDUCAÇÃO DE BACABAL - FEBAC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1767, 'FACULDADE DE TECNOLOGIA SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1768, 'FACULDADE PAULISTA DE PESQUISA E ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1769, 'FACULDADES INTEGRADAS DOM PEDRO II
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1771, 'FACULDADE DE ALMENARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1772, 'FACULDADE SERRA DA MESA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1773, 'CENTRO DE EDUCAçãO SUPERIOR ÚNICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1774, 'FACULDADE OMNI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1776, 'FACULDADE MADRE TEREZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1777, 'FACULDADE TEOLÓGICA BATISTA DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1778, 'FACULDADE DE TECNOLOGIA PASTOR DOHMS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1779, 'FACULDADE SÃO TOMAZ DE AQUINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1780, 'INSTITUTO UVB.BR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1782, 'INSTITUTO DE ENSINO SUPERIOR DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1783, 'FACULDADE DE ARACAJU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1784, 'FACULDADE DE TECNOLOGIA RADIAL SANTO ANDRÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1785, 'FACULDADE DE TECNOLOGIA CACHOEIRO DE ITAPEMIRIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1786, 'FACULDADE PARAENSE DE ENSINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1787, 'INSTITUTO DE ENSINO SUPERIOR DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1788, 'INSTITUTO MARANHENSE DE ENSINO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1789, 'FACULDADE DE ENSINO DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1790, 'FACULDADE DE ENSINO SUPERIOR DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1791, 'FACULDADE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1793, 'FACULDADE DE TECNOLOGIA ENSITEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1794, 'FACULDADE FRUTAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1795, 'FACULDADE DE TECNOLOGIA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1796, 'FACULDADE GUAIRACÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1797, 'FACULDADE JAUENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1798, 'FACULDADE DE TECNOLOGIA SENAC DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1799, 'FACULDADE DE TECNOLOGIA DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1800, 'FACULDADE DE TECNOLOGIA IAPEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1801, 'FACULDADE DE DIREITO DE ALTA FLORESTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1803, 'INSTITUTO DE EDUCAÇÃO SUPERIOR DE POUSO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1804, 'FACULDADE VASCO DA GAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1805, 'FACULDADE DE TECNOLOGIA DO UNIUOL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1806, 'FACULDADE DE TECNOLOGIA NOVO RUMO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1807, 'CENTRO UNIVERSITÁRIO FACVEST
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1808, 'FACULDADE BAIANA DE DIREITO E GESTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1809, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1810, 'FACULDADE MAURÍCIO DE NASSAU DE NATAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1812, 'FACULDADE LUCIANO FEIJÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1813, 'FACULDADE REGIONAL DE ALAGOINHAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1814, 'FACULDADE BRASILEIRA DE EDUCAÇÃO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1815, 'FACULDADE MAUÁ DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1817, 'ESCOLA SUPERIOR PROFESSOR PAULO MARTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1818, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL GUAXUPÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1819, 'AVM - FACULDADE INTEGRADA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1820, 'FACULDADE BRASIL CENTRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1821, 'FACULDADE DECISION DE NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1822, 'FACULDADE MAURÍCIO DE NASSAU DE CAMPINA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1823, 'FACULDADE DE INTEGRAÇÃO DO SERTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1824, 'FACULDADE MUNDIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1825, 'FACULDADE DE TECNOLOGIA SENAI ROBERTO MANGE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1826, 'FACULDADE ARNALDO HORÁCIO FERREIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1828, 'FACULDADE MÉTODO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1829, 'FACULDADE ANHANGUERA DE LIMEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1830, 'FACULDADE ANHANGUERA DE INDAIATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1831, 'FACULDADE ALIANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1832, 'FACULDADE DE ENSINO SUPERIOR SANTA BARBARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1833, 'FACULDADE DE TECNOLOGIA SENAC TUBARÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1834, 'FACULDADE DE TECNOLOGIA SENAC CHAPECÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1835, 'FACULDADE DE TECNOLOGIA SENAC BLUMENAU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1836, 'FACULDADE DE TECNOLOGIA LUIZ ADELAR SCHEUER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1838, 'FACULDADES INTEGRADAS DE CATAGUASES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1839, 'FACULDADE DE TECNOLOGIA SENAI CIMATEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1840, 'INSTITUTO SUPERIOR DE EDUCAÇÃO CARLOS CHAGAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1841, 'CENTRO UNIVERSITÁRIO DE CARATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1842, 'CENTRO SUPERIOR DE ENSINO E PESQUISA DE MACHADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1843, 'UNIVERSIDADE DE RIO VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1844, 'FACULDADE SÃO FRANCISCO DE PIUMHI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1845, 'FACULDADE DE TECNOLOGIA DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1846, 'FACULDADE DE TECNOLOGIA PENTÁGONO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1847, 'FACULDADE DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1848, 'FACULDADE DE TECNOLOGIA CENACAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1849, 'FACULDADE DE TECNOLOGIA INTEGRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1850, 'CENTRO UNIVERSITÁRIO DE FORMIGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1851, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO VALE DO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1852, 'CENTRO UNIVERSITÁRIO SENAC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1811, 'FACULDADE DAS ÁGUAS EMENDADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1748, 'FACULDADE DE COMPUTAÇÃO DE MONTES CLAROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1749, 'FACULDADE EVANGÉLICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1750, 'FACULDADE FILADÉLFIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1751, 'FACULDADE DOM LUIS DE ORLEANS E BRAGANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1752, 'SINAL - FACULDADE DE TEOLOGIA E FILOSOFIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1753, 'FACULDADE DE TECNOLOGIA DARCY RIBEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1755, 'FACULDADE UNILAGOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1756, 'FUNDAÇÃO DE ENSINO SUPERIOR DE CLEVELÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1864, 'FACULDADE CENECISTA DE SENHOR DO BONFIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1865, 'FACULDADE DE TECNOLOGIA SENAC PELOTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1867, 'FACULDADE DE TECNOLOGIA SENAC PASSO FUNDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1868, 'FACULDADE DE TECNOLOGIA RADIAL CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1869, 'CENTRO UNIVERSITÁRIO METODISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1870, 'FACULDADE ANHANGUERA DE RIO CLARO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1871, 'INSTITUTO NACIONAL DE EDUCAÇÃO DE SURDOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1872, 'CENTRO UNIVERSITÁRIO PADRE ANCHIETA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1873, 'FACULDADE DE TECNOLOGIA DE BOTUCATU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1874, 'FACULDADE DE TECNOLOGIA DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1875, 'FACULDADE DE TECNOLOGIA DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1876, 'FACULDADE DE TECNOLOGIA DE MAUÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1877, 'FACULDADE DE TECNOLOGIA DE MOCOCA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1879, 'FACULDADE DE TECNOLOGIA ZONA LESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1880, 'FACULDADE DE ITAPECERICA DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1881, 'FACULDADE POLITEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1882, 'CENTRO UNIVERSITÁRIO FLUMINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1883, 'FACULDADE DE TECNOLOGIA DE CATALÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1884, 'FACULDADE DE TECNOLOGIA INTENSIVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1934, 'FACULDADE DE TECNOLOGIA INED', 'FATEC IPATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1886, 'FACULDADE DE TECNOLOGIA TUPY CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1887, 'CENTRO DE EDUCAÇÃO SUPERIOR BARNABITA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1888, 'FACULDADE DE CIÊNCIAS GERENCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1889, 'FACULDADE DE TECNOLOGIA FAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1891, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO ICESP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1892, 'FACULDADE DE TECNOLOGIA DE GRAVATAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1893, 'FACULDADE TECNOLÓGICA INAP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1894, 'FACULDADE DE TECNOLOGIA JARDIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1895, 'FACULDADE DE ROSEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1896, 'FACULDADE DE TECNOLOGIA PEDRO ROGÉRIO GARCIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1897, 'FACULDADE DE TECNOLOGIA DE CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1898, 'FACULDADE DE TECNOLOGIA IBRATEC DE JOÃO PESSOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1899, 'FACULDADE DE TECNOLOGIA EQUIPE DARWIN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1901, 'FACULDADE DE TECNOLOGIA TECBRASIL - UNIDADE BENTO GONÇALVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1902, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA FARROUPILHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1903, 'FACULDADE DE TECNOLOGIA SENAI ÍTALO BOLOGNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1904, 'FACULDADE DE TECNOLOGIA SENAI DE DESENVOLVIMENTO GERENCIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1905, 'ESCOLA SUPERIOR DE ENGENHARIA E GESTÃO DE SÃO PAULO - ESEG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1906, 'FACULDADE DE TECNOLOGIA SENAI PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1907, 'INSTITUTO CATÓLICO DE ESTUDOS SUPERIORES DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1908, 'FACULDADE DE CERES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1909, 'FACULDADE JOAQUIM NABUCO - PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1910, 'FACULDADE TOBIAS BARRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1911, 'FACULDADE JATAIENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1913, 'FACULDADE ANHANGUERA DE SANTA BÁRBARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1914, 'FACULDADE ANHANGUERA DE TAUBATÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1915, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE ALAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1916, 'FACULDADE DE TECNOLOGIA SENAI SÃO JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1917, 'FACULDADE DE TECNOLOGIA SENAI ITAJAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1918, 'FACULDADE DE TECNOLOGIA DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1919, 'FACULDADE JOAQUIM NABUCO RECIFE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1920, 'FACULDADE METROPOLITANA DE RIO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1921, 'FACULDADE DE TECNOLOGIA SENAC GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1922, 'CENTRO UNIVERSITÁRIO BARRIGA VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1923, 'CENTRO DE ENSINO SUPERIOR DE UBERABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1924, 'FACULDADE NOSSA CIDADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1926, 'FACULDADE EVILÁSIO FORMIGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1927, 'FACULDADE NAZARENA DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1928, 'FACULDADE PERUIBE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1929, 'FACULDADE ALIANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1930, 'FACULDADE MINEIRENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1931, 'FACULDADE DE TECNOLOGIA ROGACIONISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1932, 'FACULDADE DE COMUNICAÇÃO SOCIAL DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1933, 'FACULDADE DE ENSINO SUPERIOR DO NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1947, 'FACULDADE DO VALE ELVIRA DAYRELL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1935, 'FACULDADE DE TECNOLOGIA CÉSAR LATTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1936, 'FACULDADE DE DIREITO DE PEDRO LEOPOLDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1938, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE MATIAS BARBOSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1939, 'FACULDADE AÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1940, 'FACULDADE DE TECNOLOGIA INED - UNIDADE LAGOA DA PAMPULHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1941, 'FACULDADES INTEGRADAS DE CACOAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1942, 'FACULDADES INTEGRADAS PITÁGORAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1943, 'INSTITUTO DE FILOSOFIA E TEOLOGIA DE GOIÁS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1951, 'FACULDADE DO CENTRO EDUCACIONAL MINEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1945, 'FACULDADE DE TECNOLOGIA DE PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1946, 'FACULDADE LITERATUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1944, 'FACULDADE DE INHUMAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1948, 'FACULDADE INTEGRAÇÃO TIETE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1949, 'FACULDADE DE TECNOLOGIA SENAC JARAGUÁ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1950, 'FACULDADE DE TECNOLOGIA SENAI CETIND
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1952, 'FACULDADE DE TECNOLOGIA AMÉRICA DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1953, 'FACULDADE DE TECNOLOGIA DE PALMAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1954, 'FACULDADE DE CIÊNCIAS SOCIAIS DOS PALMARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1955, 'FACULDADE DE TECNOLOGIA ÁLVARES DE AZEVEDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1885, 'FACULDADE TECNOLOGIA EDUVALE', 'FATEC EDUVALE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1854, 'FACULDADE UNIÃO DE GOYAZES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1855, 'FACULDADE DE TECNOLOGIA DE JOÃO PESSOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1856, 'FACULDADE DE TECNOLOGIA ANCHIETA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1857, 'FACULDADE DE TECNOLOGIA SÃO MATEUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1858, 'FACULDADE JK - ASA NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1859, 'FACULDADE DE TECNOLOGIA CETEP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1860, 'FACULDADE EVANGÉLICA CRISTO REI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1863, 'FACULDADE DE ENSINO SUPERIOR DO INTERIOR PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1965, 'FACULDADE JK - UNIDADE I - GAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1966, 'FACULDADE DE ENFERMAGEM DE BELO JARDIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1967, 'FACULDADES INTEGRADAS BARROS MELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1969, 'FACULDADE PROFESSOR MIGUEL ÂNGELO DA SILVA SANTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1970, 'FACULDADE UNIGRAN CAPITAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1975, 'FACULDADE CIDADE DE GUANHÃES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1972, 'FACULDADE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1971, 'FACULDADE DE ENFERMAGEM NOVA ESPERANÇA DE MOSSORÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1974, 'FACULDADE RIO CLARO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1976, 'FACULDADE METROPOLITANA DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1977, 'FACULDADE METROPOLITANA DE MARABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1978, 'FACULDADE DOM PEDRO II DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1979, 'FACULDADE PASCHOAL DANTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1980, 'FACULDADE ANHANGUERA JARAGUÁ DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1982, 'FACULDADES INTEGRADAS CAMPO-GRANDENSES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1983, 'UNIVERSIDADE FEDERAL DO RECÔNCAVO DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1984, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DA GRANDE DOURADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1985, 'FACULDADE REGIONAL PALMITOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1986, 'CENTRO UNIVERSITÁRIO CATÓLICO SALESIANO AUXILIUM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1987, 'FACULDADE INTEGRADA TIRADENTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1988, 'FACULDADE ADVENTISTA DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1989, 'FACULDADE DE TECNOLOGIA SENAI CAMPO GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1990, 'FACULDADE SÃO FRANCISCO DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1991, 'FACULDADE DE TECNOLOGIA HERRERO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1992, 'FACULDADE PARQUE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1994, 'FACULDADE CENTRO MATO-GROSSENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1995, 'FACULDADE DE TECNOLOGIA MACHADO DE ASSIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1996, 'FACULDADE DO NORTE GOIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1997, 'FACULDADE APOGEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1998, 'FACULDADE DE TECNOLOGIA FATEP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1999, 'FACULDADE DE OURO PRETO DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2000, 'FACULDADE CATÓLICA DE RONDONIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2001, 'FACULDADE DE ADMINISTRAÇÃO E NEGÓCIOS EM RIBEIRÃO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2002, 'FACULDADE DE CIÊNCIAS GERENCIAIS EM VOTUPORANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2003, 'FACULDADE DE CIÊNCIAS GERENCIAIS BARÃO DE JUNDIAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2004, 'FACULDADE DE ENSINO SUPERIOR KM 125
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2005, 'FACULDADE DE TECNOLOGIA ASSESSORITEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2006, 'FACULDADE DE EDUCAÇÃO E MEIO AMBIENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2007, 'FACULDADE ANHANGUERA DE CAXIAS DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2008, 'FACULDADE DE TECNOLOGIA FUNDETEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2009, 'FACULDADE DE TECNOLOGIA TECMED
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2010, 'FACULDADE ANGLO-AMERICANO DE JOÃO PESSOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2011, 'FACULDADE ANGLO-AMERICANO DE CAXIAS DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2012, 'FACULDADE ANGLO-AMERICANO DE PASSO FUNDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2013, 'FACULDADE ANHANGÜERA DE SÃO JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2014, 'FACULDADE ANHANGÜERA DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2015, 'FACULDADE ANHANGÜERA DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2016, 'FACULDADE DE AGRONEGÓCIO PARAÍSO DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2017, 'FACULDADE RIO SONO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2018, 'FACULDADE DELTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2020, 'FACULDADE CENTRO PAULISTANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2021, 'FACULDADE DE TECNOLOGIA DE NOVA ANDRADINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2022, 'FACULDADE NOROESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2023, 'FACULDADE NOVA ROMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2024, 'FACULDADE DE TECNOLOGIA GESTÃO & MARKETING
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2025, 'FACULDADE ALTERNATIVA DE ENSINO SUPERIOR DO AGRESTE - FAESA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2026, 'ESCOLA DOMINICANA DE TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2027, 'FACULDADES INTEGRADAS VIANNA JÚNIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2028, 'FACULDADE DE CIÊNCIAS HUMANAS DE CRUZEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2030, 'FACULDADE CENECISTA DE RIO BONITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2031, 'FACULDADE MESSIANICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2032, 'FACULDADE DE TECNOLOGIA SENAC DF
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2033, 'FACULDADE PRESBITERIANA AUGUSTO GALVÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2034, 'FACULDADE DE PATROCINIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2035, 'FACULDADE SANTA EMÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2036, 'FACULDADE CATÓLICA DO CARIRI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2037, 'FACULDADE REGIONAL DE RIACHÃO DO JACUÍPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2038, 'FACULDADE DE TECNOLOGIA DE SANTA CATARINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2039, 'FACULDADE DE TECNOLOGIA E CIENCIAS DO NORTE DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2040, 'CENTRO UNIVERSITÁRIO MUNICIPAL DE SÃO JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2041, 'FACULDADE DE TECNOLOGIA ALFA DE UMUARAMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2042, 'FACULDADE UNA DE CONTAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2043, 'FACULDADE BI MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2044, 'FACULDADE KENNEDY DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2046, 'FACULDADE DE TECNOLOGIA CDL DE FORTALEZA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2047, 'INSTITUTO FEDERAL DE EDUCAÇÃO CIÊNCIA E TECNOLOGIA DE RONDÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2048, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2049, 'FACULDADE DE TECNOLOGIA CENTEC - CARIRI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2050, 'FACULDADES INTEGRADAS DE ITARARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2051, 'FACULDADE ANTÔNIO MENEGHETTI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2052, 'FACULDADE DE TECNOLOGIA SENAI FELIX GUISARD
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2053, 'FACULDADE DE TECNOLOGIA SENAI NADIR DIAS DE FIGUEIREDO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2054, 'FACULDADE DE TECNOLOGIA SENAI ANCHIETA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2055, 'FACULDADE DE TECNOLOGIA SENAI MARIANO FERRAZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2056, 'FACULDADE DE TECNOLOGIA SENAI ANTÔNIO ADOLPHO LOBBE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2057, 'FACULDADE DE CIÊNCIAS GERENCIAIS E EMPREENDEDORISMO - FACIGE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2058, 'FACULDADE DE TECNOLOGIA EVOLUÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1973, 'ESCOLA SUPERIOR PAULISTA DE ADMINISTRAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1957, 'FACULDADE PITÁGORAS DE BETIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1958, 'FACULDADE TERRA NORDESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1959, 'FACULDADE PADRE ANCHIETA DE CAJAMAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1960, 'FACULDADE DE EDUCAÇÃO FÍSICA DE ARAGUAÍNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1961, 'FACULDADES INTEGRADAS DE MINEIROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1962, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE GOIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1963, 'FACULDADE DE BALSAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1964, 'FACULDADE PANAMERICANA DE JI-PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2068, 'FACULDADE PITÁGORAS DE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2069, 'FACULDADE DE TECNOLOGIA PITÁGORAS - UNIDADE LONDRINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2070, 'FACULDADE DE TECNOLOGIA DE TAUBATÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2071, 'FACULDADE ANHANGUERA DE ITAPECERICA DA SERRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2072, 'FACULDADE DE CONCHAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2073, 'FACULDADE DE CIÊNCIAS MÉDICAS DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2074, 'FACULDADE FASIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2075, 'FACULDADE BATISTA PIONEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2076, 'FACULDADE DO TRABALHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2077, 'FACULDADE DE CASTANHAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2078, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, MARKETING E COMUNICAÇÃO DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2079, 'FACULDADE INTEGRADA DAS CATARATAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2080, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO ABC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2081, 'FACULDADE DE TECNOLOGIA DE PRAIA GRANDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2082, 'FACULDADE CLARETIANA DE TEOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2084, 'FACULDADE INTERNACIONAL DO DELTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2085, 'FACULDADE AUM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2086, 'FACULDADE PITÁGORAS DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2087, 'FACULDADE INTEGRADA DE ARAGUATINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2088, 'CENTRO UNIVERSITÁRIO DE SETE LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2089, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DO MARANHÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2090, 'FACULDADE ITOP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2091, 'FACULDADE METROPOLITANA DO PLANALTO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2092, 'FACULDADE DE SÃO JOSÉ DOS CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2093, 'FACULDADE DE TECNOLOGIA CENTEC - SERTÃO CENTRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2094, 'FACULDADE CRUZ AZUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2095, 'FACULDADE DE TECNOLOGIA INESUL DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2096, 'FACULDADE ESTAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2097, 'FACULDADE DO MÉDIO PARNAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2098, 'CENTRO UNIVERSITÁRIO ESTADUAL DA ZONA OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2100, 'INSTITUTO SUPERIOR DE TECNOLOGIA EM CIÊNCIA DA COMPUTAÇÃO DE PETRÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2101, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PROFESSOR ALDO MUYLAERT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2102, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE SANTO ANTÔNIO DE PÁDUA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2103, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE ITAPERUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2104, 'FACULDADE SANTO AUGUSTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2105, 'FACULDADE DE EDUCAÇÃO SÃO BRAZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2106, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA CATARINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2107, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE MARABÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2108, 'FACULDADE DE DIREITO DE GARANHUNS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2109, 'FACULDADE DE TECNOLOGIA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2111, 'FACULDADE DE TEOLOGIA DE SÃO PAULO DA IGREJA PRESBITERIANA INDEPENDENTE DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2112, 'INSTITUTO SUPERIOR DE EDUCAÇÃO BOM JESUS DO ITABAPOANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2113, 'INSTITUTO SUPERIOR DE EDUCAÇÃO TRÊS RIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2115, 'FACULDADE DE TECNOLOGIA INED - UNIDADE CONTAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2116, 'UNIVERSIDADE ESTADUAL DE RORAIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2117, 'FACULDADE EDUCACIONAL DE MATELÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2118, 'FACULDADE DE TECNOLOGIA DE SÃO BERNARDO DO CAMPO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2119, 'FACULDADE INTERNACIONAL SIGNORELLI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2120, 'FACULDADE SOGIPA DE EDUCAÇÃO FÍSICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2121, 'FACULDADE FACMIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2122, 'FACULDADE DE TECNOLOGIA SENAC CAÇADOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2124, 'FACULDADE DINÂMICA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2125, 'FACULDADES INTEGRADAS PADRE ALBINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2126, 'FACULDADE UIRAPURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2127, 'FACULDADES INTEGRADAS PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2128, 'FACULDADE RAIMUNDO MARINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2129, 'UNIVERSIDADE ESTADUAL DE ALAGOAS - UNEAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2130, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE SANTOS DUMONT
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2131, 'FACULDADE DE DIREITO DE CARANGOLA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2132, 'FACULDADE FORTIUM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2133, 'FACULDADES INTEGRADAS DE TAQUARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2134, 'FACULDADE ANHANGÜERA DE RIBEIRÃO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2136, 'FACULDADE ANHANGÜERA DE DOURADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2137, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS E HUMANAS DE GARANHUNS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2138, 'FACULDADES ATIBAIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2139, 'FACULDADES UNIFICADAS DOCTUM DE CATAGUASES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2140, 'FACULDADES UNIFICADAS DOCTUM DE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2141, 'FACULDADES UNIFICADAS DOCTUM DE IÚNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2142, 'FACULDADES UNIFICADAS DOCTUM DE LEOPOLDINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2143, 'FACULDADE PORTO-ALEGRENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2144, 'FACULDADE GUILHERME GUIMBALA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2146, 'FACULDADE SERIGY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2147, 'FACULDADES INTEGRADAS ASMEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2148, 'FACULDADES UNIFICADAS DOCTUM DE TEÓFILO OTONI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2149, 'FACULDADE IMPACTA DE TECNOLOGIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2150, 'FACULDADES UNIVERSITAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2152, 'FACULDADES OPET
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2153, 'FACULDADE DE TECNOLOGIA DE MINAS GERAIS - FATEMIG
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2155, 'FACULDADE PARA O DESENVOLVIMENTO DO SUDESTE TOCANTINENSE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2156, 'FACULDADE ANHANGÜERA DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2157, 'FACULDADE DE CIÊNCIA, TECNOLOGIA E EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2158, 'FACULDADE CAMPO REAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2159, 'FACULDADE GUARAPUAVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2160, 'FACULDADE CATHEDRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2151, 'INSTITUTO DE ENSINO SUPERIOR INTEGRADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2059, 'FACULDADE ANHANGÜERA DE CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2060, 'ESCOLA SUPERIOR DE ARTES CÉLIA HELENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2061, 'FACULDADE DE EDUCAÇÃO  ACREANO EUCLIDES DA CUNHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2062, 'FACULDADE VÉRTICE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2063, 'FACULDADE DIOCESANA DE MOSSORÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2065, 'ESCOLA SUPERIOR DE SAÚDE DE ARCOVERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2066, 'FACULDADE PITÁGORAS DE POÇOS DE CALDAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2067, 'FACULDADE PITÁGORAS DE SÃO LUIZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2171, 'FACULDADE DE VARGEM GRANDE PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2173, 'FACULDADE ANHANGUERA DE JOINVILLE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2174, 'FACULDADE DE TECNOLOGIA DE SÃO JOSÉ DOS CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2175, 'FACULDADES UNIDAS DO VALE DO ARAGUAIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2176, 'CENTRO UNIVERSITÁRIO SÃO JOSÉ DE ITAPERUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2177, 'UNIVERSIDADE DO ESTADO DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2178, 'FACULDADE MUNICIPAL DE PALHOÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2179, 'FAMAC - FACULDADE DE MACHADINHO DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2180, 'FACULDADE OBOÉ - FACO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2181, 'INSTITUTO LOGOS DE EDUCAÇÃO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2182, 'FACULDADE DE TECNOLOGIA DE VALENÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2184, 'FACULDADE DE TEOLOGIA E CIÊNCIAS HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2185, 'FACULDADE DE TECNOLOGIA BANDEIRANTES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2187, 'FACULDADE HSM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2188, 'FACULDADE LÍDER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2189, 'FACULDADE NORTE CAPIXABA DE SAO MATEUS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2190, 'FACULDADE UNIÃO ARARUAMA DE ENSINO S/S LTDA.
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2191, 'FACULDADE CENTRO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2192, 'ESCOLA SUPERIOR NACIONAL DE SEGUROS - UNIDADE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2193, 'FACULDADE ANHANGUERA DE SUMARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2194, 'FACULDADE DE TECNOLOGIA ALTO MÉDIO SÃO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2196, 'FACULDADE METROPOLITANA DE ANÁPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2197, 'FACULDADE DE TECNOLOGIA DA SERRA GAÚCHA - CAXIAS DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2198, 'FACULDADE DE TECNOLOGIA DE MACAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2199, 'FACULDADE ANGLO-AMERICANO DE CHAPECÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2200, 'FACULDADE DE EDUCAÇÃO E CULTURA DE VILHENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2201, 'FACULDADE PITÁGORAS DE VOTORANTIM - SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2202, 'FACULDADE DE TECNOLOGIA INED - UNIDADE BETIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2203, 'FACULDADE PAULO SETUBAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2204, 'FACULDADE DE TECNOLOGIA DO ISTITUTO EUROPEO DI DESIGN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2205, 'FACULDADE DO POVO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2206, 'FACULDADE DE TECNOLOGIA INSPIRAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2207, 'FACULDADE EVOLUÇÃO ALTO OESTE POTIGUAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2208, 'INSTITUTO NACIONAL DE ENSINO SUPERIOR E PÓS-GRADUAÇÃO PADRE GERVÁSIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2209, 'FACULDADE DE CIÊNCIAS APLICADAS E TECNOLÓGICAS DO LITORAL SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2210, 'FACULDADE EVANGÉLICA DE TAGUATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2211, 'FACULDADE DO SERTÃO BAIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2212, 'FACULDADE DE TECNOLOGIA INED - UNIDADE VENDA NOVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2213, 'FACULDADE PRISMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2214, 'ESCOLA DE DIREITO DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2216, 'FACULDADE DE TECNOLOGIA LA SALLE - ESTRELA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2217, 'FACULDADE METROPOLITANA SÃO CARLOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2218, 'FACULDADE METROPOLITANA SÃO CARLOS BJI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2219, 'FACULDADE MOGIANA DO ESTADO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2220, 'FACULDADE DE TECNOLOGIA DA SERRA GAÚCHA - BENTO CONÇALVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2221, 'FACULDADE BRASILEIRA DE ESTUDOS AVANÇADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2222, 'FACULDADE DE MÚSICA SOUZA LIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2223, 'FACULDADE DE TECNOLOGIA DE SETE LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2224, 'ESCOLA SUPERIOR DE AVIAÇÃO CIVIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2225, 'FACULDADE DE TECNOLOGIA FINACI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2227, 'FACULDADES UNIDAS DE PESQUISA, CIÊNCIAS E SAÚDE LTDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2228, 'FACULDADE TEOLÓGICA DA ASSEMBLÉIA DE DEUS EM CURITIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2229, 'FACULDADE UNIÃO DE CAMPO MOURÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2230, 'FACULDADE DE TECNOLOGIA TECBRASIL - UNIDADE NOVO HAMBURGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2231, 'FACULDADE IBMEC DISTRITO FEDERAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2232, 'FACULDADE EDUCACIONAL DE FRANCISCO BELTRÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2233, 'IPOG - INSTITUTO DE PÓS-GRADUAÇÃO & GRADUAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2234, 'FACULDADE DE TECNOLOGIA LOURENÇO FILHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2235, 'FACULDADE DE GOIÂNIA - UNIDADE 1
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2236, 'FACULDADE ADJETIVO CETEP
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2237, 'FACULDADE PRINCESA DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2238, 'FACULDADE CANÇÃO NOVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2239, 'FACULDADE SÃO FIDELIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2241, 'FACULDADE DE TECNOLOGIA ATENEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2242, 'FACULDADE ISEIB DE BETIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2243, 'FACULDADE PITÁGORAS DE CONTAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2244, 'FACULDADES FUTURÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2245, 'FACULDADE PITÁGORAS DE GOVERNADOR VALADARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2246, 'FACULDADE DE PORTO FELIZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2247, 'FACULDADE SANTO AGOSTINHO DE SETE LAGOAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2248, 'ESCOLA SUPERIOR ABERTA DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2249, 'FACULDADE SAGRADA FAMÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2250, 'FACULDADE ITAPURANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2251, 'FACULDADE DE TECNOLOGIA BSG-U
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2252, 'FACULDADE DE MARÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2253, 'FACULDADE UNIVERSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2255, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BETIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2256, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE AIMORéS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2257, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2258, 'FACULDADE BETIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2259, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ALMENARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2260, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BAEPENDI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2261, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE PONTE NOVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2183, 'FACULDADE DE TECNOLOGIA DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2162, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2163, 'FACULDADE ANHANGUERA DE ANÁPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2164, 'FACULDADE ANHANGUERA DE JACAREÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2166, 'FACULDADE ADVENTISTA DE HORTOLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2167, 'LIBERTAS - FACULDADES INTEGRADAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2168, 'FACULDADES INTEGRADAS SÃO JUDAS TADEU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2169, 'FACULDADE DE TECNOLOGIA DE PRESIDENTE PRUDENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2170, 'FACULDADE DE TECNOLOGIA DE BRAGANÇA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2273, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE MARIANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2274, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BOCAIúVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2275, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE MONTES CLAROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2276, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE NOVA LIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2277, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE PORTEIRINHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2278, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SABARá
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2280, 'FACULDADE DE EDUCAçãO E ESTUDOS SOCIAIS DE UBERLâNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2281, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CARMóPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2282, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CONTAGEM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2283, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE GOVERNADOR VALADARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2285, 'FACULDADE TRÊS PONTAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2286, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ITABIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2287, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ITAMBACURI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2288, 'FACULDADE PRESIDENTE ANTõNIO CARLOS DE PERDõES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2289, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE RIBEIRãO DAS NEVES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2290, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SãO JOãO DEL REI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2291, 'INSTITUTO SUPERIOR DE CIêNCIAS AGRáRIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2292, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ARCOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2294, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE LAGOA SANTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2295, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE DIVINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2296, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SENHORA DOS REMéDIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2297, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CENTRAL DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2298, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE FELIXLâNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2299, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE URUANA DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2300, 'FACULDADE DE CIÊNCIAS GERENCIAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2301, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE TIMóTEO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2302, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ITABIRITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2303, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE UBERABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2304, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE TUPACIGUARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2305, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE UBERLâNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2306, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CONGONHAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2307, 'INSTITUTO SUPERIOR DE ENSINO E PESQUISA DE CAMBUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2308, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ITAJUBá
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2309, 'NOVA FACULDADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2310, 'FACULDADE EFICAZ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2311, 'FACULDADE DE TECNOLOGIA PORTO DAS MONÇÕES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2313, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA BAIANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2314, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2315, 'FACULDADE DE TECNOLOGIA FRANCISCO MORATO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2316, 'FACULDADE TEOLÓGICA EVANGÉLICA DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2317, 'UNIVERSIDADE FEDERAL DA INTEGRAÇÃO LATINO-AMERICANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2318, 'UNIVERSIDADE ESTADUAL DO NORTE DO PARANá
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2319, 'UNIVERSIDADE ALTO VALE DO RIO DO PEIXE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2320, 'UNIVERSIDADE FEDERAL DO OESTE DO PARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2321, 'UNIVERSIDADE FEDERAL DA FRONTEIRA SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2322, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE UBá
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2323, 'FACULDADE DOM HEITOR SALES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2324, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE IPATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2325, 'FACULDADE DE DIREITO DE IPATINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2326, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BOM DESPACHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2328, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE VISCONDE DO RIO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2329, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE LEOPOLDINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2330, 'UNIVERSIDADE DA INTEGRAÇÃO INTERNACIONAL DA LUSOFONIA AFRO-BRASILEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2331, 'INSTITUTO FEDERAL DE EDUCAçãO, CIêNCIA E TECNOLOGIA DO ACRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2332, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2333, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO AMAPÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2334, 'FACULDADE DE TECNOLOGIA DE MOGI DAS CRUZES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2335, 'FACULDADE DE TECNOLOGIA DE SãO JOSé DOS CAMPOS - JESSEN VIDAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2336, 'FACULDADE DE TECNOLOGIA SANTO ANDRé
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2337, 'FACULDADE DE TECNOLOGIA DE ITAQUAQUECETUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2338, 'FACULDADE DE CIÊNCIAS EXATAS DE GARANHUNS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2339, 'FATEC CRUZEIRO PROF. WALDOMIRO MAY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2340, 'FACULDADE DE TECNOLOGIA DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2342, 'FACULDADE DE TECONOLOGIA DA ZONA SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2343, 'FACULDADE DE TECNOLOGIA DE BAURU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2345, 'FACULDADE DE TECNOLOGIA DOM AMAURY CASTANHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2346, 'FACULDADE DE TECNOLOGIA DE SERTãOZINHO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2347, 'FACULDADE DE TECNOLOGIA DE ARAçATUBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2348, 'FACULDADE DE TECNOLOGIA DE CAPãO BONITO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2349, 'FACULDADE DE TECNOLOGIA DR. THOMAZ NOVELINO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2350, 'FACULDADE DE TECNOLOGIA DE OSASCO - PREFEITO HIRANT SANAZAR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2351, 'FACULDADE DE TECNOLOGIA DE LINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2263, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SãO FRANCISCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2264, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SãO JOãO NEPOMUCENO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2266, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CAMPO BELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2267, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE VAZANTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2268, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CURVELO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2269, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE VáRZEA DA PALMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2270, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ITANHANDU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2271, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE LAMBARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2359, 'FACULDADE DE TECNOLOGIA DE SãO SEBASTIãO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2360, 'FACULDADE DE TECNOLOGIA DE TATUÍ - PROF. WILSON ROBERTO RIBEIRO DE CAMARGO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (143, 'FACULDADES INTEGRADAS ESPÍRITO SANTENSES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2361, 'FACULDADE DE TECNOLOGIA DE CARAPICUIBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2362, 'FACULDADE DE TECNOLOGIA DE CATANDUVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2363, 'FACULDADE DE TECNOLOGIA APOENA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2364, 'FACULDADE DO BICO DO PAPAGAIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2365, 'FACULDADE DE CIÊNCIAS GERENCIAIS DE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (119, 'FACULDADE DE ENGENHARIA DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1, 'UNIVERSIDADE FEDERAL DE MATO GROSSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (3, 'UNIVERSIDADE FEDERAL DE SERGIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (14, 'UNIVERSIDADE DO VALE DO RIO DOS SINOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (89, 'ESCOLA DE ADMINISTRAÇÃO DE EMPRESAS DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (102, 'UNIVERSIDADE CASTELO BRANCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (103, 'ESCOLA DE MEDICINA SOUZA MARQUES DA FUNDAÇÃO TÉCNICO-EDUCACIONAL SOUZA MARQUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (555, 'CENTRO UNIVERSITÁRIO DO INSTITUTO DE EDUCAÇÃO SUPERIOR DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (134, 'CENTRO UNIVERSITÁRIO ANHANGUERA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (157, 'UNIVERSIDADE DA REGIÃO DA CAMPANHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (168, 'CENTRO DE ENSINO SUPERIOR DE JUIZ DE FORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (180, 'CENTRO UNIVERSITÁRIO PAULISTANO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (186, 'FACULDADE DE EDUCAÇÃO FÍSICA DA ASSOCIAÇÃO CRISTÃ DE MOÇOS DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (205, 'FACULDADES INTEGRADAS DA UPIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (210, 'FACULDADE DE CIÊNCIAS MÉDICAS DA SANTA CASA SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (228, 'CENTRO UNIVERSITÁRIO RITTER DOS REIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (235, 'FACULDADE DE FORMAÇÃO DE PROFESSORES E ESPECIALISTAS DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (249, 'FACULDADE DE CIÊNCIAS ECONÔMICAS, ADMINISTRATIVAS E DA COMPUTAÇÃO DOM BOSCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (268, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DO SUL DE MINAS - FACESM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (287, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE MANDAGUARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (302, 'UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (305, 'UNIVERSIDADE FEDERAL DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (318, 'UNIVERSIDADE FEDERAL DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (342, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS PROFESSORA NAIR FORTES ABU-MERHY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (361, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E ADMINISTRATIVAS DE AVARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (381, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE BELO JARDIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (395, 'CENTRO UNIVERSITÁRIO CENTRAL PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (400, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DE CIÊNCIAS DA SAÚDE DE PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (407, 'FACULDADE DE CIÊNCIAS, CULTURA E EXTENSÃO DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (421, 'CENTRO DE ENSINO SUPERIOR DO VALE DO PARNAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (435, 'FACULDADE ALVORADA DE INFORMÁTICA E PROCESSAMENTO DE DADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (447, 'CENTRO UNIVERSITáRIO ESTáCIO RADIAL DE SãO PAULO - ESTáCIO UNIRADIAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (463, 'CENTRO UNIVERSITÁRIO DE DESENVOLVIMENTO DO CENTRO-OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (475, 'FACULDADE DE AGRONOMIA E ENGENHARIA FLORESTAL DE GARÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (490, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE BEBEDOURO VICTÓRIO CARDASSI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (497, 'FACULDADE DE EDUCAÇÃO E CIÊNCIAS GERENCIAIS DE SUMARÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (504, 'FACULDADE DE CIÊNCIAS, SAÚDE, EXATAS E JURÍDICAS DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (519, 'FACULDADE DE TECNOLOGIA DE TAQUARITINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (531, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE AFOGADOS DA INGAZEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (545, 'CENTRO UNIVERSITÁRIO HERMINIO OMETTO DE ARARAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (600, 'FACULDADE DE ESTUDOS ADMINISTRATIVOS DE MINAS GERAIS', 'FEAD
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (572, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (596, 'CENTRO UNIVERSITÁRIO DO NORTE PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (597, 'FACULDADE METODISTA DE CIÊNCIAS HUMANAS E EXATAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (716, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS', 'FACISA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (616, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA  DA PARAÍBA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (628, 'FACULDADE DE CIÊNCIAS DA SAÚDE DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (640, 'INSTITUTO ITAPETININGANO DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (652, 'FACULDADE DE ESTUDOS SOCIAIS DO ESPÍRITO SANTO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (665, 'FACULDADE DE ADMINISTRAÇÃO, CIÊNCIAS, EDUCAÇÃO E LETRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (677, 'FACULDADE ESTáCIO COTIA - ESTáCIO FAAC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (701, 'FACULDADES INTEGRADAS DE RONDONÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (703, 'INSTITUTO DE ENSINO SUPERIOR JOÃO ALFREDO DE ANDRADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (791, 'CENTRO UNIVERSITÁRIO PLANALTO DO DISTRITO FEDERAL', 'UNIPLAN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (729, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (741, 'FACULDADE CATÓLICA RAINHA DA PAZ DE ARAPUTANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (748, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, MARKETING E COMUNICAÇÃO DE CAMPINAS - ESAMC CAMPINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (775, 'FACULDADE BATISTA DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (807, 'FACULDADE CENECISTA DE VILA VELHA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (809, 'FACULDADE DE CIÊNCIAS SOCIAIS DE FLORIANÓPOLIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2123, 'FACULDADE DE TECNOLOGIA SENAC SÃO MIGUEL DO OESTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2352, 'FACULDADE DE TECNOLOGIA DE SãO CAETANO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (25, 'ESCOLA NACIONAL DE CIÊNCIAS ESTATÍSTICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (34, 'FACULDADE DE TECNOLOGIA RUBENS LARA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (48, 'ESCOLA DE ENGENHARIA DE PIRACICABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (74, 'INSTITUTO NACIONAL DE TELECOMUNICAÇÕES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2353, 'FACULDADE DE TECNOLOGIA DO IPIRANGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2354, 'FACULDADE DE TECNOLOGIA DE GUARULHOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2355, 'FACULDADE DE TECNOLOGIA DE JABOTICABAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2356, 'FACULDADE DE TECNOLOGIA DE BARUERI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2357, 'FACULDADE DE TECNOLOGIA DE JALES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2358, 'FACULDADE DE TECNOLOGIA ESTUDANTE RAFAEL ALMEIDA CAMARINHA - MARILIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (930, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE ITABUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (940, 'INSTITUTO DE ENSINO SUPERIOR DE TERESINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (945, 'FACULDADE DE ADMINISTRAÇÃO ESCOLA SUPERIOR PROFESSOR PAULO MARTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (962, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS IBMEC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (980, 'INSTITUTO DE ENSINO SUPERIOR DE RIO VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (996, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO E GESTÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1004, 'FACULDADE DE ENSINO SUPERIOR DE MARECHAL CÂNDIDO RONDON
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1016, 'FACULDADE DE ENFERMAGEM NOVA ESPERANÇA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1017, 'FACULDADE ASSOCIADA BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1032, 'FACULDADE DE TECNOLOGIA PROF. LUIZ ROSA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1042, 'FACULDADE DE ADMINISTRAÇÃO E ARTES DE LIMEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1055, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO CEARÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1068, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PIAUÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1087, 'FACULDADES INTEGRADAS ANTÔNIO EUFRÁSIO DE TOLEDO DE PRESIDENTE PRUDENTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1102, 'FACULDADE DE CIÊNCIAS GERENCIAIS PADRE ARNALDO JANSSEN
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1115, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE IBITINGA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1118, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL INACIANA PE SABÓIA DE MEDEIROS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1129, 'FACULDADE ENIAC
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1135, 'FACULDADE ANCHIETA DE ENSINO SUPERIOR DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1145, 'FACULDADE DE CIÊNCIAS BIOMÉDICAS DE CACOAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1154, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE SÃO PAULO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1172, 'INSTITUTO DE EDUCAÇÃO E ENSINO SUPERIOR DE SAMAMBAIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1201, 'FACULDADE DE CIÊNCIAS E LETRAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1211, 'FACULDADE DE PEDAGOGIA E FORMAÇÃO DE NORMALISTAS DE ARAGUAÍNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1225, 'FACULDADE DA ALTA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1229, 'FACULDADE DE DESENVOLVIMENTO SUSTENTÁVEL DE CRUZEIRO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1240, 'FACULDADE DE CIÊNCIAS JURÍDICAS E GERENCIAIS DE MANHUAÇU
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1255, 'FACULDADE DE CIÊNCIAS, EDUCAÇÃO E TEOLOGIA DO NORTE DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1276, 'INSTITUTO BELO HORIZONTE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1285, 'INSTITUTO SUPERIOR DE EDUCAÇÃO NOSSA SENHORA DE SION
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1298, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1311, 'FACULDADE DE COMUNICAÇÃO PITÁGORAS UNIDADE GUARAPARI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1324, 'FACULDADE DE CIÊNCIAS JURÍDICAS PROFESSOR ALBERTO DEODATO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1334, 'FACULDADE CORPORATIVA CESPI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1340, 'INSTITUTO SUPERIOR DE FILOSOFIA BERTHIER
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1348, 'FACULDADE DE ADMINISTRAÇÃO DE EMPRESAS DE PARAÍSO DO TOCANTINS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1362, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, MARKETING E COMUNICAÇÃO DE SANTOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1381, 'FACULDADE DE ADMINISTRAÇÃO DE CHAPADÃO DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1395, 'FACULDADE DE INTEGRAÇÃO DO ENSINO SUPERIOR DO CONE SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1415, 'FACULDADE RORAIMENSE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1426, 'FACULDADE DE ENSINO SUPERIOR DA CIDADE DE FEIRA DE SANTANA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1440, 'FACULDADE ATENAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1443, 'FACULDADE DE ENSINO SUPERIOR DO CENTRO DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1457, 'FACULDADE DE TECNOLOGIA IBTA - SÃO JOSÉ DOS CAMPOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1469, 'FACULDADE PHÊNIX DE CIÊNCIAS HUMANAS E SOCIAIS DO BRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1485, 'FACULDADE DE TECNOLOGIA SENAI LUZERNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1497, 'FACULDADES INTEGRADAS DESEMBARGADOR SÁVIO BRANDÃO - FAUSB
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1513, 'FACULDADE PAULUS DE TECNOLOGIA E COMUNICAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1522, 'FACULDADE METODISTA DE TEOLOGIA E CIÊNCIAS HUMANAS DA AMAZÔNIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1541, 'FACULDADE NATALENSE DE ENSINO E CULTURA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1547, 'FACULDADE BRASIL NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1548, 'FACULDADE DE ENSINO SUPERIOR DA AMAZÔNIA REUNIDA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1560, 'FACULDADE DE CIÊNCIAS HUMANAS E BIOLÓGICAS E DA SAÚDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1569, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS E SISTEMAS INTEGRADOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1583, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ALMEIDA RODRIGUES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1590, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1605, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO NORTE DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1628, 'FACULDADE SÃO BENTO DA BAHIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1635, 'FACULDADES INTEGRADAS MATO-GROSSENSES DE CIÊNCIAS SOCIAIS E HUMANAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1645, 'FACULDADE DE TECNOLOGIA TECBRASIL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1649, 'INSTITUTO DE EDUCAÇÃO SUPERIOR PRESIDENTE KENNEDY - CENTRO DE FORMAÇÃO DE PROFISSIONAIS DE EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1665, 'FACULDADE BOAS NOVAS DE CIÊNCIAS TEOLÓGICAS, SOCIAIS E BIOTECNOLÓGICAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1687, 'FACULDADE DE NUTRIÇÃO DA FUNDAÇÃO DE ENSINO SUPERIOR DE PASSOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1703, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS DE SERGIPE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1712, 'FACULDADE DE DIREITO DA FUNDAÇÃO ESCOLA SUPERIOR DO MINISTÉRIO PÚBLICO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1726, 'FACULDADE DIOCESANA SÃO JOSÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1734, 'FACULDADES INTEGRADAS PROMOVE DE BRASILIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1747, 'FACULDADE CIDADE VERDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1754, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO MUNICÍPIO DE ITAPERUNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1770, 'FACULDADES INTEGRADAS ADVENTISTAS DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1781, 'INSTITUTO DE ENSINO SUPERIOR DE MATO GROSSO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1792, 'FACULDADE EVANGÉLICA DE GOIANÉSIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (834, 'FACULDADE METROPOLITANA DE MARINGÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (859, 'INSTITUTO DE EDUCAÇÃO SUPERIOR DE BOITUVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (869, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO, MARKETING E COMUNICAÇÃO DE SOROCABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (889, 'FACULDADE DE TECNOLOGIA DE GUARATINGUETÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (902, 'FACULDADE DE ADMINISTRAÇÃO DE NOVA ANDRADINA - FANOVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (911, 'INSTITUTO SUPERIOR DO LITORAL DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (918, 'FACULDADE DE CIÊNCIAS AGRÁRIAS DE ANDRADINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2029, 'FACULDADE DE TECNOLOGIA EGÍDIO JOSÉ DA SILVA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2045, 'FACISA-UNAI FACULDADE DE CIÊNCIAS DA SAÚDE DE UNAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2083, 'ESCOLA SUPERIOR DE ADMINISTRAÇÃO E GESTÃO DA BAIXADA SANTISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2099, 'INSTITUTO SUPERIOR DE TECNOLOGIA EM CIÊNCIAS DA COMPUTAÇÃO DO RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2135, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE BRASÍLIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2172, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS DE ARARIPINA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2161, 'FACULDADES VALE DO CARANGOLA - FAVALE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2186, 'INSTITUTO SÃO PAULO DE ESTUDOS SUPERIORES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2195, 'FACULDADE ESPECIALIZADA NA ÁREA DE SAÚDE DO RIO GRANDE DO SUL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2215, 'FACULDADE PADRE ANCHIETA DE VÁRZEA PAULISTA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2226, 'FACULDADE DE EDUCAÇÃO, TECNOLOGIA E ADMINISTRAÇÃO DE CAARAPÓ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2240, 'FACULDADES EVANGÉLICAS INTEGRADAS CANTARES DE SALOMÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2254, 'INSTITUTO SUPERIOR DE CIÊNCIAS HUMANAS E SOCIAIS APLICADAS DE ABAETÉ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2262, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE RAUL SOARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2265, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE SãO LOURENçO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2272, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE BARãO DE COCAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2279, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE TEóFILO OTONI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2284, 'FACULDADE DE EDUCAçãO E ESTUDOS SOCIAIS DE GOVERNADOR VALADARES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2293, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE ELóI MENDES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2312, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIENCIA E TECNOLOGIA DE BRASILIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2327, 'FACULDADE PRESIDENTE ANTôNIO CARLOS DE CONSELHEIRO LAFAIETE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2341, 'FACULDADE DE TECNOLOGIA DE PINDAMONHANGABA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2344, 'FACULDADE DE TECNOLOGIA DE ITAPETININGA - PROF.ANTôNIO BELIZANDRO BARBOSA REZENDE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (800, 'FACULDADE ESTáCIO EURO- PANAMERICANA DE HUMANIDADES E TECNOLOGIAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2145, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO PAMPA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2154, 'FACULDADES INTEGRADAS DA UNIÃO EDUCACIONAL DO PLANALTO CENTRAL
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (10, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (54, 'FACULDADE ESTADUAL DE EDUCAÇÃO CIÊNCIAS E LETRAS DE PARANAVAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (104, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E DE ADMINISTRAÇÃO DE EMPRESAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (240, 'FACULDADE DE ADMINISTRAÇÃO DA FUNDAÇÃO ARMANDO ALVARES PENTEADO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (337, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E ADMINISTRATIVAS DE CACHOEIRO DO ITAPEMIRIM
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (690, 'INSTITUTO TAQUARITINGUENSE DE ENSINO SUPERIOR DR. ARISTIDES DE CARVALHO SCHLOBACH
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2165, 'FACULDADES INTEGRADAS DO NORTE DE MINAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (819, 'FACULDADE PITÁGORAS DE UBERLÂNDIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1268, 'INSTITUTO SUPERIOR DE CIÊNCIAS HUMANAS E SOCIAIS ANÍSIO TEIXEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1173, 'FACULDADE DE CIÊNCIAS JURÍDICAS E SOCIAIS APLICADAS DO ARAGUAIA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1177, 'INSTITUTO TECNOLÓGICO E DAS CIÊNCIAS SOCIAIS APLICADAS E DA SAÚDE DO CENTRO EDUC. N. SRª AUXILIADORA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1338, 'INSTITUTO SUPERIOR DE EDUCAÇÃO CERES
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1552, 'INSTITUTO SUPERIOR DE EDUCAÇÃO FRANCISCANO NOSSA SENHORA DE FÁTIMA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1652, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE OLIVEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1775, 'FACULDADE IBGEN - INSTITUTO BRASILEIRO DE GESTÃO DE NEGÓCIOS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (847, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE AFONSO CLÁUDIO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1020, 'FACULDADE DE TECNOLOGIA E NEGÓCIOS CARLOS DRUMMOND DE ANDRADE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1802, 'FACULDADE MAURÍCIO DE NASSAU DE JOÃO PESSOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1816, 'INSTITUTO FLORENCE DE ENSINO SUPERIOR
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1827, 'INSTITUTO DE EDUCAÇÃO SUPERIOR RAIMUNDO SÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1837, 'FACULDADE DE CIÊNCIAS JURÍDICAS E GERENCIAIS DE OLIVEIRA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1853, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO PARANÁ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1861, 'FACULDADE SENAC PERNAMBUCO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1862, 'FACULDADE DE TECNOLOGIA INFNET RIO DE JANEIRO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1866, 'FATECE - FACULDADE DE TECNOLOGIA, CIÊNCIAS E EDUCAÇÃO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1878, 'FACULDADE DE TECNOLOGIA DE SÃO JOSÉ DO RIO PRETO
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1890, 'FACULDADE BATISTA DO ESTADO DO RIO DE JANEIRO - FABERJ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1900, 'FACULDADE DE TECNOLOGIA TECBRASIL - UNIDADE PORTO ALEGRE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1912, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS E DE TECNOLOGIAS DE AGUA BOA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1937, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PROFESSORA NAIR FORTES ABU-MERHY
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1956, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO SUL DE MINAS GERAIS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1968, 'FACULDADE DE TECNOLOGIA SENAI BELO HORIZONTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1981, 'FACULDADE DE TECNOLOGIA DO VALE DO IVAÍ
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1993, 'FACULDADE DE EXCELÊNCIA EDUCACIONAL DO RIO GRANDE DO NORTE
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2019, 'FACULDADE PORTO DAS ÁGUAS
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2064, 'FACULDADE DE CIÊNCIAS HUMANAS, ECONÔMICAS E DA SAÚDE DE ARAGUAÍNA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (2114, 'INSTITUTO SUPERIOR DE TECNOLOGIA DE PARACAMBI
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (325, 'CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA CELSO SUCKOW DA FONSECA
INSERT INTO ies (id_ies, no_ies, sigla_ies) VALUES (1925, 'FACULDADE DE TECNOLOGIA PAULO FREIRE


--
-- TOC entry 2391 (class 0 OID 0)
-- Dependencies: 318
-- Name: ies_id_ies_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ies_id_ies_seq', 2365, true);


--
-- TOC entry 2373 (class 0 OID 26832)
-- Dependencies: 326 2378
-- Data for Name: site_areas_conhecimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10100008, 'Matemática');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10200002, 'Probabilidade e Estatística');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10300007, 'Ciência da Computação');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10400001, 'Astronomia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10500006, 'Física');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10600000, 'Química');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10700005, 'Geociências');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (10000003, 10800000, 'Oceanografia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20100000, 'Biologia Geral');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20200005, 'Genética');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20300000, 'Botânica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20400004, 'Zoologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20500009, 'Ecologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20600003, 'Morfologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20700008, 'Fisiologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20800002, 'Bioquímica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 20900007, 'Biofísica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 21000000, 'Farmacologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 21100004, 'Imunologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 21200009, 'Microbiologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 21300003, 'Parasitologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (20000006, 21400008, 'Biotecnologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30100003, 'Engenharia Civil');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30200008, 'Engenharia de Minas');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30300002, 'Engenharia de Materiais e Metalúrgica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30400007, 'Engenharia Elétrica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30500001, 'Engenharia Mecânica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30600006, 'Engenharia Química');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30700000, 'Engenharia Sanitária');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30800005, 'Engenharia de Produção');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 30900000, 'Engenharia Nuclear');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 31000002, 'Engenharia de Transportes');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 31100007, 'Engenharia Naval e Oceânica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 31200001, 'Engenharia Aeroespacial');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 31300006, 'Engenharia Biomédica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (30000009, 31400000, 'Engenharia de Energia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40100006, 'Medicina');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40200000, 'Odontologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40300005, 'Farmácia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40400000, 'Enfermagem');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40500004, 'Nutrição');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40600009, 'Saúde Coletiva');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40700003, 'Fonoaudiologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40800008, 'Fisioterapia e Terapia Ocupacional');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (40000001, 40900002, 'Educação Física');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50100009, 'Agronomia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50200003, 'Recursos Florestais e Engenharia Florestal');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50300008, 'Engenharia Agrícola');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50400002, 'Zootecnia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50500007, 'Medicina Veterinária');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50600001, 'Recursos Pesqueiros e Engenharia de Pesca');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (50000004, 50700006, 'Ciência e Tecnologia de Alimentos');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60100001, 'Direito');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60200006, 'Administração');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60300000, 'Economia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60400005, 'Arquitetura e Urbanismo');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60500000, 'Planejamento Urbano e Regional');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60600004, 'Demografia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60700009, 'Ciência da Informação');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60800003, 'Museologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 60900008, 'Comunicação');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 61000000, 'Serviço Social');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 61100005, 'Economia Doméstica');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 61200000, 'Desenho Industrial');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (60000007, 61300004, 'Turismo');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70100004, 'Filosofia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70200009, 'Sociologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70300003, 'Antropologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70400008, 'Arqueologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70500002, 'História');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70600007, 'Geografia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70700001, 'Psicologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70800006, 'Educação');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 70900000, 'Ciência Política');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (70000000, 71000003, 'Teologia');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (80000002, 80100007, 'Lingüística');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (80000002, 80200001, 'Letras');
INSERT INTO site_areas_conhecimento (cod_grande_area, cod_area, nome_area) VALUES (80000002, 80300006, 'Artes');


--
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 327
-- Name: site_areas_conhecimento_cod_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_areas_conhecimento_cod_area_seq', 1, false);


--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 328
-- Name: site_areas_conhecimento_cod_grande_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_areas_conhecimento_cod_grande_area_seq', 1, false);


--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 316
-- Name: site_auditores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_auditores_id_seq', 9, true);


--
-- TOC entry 2363 (class 0 OID 26700)
-- Dependencies: 315 2378
-- Data for Name: site_avaliadores; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2367 (class 0 OID 26801)
-- Dependencies: 320 2378
-- Data for Name: site_especialidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101012, 'Conjuntos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101020, 'Lógica Matemática');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101039, 'Teoria dos Números');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101047, 'Grupos de Álgebra Não-Comutaviva');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101055, 'Álgebra Comutativa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10101004, 10101063, 'Geometria Algébrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102019, 'Análise Complexa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102027, 'Análise Funcional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102035, 'Análise Funcional Não-Linear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102043, 'Equações Diferenciais Ordinárias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102051, 'Equações Diferenciais Parciais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10102000, 10102060, 'Equações Diferenciais Funcionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103015, 'Geometria Diferencial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103023, 'Topologia Algébrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103031, 'Topologia das Variedades');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103040, 'Sistemas Dinâmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103058, 'Teoria das Singularidades e Teoria das Catástrofes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10103007, 10103066, 'Teoria das Folheações');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10104003, 10104011, 'Física Matemática');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10104003, 10104020, 'Análise Numérica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10104003, 10104038, 'Matemática Discreta e Combinatória');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10201009, 10201033, 'Teoremas de Limite');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10201009, 10201041, 'Processos Markovianos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10201009, 10201050, 'Análise Estocástica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10201009, 10201068, 'Processos Estocásticos Especiais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202013, 'Fundamentos da Estatística');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202021, 'Inferência Paramétrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202048, 'Inferência em Processos Estocásticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202056, 'Análise Multivariada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202064, 'Regressão e Correlação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202072, 'Planejamento de Experimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10202005, 10202080, 'Análise de Dados');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10301003, 10301011, 'Computabilidade e Modelos de Computação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10301003, 10301020, 'Linguagem Formais e Autômatos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10301003, 10301038, 'Análise de Algoritmos e Complexidade de Computação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10302000, 10302018, 'Matemática Simbólica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10302000, 10302026, 'Modelos Analíticos e de Simulação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10303006, 10303014, 'Linguagens de Programação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10303006, 10303022, 'Engenharia de Software');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10303006, 10303030, 'Banco de Dados');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10303006, 10303049, 'Sistemas de Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10303006, 10303057, 'Processamento Gráfico (Graphics)');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10304002, 10304010, 'Hardware');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10304002, 10304029, 'Arquitetura de Sistemas de Computação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10304002, 10304037, 'Software Básico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10304002, 10304045, 'Teleinformática');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10401008, 10401016, 'Astronomia Fundamental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10401008, 10401024, 'Astronomia Dinâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10403000, 10403019, 'Meio Interestelar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10403000, 10403027, 'Nebulosa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10404007, 10404015, 'Galáxias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10404007, 10404023, 'Aglomerados de Galáxias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10404007, 10404031, 'Quasares');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10404007, 10404040, 'Cosmologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10405003, 10405011, 'Física Solar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10405003, 10405020, 'Movimento da Terra');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10405003, 10405038, 'Sistema Planetário');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10406000, 10406018, 'Astronomia Ótica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10406000, 10406026, 'Radioastronomia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10406000, 10406034, 'Astronomia Espacial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10406000, 10406042, 'Processamento de Dados Astronômicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501010, 'Métodos Matemáticos da Física');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501029, 'Física Clássica e Física Quântica, Mecânica e Campos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501037, 'Relatividade e Gravitação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501045, 'Física Estatística e Termodinâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501053, 'Metrologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10501002, 10501061, 'Instrumentação Específica de Uso Geral em Física');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502017, 'Eletricidade e Magnetismo, Campos e Partículas Carregadas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502025, 'Ótica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502033, 'Acústica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502041, 'Transferência de Calor, Processos Térmicos e Termodinâmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502050, 'Mecânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10502009, 10502068, 'Dinâmica dos Fluídos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10503005, 10503013, 'Teoria Geral de Partículas e Campos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10503005, 10503021, 'Teorias Específicas e Modelos de Interação, Sistemática de Partículas, Raios Cósmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10503005, 10503030, 'Reações Específicas e Fenomiologia de Partículas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10503005, 10503048, 'Propriedades de Partículas Específicas e Ressonâncias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504010, 'Estrutura Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504028, 'Desintegração Nuclear e Radioatividade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504036, 'Reações Nucleares e Espalhamento Geral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504044, 'Reações Nucleares e Espalhamento (Reações Específicas)');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504052, 'Propriedades de Núcleos Específicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10504001, 10504060, 'Métodos Experimentais e Instrumentação para Partículas Elementares e Física Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505016, 'Estrutura Eletrônica de Átomos e Moléculas, Teoria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505024, 'Espectros Atômicos e Integração de Fótons');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505032, 'Espectros Moleculares e Interações de Fótons com Moléculas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505040, 'Processos de Colisão e Interações de Átomos e Moléculas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505059, 'Inf. sobre Átomos e Moléculas Obtidos Experimentalmente, Instrumentação e Técnicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10505008, 10505067, 'Estudos de Átomos e Moléculas Especiais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10506004, 10506012, 'Cinética e Teoria de Transporte de Fluídos, Propriedades Físicas de Gases');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10506004, 10506020, 'Física de Plasmas e Descargas Elétricas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507019, 'Estrutura de Líquidos e Sólidos, Cristalografia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507027, 'Propriedades Mecânicas e Acústicas da Matéria Condensada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507035, 'Dinâmica da Rede e Estatística de Cristais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507043, 'Equação de Estado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507051, 'Propriedades Térmicas da Matéria Condensada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507060, 'Propriedades de Transportes de Matéria Condensada (Não Eletrônica)');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507078, 'Campos Quânticos e Sólidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507086, 'Superfícies e Interfaces, Películas e Filamentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507094, 'Estados Eletrônicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507108, 'Transp. Eletrônicos e Prop. Elétricas de Superfícies, Interfaces e Películas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507116, 'Estruturas Eletrônicas e Propriedades Elétricas de Superfícies, Interf. e Partículas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507124, 'Supercondutividade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507132, 'Materiais Magnéticos e Propriedades Magnéticas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507140, 'Ressonância Mag. e Relax. na Mat. Condens, Efeitos Mosbauer, Corr. Ang. Pertubada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507159, 'Materiais Dielétricos e Propriedades Dielétricas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507167, 'Prop. Óticas e Espectrosc. da Mat. Condens, Outras Inter. da Mat. com Rad. e Part.');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10507000, 10507175, 'Emissão Eletrônica e Iônica por Líquidos e Sólidos, Fenômenos de Impacto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601015, 'Estrutura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601023, 'Síntese Orgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601031, 'Físico-Química Orgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601040, 'Fotoquímica Orgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601058, 'Química dos Produtos Naturais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601066, 'Evolução');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10601007, 10601074, 'Polímeros e Colóides');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602011, 'Campos de Coordenação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602020, 'Não-Metais e Seus Compostos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602038, 'Compostos Organo-Metálicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602046, 'Determinação de Estrutura de Compostos Inorgânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602054, 'Foto-Química Inorgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602062, 'Físico Química Inorgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10602003, 10602070, 'Química Bio-Inorgânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603018, 'Cinética Química e Catálise');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603026, 'Eletroquímica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603034, 'Espectroscopia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603042, 'Química de Interfaces');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603050, 'Química do Estado Condensado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603069, 'Química Nuclear e Radioquímica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603077, 'Química Teórica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10603000, 10603085, 'Termodinâmica Química');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604014, 'Separação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604022, 'Métodos Óticos de Análise');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604030, 'Eletroanalítica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604049, 'Gravimetria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604057, 'Titimetria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604065, 'Instrumentação Analítica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10604006, 10604073, 'Análise de Traços e Química Ambiental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701010, 'Mineralogia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701028, 'Petrologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701036, 'Geoquímica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701044, 'Geologia Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701052, 'Geotectônica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701060, 'Geocronologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701079, 'Cartografia Geológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701087, 'Metalogenia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701095, 'Hidrogeologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701109, 'Prospecção Mineral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701117, 'Sedimentologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701125, 'Paleontologia Estratigráfica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701133, 'Estratigrafia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10701001, 10701141, 'Geologia Ambiental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702016, 'Geomagnetismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702024, 'Sismologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702032, 'Geotermia e Fluxo Térmico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702040, 'Propriedades Físicas das Rochas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702059, 'Geofísica Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702067, 'Sensoriamento Remoto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702075, 'Aeronomia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702083, 'Desenvolvimento de Instrumentação Geofísica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702091, 'Geofísica Aplicada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10702008, 10702105, 'Gravimetria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703012, 'Meteorologia Dinâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703020, 'Meteorologia Sinótica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703039, 'Meteorologia Física');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703047, 'Química da Atmosfera');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703055, 'Instrumentação Meteorológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703063, 'Climatologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703071, 'Micrometeorologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703080, 'Sensoriamento Remoto da Atmosfera');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10703004, 10703098, 'Meteorologia Aplicada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10704000, 10704019, 'Geodésia Física');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10704000, 10704027, 'Geodésia Geométrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10704000, 10704035, 'Geodésia Celeste');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10704000, 10704043, 'Fotogrametria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10704000, 10704051, 'Cartografia Básica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705015, 'Geomorfologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705023, 'Climatologia Geográfica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705031, 'Pedologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705040, 'Hidrogeografia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705058, 'Geoecologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705066, 'Fotogeografia (Físico-Ecológica)');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10705007, 10705074, 'Geocartografia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10801006, 10801014, 'Interação entre os Organismos Marinhos e os Parâmetros Ambientais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10802002, 10802010, 'Variáveis Físicas da Água do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10802002, 10802029, 'Movimento da Água do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10802002, 10802037, 'Origem das Massas de Água');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10802002, 10802045, 'Interação do Oceano com o Leito do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10802002, 10802053, 'Interação do Oceano com a Atmosfera');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10803009, 10803017, 'Propriedades Químicas da Água do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10803009, 10803025, 'Interações Químico-Biológicas/Geológicas das Substâncias Químicas da Água do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10804005, 10804013, 'Geomorfologia Submarina');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10804005, 10804021, 'Sedimentologia Marinha');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10804005, 10804030, 'Geofísica Marinha');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (10804005, 10804048, 'Geoquímica Marinha');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20302002, 20302010, 'Morfologia Externa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20302002, 20302029, 'Citologia Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20302002, 20302037, 'Anatomia Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20302002, 20302045, 'Palinologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20303009, 20303017, 'Nutrição e Crescimento Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20303009, 20303025, 'Reprodução Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20303009, 20303033, 'Ecofisiologia Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20304005, 20304013, 'Taxonomia de Criptógamos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20304005, 20304021, 'Taxonomia de Fanerógamos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20406002, 20406010, 'Conservação das Espécies Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20406002, 20406029, 'Utilização dos Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20406002, 20406037, 'Controle Populacional de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20604009, 20604017, 'Anatomia Humana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20604009, 20604025, 'Anatomia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702019, 'Neurofisiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702027, 'Fisiologia Cardiovascular');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702035, 'Fisiologia da Respiração');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702043, 'Fisiologia Renal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702051, 'Fisiologia Endócrina');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702060, 'Fisiologia da Digestão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20702000, 20702078, 'Cinesiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20801009, 20801017, 'Proteínas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20801009, 20801025, 'Lipídeos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (20801009, 20801033, 'Glicídeos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21001006, 21001014, 'Farmacocinética');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21001006, 21001022, 'Biodisponibilidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21201005, 21201013, 'Virologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21201005, 21201021, 'Bacterologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21201005, 21201030, 'Micologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21202001, 21202010, 'Microbiologia Médica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21202001, 21202028, 'Microbiologia Industrial e de Fermentação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21301000, 21301018, 'Protozoologia Parasitária Humana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21301000, 21301026, 'Protozoologia Parasitária Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21302006, 21302014, 'Helmintologia Humana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21302006, 21302022, 'Helmintologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401012, 'Novas Drogas Terapêuticas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401020, 'Vacinas e Kits para Diagnósticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401039, 'Técnicas de Reprodução');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401047, 'Engenharia de Tecidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401055, 'Ciências de Animais de Laboratórios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21401004, 21401063, 'Metodologias Alternativas ao Uso de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21402000, 21402019, 'Bioprocessos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21402000, 21402027, 'Biocombustíveis');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21403007, 21403015, 'Melhoramento de Plantas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21403007, 21403023, 'Tecnologia de Processos e Produtos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21403007, 21403031, 'Plantas Transgênicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21403007, 21403040, 'Conservação e Multiplicação de Germoplasma');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21404003, 21404011, 'Bioprospecção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21404003, 21404020, 'Biodiversidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (21404003, 21404038, 'Tratamento Biológico de Residuos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30101000, 30101018, 'Materiais e Componentes de Construção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30101000, 30101026, 'Processos Construtivos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30101000, 30101034, 'Instalações Prediais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30102006, 30102014, 'Estruturas de Concreto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30102006, 30102022, 'Estruturas de Madeiras');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30102006, 30102030, 'Estruturas Metálicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30102006, 30102049, 'Mecânica das Estruturas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30103002, 30103010, 'Fundações e Escavações');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30103002, 30103029, 'Mecânicas das Rochas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30103002, 30103037, 'Mecânicas dos Solos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30103002, 30103045, 'Obras de Terra e Enrocamento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30103002, 30103053, 'Pavimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30104009, 30104017, 'Hidráulica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30104009, 30104025, 'Hidrologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30105005, 30105013, 'Aeroportos, Projeto e Construção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30105005, 30105021, 'Ferrovias, Projetos e Construção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30105005, 30105030, 'Portos e Vias Navegáveis, Projeto e Construção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30105005, 30105048, 'Rodovias, Projeto e Construção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30201004, 30201012, 'Caracterização do Minério');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30201004, 30201020, 'Dimensionamento de Jazidas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30202000, 30202019, 'Lavra a Céu Aberto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30202000, 30202027, 'Lavra de Mina Subterrânea');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30202000, 30202035, 'Equipamentos de Lavra');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30203007, 30203015, 'Métodos de Concentração e Enriquecimento de Minérios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30203007, 30203023, 'Equipamentos de Beneficiamento de Minérios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30301009, 30301017, 'Instalações Metalúrgicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30301009, 30301025, 'Equipamentos Metalúrgicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30302005, 30302013, 'Aglomeração');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30302005, 30302021, 'Eletrometalurgia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30302005, 30302030, 'Hidrometalurgia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30302005, 30302048, 'Pirometalurgia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30302005, 30302056, 'Tratamento de Minérios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303010, 'Conformação Mecânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303028, 'Fundição');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303036, 'Metalurgia de Pó');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303044, 'Recobrimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303052, 'Soldagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303060, 'Tratamentos Térmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30303001, 30303079, 'Usinagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30304008, 30304016, 'Estrutura dos Metais e Ligas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30304008, 30304024, 'Propriedades Físicas dos Metais e Ligas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30304008, 30304032, 'Propriedades Mecânicas dos Metais e Ligas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30304008, 30304040, 'Transformação de Fases');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30304008, 30304059, 'Corrosão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30305004, 30305012, 'Extração e Transformação de Materiais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30305004, 30305020, 'Cerâmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30305004, 30305039, 'Materiais Conjugados Não-Metálicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30305004, 30305047, 'Polímeros');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401011, 'Materiais Condutores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401020, 'Materiais e Componentes Semicondutores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401038, 'Materiais e Dispositivos Supercondutores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401046, 'Materiais Dielétricos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401054, 'Materiais e Componentes Eletroóticos e Magnetoóticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30401003, 30401062, 'Materiais e Dispositivos Magnéticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30402000, 30402018, 'Medidas Elétricas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30402000, 30402026, 'Medidas Magnéticas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30402000, 30402034, 'Instrumentação Eletromecânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30402000, 30402042, 'Instrumentação Eletrônica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30402000, 30402050, 'Sistemas Eletrônicos de Medida e de Controle');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30403006, 30403014, 'Teoria Geral dos Circuitos Elétricos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30403006, 30403022, 'Circuitos Lineares e Não-Lineares');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30403006, 30403030, 'Circuitos Eletrônicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30403006, 30403049, 'Circuitos Magnéticos ');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404010, 'Geração da Energia Elétrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404029, 'Transmissão da Energia Elétrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404037, 'Conversão e Retificação da Energia Elétrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404045, 'Medição');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404053, 'Máquinas Elétricas e Dispositivos de Potência');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30404002, 30404061, 'Instalações Elétricas e Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30405009, 30405017, 'Eletrônica Industrial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30405009, 30405025, 'Automação Eletrônica de Processos Elétricos e Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30405009, 30405033, 'Controle de Processos Eletrônicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30406005, 30406013, 'Teoria Eletromagnetica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30406005, 30406021, 'Radionavegação e Radioastronomia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30406005, 30406030, 'Sistemas de Telecomunicações');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30501008, 30501016, 'Transferência de Calor');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30501008, 30501024, 'Mecânica dos Fluídos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30501008, 30501032, 'Dinâmica dos Gases');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30501008, 30501040, 'Princípios Variacionais e Métodos Numéricos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30502004, 30502012, 'Termodinâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30502004, 30502020, 'Controle Ambiental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30502004, 30502039, 'Aproveitamento da Energia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30503000, 30503019, 'Mecânica dos Corpos Sólidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30503000, 30503027, 'Dinâmica dos Corpos Rígidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30503000, 30503035, 'Análise de Tensões');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30503000, 30503043, 'Termoelasticidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504015, 'Teoria dos Mecanismos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504023, 'Estática e Dinâmica Aplicada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504031, 'Elementos de Máquinas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504040, 'Fundamentos Gerais de Projetos das Máquinas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504058, 'Máquinas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504066, 'Métodos de Síntese e Otimização Aplicados ao Projeto Mecânico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504074, 'Controle de Sistemas Mecânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30504007, 30504082, 'Aproveitamento de Energia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30505003, 30505011, 'Matrizes e Ferramentas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30505003, 30505020, 'Maquinas de Usinagem e Conformação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30505003, 30505038, 'Controle Numérico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30505003, 30505046, 'Robotização');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30505003, 30505054, 'Processos de Fabricação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30601002, 30601010, 'Processos Bioquímicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30601002, 30601029, 'Processos Orgânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30601002, 30601037, 'Processos Inorgânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30602009, 30602017, 'Reatores Químicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30602009, 30602025, 'Operações Características de Processos Bioquímicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30602009, 30602033, 'Operações de Separação e Mistura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603013, 'Balanços Globais de Matéria e Energia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603021, 'Água');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603030, 'Álcool');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603048, 'Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603056, 'Borrachas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603064, 'Carvão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603072, 'Cerâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603080, 'Cimento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603099, 'Couro');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603102, 'Detergentes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603110, 'Fertilizantes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603129, 'Medicamentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603137, 'Metais Não-Ferrosos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603145, 'Óleos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603153, 'Papel e Celulose');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603161, 'Petróleo e Petroquímica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603170, 'Polímeros');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603188, 'Produtos Naturais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603196, 'Têxteis');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603200, 'Tratamentos e Aproveitamento de Rejeitos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30603005, 30603218, 'Xisto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30701007, 30701015, 'Planejamento Integrado dos Recursos Hídricos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30701007, 30701023, 'Tecnologia e Problemas Sanitários de Irrigação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30701007, 30701031, 'Águas Subterráneas e Poços Profundos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30701007, 30701040, 'Controle de Enchentes e de Barragens');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30701007, 30701058, 'Sedimentologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702011, 'Química Sanitária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702020, 'Processos Simplificados de Tratamento de Águas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702038, 'Técnicas Convencionais de Tratamento de Águas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702046, 'Técnicas Avançadas de Tratamento de Águas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702054, 'Estudos e Caracterização de Efluentes Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702062, 'Layout de Processos Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30702003, 30702070, 'Resíduos Radioativos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703018, 'Técnicas de Abastecimento da Água');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703026, 'Drenagem de Águas Residuárias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703034, 'Drenagem Urbana de Águas Pluviais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703042, 'Residuos Sólidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703050, 'Limpeza Pública');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30703000, 30703069, 'Instalações Hidráulico-Sanitárias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704014, 'Ecologia Aplicada a Engenharia Sanitária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704022, 'Microbiologia Aplicada e Engenharia Sanitária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704030, 'Parasitologia Aplicada a Engenharia Sanitária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704049, 'Qualidade do Ar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704057, 'Controle da Poluição');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30704006, 30704065, 'Legislação Ambiental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30801001, 30801010, 'Planejamento de Instalações Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30801001, 30801028, 'Planejamento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30801001, 30801036, 'Higiene e Segurança do Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30801001, 30801044, 'Suprimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30801001, 30801052, 'Garantia de Controle de Qualidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30802008, 30802016, 'Processos Estocásticos e Teoria das Filas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30802008, 30802024, 'Programação Linear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30802008, 30802032, 'Séries Temporais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30802008, 30802040, 'Teoria dos Grafos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30802008, 30802059, 'Teoria dos Jogos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30803004, 30803012, 'Ergonomia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30803004, 30803020, 'Metodologia de Projeto do Produto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30803004, 30803039, 'Processos de Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30803004, 30803047, 'Gerência do Projeto e do Produto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30803004, 30803055, 'Desenvolvimento de Produto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804019, 'Estudo de Mercado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804027, 'Localização Industrial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804035, 'Análise de Custos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804043, 'Economia de Tecnologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804051, 'Vida Econômica dos Equipamentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30804000, 30804060, 'Avaliação de Projetos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30901006, 30901014, 'Produção de Radioisótopos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30901006, 30901022, 'Aplicações Industriais de Radioisótopos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30901006, 30901030, 'Instrumentação para Medida e Controle de Radiação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30902002, 30902010, 'Processos Industriais da Fusão Controlada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30902002, 30902029, 'Problemas Tecnológicos da Fusão Controlada');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30903009, 30903017, 'Extração de Combustível Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30903009, 30903025, 'Conversão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30903009, 30903033, 'Reprocessamento de Combustível Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30903009, 30903041, 'Rejeitos de Combustível Nuclear');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904013, 'Núcleo do Reator');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904021, 'Materiais Nucleares e Blindagem de Reatores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904030, 'Transferência de Calor em Reatores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904048, 'Geração e Integração com Sistemas Elétricos  em Reatores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904056, 'Instrumentação para Operação e Controle de Reatores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904064, 'Segurança');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (30904005, 30904072, 'Aspectos Econômicos de Reatores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31001009, 31001017, 'Planejamento e Organização do Sistema de Transporte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31001009, 31001025, 'Economia dos Transportes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31002005, 31002013, 'Vias de Transporte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31002005, 31002021, 'Veículos de Transportes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31002005, 31002030, 'Estação de Transporte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31002005, 31002048, 'Equipamentos Auxiliares e Controles');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31003001, 31003010, 'Engenharia de Tráfego');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31003001, 31003028, 'Capacidade de Vias de Transporte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31003001, 31003036, 'Operação de Sistemas de Transporte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31101003, 31101011, 'Resistência Hidrodinâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31101003, 31101020, 'Propulsão de Navios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31102000, 31102018, 'Análise Teórica e Experimental de Estrutura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31102000, 31102026, 'Dinâmica Estrutural Naval e Oceânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31102000, 31102034, 'Síntese Estrutural Naval e Oceânica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31103006, 31103014, 'Análise de Sistemas Propulsores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31103006, 31103022, 'Controle e Automação de Sistemas Propulsores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31103006, 31103030, 'Equipamentos Auxiliares do Sistema Propulsivo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31103006, 31103049, 'Motor de Propulsão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31104002, 31104010, 'Projetos de Navios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31104002, 31104029, 'Projetos de Sistemas Oceânicos Fixos e Semi-Fixos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31104002, 31104037, 'Projetos de Embarcações Não-Convencionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31105009, 31105017, 'Métodos de Fabricação de Navios e Sistemas Oceânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31105009, 31105025, 'Soldagem de Estruturas Navais e Oceânicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31105009, 31105033, 'Custos de Construção Naval');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31105009, 31105041, 'Normatização e Certificação de Qualidade de Navios');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31201008, 31201016, 'Aerodinâmica de Aeronaves Espaciais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31201008, 31201024, 'Aerodinâmica dos Processos Geofísicos e Interplanetários');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31202004, 31202012, 'Trajetórias e Órbitas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31202004, 31202020, 'Estabilidade e Controle');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31203000, 31203019, 'Aeroelasticicidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31203000, 31203027, 'Fadiga');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31203000, 31203035, 'Projeto de Estruturas Aeroespaciais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31205003, 31205011, 'Combustão e Escoamento com Reações Químicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31205003, 31205020, 'Propulsão de Foguetes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31205003, 31205038, 'Máquinas de Fluxo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31205003, 31205046, 'Motores Alternativos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206018, 'Aviões');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206026, 'Foguetes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206034, 'Helicópteros');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206042, 'Hovercraft');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206050, 'Satélites e Outros Dispositivos Aeroespaciais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206069, 'Normatização e Certificação de Qualidade de Aeronaves e Componentes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31206000, 31206077, 'Manutenção de Sistemas Aeroespaciais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31301002, 31301010, 'Processamento de Sinais Biológicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31301002, 31301029, 'Modelagem de Fenômenos Biológicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31301002, 31301037, 'Modelagem de Sistemas Biológicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31302009, 31302017, 'Biomateriais e Materiais Biocompatíveis');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31302009, 31302025, 'Transdutores para Aplicações Biomédicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31302009, 31302033, 'Instrumentação Odontológica e Médico-Hospitalar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31302009, 31302041, 'Tecnologia de Próteses');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31401007, 31401015, 'Sistemas Energéticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31401007, 31401023, 'Política Energética Regional e Nacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31401007, 31401031, 'Uso Eficiente de Energia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31401007, 31401040, 'Análise de Impactos Produzidos por Sistemas Energéticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402011, 'Energia Solar Térmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402020, 'Energia Solar Fotovoltáica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402038, 'Energia Eólica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402046, 'Micro-centrais Hidrelétricas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402054, 'Energia das Ondas e Marés');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402062, 'Energia de Biomassa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (31402003, 31402070, 'Sistemas Híbridos e Sistemas Não-convencionais de Armazenagem de Energia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101010, 'Angiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101029, 'Dermatologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101037, 'Alergologia e Imunologia Clínica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101045, 'Cancerologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101053, 'Hematologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101061, 'Endocrinologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101070, 'Neurologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101088, 'Pediatria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101096, 'Doenças Infecciosas e Parasitárias');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101100, 'Cardiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101118, 'Gastroenterologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101126, 'Pneumologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101134, 'Nefrologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101142, 'Reumatologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101150, 'Ginecologia e Obstetrícia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101169, 'Fisiatria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101177, 'Oftalmologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40101002, 40101186, 'Ortopedia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102017, 'Cirurgia Plástica e Restauradora');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102025, 'Cirurgia Otorrinolaringológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102033, 'Cirurgia Oftalmológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102041, 'Cirurgia Cardiovascular');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102050, 'Cirurgia Toráxica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102068, 'Cirurgia Gastroenterologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102076, 'Cirurgia Pediátrica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102084, 'Neurocirurgia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102092, 'Cirurgia Urológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102106, 'Cirurgia Proctológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102114, 'Cirurgia Ortopédica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102122, 'Cirurgia Traumatológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102130, 'Anestesiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (40102009, 40102149, 'Cirurgia Experimental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101013, 'Gênese');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101021, 'Física do Solo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101030, 'Química do Solo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101048, 'Microbiologia e Bioquímica do Solo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101056, 'Fertilidade do Solo e Adubação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50101005, 50101064, 'Manejo e Conservação do Solo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50102001, 50102010, 'Fitopatologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50102001, 50102028, 'Entomologia Agrícola');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50102001, 50102036, 'Parasitologia Agrícola');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50102001, 50102044, 'Microbiologia Agrícola');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50102001, 50102052, 'Defesa Fitossanitária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103016, 'Manejo e Tratos Culturais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103024, 'Mecanização Agrícola');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103032, 'Produção e Beneficiamento de Sementes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103040, 'Produção de Mudas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103059, 'Melhoramento Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103067, 'Fisiologia de Plantas Cultivadas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50103008, 50103075, 'Matologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50104004, 50104012, 'Floricultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50104004, 50104020, 'Parques e Jardins');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50104004, 50104039, 'Arborização de Vias Públicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201018, 'Dendrologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201026, 'Florestamento e Reflorestamento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201034, 'Genética e Melhoramento Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201042, 'Sementes Florestais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201050, 'Nutrição Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201069, 'Fisiologia Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201077, 'Solos Florestais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50201000, 50201085, 'Proteção Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202014, 'Economia Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202022, 'Política e Legislação Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202030, 'Administração Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202049, 'Dendrometria e Inventário Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202057, 'Fotointerpretação Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50202006, 50202065, 'Ordenamento Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50203002, 50203010, 'Exploração Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50203002, 50203029, 'Mecanização Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204017, 'Anatomia e Identificação de Produtos Florestais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204025, 'Propriedades Fisico-Mecânicas da Madeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204033, 'Relações Água-Madeira e Secagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204041, 'Tratamento da Madeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204050, 'Processamento Mecânico da Madeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204068, 'Química da Madeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204076, 'Resinas de Madeiras');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204084, 'Tecnologia de Celulose e Papel');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50204009, 50204092, 'Tecnologia de Chapas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50205005, 50205013, 'Hidrologia Florestal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50205005, 50205021, 'Conservação de Áreas Silvestres');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50205005, 50205030, 'Conservação de Bacias Hidrográficas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50205005, 50205048, 'Recuperação de Areas Degradadas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50302000, 50302019, 'Irrigação e Drenagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50302000, 50302027, 'Conservação de Solo e Água');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50303007, 50303015, 'Pré-Processamento de Produtos Agrícolas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50303007, 50303023, 'Armazenamento de Produtos Agrícolas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50303007, 50303031, 'Transferência de Produtos Agrícolas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50304003, 50304011, 'Assentamento Rural');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50304003, 50304020, 'Engenharia de Construções Rurais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50304003, 50304038, 'Saneamento Rural');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50403001, 50403010, 'Exigências Nutricionais dos Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50403001, 50403028, 'Avaliação de Alimentos para Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50403001, 50403036, 'Conservação de Alimentos para Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50404008, 50404016, 'Avaliação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50404008, 50404024, 'Manejo e Conservação de Pastagens');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50404008, 50404032, 'Fisiologia de Plantas Forrageiras');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50404008, 50404040, 'Melhoramento de Plantas Forrageiras e Produção de Sementes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50404008, 50404059, 'Toxicologia e Plantas Tóxicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50405004, 50405012, 'Criação de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50405004, 50405020, 'Manejo de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50405004, 50405039, 'Instalações para Produção Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501011, 'Anestesiologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501020, 'Técnica Cirúrgica Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501038, 'Radiologia de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501046, 'Farmacologia e Terapêutica Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501054, 'Obstetrícia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501062, 'Clínica Veterinária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501070, 'Clínica Cirúrgica Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50501003, 50501089, 'Toxicologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50502000, 50502018, 'Epidemiologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50502000, 50502026, 'Saneamento Aplicado a Saúde do Homem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50502000, 50502034, 'Doenças Infecciosas de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50502000, 50502042, 'Doenças Parasitárias de Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50502000, 50502050, 'Saúde Animal (Programas Sanitários)');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50503006, 50503014, 'Patologia Aviária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50503006, 50503022, 'Anatomia Patologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50503006, 50503030, 'Patologia Clínica Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50504002, 50504010, 'Ginecologia e Andrologia Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50504002, 50504029, 'Inseminação Artificial Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50504002, 50504037, 'Fisiopatologia da Reprodução Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50601008, 50601016, 'Fatores Abióticos do Mar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50601008, 50601024, 'Avaliação de Estoques Pesqueiros Marinhos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50601008, 50601032, 'Exploração Pesqueira Marinha');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50601008, 50601040, 'Manejo e Conservação de Recursos Pesqueiros Marinhos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50602004, 50602012, 'Fatores Abióticos de Águas Interiores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50602004, 50602020, 'Avaliação de Estoques Pesqueiros de Águas Interiores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50602004, 50602039, 'Explotação Pesqueira de Águas Interiores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50602004, 50602047, 'Manejo e Conservação de Recursos Pesqueiros de Águas Interiores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50603000, 50603019, 'Maricultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50603000, 50603027, 'Carcinocultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50603000, 50603035, 'Ostreicultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50603000, 50603043, 'Piscicultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701010, 'Valor Nutritivo de Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701029, 'Química');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701037, 'Microbiologia de Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701045, 'Fisiologia Pós-Colheita');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701053, 'Toxicidade e Resíduos de Pesticidas em Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701061, 'Avaliação e Controle de Qualidade de Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50701002, 50701070, 'Padrões');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702017, 'Tecnologia de Produtos de Origem Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702025, 'Tecnologia de Produtos de Origem Vegetal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702033, 'Tecnologia das Bebidas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702041, 'Tecnologia de Alimentos Dietéticos e Nutricionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702050, 'Aproveitamento de Subprodutos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50702009, 50702068, 'Embalagens de Produtos Alimentares');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50703005, 50703013, 'Instalações Industriais de Produção de Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (50703005, 50703021, 'Armazenamento de Alimentos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101016, 'Teoria Geral do Direito');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101024, 'Teoria Geral do Processo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101032, 'Teoria do Estado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101040, 'História do Direito');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101059, 'Filosofia do Direito');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101067, 'Lógica Jurídica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101075, 'Sociologia Jurídica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60101008, 60101083, 'Antropologia Jurídica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102012, 'Direito Tributário');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102020, 'Direito Penal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102039, 'Direito Processual Penal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102047, 'Direito Processual Civil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102055, 'Direito Constitucional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102063, 'Direito Administrativo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60102004, 60102071, 'Direito Internacional Público');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60103000, 60103019, 'Direito Civil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60103000, 60103027, 'Direito Comercial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60103000, 60103035, 'Direito do Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60103000, 60103043, 'Direito Internacional Privado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60201002, 60201010, 'Administração da Produção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60201002, 60201029, 'Administração Financeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60201002, 60201037, 'Mercadologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60201002, 60201045, 'Negócios Internacionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60201002, 60201053, 'Administração de Recursos Humanos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60202009, 60202017, 'Contabilidade e Finanças Públicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60202009, 60202025, 'Organizações Públicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60202009, 60202033, 'Política e Planejamento Governamentais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60202009, 60202041, 'Administração de Pessoal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60202009, 60202051, 'Planejamento em Ciência e Tecnologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60301007, 60301015, 'Economia Geral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60301007, 60301023, 'Teoria Geral da Economia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60301007, 60301031, 'História do Pensamento Econômico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60301007, 60301040, 'História Econômica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60301007, 60301058, 'Sistemas Econômicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60302003, 60302011, 'Métodos e Modelos Matemáticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60302003, 60302020, 'Estatística Sócio-Econômica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60302003, 60302038, 'Contabilidade Nacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60302003, 60302046, 'Economia Matemática');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60303000, 60303018, 'Teoria Monetária e Financeira');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60303000, 60303026, 'Instituições Monetárias e Financeiras do Brasil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60303000, 60303034, 'Finanças Públicas Internas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60303000, 60303042, 'Política Fiscal do Brasil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60304006, 60304014, 'Crescimento e Desenvolvimento Econômico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60304006, 60304022, 'Teoria e Política de Planejamento Econômico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60304006, 60304030, 'Flutuações Cíclicas e Projeções Econômicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60304006, 60304049, 'Inflação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60305002, 60305010, 'Teoria do Comércio Internacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60305002, 60305029, 'Relações do Comércio, Política Comercial, Integração Econômica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60305002, 60305037, 'Balanço de Pagamentos, Finanças Internacionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60305002, 60305045, 'Investimentos Internacionais e Ajuda Externa');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60306009, 60306017, 'Treinamento e Alocação de Mão-de-Obra, Oferta de Mão-de-Obra e Força de Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60306009, 60306025, 'Mercado de Trabalho, Política do Governo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60306009, 60306033, 'Sindicatos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60306009, 60306041, 'Capital Humano');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60306009, 60306050, 'Demografia Econômica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60307005, 60307013, 'Organização Industrial e  Estudos Industriais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60307005, 60307021, 'Mudança Tecnológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60308001, 60308010, 'Economia dos Programas de Bem-Estar Social');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60308001, 60308028, 'Economia do Consumidor');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60309008, 60309016, 'Economia Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60309008, 60309024, 'Economia Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60309008, 60309032, 'Renda e Tributação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60310006, 60310014, 'Economia Agrária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60310006, 60310022, 'Economia dos Recursos Naturais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60401001, 60401010, 'História da Arquitetura e Urbanismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60401001, 60401028, 'Teoria da Arquitetura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60401001, 60401036, 'História do Urbanismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60401001, 60401044, 'Teoria do Urbanismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60402008, 60402016, 'Planejamento e Projetos da Edificação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60402008, 60402024, 'Planejamento e Projeto do Espaço Urbano');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60402008, 60402032, 'Planejamento e Projeto do Equipamento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60403004, 60403012, 'Adequação Ambiental');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60404000, 60404019, 'Desenvolvimento Histórico do Paisagismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60404000, 60404027, 'Conceituação de Paisagísmo e Metodologia do Paisagismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60404000, 60404035, 'Estudos de Organização do Espaço Exterior');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60404000, 60404043, 'Projetos de Espaços Livres Urbanos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60501006, 60501014, 'Teoria do Planejamento Urbano e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60501006, 60501022, 'Teoria da Urbanização');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60501006, 60501030, 'Política Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60501006, 60501049, 'História Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60502002, 60502010, 'Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60502002, 60502029, 'Técnica de Previsão Urbana e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60502002, 60502037, 'Técnicas de Análise e Avaliação Urbana e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60502002, 60502045, 'Técnicas de Planejamento e Projeto Urbanos e Regionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503017, 'Administração Municipal e Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503025, 'Estudos da Habitação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503033, 'Aspectos Sociais do Planejamento Urbano e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503041, 'Aspectos Econômicos do Planejamento Urbano e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503050, 'Aspectos Físico-Ambientais do Planejamento Urbano e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503068, 'Serviços Comunitários');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503076, 'Infra-Estruturas Urbanas e Regionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503084, 'Transporte e Tráfego Urbano e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60503009, 60503092, 'Legislação Urbana e Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60601000, 60601019, 'Distribuição Espacial Geral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60601000, 60601027, 'Distribuição Espacial Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60601000, 60601035, 'Distribuição Espacial Rural');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60602007, 60602015, 'Tendências Passadas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60602007, 60602023, 'Taxas e Estimativas Correntes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60602007, 60602031, 'Projeções');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60603003, 60603011, 'Fecundidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60603003, 60603020, 'Mortalidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60603003, 60603038, 'Migração');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60604000, 60604018, 'Casamento e Divórcio');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60604000, 60604026, 'Família e Reprodução');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60605006, 60605014, 'Distribuição Espacial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60605006, 60605022, 'Natalidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60605006, 60605030, 'Nupcialidade e Família');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60605006, 60605049, 'Métodos e Técnicas de Demografia Histórica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60606002, 60606010, 'Política Populacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60606002, 60606029, 'Políticas de Redistribuição de População');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60606002, 60606037, 'Políticas de Planejamento Familiar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60701005, 60701013, 'Teoria Geral da Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60701005, 60701021, 'Processos da Comunicação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60701005, 60701030, 'Representação da Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60702001, 60702010, 'Teoria da Classificação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60702001, 60702028, 'Métodos Quantitativos. Bibliometria');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60702001, 60702036, 'Técnicas de Recuperação de Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60702001, 60702044, 'Processos de Disseminação da Informação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60703008, 60703016, 'Organização de Arquivos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60902000, 60902019, 'Teoria e Ética do Jornalismo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60902000, 60902027, 'Organização Editorial de Jornais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60902000, 60902035, 'Organização Comercial de Jornais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60902000, 60902043, 'Jornalismo Especializado (Comunitário');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60903007, 60903015, 'Radiodifusão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (60903007, 60903023, 'Videodifusão');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (61002003, 61002011, 'Serviço Social do Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (61002003, 61002020, 'Serviço Social da Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (61002003, 61002038, 'Serviço Social do Menor');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (61002003, 61002046, 'Serviço Social da Saúde');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (61002003, 61002054, 'Serviço Social da Habitação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70201005, 70201013, 'Teoria Sociológica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70201005, 70201021, 'História da Sociologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70504008, 70504016, 'História dos Estados Unidos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70504008, 70504024, 'História Latino-Americana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70505004, 70505012, 'História do Brasil Colônia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70505004, 70505020, 'História do Brasil Império');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70505004, 70505039, 'História do Brasil República');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70505004, 70505047, 'História Regional do Brasil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70601003, 70601011, 'Geografia da População');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70601003, 70601020, 'Geografia Agrária');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70601003, 70601038, 'Geografia Urbana');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70601003, 70601046, 'Geografia Econômica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70601003, 70601054, 'Geografia Política');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70602000, 70602018, 'Teoria do Desenvolvimento Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70602000, 70602026, 'Regionalização');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70602000, 70602034, 'Análise Regional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70701008, 70701016, 'História');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70701008, 70701024, 'Metodologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70701008, 70701032, 'Construção e Validade de Testes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70701008, 70701040, 'Técnicas de Processamento Estatístico');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70702004, 70702012, 'Processos Perceptuais e Motores');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70702004, 70702020, 'Processos de Aprendizagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70702004, 70702039, 'Processos Cognitivos e Atencionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70702004, 70702047, 'Estados Subjetivos e Emoção');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70703000, 70703019, 'Neurologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70703000, 70703027, 'Processos Psico-Fisiológicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70703000, 70703035, 'Estimulação Elétrica e com Drogas, Comportamento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70703000, 70703043, 'Psicobiologia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70704007, 70704015, 'Estudos Naturalísticos do Comportamento Animal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70704007, 70704023, 'Mecanismos Instintivos e Processos Sociais em Animais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70705003, 70705011, 'Relações Interpessoais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70705003, 70705020, 'Processos Grupais e de Comunicação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70705003, 70705038, 'Papéis e Estruturas Sociais, Indivíduo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70707006, 70707014, 'Processos Perceptuais e Cognitivos, Desenvolvimento');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70707006, 70707022, 'Desenvolvimento Social e da Personalidade');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70708002, 70708010, 'Planejamento Institucional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70708002, 70708029, 'Programação de Condições de Ensino');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70708002, 70708037, 'Treinamento de Pessoal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70708002, 70708045, 'Aprendizagem e Desempenho Acadêmicos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70708002, 70708053, 'Ensino e Aprendizagem na Sala de Aula');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70709009, 70709017, 'Análise Institucional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70709009, 70709025, 'Recrutamento e Seleção de Pessoal');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70709009, 70709033, 'Treinamento e Avaliação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70709009, 70709041, 'Fatores Humanos no Trabalho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70709009, 70709050, 'Planejamento Ambiental e Comportamento Humano');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710015, 'Intervenção Terapêutica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710023, 'Programas de Atendimento Comunitário');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710031, 'Treinamento e Reabilitação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710040, 'Desvios da Conduta');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710058, 'Distúrbios da Linguagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70710007, 70710066, 'Distúrbios Psicossomáticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801010, 'Filosofia da Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801029, 'História da Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801037, 'Sociologia da Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801045, 'Antropologia Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801053, 'Economia da Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70801002, 70801061, 'Psicologia Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70802009, 70802017, 'Administração de Sistemas Educacionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70802009, 70802025, 'Administração de Unidades Educativas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70803005, 70803013, 'Política Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70803005, 70803021, 'Planejamento Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70803005, 70803030, 'Avaliação de Sistemas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70804001, 70804010, 'Teorias da Instrução');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70804001, 70804028, 'Métodos e Técnicas de Ensino');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70804001, 70804036, 'Tecnologia Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70804001, 70804044, 'Avaliação da Aprendizagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70805008, 70805016, 'Teoria Geral de Planejamento e Desenvolvimento Curricular');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70805008, 70805024, 'Currículos Específicos para Níveis e Tipos de Educação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70806004, 70806012, 'Orientação Educacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70806004, 70806020, 'Orientação Vocacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807019, 'Educação de Adultos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807027, 'Educação Permanente');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807035, 'Educação Rural');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807043, 'Educação em Periferias Urbanas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807051, 'Educação Especial');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807060, 'Educação Pré-Escolar');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70807000, 70807078, 'Ensino Profissionalizante');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70901007, 70901015, 'Teoria Política Clássica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70901007, 70901023, 'Teoria Política Medieval');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70901007, 70901031, 'Teoria Política Moderna');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70901007, 70901040, 'Teoria Política Contemporânea');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70902003, 70902011, 'Estrutura e Transformação do Estado');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70902003, 70902020, 'Sistemas Governamentais Comparados');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70902003, 70902038, 'Relações Intergovernamentais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70902003, 70902046, 'Estudos do Poder Local');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70902003, 70902054, 'Instituições Governamentais Específicas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70903000, 70903018, 'Estudos Eleitorais e Partidos Políticos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70903000, 70903026, 'Atitude e Ideologias Políticas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70903000, 70903034, 'Conflitos e Coalizões Políticas');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70903000, 70903042, 'Comportamento Legislativo');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70903000, 70903050, 'Classes Sociais e Grupos de Interesse');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70904006, 70904014, 'Análise do Processo Decisório');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70904006, 70904022, 'Análise Institucional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70904006, 70904030, 'Técnicas de Antecipação');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70905002, 70905010, 'Política Externa do Brasil');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70905002, 70905029, 'Organizações Internacionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70905002, 70905037, 'Integração Internacional');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (70905002, 70905045, 'Relações Internacionais');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80301002, 80301010, 'Teoria da Arte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80301002, 80301029, 'História da Arte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80301002, 80301037, 'Crítica da Arte');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302017, 'Pintura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302025, 'Desenho');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302033, 'Gravura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302041, 'Escultura');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302050, 'Cerâmica');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80302009, 80302068, 'Tecelagem');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80303005, 80303013, 'Regência');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80303005, 80303021, 'Instrumentação Musical');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80303005, 80303030, 'Composição Musical');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80303005, 80303048, 'Canto');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80304001, 80304010, 'Execução da Dança');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80304001, 80304028, 'Coreografia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80305008, 80305016, 'Dramaturgia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80305008, 80305024, 'Direção Teatral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80305008, 80305032, 'Cenografia');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80305008, 80305040, 'Interpretação Teatral');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80308007, 80308015, 'Administração e Produção de Filmes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80308007, 80308023, 'Roteiro e Direção Cinematográficos');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80308007, 80308031, 'Técnicas de Registro e Processamento de Filmes');
INSERT INTO site_especialidades (cod_sub_area, cod_especialidade, nome_especialidade) VALUES (80308007, 80308040, 'Interpretação Cinematográfica');


--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 321
-- Name: site_especialidades_cod_especialidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_especialidades_cod_especialidade_seq', 1, false);


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 322
-- Name: site_especialidades_cod_sub_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_especialidades_cod_sub_area_seq', 1, false);


--
-- TOC entry 2376 (class 0 OID 26842)
-- Dependencies: 329 2378
-- Data for Name: site_grandes_areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (10000003, 'Ciências Exatas e da Terra');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (20000006, 'Ciências Biológicas');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (30000009, 'Engenharias');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (40000001, 'Ciências da Saúde');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (50000004, 'Ciências Agrárias');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (60000007, 'Ciências Sociais Aplicadas');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (70000000, 'Ciências Humanas');
INSERT INTO site_grandes_areas (cod_area, nome_area) VALUES (90000005, 'Outra');


--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 330
-- Name: site_grandes_areas_cod_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_grandes_areas_cod_area_seq', 18, true);


--
-- TOC entry 2370 (class 0 OID 26816)
-- Dependencies: 323 2378
-- Data for Name: site_sub_areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10100008, 10101004, 'Álgebra');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10100008, 10102000, 'Análise');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10100008, 10103007, 'Geometria e Topologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10100008, 10104003, 'Matemática Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10200002, 10201009, 'Probabilidade');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10200002, 10202005, 'Estatística');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10200002, 10203001, 'Probabilidade e Estatística Aplicadas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10300007, 10301003, 'Teoria da Computação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10300007, 10302000, 'Matemática da Computação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10300007, 10303006, 'Metodologia e Técnicas da Computação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10300007, 10304002, 'Sistemas de Computação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10401008, 'Astronomia de Posição e Mecânica Celeste');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10402004, 'Astrofísica Estelar');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10403000, 'Astrofísica do Meio Interestelar');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10404007, 'Astrofísica Extragalactica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10405003, 'Astrofísica do Sistema Solar');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10400001, 10406000, 'Instrumentação Astronômica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10501002, 'Física Geral');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10502009, 'Áreas Clássicas de Fenomenologia e suas Aplicações');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10503005, 'Física das Partículas Elementares e Campos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10504001, 'Física Nuclear');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10505008, 'Física Atômica e Molecular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10506004, 'Física dos Fluídos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10500006, 10507000, 'Física da Matéria Condensada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10600000, 10601007, 'Química Orgânica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10600000, 10602003, 'Química Inorgânica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10600000, 10603000, 'Físico-Química');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10600000, 10604006, 'Química Analítica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10700005, 10701001, 'Geologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10700005, 10702008, 'Geofísica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10700005, 10703004, 'Meteorologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10700005, 10704000, 'Geodésia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10700005, 10705007, 'Geografia Física');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10800000, 10801006, 'Oceanografia Biológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10800000, 10802002, 'Oceanografia Física');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10800000, 10803009, 'Oceanografia Química');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (10800000, 10804005, 'Oceanografia Geológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20201001, 'Genética Quantitativa');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20202008, 'Genética Molecular e de Microorganismos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20203004, 'Genética Vegetal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20204000, 'Genética Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20205007, 'Genética Humana e Médica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20200005, 20206003, 'Mutagenese');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20301006, 'Paleobotânica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20302002, 'Morfologia Vegetal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20303009, 'Fisiologia Vegetal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20304005, 'Taxonomia Vegetal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20305001, 'Fitogeografia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20300000, 20306008, 'Botânica Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20401000, 'Paleozoologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20402007, 'Morfologia dos Grupos Recentes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20403003, 'Fisiologia dos Grupos Recentes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20404000, 'Comportamento Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20405006, 'Taxonomia dos Grupos Recentes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20400004, 20406002, 'Zoologia Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20500009, 20501005, 'Ecologia Teórica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20500009, 20502001, 'Ecologia de Ecossistemas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20500009, 20503008, 'Ecologia Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20600003, 20601000, 'Citologia e Biologia Celular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20600003, 20602006, 'Embriologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20600003, 20603002, 'Histologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20600003, 20604009, 'Anatomia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20700008, 20701004, 'Fisiologia Geral');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20700008, 20702000, 'Fisiologia de Órgãos e Sistemas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20700008, 20703007, 'Fisiologia do Esforço');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20700008, 20704003, 'Fisiologia Comparada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20800002, 20801009, 'Química de Macromoléculas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20800002, 20802005, 'Bioquímica dos Microorganismos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20800002, 20803001, 'Metabolismo e Bioenergética');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20800002, 20804008, 'Biologia Molecular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20800002, 20805004, 'Enzimologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20900007, 20901003, 'Biofísica Molecular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20900007, 20902000, 'Biofísica Celular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20900007, 20903006, 'Biofísica de Processos e Sistemas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (20900007, 20904002, 'Radiologia e Fotobiologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21001006, 'Farmacologia Geral');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21002002, 'Farmacologia Autonômica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21003009, 'Neuropsicofarmacologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21004005, 'Farmacologia Cardiorenal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21005001, 'Farmacologia Bioquímica e Molecular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21006008, 'Etnofarmacologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21007004, 'Toxicologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21000000, 21008000, 'Farmacologia Clínica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21100004, 21101000, 'Imunoquímica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21100004, 21102007, 'Imunologia Celular');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21100004, 21103003, 'Imunogenética');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21100004, 21104000, 'Imunologia Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21200009, 21201005, 'Biologia e Fisiologia dos Microorganismos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21200009, 21202001, 'Microbiologia Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21300003, 21301000, 'Protozoologia de Parasitos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21300003, 21302006, 'Helmintologia de Parasitos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21300003, 21303002, 'Entomologia e Malacologia de Parasitos e Vetores');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21400008, 21401004, 'Biotecnologia em Saúde Humana e Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21400008, 21402000, 'Biotecnologia Industrial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21400008, 21403007, 'Biotecnologia Vegetal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (21400008, 21404003, 'Biotecnologia Ambiental e Recursos Naturais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30100003, 30101000, 'Construção Civil');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30100003, 30102006, 'Estruturas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30100003, 30103002, 'Geotécnica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30100003, 30104009, 'Engenharia Hidráulica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30100003, 30105005, 'Infra-Estrutura de Transportes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30200008, 30201004, 'Pesquisa Mineral');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30200008, 30202000, 'Lavra');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30200008, 30203007, 'Tratamento de Minérios');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30300002, 30301009, 'Instalações e Equipamentos Metalúrgicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30300002, 30302005, 'Metalurgia Extrativa');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30300002, 30303001, 'Metalurgia de Transformação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30300002, 30304008, 'Metalurgia Física');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30300002, 30305004, 'Materiais Não-Metálicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30401003, 'Materiais Elétricos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30402000, 'Medidas Elétricas, Magnéticas e Eletrônicas, Instrumentação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30403006, 'Circuitos Elétricos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30404002, 'Sistemas Elétricos de Potência');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30405009, 'Eletrônica Industrial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30400007, 30406005, 'Telecomunicações');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30500001, 30501008, 'Fenômenos de Transporte');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30500001, 30502004, 'Engenharia Térmica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30500001, 30503000, 'Mecânica dos Sólidos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30500001, 30504007, 'Projetos de Máquinas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30500001, 30505003, 'Processos de Fabricação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30600006, 30601002, 'Processos Industriais de Engenharia Química');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30600006, 30602009, 'Operações Industriais e Equipamentos para Engenharia Química');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30600006, 30603005, 'Tecnologia Química');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30700000, 30701007, 'Recursos Hídricos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30700000, 30702003, 'Tratamento de Águas de Abastecimento e Residuárias');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30700000, 30703000, 'Saneamento Básico');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30700000, 30704006, 'Saneamento Ambiental');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30800005, 30801001, 'Gerência de Produção');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30800005, 30802008, 'Pesquisa Operacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30800005, 30803004, 'Engenharia do Produto');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30800005, 30804000, 'Engenharia Econômica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30900000, 30901006, 'Aplicações de Radioisótopos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30900000, 30902002, 'Fusão Controlada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30900000, 30903009, 'Combustível Nuclear');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (30900000, 30904005, 'Tecnologia dos Reatores');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31000002, 31001009, 'Planejamento de Transportes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31000002, 31002005, 'Veículos e Equipamentos de Controle');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31000002, 31003001, 'Operações de Transportes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31100007, 31101003, 'Hidrodinâmica de Navios e Sistemas Oceânicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31100007, 31102000, 'Estruturas Navais e Oceânicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31100007, 31103006, 'Máquinas Marítimas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31100007, 31104002, 'Projeto de Navios e de Sistemas Oceânicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31100007, 31105009, 'Tecnologia de Construção Naval e de Sistemas Oceânicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31201008, 'Aerodinâmica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31202004, 'Dinâmica de Vôo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31203000, 'Estruturas Aeroespaciais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31204007, 'Materiais e Processos para Engenharia Aeronáutica e Aeroespacial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31205003, 'Propulsão Aeroespacial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31200001, 31206000, 'Sistemas Aeroespaciais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31300006, 31301002, 'Bioengenharia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31300006, 31302009, 'Engenharia Médica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31400000, 31401007, 'Planejamento Energético');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (31400000, 31402003, 'Fontes Renováveis de Energia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40101002, 'Clínica Médica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40102009, 'Cirurgia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40103005, 'Saúde Materno-Infantil');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40104001, 'Psiquiatria');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40105008, 'Anatomia Patológica e Patologia Clínica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40106004, 'Radiologia Médica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40100006, 40107000, 'Medicina Legal e Deontologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40201007, 'Clínica Odontológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40202003, 'Cirurgia Buco-Maxilo-Facial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40203000, 'Ortodontia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40204006, 'Odontopediatria');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40205002, 'Periodontia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40206009, 'Endodontia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40207005, 'Radiologia Odontológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40208001, 'Odontologia Social e Preventiva');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40200000, 40209008, 'Materiais Odontológicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40301001, 'Farmacotécnica e tecnologia farmacêutica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40302008, 'Farmacognosia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40303004, 'Avaliação e analises toxicológicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40304000, 'Garantia e controle de qualidade farmacêuticos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40306003, 'Fisiopatologia e diagnóstico laboratorial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40307000, 'Farmácia clínica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40300005, 40308006, 'Química Farmacêutica Medicinal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40401006, 'Enfermagem em Saúde do Adulto e do Idoso');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40402002, 'Enfermagem em Saúde da Mulher');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40403009, 'Enfermagem em Saúde da Criança e do Adolescente');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40404005, 'Enfermagem em Saúde Mental');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40405001, 'Enfermagem em Doenças Emergentes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40406008, 'Enfermagem em Saúde Coletiva');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40407004, 'Enfermagem Fundamental');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40400000, 40408000, 'Enfermagem na Gestão e Gerenciamento');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40500004, 40501000, 'Bioquímica da Nutrição');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40500004, 40502007, 'Dietética');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40500004, 40503003, 'Análise Nutricional de População');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40500004, 40504000, 'Desnutrição e Desenvolvimento Fisiológico');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40600009, 40601005, 'Epidemiologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40600009, 40602001, 'Saúde Pública');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (40600009, 40603008, 'Medicina Preventiva');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50101005, 'Ciência do Solo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50102001, 'Fitossanidade');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50103008, 'Fitotecnia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50104004, 'Floricultura');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50105000, 'Agrometeorologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50100009, 50106007, 'Extensão Rural');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50201000, 'Silvicultura');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50202006, 'Manejo Florestal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50203002, 'Técnicas e Operações Florestais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50204009, 'Tecnologia e Utilização de Produtos Florestais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50205005, 'Conservação da Natureza');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50200003, 50206001, 'Energia de Biomassa Florestal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50300008, 50301004, 'Máquinas e Implementos Agrícolas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50300008, 50302000, 'Engenharia de Água e Solo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50300008, 50303007, 'Engenharia de Processamento de Produtos Agrícolas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50300008, 50304003, 'Construções Rurais e Ambiência');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50300008, 50305000, 'Energização Rural');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50400002, 50401009, 'Ecologia dos Animais Domésticos e Etologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50400002, 50402005, 'Genética e Melhoramento dos Animais Domésticos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50400002, 50403001, 'Nutrição e Alimentação Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50400002, 50404008, 'Pastagem e Forragicultura');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50400002, 50405004, 'Produção Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50500007, 50501003, 'Clínica e Cirurgia Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50500007, 50502000, 'Medicina Veterinária Preventiva');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50500007, 50503006, 'Patologia Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50500007, 50504002, 'Reprodução Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50500007, 50505009, 'Inspeção de Produtos de Origem Animal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50600001, 50601008, 'Recursos Pesqueiros Marinhos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50600001, 50602004, 'Recursos Pesqueiros de Águas Interiores');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50600001, 50603000, 'Aqüicultura');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50600001, 50604007, 'Engenharia de Pesca');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50700006, 50701002, 'Ciência de Alimentos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50700006, 50702009, 'Tecnologia de Alimentos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (50700006, 50703005, 'Engenharia de Alimentos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60100001, 60101008, 'Teoria do Direito');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60100001, 60102004, 'Direito Público');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60100001, 60103000, 'Direito Privado');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60100001, 60104007, 'Direitos Especiais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60200006, 60201002, 'Administração de Empresas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60200006, 60202009, 'Administração Pública');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60200006, 60203005, 'Administração de Setores Específicos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60200006, 60204001, 'Ciências Contábeis');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60301007, 'Teoria Econômica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60302003, 'Métodos Quantitativos em Economia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60303000, 'Economia Monetária e Fiscal');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60304006, 'Crescimento');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60305002, 'Economia Internacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60306009, 'Economia dos Recursos Humanos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60307005, 'Economia Industrial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60308001, 'Economia do Bem-Estar Social');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60309008, 'Economia Regional e Urbana');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60300000, 60310006, 'Economias Agrária e dos Recursos Naturais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60400005, 60401001, 'Fundamentos de Arquitetura e Urbanismo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60400005, 60402008, 'Projeto de Arquitetura e Urbanismo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60400005, 60403004, 'Tecnologia de Arquitetura e Urbanismo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60400005, 60404000, 'Paisagismo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60500000, 60501006, 'Fundamentos do Planejamento Urbano e Regional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60500000, 60502002, 'Métodos e Técnicas do Planejamento Urbano e Regional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60500000, 60503009, 'Serviços Urbanos e Regionais');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60601000, 'Distribuição Espacial');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60602007, 'Tendência Populacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60603003, 'Componentes da Dinâmica Demográfica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60604000, 'Nupcialidade e Família');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60605006, 'Demografia Histórica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60606002, 'Política Pública e População');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60600004, 60607009, 'Fontes de Dados Demográficos');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60700009, 60701005, 'Teoria da Informação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60700009, 60702001, 'Biblioteconomia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60700009, 60703008, 'Arquivologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60900008, 60901004, 'Teoria da Comunicação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60900008, 60902000, 'Jornalismo e Editoração');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60900008, 60903007, 'Rádio e Televisão');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60900008, 60904003, 'Relações Públicas e Propaganda');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (60900008, 60905000, 'Comunicação Visual');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (61000000, 61001007, 'Fundamentos do Serviço Social');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (61000000, 61002003, 'Serviço Social Aplicado');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (61200000, 61201006, 'Programação Visual');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (61200000, 61202002, 'Desenho de Produto');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70101000, 'História da Filosofia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70102007, 'Metafísica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70103003, 'Lógica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70104000, 'Ética');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70105006, 'Epistemologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70106002, 'Filosofia Brasileira');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70100004, 70107009, 'Estética e Filosofia da Arte');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70201005, 'Fundamentos da Sociologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70202001, 'Sociologia do Conhecimento');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70203008, 'Sociologia do Desenvolvimento');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70204004, 'Sociologia Urbana');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70205000, 'Sociologia Rural');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70206007, 'Sociologia da Saúde');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70200009, 70207003, 'Outras Sociologias Específicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70300003, 70301000, 'Teoria Antropológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70300003, 70302006, 'Etnologia Indígena');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70300003, 70303002, 'Antropologia Urbana');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70300003, 70304009, 'Antropologia Rural');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70300003, 70305005, 'Antropologia das Populações Afro-Brasileiras');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70400008, 70401004, 'Teoria e Método em Arqueologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70400008, 70402000, 'Arqueologia Pré-Histórica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70400008, 70403007, 'Arqueologia Histórica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70501009, 'Teoria e Filosofia da História');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70502005, 'História Antiga e Medieval');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70503001, 'História Moderna e Contemporânea');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70504008, 'História da América');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70505004, 'História do Brasil');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70500002, 70506000, 'História das Ciências');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70600007, 70601003, 'Geografia Humana');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70600007, 70602000, 'Geografia Regional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70701008, 'Fundamentos e Medidas da Psicologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70702004, 'Psicologia Experimental');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70703000, 'Psicologia Fisiológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70704007, 'Psicologia Comparativa');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70705003, 'Psicologia Social');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70706000, 'Psicologia Cognitiva');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70707006, 'Psicologia do Desenvolvimento Humano');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70708002, 'Psicologia do Ensino e da Aprendizagem');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70709009, 'Psicologia do Trabalho e Organizacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70700001, 70710007, 'Tratamento e Prevenção Psicológica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70801002, 'Fundamentos da Educação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70802009, 'Administração Educacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70803005, 'Planejamento e Avaliação Educacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70804001, 'Ensino-Aprendizagem');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70805008, 'Currículo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70806004, 'Orientação e Aconselhamento');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70800006, 70807000, 'Tópicos Específicos de Educação');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70900000, 70901007, 'Teoria Política');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70900000, 70902003, 'Estado e Governo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70900000, 70903000, 'Comportamento Político');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70900000, 70904006, 'Políticas Públicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (70900000, 70905002, 'Política Internacional');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71001000, 'História das Teologias e Religiões');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71004009, 'Teologia Prática');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71005005, 'Teologia Fundamental Sistemática');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71006001, 'Ciências da Religião Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71007008, 'Ciências da Linguagem Religiosa');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71008004, 'Ciências Empíricas da Religião');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71009000, 'Epistemologia das Ciências da Religião');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (71000003, 71010009, 'Tradições e Escrituras Sagradas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80101003, 'Teoria e Análise Lingüística');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80102000, 'Filosofia da Linguagem');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80103006, 'Lingüística Histórica');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80104002, 'Sociolingüística e Dialetologia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80105009, 'Psicolingüística');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80100007, 80106005, 'Lingüística Aplicada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80201008, 'Língua Portuguesa');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80202004, 'Línguas Estrangeiras Modernas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80203000, 'Línguas Clássicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80204007, 'Línguas Indígenas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80205003, 'Teoria Literária');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80206000, 'Literatura Brasileira');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80207006, 'Outras Literaturas Vernáculas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80208002, 'Literaturas Estrangeiras Modernas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80209009, 'Literaturas Clássicas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80200001, 80210007, 'Literatura Comparada');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80301002, 'Fundamentos e Crítica das Artes');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80302009, 'Artes Plásticas');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80303005, 'Música');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80304001, 'Dança');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80305008, 'Teatro');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80306004, 'Ópera');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80307000, 'Fotografia');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80308007, 'Cinema');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80309003, 'Artes do Vídeo');
INSERT INTO site_sub_areas (cod_area, cod_sub_area, nome_sub_area) VALUES (80300006, 80310001, 'Educação Artística');


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 324
-- Name: site_sub_areas_cod_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_sub_areas_cod_area_seq', 1, false);


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 325
-- Name: site_sub_areas_cod_sub_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_sub_areas_cod_sub_area_seq', 1, false);


--
-- TOC entry 2261 (class 2606 OID 26859)
-- Dependencies: 326 326 2379
-- Name: site_areas_conhecimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_areas_conhecimento
    ADD CONSTRAINT site_areas_conhecimento_pkey PRIMARY KEY (cod_area);


--
-- TOC entry 2255 (class 2606 OID 26710)
-- Dependencies: 315 315 2379
-- Name: site_auditores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_avaliadores
    ADD CONSTRAINT site_auditores_pkey PRIMARY KEY (id);


--
-- TOC entry 2257 (class 2606 OID 26814)
-- Dependencies: 320 320 2379
-- Name: site_especialidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_especialidades
    ADD CONSTRAINT site_especialidades_pkey PRIMARY KEY (cod_especialidade);


--
-- TOC entry 2259 (class 2606 OID 26829)
-- Dependencies: 323 323 2379
-- Name: site_sub_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_sub_areas
    ADD CONSTRAINT site_sub_areas_pkey PRIMARY KEY (cod_sub_area);


-- Completed on 2016-09-02 23:51:14

--
-- PostgreSQL database dump complete
--
