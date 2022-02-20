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

SET default_with_oids = false;

CREATE SCHEMA IF NOT EXISTS scol;

--
-- Name: importation; Type: TABLE; Schema: scol; 
--

CREATE TABLE IF NOT EXISTS scol.importation (
    code_etab text,
    appellation text,
    adresse text,
    commune text,
    latitude real,
    longitude real,
    code_nature text,
    nature text,
    code_dept text,
    code_reg text,
    code_acad text,
    code_commune text,
    departement text,
    region text,
    academie text
);


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
-- Data for Name: importation; Type: TABLE DATA; Schema: scol; 
--

COPY scol.importation (code_etab, appellation, adresse, commune, latitude, longitude, code_nature, nature, code_dept, code_reg, code_acad, code_commune, departement, region, academie) FROM stdin;
7200407E	Ecole primaire Campanari Bastia	10  RUE SAINT JOSEPH	Bastia	42.6904984	9.44661045	151	ECOLE DE NIVEAU ELEMENTAIRE	2B	94	27	2B033	Haute-Corse	Corse	Corse
0190032G	Lycée général et technologique Edmond Perrier	6 avenue HENRI DE BOURNAZEL	Tulle	45.2681122	1.76840842	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	19	75	22	19272	Corrèze	Nouvelle-Aquitaine	Limoges
0190169F	Ecole élémentaire Jules Ferry	Place Capitaine Taurisson	Malemort	45.1703339	1.56535017	151	ECOLE DE NIVEAU ELEMENTAIRE	19	75	22	19123	Corrèze	Nouvelle-Aquitaine	Limoges
0340119V	Collège Ferdinand Fabre	Boulevard Jean Moulin	Bédarieux	43.6109238	3.15462947	340	COLLEGE	34	76	11	34028	Hérault	Occitanie	Montpellier
0491364S	Ecole primaire privée Sainte Marie	12 rue du Colonel	Denée	47.3764	-0.606120408	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49120	Maine-et-Loire	Pays de la Loire	Nantes
0491478R	Ecole primaire privée Sacré-Coeur	6 bis rue du Général de Gaulle	Trémentines	47.1247368	-0.787690103	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49355	Maine-et-Loire	Pays de la Loire	Nantes
6200077P	Ecole primaire Saint Jean Eccica Suarella	\N	Eccica-Suarella	41.9154205	8.86108017	101	ECOLE MATERNELLE	2A	94	27	2A104	Corse-du-Sud	Corse	Corse
0100051B	Collège privé Saint Loup	8  RUE DE LA GOGUETTE	Mesnil-Saint-Loup	48.3012276	3.76404023	340	COLLEGE	10	44	19	10237	Aube	Grand Est	Reims
0250569H	Ecole primaire	Place de l'Ecole	Houtaud	46.914299	6.3145299	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25309	Doubs	Bourgogne-Franche-Comté	Besançon
0250650W	Ecole primaire	32 GRANDE RUE	Marchaux-Chaudefontaine	47.3228683	6.13452959	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25368	Doubs	Bourgogne-Franche-Comté	Besançon
0251098H	Ecole maternelle Raymond Faivre	33 rue Jean Monnet	Pontarlier	46.8994064	6.35411024	101	ECOLE MATERNELLE	25	27	03	25462	Doubs	Bourgogne-Franche-Comté	Besançon
0330642U	Ecole primaire	\N	Cours-de-Monségur	44.6502457	0.117793515	101	ECOLE MATERNELLE	33	75	04	33136	Gironde	Nouvelle-Aquitaine	Bordeaux
0331048K	Ecole élementaire	7 rue Babaud	Le Puy	44.6582108	0.064344354	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33345	Gironde	Nouvelle-Aquitaine	Bordeaux
0331138H	Ecole élementaire	\N	Sainte-Gemme	44.6215935	0.0690591633	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33404	Gironde	Nouvelle-Aquitaine	Bordeaux
0332806W	Collège privé Le Mirail	61 cours DE LA SOMME	Bordeaux	44.8281174	-0.57243973	340	COLLEGE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0440153C	Collège privé Saint Gabriel	16 rue BOURRELIERE HAUTE-GOULAINE	Haute-Goulaine	47.1985893	-1.44527006	340	COLLEGE	44	52	17	44071	Loire-Atlantique	Pays de la Loire	Nantes
0440561W	Ecole primaire Les Trois Chênes	27 rue André Caux	Guenrouet	47.5183182	-1.95646966	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44068	Loire-Atlantique	Pays de la Loire	Nantes
0440854P	Ecole maternelle Les Pommes de Pin	2 rue Jules Ferry	Sainte-Luce-sur-Loire	47.2510414	-1.48651004	101	ECOLE MATERNELLE	44	52	17	44172	Loire-Atlantique	Pays de la Loire	Nantes
0440864A	Ecole primaire de l'Horizon	3 rue de l'Horizon	Saint-Michel-Chef-Chef	47.1816521	-2.15133023	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44182	Loire-Atlantique	Pays de la Loire	Nantes
0441559F	Ecole élémentaire La Cerisaie	10 rue Jules Ferry	Sainte-Luce-sur-Loire	47.2511749	-1.48628032	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44172	Loire-Atlantique	Pays de la Loire	Nantes
0470426H	Ecole élémentaire	Avenue Serge Dubois	Bias	44.415802	0.671123087	151	ECOLE DE NIVEAU ELEMENTAIRE	47	75	04	47027	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0490707C	Ecole élémentaire Alexandre Pain	4 bis rue Principale	Louresse-Rochemenier	47.2374344	-0.310810179	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49182	Maine-et-Loire	Pays de la Loire	Nantes
0570099Y	Lycée Henri Nominé - Lycée des métiers des services aux entreprises	60 rue du Maréchal Foch	Sarreguemines	49.1148529	7.07904959	306	LYCEE POLYVALENT	57	44	12	57631	Moselle	Grand Est	Nancy-Metz
0590131X	Collège Jean Jaurès	1 rue de la paix du 8 mai 1945	Lille	50.6409531	3.01018929	340	COLLEGE	59	32	09	59350	Nord	Hauts-de-France	Lille
0591281X	Ecole primaire Jean Moulin	Rue Clémenceau	Grande-Synthe	51.0148621	2.30643964	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59271	Nord	Hauts-de-France	Lille
0592134Z	Ecole primaire René Soetard	Rue Marthe Hautebar	Sailly-lez-Lannoy	50.6484756	3.22260952	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59522	Nord	Hauts-de-France	Lille
0592448R	Ecole maternelle Centre	Place Jeanne d'Arc	Vieux-Condé	50.4564095	3.56857061	101	ECOLE MATERNELLE	59	32	09	59616	Nord	Hauts-de-France	Lille
0592929N	Lycée général et technologique privé Sainte Thérèse	4 place GUILLEMIN	Avesnes-sur-Helpe	50.1224518	3.93305016	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	59	32	09	59036	Nord	Hauts-de-France	Lille
0593296M	Ecole maternelle Jacques Prévert	4 rue Fernand Couteau	Courchelettes	50.3434181	3.06189966	101	ECOLE MATERNELLE	59	32	09	59156	Nord	Hauts-de-France	Lille
0594085V	Ecole primaire privée Saint Joseph	140 route de Bailleul	Saint-Jans-Cappel	50.7625809	2.72190976	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59535	Nord	Hauts-de-France	Lille
0594109W	Ecole primaire privée Saint Raphael	27 rue du Blanc Seau	Tourcoing	50.7086792	3.15863943	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59599	Nord	Hauts-de-France	Lille
0594342Z	Ecole maternelle Françoise Dolto	Rue de la Paix	Boussois	50.293869	4.04121065	101	ECOLE MATERNELLE	59	32	09	59104	Nord	Hauts-de-France	Lille
0595712N	Collège Jean Monnet	Boulevard ROBERT PRUVOT	Grand-Fort-Philippe	50.9952965	2.10944057	340	COLLEGE	59	32	09	59272	Nord	Hauts-de-France	Lille
0596304G	Ecole primaire privée Saint Christophe	2 rue Albert de Mun	Dunkerque	51.0431557	2.40543008	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59183	Nord	Hauts-de-France	Lille
0620036C	Collège Jean Moulin	60 avenue Antoine de Saint-Exupéry	Berck	50.4003906	1.56397998	340	COLLEGE	62	32	09	62108	Pas-de-Calais	Hauts-de-France	Lille
0620351V	Ecole maternelle Louise de Bettignies	Route de Gonnehem	Chocques	50.5436172	2.57221985	101	ECOLE MATERNELLE	62	32	09	62224	Pas-de-Calais	Hauts-de-France	Lille
0622319J	Ecole maternelle Les Eglantines	Rue Paul Vaillant Couturier	Allouagne	50.5304146	2.50922966	101	ECOLE MATERNELLE	62	32	09	62023	Pas-de-Calais	Hauts-de-France	Lille
0622556S	Ecole primaire - Regroupement Pédagogique Intercommunal Concentré (RPC) de METZ-EN-COUTURE	Place de la Mairie	Metz-en-Couture	50.0682869	3.06176949	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62572	Pas-de-Calais	Hauts-de-France	Lille
0623217K	Ecole primaire Jean Rostand	Place Charles de Gaulle	Saint-Léonard	50.6894302	1.62725973	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62755	Pas-de-Calais	Hauts-de-France	Lille
0623950G	Ecole primaire Les Hemmes	820 rue Robelin	Marck	50.9828377	1.96858048	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62548	Pas-de-Calais	Hauts-de-France	Lille
0623971E	Ecole maternelle Frank-Michel	16 rue Emile Basly	Avion	50.4052238	2.83820033	101	ECOLE MATERNELLE	62	32	09	62065	Pas-de-Calais	Hauts-de-France	Lille
0680703V	Ecole maternelle intercommunale	2 rue des Ecoles	Meyenheim	47.9134064	7.35674047	101	ECOLE MATERNELLE	68	44	15	68205	Haut-Rhin	Grand Est	Strasbourg
0681257X	Ecole Elémentaire	3 rue du Petit Prince	Burnhaupt-le-Haut	47.7351418	7.14434004	151	ECOLE DE NIVEAU ELEMENTAIRE	68	44	15	68060	Haut-Rhin	Grand Est	Strasbourg
0681292K	Ecole maternelle Jean Mermoz	3 rue d'Altkirch	Riedisheim	47.7393494	7.36749983	101	ECOLE MATERNELLE	68	44	15	68271	Haut-Rhin	Grand Est	Strasbourg
0700005A	Collège Duplessis-Deville	10 rue de Mollans	Faucogney-et-la-Mer	47.8401489	6.56288052	340	COLLEGE	70	27	03	70227	Haute-Saône	Bourgogne-Franche-Comté	Besançon
0240053C	Collège Max Bramerie	Rue du Collège	La Force	44.8705139	0.373685926	340	COLLEGE	24	75	04	24222	Dordogne	Nouvelle-Aquitaine	Bordeaux
0381908T	Collège Le Vergeron	278 route DES BETHANIES	Moirans	45.3201447	5.56587601	340	COLLEGE	38	84	08	38239	Isère	Auvergne-Rhône-Alpes	Grenoble
0382174G	Collège  Salvador Allende	4 boulevard PRE POMMIER	Bourgoin-Jallieu	45.6124039	5.2653327	340	COLLEGE	38	84	08	38053	Isère	Auvergne-Rhône-Alpes	Grenoble
0950492U	Ecole primaire	7 rue de Dugny	Bonneuil-en-France	48.9740562	2.43287945	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95088	Val-d'Oise	Ile-de-France	Versailles
0951131N	Ecole élémentaire Le Moulin	Rue des Marlots	Louvres	49.0485535	2.50727963	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95351	Val-d'Oise	Ile-de-France	Versailles
0951211A	Ecole élémentaire Paul Bert	9 allée Watteau	Montigny-lès-Cormeilles	49.0015564	2.20084023	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95424	Val-d'Oise	Ile-de-France	Versailles
0951517H	Ecole maternelle Les Genottes	12 rue des Genottes	Cergy	49.0460854	2.03718734	101	ECOLE MATERNELLE	95	11	25	95127	Val-d'Oise	Ile-de-France	Versailles
0931319D	Ecole élémentaire Jean Moulin	4 rue Eugénie Cotton	Tremblay-en-France	48.9487686	2.56754017	153	ECOLE ELEMENTAIRE D APPLICATION	93	11	24	93073	Seine-Saint-Denis	Ile-de-France	Créteil
0931507H	Ecole élémentaire  Paul Bert	12 rue Jean-Baptiste Clément	Coubron	48.9161987	2.57059026	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93015	Seine-Saint-Denis	Ile-de-France	Créteil
0931555K	Ecole primaire Chevalier de Saint Georges	Rue Guillaume Apollinaire	Le Blanc-Mesnil	48.9514503	2.44618058	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93007	Seine-Saint-Denis	Ile-de-France	Créteil
0931880N	Ecole maternelle Les Merisiers	Avenue du Président Coty	Villepinte	48.9562759	2.55933928	101	ECOLE MATERNELLE	93	11	24	93078	Seine-Saint-Denis	Ile-de-France	Créteil
0770512N	Ecole primaire	1 rue DE L'EGLISE	Villebéon	48.2077446	2.94121051	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77500	Seine-et-Marne	Ile-de-France	Créteil
0931228E	Collège Albert Camus	9 boulevard de la République	Neuilly-sur-Marne	48.8578796	2.52828956	340	COLLEGE	93	11	24	93050	Seine-Saint-Denis	Ile-de-France	Créteil
0050231Z	Ecole primaire Le Mélezet	0  CENTRE	Les Orres	44.5140953	6.55104065	151	ECOLE DE NIVEAU ELEMENTAIRE	05	93	02	05098	Hautes-Alpes	Provence-Alpes-Côte d'Azur	Aix-Marseille
0050419D	Ecole maternelle Le Rochasson	Quartier du Rochasson	Gap	44.5678253	6.08218956	101	ECOLE MATERNELLE	05	93	02	05061	Hautes-Alpes	Provence-Alpes-Côte d'Azur	Aix-Marseille
0431041Y	Lycée d'enseignement général et technologique OneSchool Global Le Chambon Campus	Zone d'activité Les Lesbreyres	Le Chambon-sur-Lignon	\N	\N	301	LYCEE D ENSEIGNEMENT TECHNOLOGIQUE	43	84	06	43051	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0760082B	Lycée professionnel Jean Rostand - Lycée des métiers  de la maintenance et  de l'hortipaysage	501 rue du Château	Offranville	49.8563385	1.02118933	320	LYCEE PROFESSIONNEL	76	28	21	76482	Seine-Maritime	Normandie	Rouen
0950118M	Ecole primaire publique Foch	22 avenue du Maréchal Foch	Ecouen	49.0275154	2.36838007	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95205	Val-d'Oise	Ile-de-France	Versailles
0150609F	Ecole maternelle	\N	Saint-Jacques-des-Blats	45.0532761	2.7111094	101	ECOLE MATERNELLE	15	84	06	15192	Cantal	Auvergne-Rhône-Alpes	Clermont-Ferrand
0511251H	Collège Joliot-Curie	2 rue JOLIOT CURIE	Reims	49.2318954	4.00597048	340	COLLEGE	51	44	19	51454	Marne	Grand Est	Reims
9720007A	Collège Aimé Césaire de Fort-de-France	11 place ABBE GREGOIRE	Fort-de-France	14.6114969	-61.0719109	340	COLLEGE	972	02	31	97209	Martinique	Martinique	Martinique
0132274B	Ecole élémentaire Malpassé Les Lauriers	Rue de Marathon	Marseille 13e  Arrondissement	43.3271484	5.41271019	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13213	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0301474P	Ecole élémentaire Henri Wallon	210 rue Utrillo	Nîmes	43.8246956	4.33103466	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30189	Gard	Occitanie	Montpellier
0383051K	Ecole primaire Jean-Paul Marat	3 allée d'Ouessant	Echirolles	45.1573524	5.71769953	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38151	Isère	Auvergne-Rhône-Alpes	Grenoble
0541327Z	Collège Jean Lamour	56 boulevard DE SCARPONE	Nancy	48.7036972	6.16328955	340	COLLEGE	54	44	12	54395	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0601450A	Ecole maternelle Jean Racine	22 bis rue Léon Jouhaux	Creil	49.2564659	2.48228002	101	ECOLE MATERNELLE	60	32	20	60175	Oise	Hauts-de-France	Amiens
0640404S	Ecole primaire	\N	Casteide-Candau	43.5149803	-0.561480582	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64172	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0640783D	Ecole maternelle Jules Ferry	9 rue de l'Esté	Bayonne	43.4945412	-1.4674679	101	ECOLE MATERNELLE	64	75	04	64102	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0691822F	Ecole élémentaire Anatole France	34 rue Anatole France	Vaulx-en-Velin	45.7831688	4.92167044	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69256	Rhône	Auvergne-Rhône-Alpes	Lyon
9740440K	Ecole maternelle publique Centre les Trois Bassins	25 allée des Ecoliers	Les Trois-Bassins	-21.1047592	55.2916985	101	ECOLE MATERNELLE	974	04	28	97423	La Réunion	La Réunion	La Réunion
0141167T	Collège privé Sainte Trinité	5 rue de la Rochefoucauld	Falaise	48.8982506	-0.197690606	340	COLLEGE	14	28	05	14258	Calvados	Normandie	Caen
0160401Z	Ecole primaire Les Ondines	54 route des Ecoles	Aunac-sur-Charente	45.915554	0.244200245	151	ECOLE DE NIVEAU ELEMENTAIRE	16	75	13	16023	Charente	Nouvelle-Aquitaine	Poitiers
0170110C	Collège privé Saint-Sacrement	36 place de la République	Aigrefeuille-d'Aunis	46.1181068	-0.933090568	340	COLLEGE	17	75	13	17003	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0270251B	Ecole primaire Victor Hugo	\N	Fontaine-l'Abbé	49.0915756	0.690990686	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27251	Eure	Normandie	Rouen
0351369Y	Ecole primaire privée le Sacré Coeur	13 rue de la Prouverie	Saint-Gilles	48.1530075	-1.82632983	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35275	Ille-et-Vilaine	Bretagne	Rennes
0790607F	Ecole maternelle Les Corderies	2 place des Corderies	Airvault	46.825058	-0.137460083	101	ECOLE MATERNELLE	79	75	13	79005	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0790612L	Ecole primaire	\N	Amuré	46.240284	-0.585499525	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79009	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0020777J	Ecole primaire	Chemin des Ponceaux	Roucy	49.3775024	3.81615973	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02656	Aisne	Hauts-de-France	Amiens
0020845H	Ecole primaire Girondins	75 rue Félix de Pardieu	Saint-Quentin	49.8383026	3.30791998	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02691	Aisne	Hauts-de-France	Amiens
0021267S	Ecole primaire	232 rue de la Mairie	Vauxbuin	49.359375	3.29512954	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02770	Aisne	Hauts-de-France	Amiens
0021841R	Ecole maternelle Ernest Lavisse	Place de la République	Le Nouvion-en-Thiérache	50.0146637	3.78491998	101	ECOLE MATERNELLE	02	32	20	02558	Aisne	Hauts-de-France	Amiens
0860076R	Collège Jean Moulin	8 rue Salvador Allende	Poitiers	46.5810471	0.371530414	340	COLLEGE	86	75	13	86194	Vienne	Nouvelle-Aquitaine	Poitiers
0870935U	Ecole élémentaire publique	5 rue Champlain	Nexon	45.678978	1.18444991	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87106	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0900093M	Ecole maternelle du Chantoiseau	15 rue des Ecoles	Giromagny	47.7446861	6.82218075	101	ECOLE MATERNELLE	90	27	03	90052	Territoire de Belfort	Bourgogne-Franche-Comté	Besançon
0133821H	ECOLE ELEMENTAIRE ZAC CHATEAU GOMBERT	13 rue Robert de Roux	Marseille 13e  Arrondissement	43.3377762	5.44691992	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13213	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0070892G	Ecole élémentaire  Vincent d'Indy	Rue Honoré d'Urfé	Tournon-sur-Rhône	45.0598526	4.8384099	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07324	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0221901X	Ecole primaire publique La Garaye	12 rue de la Sagesse	Dinan	48.4565125	-2.04610062	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22050	Côtes-d'Armor	Bretagne	Rennes
0261215E	Ecole élémentaire Marguerite Soubeyran	\N	Châteauneuf-du-Rhône	44.4864731	4.71627951	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26085	Drôme	Auvergne-Rhône-Alpes	Grenoble
0261295S	Ecole Général Miribel	Place du Général Miribel	Hauterives	45.2550888	5.02453995	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26148	Drôme	Auvergne-Rhône-Alpes	Grenoble
0380465Z	Ecole élémentaire	116 rue DES GRILLONS	Eyzin-Pinet	45.474659	4.99829006	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38160	Isère	Auvergne-Rhône-Alpes	Grenoble
0382811Z	Ecole primaire Centre	Village LE VILLAGE	Saint-Barthélemy-de-Séchilienne	45.0434456	5.8252902	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38364	Isère	Auvergne-Rhône-Alpes	Grenoble
0710262Z	Ecole primaire	\N	Péronne	46.4386826	4.80982971	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71345	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0710429F	Ecole primaire	\N	Clessé	46.4195328	4.82034063	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71135	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0710669S	Ecole primaire	\N	Chissey-en-Morvan	47.118679	4.22466993	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71129	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0730319A	Ecole élémentaire	Lieu-dit Chef-Lieu	Laissaud	45.4471397	6.03714943	151	ECOLE DE NIVEAU ELEMENTAIRE	73	84	08	73141	Savoie	Auvergne-Rhône-Alpes	Grenoble
9741318P	Ecole élémentaire publique José Barau	9 avenue François Mitterrand	Sainte-Suzanne	-20.9045734	55.6034317	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97420	La Réunion	La Réunion	La Réunion
7200025P	Collège Pascal Paoli Ile Rousse	8 route DE CALVI	L'Ile-Rousse	42.6298103	8.9323101	340	COLLEGE	2B	94	27	2B134	Haute-Corse	Corse	Corse
0121504V	Ecole primaire publique	Avenue Raymond Bel	Coupiac	43.9535217	2.5827198	151	ECOLE DE NIVEAU ELEMENTAIRE	12	76	16	12080	Aveyron	Occitanie	Toulouse
0601405B	Section d'enseignement général et professionnel adapté du Collège Pellerin	RUE DU PRE MARTINET	Beauvais	49.4287453	2.09366941	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	60	32	20	60057	Oise	Hauts-de-France	Amiens
0751404U	E.M.PU ST LUC 3 rue Saint Luc	3 rue Saint Luc	Paris 18e  Arrondissement	48.8856316	2.35417056	101	ECOLE MATERNELLE	75	11	01	75118	Paris	Ile-de-France	Paris
0801743K	Lycée général et technologique privé Montalembert	3 route D AMIENS	Doullens	50.1536064	2.34005952	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	80	32	20	80253	Somme	Hauts-de-France	Amiens
0332572S	Ecole élementaire Louis Aragon	Rue Erik Satie	Floirac	44.8421898	-0.508278608	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33167	Gironde	Nouvelle-Aquitaine	Bordeaux
0441202T	Ecole primaire privée Notre-Dame	7 rue du Puits Neuf	Legé	46.8831596	-1.59505975	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44081	Loire-Atlantique	Pays de la Loire	Nantes
0441664V	Ecole maternelle La Fontaine	Avenue de la Victoire	Guémené-Penfao	47.6291809	-1.83586442	101	ECOLE MATERNELLE	44	52	17	44067	Loire-Atlantique	Pays de la Loire	Nantes
0672911A	Ecole élémentaire publique groupe scolaire les Alouettes	1 rue des Hirondelles	Sarrewerden	48.9237442	7.0870595	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67435	Bas-Rhin	Grand Est	Strasbourg
0752968U	E.M.PR PARDESS HANNA 49 rue Petit	49 rue Petit	Paris 19e  Arrondissement	48.8854523	2.38539004	101	ECOLE MATERNELLE	75	11	01	75119	Paris	Ile-de-France	Paris
0261532Z	L'ECOLE BUISSONNANTE	6 rue	Anneyron	45.2706757	4.89416075	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26010	Drôme	Auvergne-Rhône-Alpes	Grenoble
0761897Z	Ecole élémentaire Jean-Philippe Rameau	6 bis rue Jean Philippe Rameau	Rouen	49.4504471	1.14278007	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76540	Seine-Maritime	Normandie	Rouen
0920198R	Ecole élémentaire publique Logie-Cayla	12 rue du Cayla	Courbevoie	48.9005089	2.26584005	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92026	Hauts-de-Seine	Ile-de-France	Versailles
0730904L	Collège La Combe de Savoie	7 avenue DE WINNENDEN	Albertville	45.6659851	6.37159967	340	COLLEGE	73	84	08	73011	Savoie	Auvergne-Rhône-Alpes	Grenoble
0440761N	Ecole élémentaire Les Halbrans	Impasse Réné Rabouin	Pont-Saint-Martin	47.1250839	-1.58074987	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44130	Loire-Atlantique	Pays de la Loire	Nantes
0756088K	E.M.PR ECOLE MONTESSORI SQUARE 25 rue D'Orsel	25 rue D'Orsel	Paris 18e  Arrondissement	\N	\N	101	ECOLE MATERNELLE	75	11	01	75118	Paris	Ile-de-France	Paris
0771362M	Collège Camille Saint-Saens	1 avenue du Général de Gaulle	Lizy-sur-Ourcq	49.029892	3.01536989	340	COLLEGE	77	11	24	77257	Seine-et-Marne	Ile-de-France	Créteil
0910629P	Lycée professionnel Chateau des Coudraies, lycée des métiers de bouche et d'hôtellerie	2 boulevard Charles de Gaulle	Etiolles	48.6353912	2.46518993	320	LYCEE PROFESSIONNEL	91	11	25	91225	Essonne	Ile-de-France	Versailles
0911386M	Ecole élémentaire Pressoir Prompt	103 BOULEVARD J.KENNEDY	Corbeil-Essonnes	48.5861282	2.47693038	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91174	Essonne	Ile-de-France	Versailles
0040153V	Ecole primaire	Rue du Professeur Francis Arnaud	L'Escale	44.0847969	6.0250392	151	ECOLE DE NIVEAU ELEMENTAIRE	04	93	02	04079	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0251028G	Institution Notre-Dame Saint-Jean-Lycée	1 chemin de l'Espérance	Besançon	47.250618	6.00432014	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	25	27	03	25056	Doubs	Bourgogne-Franche-Comté	Besançon
0692390Y	Etablissement régional d'enseignement adapté Cité Scolaire René Pellet - Lycée des métiers du tertiaire et de l'artisanat d'art	32 rue DE FRANCE	Villeurbanne	45.7656479	4.88748026	370	ETABLISSEMENT REGIONAL D'ENSEIGNT ADAPTE	69	84	10	69266	Rhône	Auvergne-Rhône-Alpes	Lyon
0850032Y	Lycée général et technologique Savary de Mauléon	78 avenue DE BRETAGNE	Les Sables-d'Olonne	46.5055809	-1.77692997	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	85	52	17	85194	Vendée	Pays de la Loire	Nantes
0620047P	Collège Germinal	22 rue Jean Jaurès	Biache-Saint-Vaast	50.3141861	2.94112968	340	COLLEGE	62	32	09	62128	Pas-de-Calais	Hauts-de-France	Lille
0410995J	Ecole primaire Jules FERRY	Rue Jean Segretin	Châtres-sur-Cher	47.2648582	1.90426064	151	ECOLE DE NIVEAU ELEMENTAIRE	41	24	18	41044	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0772090D	Collège Jean Wiener	9 avenue JEAN WIENER	Champs-sur-Marne	48.8466988	2.58143997	340	COLLEGE	77	11	24	77083	Seine-et-Marne	Ile-de-France	Créteil
0910624J	Collège Blaise Pascal	2 allée D AJACCIO	Massy	48.7335472	2.29526043	340	COLLEGE	91	11	25	91377	Essonne	Ile-de-France	Versailles
0772255H	Ecole primaire Charles Perrault	24 avenue des Alouettes	Saint-Pathus	49.0788307	2.78543997	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77430	Seine-et-Marne	Ile-de-France	Créteil
0772772V	ECOLE PRIMAIRE	13 rue du Paradis	Aubepierre-Ozouer-le-Repos	48.6316566	2.88844967	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77010	Seine-et-Marne	Ile-de-France	Créteil
0261088S	Collège Alain Borne	10 place DU THEATRE	Montélimar	44.555275	4.74550915	340	COLLEGE	26	84	08	26198	Drôme	Auvergne-Rhône-Alpes	Grenoble
0261137V	Collège privé Saint Victor	3 rue DE LA CECILE	Valence	44.9231949	4.88817024	340	COLLEGE	26	84	08	26362	Drôme	Auvergne-Rhône-Alpes	Grenoble
0420295T	Ecole primaire Renée Peillon	Rue du Dorlay	La Grand-Croix	45.5000839	4.57334948	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42103	Loire	Auvergne-Rhône-Alpes	Lyon
0694277Z	école primaire priv Les lettres dorées	31 rue DES TUILIERS	Lyon 8e  Arrondissement	45.7464943	4.8646903	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69388	Rhône	Auvergne-Rhône-Alpes	Lyon
0740026B	Collège Emile Allais	309 chemin des Ecoles	Megève	45.8548775	6.61299992	340	COLLEGE	74	84	08	74173	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0860348L	Ecole primaire du Martray	53 boulevard du 8 Mai 1945	Loudun	47.0090332	0.0711698905	151	ECOLE DE NIVEAU ELEMENTAIRE	86	75	13	86137	Vienne	Nouvelle-Aquitaine	Poitiers
0080948M	Collège GIVET	15 rue BOUSY	Givet	50.1336746	4.82845974	340	COLLEGE	08	44	19	08190	Ardennes	Grand Est	Reims
0380178M	Ecole primaire	47 chemin du Village	Beaufort	45.3263321	5.12050962	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38032	Isère	Auvergne-Rhône-Alpes	Grenoble
0410807E	Ecole maternelle	253 route de Chambord	Huisseau-sur-Cosson	47.5931435	1.4528501	101	ECOLE MATERNELLE	41	24	18	41104	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0442365G	Section d'enseignement professionnel du Lycée polyvalent privé La Baugerie	38 boulevard DES PAS ENCHANTES	Saint-Sébastien-sur-Loire	47.2061195	-1.52077007	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	44	52	17	44190	Loire-Atlantique	Pays de la Loire	Nantes
0090093C	Ecole primaire	Place de l'Eglise	Artigat	43.1354332	1.43959951	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09019	Ariège	Occitanie	Toulouse
0090468K	Ecole élémentaire	VILLAGE	Saint-Martin-de-Caralp	42.9903679	1.54401016	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09269	Ariège	Occitanie	Toulouse
0110345R	Ecole primaire	Route des 4 Châteaux	Lastours	43.3367157	2.37985969	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11194	Aude	Occitanie	Montpellier
0141966L	Ecole primaire Louise Laurent	Rue Saint Quentin	Bayeux	49.2805061	-0.701180637	151	ECOLE DE NIVEAU ELEMENTAIRE	14	28	05	14047	Calvados	Normandie	Caen
0280658N	Collège Albert Camus	7 avenue du Général Leclerc	Dreux	48.7403717	1.37322986	340	COLLEGE	28	24	18	28134	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0281047L	Lycée général et technologique Fulbert	62 rue Saint Chéron	Chartres	48.4457169	1.50814986	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	28	24	18	28085	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0300356Z	Ecole élémentaire	Chemin des Ecoles	Deaux	44.0664482	4.14933014	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30101	Gard	Occitanie	Montpellier
0400297F	Ecole élémentaire	\N	Bastennes	43.649231	-0.785833776	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40028	Landes	Nouvelle-Aquitaine	Bordeaux
0400300J	Ecole élémentaire	Place Victor Ducla	Castaignos-Souslens	43.5857201	-0.651171386	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40069	Landes	Nouvelle-Aquitaine	Bordeaux
0400499A	Ecole primaire	\N	Saint-Maurice-sur-Adour	43.7844276	-0.465159148	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40275	Landes	Nouvelle-Aquitaine	Bordeaux
0430775J	Ecole élémentaire privée Saint Joseph	2 rue des Ecoles	Saint-Pierre-du-Champ	45.2480774	3.89852023	151	ECOLE DE NIVEAU ELEMENTAIRE	43	84	06	43217	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0710774F	Ecole primaire	\N	Trivy	46.3867149	4.4924202	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71547	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0720786N	Ecole élémentaire Jacques Prévert	22 bis rue de la Pelouse	Savigné-l'Evêque	48.0735168	0.29929015	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72329	Sarthe	Pays de la Loire	Nantes
0721388T	Ecole primaire LEONARD DE VINCI	12 grande rue	Neuville-sur-Sarthe	48.0751724	0.19230029	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72217	Sarthe	Pays de la Loire	Nantes
0851170K	ECOLE PRIMAIRE ROBERT DOISNEAU	95 allée des Huit Tours	Commequiers	46.7628441	-1.83429003	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85071	Vendée	Pays de la Loire	Nantes
0131176H	Ecole maternelle Sainte-Anne	Rue du Regagnas	Trets	43.446743	5.6793499	101	ECOLE MATERNELLE	13	93	02	13110	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0310970L	Ecole élémentaire publique Cuvier	135 route d'Albi	Toulouse	43.6384087	1.46202016	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31555	Haute-Garonne	Occitanie	Toulouse
0600084R	Ecole élémentaire	Rue de la Mairie	Le Mesnil-Théribus	49.301178	1.98756981	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60401	Oise	Hauts-de-France	Amiens
0600388W	Ecole élémentaire	2 rue de Grandvilliers	Beaudéduit	49.6789017	2.0647707	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60051	Oise	Hauts-de-France	Amiens
0601004R	Ecole élémentaire les Goélands	488 rue de la Goële	Noyon	49.5921745	3.01359057	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60471	Oise	Hauts-de-France	Amiens
0131155K	Ecole maternelle Lurian	438 chemin Lurian	Salon-de-Provence	43.6256561	5.1026597	101	ECOLE MATERNELLE	13	93	02	13103	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0270113B	Ecole primaire Paul Eluard	Rue Christophe Colomb	Evreux	49.027813	1.17376983	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27229	Eure	Normandie	Rouen
0540547B	ECOLE ELEMENTAIRE DES PETITS PRINCES	1 place de la Mairie	Jaillon	48.7571373	5.96846962	151	ECOLE DE NIVEAU ELEMENTAIRE	54	44	12	54272	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0573685W	école élémentaire privée ABCM Beausoleil	11 rue DES HIRONDELLES	Sarreguemines	49.0997162	7.04502964	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57631	Moselle	Grand Est	Nancy-Metz
9710686U	Collège Front de Mer	Rue EUVREMONT GENE	Pointe-à-Pitre	16.2490635	-61.5444412	340	COLLEGE	971	01	32	97120	Guadeloupe	Guadeloupe	Guadeloupe
9711252J	Cité Scolaire Robert WEINUM Lycée	Route DE LA GRANDE SAVANE	Saint-Martin	18.0970345	-63.0658684	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	978	00	32	97801	Saint-Martin	TOM et Collectivités territoriales	Guadeloupe
0131341M	Lycée général privé Notre Dame de Sion	231  RUE PARADIS	Marseille  6e  Arrondissement	43.2827301	5.38138008	302	LYCEE D ENSEIGNEMENT GENERAL	13	93	02	13206	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0630054S	Lycée professionnel Marie Laurencin - Lycée des métiers de la mode et des arts	1 avenue JEAN MONNET	Riom	45.9015923	3.10658026	320	LYCEE PROFESSIONNEL	63	84	06	63300	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0630631U	Ecole maternelle	11 rue DE L'ECOLE	Les Pradeaux	45.5123253	3.29300976	101	ECOLE MATERNELLE	63	84	06	63287	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0010305B	ECOLE MATERNELLE PUBLIQUE	\N	Lescheroux	46.4072838	5.1431694	101	ECOLE MATERNELLE	01	84	10	01212	Ain	Auvergne-Rhône-Alpes	Lyon
0010377E	Ecole primaire Antonin Rolland	Rue de la Mairie	Sainte-Euphémie	45.9722137	4.79519987	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01353	Ain	Auvergne-Rhône-Alpes	Lyon
0010449H	Ecole primaire	61 route Cormoz	Château-Gaillard	45.9724579	5.30455065	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01089	Ain	Auvergne-Rhône-Alpes	Lyon
0010774L	Ecole primaire  Alphonse Baudin	2 rue Brillat Savarin	Bourg-en-Bresse	46.1994896	5.21702957	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01053	Ain	Auvergne-Rhône-Alpes	Lyon
0040067B	Ecole primaire	Rue de l'industrie	Banon	44.0383873	5.63012028	151	ECOLE DE NIVEAU ELEMENTAIRE	04	93	02	04018	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0060284B	Ecole primaire Gréolières	Quartier de la Ferrage	Gréolières	43.7957535	6.9465704	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06070	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0060523L	Ecole élémentaire Le Rouret	Quartier Saint Pons	Le Rouret	43.6756859	7.00526047	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06112	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0060944U	Ecole élémentaire Saint-Pierre-d'Arène	26 rue Louis de Coppet	Nice	43.6932144	7.24567032	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06088	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0090192K	Ecole maternelle	4 chemin de la Guerre	Coussa	43.0629883	1.67977977	101	ECOLE MATERNELLE	09	76	16	09101	Ariège	Occitanie	Toulouse
0133364L	Section d'enseignement professionnel du Lycée polyvalent Jean Perrin	74  RUE DU VERDILLON	Marseille 10e  Arrondissement	43.2745972	5.42649937	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	13	93	02	13210	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0140477T	Ecole primaire	Bourg	Ablon	49.3927498	0.295849353	151	ECOLE DE NIVEAU ELEMENTAIRE	14	28	05	14001	Calvados	Normandie	Caen
0140832D	Ecole primaire Vincent Auriol	BOURG	La Boissière	49.1364021	0.129469976	151	ECOLE DE NIVEAU ELEMENTAIRE	14	28	05	14082	Calvados	Normandie	Caen
0141687H	Lycée polyvalent Jules Verne - Lycée des métiers de l'automobile, des ingénieries électriques et industrielles	12 rue Lucien Bossoutrot	Mondeville	49.1665077	-0.327690184	306	LYCEE POLYVALENT	14	28	05	14437	Calvados	Normandie	Caen
0141967M	Ecole élémentaire H.Caubriere	5 rue Alexandre Dubourg	Honfleur	49.416378	0.22893998	151	ECOLE DE NIVEAU ELEMENTAIRE	14	28	05	14333	Calvados	Normandie	Caen
0160879U	Ecole primaire  Antoine de St Exupéry	20 rue du Docteur Feuillet	Villefagnan	46.0134888	0.0806404576	151	ECOLE DE NIVEAU ELEMENTAIRE	16	75	13	16409	Charente	Nouvelle-Aquitaine	Poitiers
0211747K	ECOLE MATERNELLE	Rue de la Guette	Liernais	47.2065315	4.28362036	101	ECOLE MATERNELLE	21	27	07	21349	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0211820P	ECOLE MATERNELLE	24 rue des Ecoles	Baubigny	46.976284	4.68934917	101	ECOLE MATERNELLE	21	27	07	21050	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0221249N	Ecole primaire privée Sainte Anne	2 rue la Fontaine Morin	Ploufragan	48.4907494	-2.79317975	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22215	Côtes-d'Armor	Bretagne	Rennes
0271870L	Micro-lycée de l'académie de Rouen	2 rue Pierre Semard	Evreux	49.0167007	1.15624964	315	ETABLISSEMENT EXPERIMENTAL	27	28	21	27229	Eure	Normandie	Rouen
0271872N	Village equestre de Conches	Village Equestre - Le Fresne	Conches-en-Ouche	48.9508209	0.974589944	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	27	28	21	27165	Eure	Normandie	Rouen
0280602C	Ecole élémentaire La Clé des Champs	\N	Pierres	48.5883026	1.56248975	151	ECOLE DE NIVEAU ELEMENTAIRE	28	24	18	28298	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0290632E	Ecole primaire publique Pierre Perret	Rue des Frères Pennec	Port-Launay	48.2150688	-4.07262945	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29222	Finistère	Bretagne	Rennes
0291227B	Collège privé Saint Augustin	Rue ST AUGUSTIN	Morlaix	48.5735168	-3.83681297	340	COLLEGE	29	53	14	29151	Finistère	Bretagne	Rennes
0330252V	Ecole maternelle Nuits	31 rue des Nuits	Bordeaux	44.8419647	-0.553010821	101	ECOLE MATERNELLE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0330958M	Ecole primaire	58 chemin DES ECOLIERS	Nérigean	44.8410339	-0.289717883	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33303	Gironde	Nouvelle-Aquitaine	Bordeaux
0331079U	Ecole primaire	\N	Saillans	44.9591713	-0.277313828	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33364	Gironde	Nouvelle-Aquitaine	Bordeaux
0331347K	Ecole maternelle	\N	Tizac-de-Lapouyade	45.0746727	-0.304268986	101	ECOLE MATERNELLE	33	75	04	33532	Gironde	Nouvelle-Aquitaine	Bordeaux
0332804U	Section d'enseignement professionnel du Lycée polyvalent Hôtellerie Tourisme	15 RUE FRANCOIS RABELAIS	Talence	44.7961693	-0.59355247	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	33	75	04	33522	Gironde	Nouvelle-Aquitaine	Bordeaux
0341187F	Ecole primaire privée Sainte Thérèse	66 cours Gabriel Péri	Lunel	43.674572	4.13364029	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34145	Hérault	Occitanie	Montpellier
0342080B	Collège privé Notre Dame	76  ROUTE DE SETE	Agde	43.3064728	3.50418973	340	COLLEGE	34	76	11	34003	Hérault	Occitanie	Montpellier
0351558D	Ecole primaire privée Ste Bernadette	1 ROUTE DE ST THURIAL	Le Verger	48.0689964	-1.9312501	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35351	Ille-et-Vilaine	Bretagne	Rennes
0370507A	Ecole élémentaire	2 rue des Blemars	Dame-Marie-les-Bois	47.5414963	1.03141046	151	ECOLE DE NIVEAU ELEMENTAIRE	37	24	18	37095	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0371118P	Ecole élémentaire	4 place du 8 Mai	Saint-Flovier	46.9680443	1.02642012	151	ECOLE DE NIVEAU ELEMENTAIRE	37	24	18	37218	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0371330V	Collège privé Saint Gregoire	3 place Choiseul	Tours	47.4012604	0.683710754	340	COLLEGE	37	24	18	37261	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0371468V	Ecole maternelle Arcadine	Rue de la Croix Blanche	Montlouis-sur-Loire	47.3837738	0.837829709	101	ECOLE MATERNELLE	37	24	18	37156	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0371738N	Section d'enseignement général et technologique du Lycée professionnel Henri Becquerel	1 rue Jules Ladoumègue	Tours	47.3767319	0.732530594	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	37	24	18	37261	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0420810C	Ecole élémentaire Bourg	\N	Saint-Sixte	45.7752304	3.98108983	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42288	Loire	Auvergne-Rhône-Alpes	Lyon
0422162X	Ecole primaire Chatelard	20 rue Loubet	Saint-Chamond	45.4739494	4.50609064	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42207	Loire	Auvergne-Rhône-Alpes	Lyon
0430013F	Collège du Haut Allier	4 avenue DESCARTES	Langeac	45.1077805	3.49003983	340	COLLEGE	43	84	06	43112	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0430806T	Ecole du Deves	\N	Cayres	44.9254265	3.80705023	151	ECOLE DE NIVEAU ELEMENTAIRE	43	84	06	43042	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0450266V	Ecole maternelle Claude Lerude	22 rue du Puits Saint Laurent	Orléans	47.8995094	1.88899994	101	ECOLE MATERNELLE	45	24	18	45234	Loiret	Centre-Val de Loire	Orléans-Tours
0460283H	Ecole élémentaire publique	Place du Bicentenaire	Cuzance	44.9640999	1.53914952	151	ECOLE DE NIVEAU ELEMENTAIRE	46	76	16	46086	Lot	Occitanie	Toulouse
0491835D	Maison Familiale Rurale de Chalonnes	10 avenue du 8 Mai 1945	Chalonnes-sur-Loire	47.3496857	-0.769139409	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	49	52	17	49063	Maine-et-Loire	Pays de la Loire	Nantes
0501040J	Ecole élémentaire  Pierre Lostis	6 place de la Mairie	Isigny-le-Buat	48.619072	-1.17412996	151	ECOLE DE NIVEAU ELEMENTAIRE	50	28	05	50256	Manche	Normandie	Caen
0501425C	Ecole maternelle	4 rue du Pressoir	Quibou	49.0678749	-1.19912934	101	ECOLE MATERNELLE	50	28	05	50420	Manche	Normandie	Caen
0600310L	Ecole élémentaire	20 rue de la Forêt	Eméville	49.2830162	3.02913976	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60207	Oise	Hauts-de-France	Amiens
0601458J	Ecole élémentaire Charles Faroux Grp A	Avenue du Général Weygand	Compiègne	49.4083405	2.8074398	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60159	Oise	Hauts-de-France	Amiens
0601535T	Ecole primaire Georges Pompidou Groupe A	5 rue Edouard Branly	Compiègne	49.3987923	2.79209042	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60159	Oise	Hauts-de-France	Amiens
0601851L	Ecole élémentaire Jean Moulin	28 bis rue de la Liberté	Nogent-sur-Oise	49.2837181	2.45792985	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60463	Oise	Hauts-de-France	Amiens
0640057P	Lycée polyvalent Saint Cricq	4 bis avenue DES ETATS UNIS	Pau	43.2996788	-0.360054493	306	LYCEE POLYVALENT	64	75	04	64445	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0660352Z	Ecole maternelle Victor Hugo	Rue Paul Bert	Saint-Laurent-de-la-Salanque	42.7733383	2.98701024	101	ECOLE MATERNELLE	66	76	11	66180	Pyrénées-Orientales	Occitanie	Montpellier
0691381B	Ecole primaire	Rue du 19 Mars	Chabanière	45.5811806	4.63143921	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69228	Rhône	Auvergne-Rhône-Alpes	Lyon
0692158W	Section d'enseignement général et professionnel adapté du Collège Georges Brassens	50 rue SULLY	Décines-Charpieu	45.7685928	4.9738102	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	69	84	10	69275	Rhône	Auvergne-Rhône-Alpes	Lyon
0693100V	Ecole maternelle	11 rue du Beaujolais	Arnas	46.0233345	4.70646	101	ECOLE MATERNELLE	69	84	10	69013	Rhône	Auvergne-Rhône-Alpes	Lyon
0694069Y	Lycée général Germaine Tillion	500 allée DE GRANDS CHAMPS	Sain-Bel	45.8236923	4.59847021	302	LYCEE D ENSEIGNEMENT GENERAL	69	84	10	69171	Rhône	Auvergne-Rhône-Alpes	Lyon
0761206Y	Ecole maternelle Jean-Baptiste Clément	4 rue Jean-Baptiste Clément	Le Petit-Quevilly	49.4308662	1.05528033	101	ECOLE MATERNELLE	76	28	21	76498	Seine-Maritime	Normandie	Rouen
0761265M	Ecole maternelle Thionville	4 rue Thionville	Le Havre	49.4969788	0.121330552	101	ECOLE MATERNELLE	76	28	21	76351	Seine-Maritime	Normandie	Rouen
0761325C	Collège privé Montesquieu - Sainte Marie	19 rue Clovis	Le Havre	49.5010529	0.131710395	340	COLLEGE	76	28	21	76351	Seine-Maritime	Normandie	Rouen
0761400J	Ecole élémentaire	8 rue de l'Eglise	Brametot	49.7852936	0.866359949	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76140	Seine-Maritime	Normandie	Rouen
0762353V	Ecole maternelle Molière	15 rue du Tapis Vert	Elbeuf	49.280674	1.00890982	101	ECOLE MATERNELLE	76	28	21	76231	Seine-Maritime	Normandie	Rouen
0762523E	Ecole élémentaire Maurice Genevoix	50 rue d'Uelzen	Boos	49.387886	1.19966936	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76116	Seine-Maritime	Normandie	Rouen
0762717R	Ecole maternelle Jeanne Pincepré	Rue des Déportés	Montville	49.5487862	1.07595956	101	ECOLE MATERNELLE	76	28	21	76452	Seine-Maritime	Normandie	Rouen
0771286E	Ecole primaire privée Sainte-Marie	10 boulevard Gambetta	Melun	48.537281	2.66257048	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77288	Seine-et-Marne	Ile-de-France	Créteil
0771666T	Section d'enseignement général et professionnel adapté L'Arche Guédon	4  PASSAGE DE L'ARCHE GUEDON	Torcy	48.8508568	2.63369012	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	77	11	24	77468	Seine-et-Marne	Ile-de-France	Créteil
0771930E	Collège privé Institution Nazareth	Place du 14 juillet	Voisenon	48.5678711	2.66092062	340	COLLEGE	77	11	24	77528	Seine-et-Marne	Ile-de-France	Créteil
0780524W	Ecole maternelle Louis Pasteur	01 avenue Auguste Dutreux	La Celle-Saint-Cloud	48.8497047	2.14435983	101	ECOLE MATERNELLE	78	11	25	78126	Yvelines	Ile-de-France	Versailles
0780957S	Ecole élémentaire	06 GRANDE RUE	Les Mesnuls	48.7581406	1.83660972	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78398	Yvelines	Ile-de-France	Versailles
0781250K	Ecole maternelle Les Trois Sapins	170 avenue du Maréchal Foch	Conflans-Sainte-Honorine	49.0045052	2.11220026	101	ECOLE MATERNELLE	78	11	25	78172	Yvelines	Ile-de-France	Versailles
0781699Y	Ecole maternelle Royer	03 rue des Ecoles	Longnes	48.9205894	1.58643007	101	ECOLE MATERNELLE	78	11	25	78346	Yvelines	Ile-de-France	Versailles
0800760S	Ecole primaire	11 rue des Ecoles	Miannay	50.0971146	1.71950042	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80546	Somme	Hauts-de-France	Amiens
0801250Z	Ecole maternelle	Rue du Bosquet	Rue	50.2690163	1.6726495	101	ECOLE MATERNELLE	80	32	20	80688	Somme	Hauts-de-France	Amiens
0820178Y	Ecole Elémentaire Pierre Chabrié	13 rue Antic	Moissac	44.10252	1.08967006	151	ECOLE DE NIVEAU ELEMENTAIRE	82	76	16	82112	Tarn-et-Garonne	Occitanie	Toulouse
0830232B	Ecole maternelle Boulouris	Rue Charles Goujon	Saint-Raphaël	43.4168015	6.8070302	101	ECOLE MATERNELLE	83	93	23	83118	Var	Provence-Alpes-Côte d'Azur	Nice
0501799J	Collège Lucien Goubert	6 rue de la campagne	Flamanville	49.5309334	-1.86153054	340	COLLEGE	50	28	05	50184	Manche	Normandie	Caen
0830844S	Ecole primaire privée Institution Don Bosco	545 chemin de Narvette	Saint-Cyr-sur-Mer	43.1599693	5.70832014	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83112	Var	Provence-Alpes-Côte d'Azur	Nice
0831440P	Lycée polyvalent Albert Camus	560 rue HENRI GIRAUD	Fréjus	43.4436646	6.75392008	306	LYCEE POLYVALENT	83	93	23	83061	Var	Provence-Alpes-Côte d'Azur	Nice
0840381H	Ecole primaire Sixte Isnard	31 ter avenue de la Trillade	Avignon	43.9404869	4.81837988	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84007	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0850868G	école primaire privée mixte saint  joseph	16 rue Jeanne d'Arc	Les Epesses	46.8825798	-0.89732939	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85082	Vendée	Pays de la Loire	Nantes
0851119E	ECOLE ELEMENTAIRE CLEMENCEAU	6 rue Flammarion	Les Sables-d'Olonne	46.4938393	-1.7690506	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85194	Vendée	Pays de la Loire	Nantes
0910300G	Ecole élémentaire Maréchal Leclerc	4 rue du Château	Evry-Courcouronnes	48.6348343	2.44823527	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91228	Essonne	Ile-de-France	Versailles
0910302J	Ecole élémentaire Jean-Baptiste Corot	Avenue du Bois de Place	Lisses	48.6028328	2.4278698	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91340	Essonne	Ile-de-France	Versailles
0911035F	Ecole maternelle Jules Ferry	2 rue du Potager	Athis-Mons	48.700695	2.36993027	101	ECOLE MATERNELLE	91	11	25	91027	Essonne	Ile-de-France	Versailles
0912324G	école primaire Les Hauts Fresnais	101 rue DES HAUTS FRESNAIS	Ballainvilliers	48.6647758	2.28067946	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91044	Essonne	Ile-de-France	Versailles
0932562E	Ecole ECOFIH	79 rue de Paris	Bobigny	48.8993492	2.44396996	320	LYCEE PROFESSIONNEL	93	11	24	93008	Seine-Saint-Denis	Ile-de-France	Créteil
0940388L	Ecole primaire Cité Jardins	4 rue Georges Baudelaire	Orly	48.7469101	2.37742972	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94054	Val-de-Marne	Ile-de-France	Créteil
0941324D	Ecole élémentaire Victor Hugo	85 rue Victor Hugo	Maisons-Alfort	48.799778	2.44250989	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94046	Val-de-Marne	Ile-de-France	Créteil
0942347R	Ecole élémentaire Henri Barbusse	7 rue Georgette Rostaing	Ivry-sur-Seine	48.8097229	2.37752008	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94041	Val-de-Marne	Ile-de-France	Créteil
9710639T	Ecole primaire Lauricisque	Boulevard de l'Amitié	Pointe-à-Pitre	16.2490826	-61.5461006	151	ECOLE DE NIVEAU ELEMENTAIRE	971	01	32	97120	Guadeloupe	Guadeloupe	Guadeloupe
9720779P	Lycée professionnel agricole du Robert	\N	Le Robert	14.6570377	-60.9358215	320	LYCEE PROFESSIONNEL	972	02	31	97222	Martinique	Martinique	Martinique
9760193F	Ecole maternelle de Chiconi Ourini	CHICONI OURINI	Chiconi	-12.8365746	45.1152	101	ECOLE MATERNELLE	976	06	43	97605	Mayotte	Mayotte	Mayotte
9760249S	Ecole primaire publique Hamjago	Hamjago	Mtsamboro	-12.6895657	45.0742493	151	ECOLE DE NIVEAU ELEMENTAIRE	976	06	43	97612	Mayotte	Mayotte	Mayotte
9830062A	Ecole primaire Suzanne Russier	45  RUE OLRY	Nouméa	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98818	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9830096M	Ecole primaire Charles Mermoud	9 RUE HÉLÈNE DE ST QUENTIN	Koumac	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98812	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9840474T	GRAINES D ' ENVIE, ÉCOLE MONTESSORI DE MOOREA	Lotissement Lotissement de  aeroport	Moorea	\N	\N	101	ECOLE MATERNELLE	987	00	41	98729	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
0220082V	Collège Charles Le Goffic	10 boulevard d'Armor	Lannion	48.733532	-3.46246982	340	COLLEGE	22	53	14	22113	Côtes-d'Armor	Bretagne	Rennes
0381449U	Ecole maternelle Victor Hugo	46 rue de la Scierie	Villard-Bonnot	45.2574272	5.90894508	101	ECOLE MATERNELLE	38	84	08	38547	Isère	Auvergne-Rhône-Alpes	Grenoble
0382838D	Lycée général et technologique La Pléiade	9 rue DU REPOS	Pont-de-Chéruy	45.7523422	5.17097044	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	38	84	08	38316	Isère	Auvergne-Rhône-Alpes	Grenoble
0595238Y	Ecole primaire Jean Moulin-Louis Pergaud	1  RUE D'ARSONVAL	Lille	50.609539	3.07155991	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59350	Nord	Hauts-de-France	Lille
0950270C	Ecole élémentaire Le Nôtre	7 rue Le Nôtre	Saint-Ouen-l'Aumône	49.0395699	2.11089063	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95572	Val-d'Oise	Ile-de-France	Versailles
0950580P	Ecole maternelle Léon Gambetta	43 rue Albert 1er	Saint-Prix	49.001606	2.25865054	101	ECOLE MATERNELLE	95	11	25	95574	Val-d'Oise	Ile-de-France	Versailles
0950960C	Ecole primaire Paul Fort	Rue du Bon Air	Ezanville	49.0317764	2.35449982	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95229	Val-d'Oise	Ile-de-France	Versailles
0951029C	Ecole élémentaire Louis Jouvet	17 rue des Selliers	Luzarches	49.1099014	2.42469049	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95352	Val-d'Oise	Ile-de-France	Versailles
0951976G	Ecole maternelle Paul Eluard	1  RUE MONTAIGNE	Goussainville	49.0308723	2.45720053	101	ECOLE MATERNELLE	95	11	25	95280	Val-d'Oise	Ile-de-France	Versailles
0332704K	Collège d'Arsac	2 allée PANCHON	Arsac	44.9900436	-0.695020676	340	COLLEGE	33	75	04	33012	Gironde	Nouvelle-Aquitaine	Bordeaux
0341699M	Lycée de la mer Paul Bousquet	112 rue DES CORMORANS	Sète	43.4233932	3.67449045	320	LYCEE PROFESSIONNEL	34	76	11	34301	Hérault	Occitanie	Montpellier
0952128X	Collège Georges Charpak	Rue Pierre de Coubertin	Goussainville	49.025795	2.45991993	340	COLLEGE	95	11	25	95280	Val-d'Oise	Ile-de-France	Versailles
0350043G	Section d'enseignement général et professionnel adapté du Collège Pierre Brossolette	18 rue THEODORE BOTREL	Bruz	48.0210152	-1.74414039	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	35	53	14	35047	Ille-et-Vilaine	Bretagne	Rennes
0593134L	Collège privé Dominique Savio	47 RUE DU BOURG	Lambersart	50.6525574	3.02308941	340	COLLEGE	59	32	09	59328	Nord	Hauts-de-France	Lille
0771561D	Ecole élémentaire L'Orme aux Loups	31 rue des Voyeux	Saint-Germain-sur-Morin	48.8852234	2.84511971	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77413	Seine-et-Marne	Ile-de-France	Créteil
0772658W	Ecole élémentaire Jules Verne	18 rue Haroun Tazieff	Bussy-Saint-Georges	48.8344879	2.71277046	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77058	Seine-et-Marne	Ile-de-France	Créteil
0692920Z	Collège privé Aux Lazaristes	3 place SAINT JEAN	Lyon 5e  Arrondissement	45.7606621	4.82637072	340	COLLEGE	69	84	10	69385	Rhône	Auvergne-Rhône-Alpes	Lyon
0694367X	Ecole primaire Parc Blandan	Place d'armes	Lyon 7e  Arrondissement	45.714119	4.83370543	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69387	Rhône	Auvergne-Rhône-Alpes	Lyon
0840001V	Lycée polyvalent	104 place Charles de Gaulle	Apt	43.8769798	5.40384054	306	LYCEE POLYVALENT	84	93	02	84003	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
6200187J	Ecole maternelle Afa	Village AFA	Afa	41.9809761	8.79604912	101	ECOLE MATERNELLE	2A	94	27	2A001	Corse-du-Sud	Corse	Corse
9730078X	Ecole primaire privée Saint Joseph	1 rue Patrice Bourguignon	Mana	5.66647291	-53.7764206	151	ECOLE DE NIVEAU ELEMENTAIRE	973	03	33	97306	Guyane	Guyane	Guyane
9730305U	Ecole primaire privée La Persévérance	44 rue Simon	Saint-Laurent-du-Maroni	5.49841881	-54.0300102	151	ECOLE DE NIVEAU ELEMENTAIRE	973	03	33	97311	Guyane	Guyane	Guyane
0610593N	Ecole primaire La Marinerie (St-Cornier-des-Landes)	55 rue d'Yvrandes	Tinchebray-Bocage	48.7187119	-0.723350585	151	ECOLE DE NIVEAU ELEMENTAIRE	61	28	05	61486	Orne	Normandie	Caen
0410245U	Ecole élémentaire	8 place de la Mairie	Lorges	47.8245926	1.4975003	151	ECOLE DE NIVEAU ELEMENTAIRE	41	24	18	41119	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0850108F	Collège privé Saint Paul	2 rue A.DORION	Palluau	46.8003998	-1.62689054	340	COLLEGE	85	52	17	85169	Vendée	Pays de la Loire	Nantes
0040222V	Ecole primaire	Place de la Mairie	Montfuron	43.8353424	5.69471312	151	ECOLE DE NIVEAU ELEMENTAIRE	04	93	02	04128	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0301265M	Ecole primaire Montée de Silhol	824 montée de Silhol	Alès	44.1285782	4.10156775	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30007	Gard	Occitanie	Montpellier
0360525A	Collège Alain Fournier	1 rue Ferdinand de Lesseps	Valençay	47.1647034	1.56337976	340	COLLEGE	36	24	18	36228	Indre	Centre-Val de Loire	Orléans-Tours
0400299H	Ecole élémentaire	23 route du Duc	Brassempouy	43.6356049	-0.694862247	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40054	Landes	Nouvelle-Aquitaine	Bordeaux
0450029M	Lycée général et technologique Bernard Palissy	9 rue du 32ème RI	Gien	47.7005157	2.63225031	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	45	24	18	45155	Loiret	Centre-Val de Loire	Orléans-Tours
0630920H	Ecole primaire	Rue de la République	Surat	45.9380112	3.25263929	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63424	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0700759V	ECOLE PRIMAIRE PUBLIQUE	Rue de la Mairie	La Villedieu-en-Fontenette	47.7719841	6.19774914	151	ECOLE DE NIVEAU ELEMENTAIRE	70	27	03	70555	Haute-Saône	Bourgogne-Franche-Comté	Besançon
0952137G	Ecole élémentaire privée Talentiel	1 rue DES PEUPLIERS	Vauréal	49.0301857	2.02135062	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95637	Val-d'Oise	Ile-de-France	Versailles
0941971G	Collège Dulcie September	1 mail GASTON DOISELET	Arcueil	48.805687	2.33602047	340	COLLEGE	94	11	24	94003	Val-de-Marne	Ile-de-France	Créteil
0211689X	ECOLE MATERNELLE JEAN MOULIN	1  RUE MADAME LEMOINE	Venarey-les-Laumes	47.5472069	4.45557928	101	ECOLE MATERNELLE	21	27	07	21663	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0331669K	Collège Ausone	69 avenue AUSONE	Le Bouscat	44.8712158	-0.595039546	340	COLLEGE	33	75	04	33069	Gironde	Nouvelle-Aquitaine	Bordeaux
0301270T	Lycée professionnel Jules Raimu, Lycée des métiers de la maintenance, du numérique et de la conduite routière	12 rue JULES RAIMU	Nîmes	43.8194466	4.3302598	320	LYCEE PROFESSIONNEL	30	76	11	30189	Gard	Occitanie	Montpellier
0451349X	Ecole maternelle	Allée de l'Edit de Nantes	Dadonville	48.1412697	2.25503969	101	ECOLE MATERNELLE	45	24	18	45119	Loiret	Centre-Val de Loire	Orléans-Tours
0660863E	Ecole primaire privée La Bressola	Rue Roc Quazémi	Saint-Estève	42.7148819	2.83876061	151	ECOLE DE NIVEAU ELEMENTAIRE	66	76	11	66172	Pyrénées-Orientales	Occitanie	Montpellier
0382059G	Ecole primaire Les Buttes	31 avenue la Bruyère	Grenoble	45.1658707	5.73513937	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38185	Isère	Auvergne-Rhône-Alpes	Grenoble
0450265U	Ecole maternelle du Nécotin	17 rue du Nécotin	Orléans	47.9168091	1.93647051	101	ECOLE MATERNELLE	45	24	18	45234	Loiret	Centre-Val de Loire	Orléans-Tours
0596203X	Ecole maternelle Jean Bart - Renan	31 rue du Général de Wett	Lille	50.6116753	3.04407048	101	ECOLE MATERNELLE	59	32	09	59350	Nord	Hauts-de-France	Lille
0621181X	Ecole primaire François Arago	76 rue Condorcet	Boulogne-sur-Mer	50.7392197	1.61200058	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62160	Pas-de-Calais	Hauts-de-France	Lille
0641064J	Ecole primaire	\N	Préchacq-Josbaig	43.2641792	-0.711565077	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64458	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0922552Z	Ecole élémentaire publique Maître Jacques	2 rue Maître Jacques	Boulogne-Billancourt	48.8402481	2.24303961	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92012	Hauts-de-Seine	Ile-de-France	Versailles
0651089F	ECOLE PRIMAIRE IBOS	2 place DE VERDUN	Ibos	43.2325592	0.00100010773	151	ECOLE DE NIVEAU ELEMENTAIRE	65	76	16	65226	Hautes-Pyrénées	Occitanie	Toulouse
6200150U	Ecole primaire Molini Agosta Albitreccia	Résidence HARMONIE	Albitreccia	41.862648	8.94195938	151	ECOLE DE NIVEAU ELEMENTAIRE	2A	94	27	2A008	Corse-du-Sud	Corse	Corse
0301584J	Ecole élémentaire Edouard Vaillant	8 rue Daumier	Nîmes	43.8206825	4.3347497	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30189	Gard	Occitanie	Montpellier
0441437Y	Ecole primaire privée Sainte Agnès	55 rue du Chanoine Larose	Nantes	47.2321281	-1.57905996	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44109	Loire-Atlantique	Pays de la Loire	Nantes
0751728W	E.E.PU COLETTE MAGNY A 15 rue Colette Magny	15 rue Colette Magny	Paris 19e  Arrondissement	48.8949356	2.37625027	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75119	Paris	Ile-de-France	Paris
0921243B	Collège Anne Frank	112 rue ADOLPHE PAJEAUD	Antony	48.7430649	2.28613997	340	COLLEGE	92	11	25	92002	Hauts-de-Seine	Ile-de-France	Versailles
0240262E	Ecole primaire	7 route Uffer	Sigoulès-et-Flaugeac	44.7572136	0.408240467	151	ECOLE DE NIVEAU ELEMENTAIRE	24	75	04	24534	Dordogne	Nouvelle-Aquitaine	Bordeaux
0330184W	Ecole maternelle	10 avenue du Stade	Castelnau-de-Médoc	45.0237198	-0.798284888	101	ECOLE MATERNELLE	33	75	04	33104	Gironde	Nouvelle-Aquitaine	Bordeaux
0331767S	Ecole élementaire Les Abatilles	13 allée de la Farandole	Arcachon	44.6517296	-1.18430996	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33009	Gironde	Nouvelle-Aquitaine	Bordeaux
0400633W	Ecole primaire	\N	Josse	43.641449	-1.22386503	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40129	Landes	Nouvelle-Aquitaine	Bordeaux
0771177L	Collège René Goscinny	13 rue DE LA GRANDE FERME	Vaires-sur-Marne	48.8706551	2.64836001	340	COLLEGE	77	11	24	77479	Seine-et-Marne	Ile-de-France	Créteil
0772499Y	Collège de La Dhuis	Chemin DE CRECY	Nanteuil-lès-Meaux	48.9280739	2.88414979	340	COLLEGE	77	11	24	77330	Seine-et-Marne	Ile-de-France	Créteil
0597004T	Collège Miriam Makeba	239 rue d'Arras	Lille	50.6183739	3.06476045	340	COLLEGE	59	32	09	59350	Nord	Hauts-de-France	Lille
0670772A	Ecole primaire	48 rue de la Liberté	Kintzheim	48.254818	7.39395952	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67239	Bas-Rhin	Grand Est	Strasbourg
0831419S	Ecole maternelle L'ESPELIDOU	Route DES MOULINS DE PAILLAS	Gassin	43.2271461	6.58609056	101	ECOLE MATERNELLE	83	93	23	83065	Var	Provence-Alpes-Côte d'Azur	Nice
0410597B	Section d'enseignement général et professionnel adapté du Collège Joseph Paul-Boncour	Boulevard Jean Moulin	Saint-Aignan	47.2606773	1.3696605	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	41	24	18	41198	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0410678P	Collège privé Saint Charles	2 bis rampe des trois Volontaires	Blois	47.5895309	1.32664371	340	COLLEGE	41	24	18	41018	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0672596H	Ecole primaire Charles Wurtz	53 rue du Rieth	Strasbourg	48.6024246	7.72171068	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67482	Bas-Rhin	Grand Est	Strasbourg
0570351X	Ecole primaire	9 rue de Hallering	Marange-Zondrange	49.1123047	6.53810072	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57444	Moselle	Grand Est	Nancy-Metz
0572936G	Ecole primaire André Chénier	12 rue des Passeurs	Florange	49.315239	6.12044001	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57221	Moselle	Grand Est	Nancy-Metz
0692517L	Lycée polyvalent Albert Camus	2179 avenue de l'Europe	Rillieux-la-Pape	45.8207779	4.90951967	306	LYCEE POLYVALENT	69	84	10	69286	Rhône	Auvergne-Rhône-Alpes	Lyon
0880536E	École Maternelle - du Petit Prince -	11 rue Prosper Ancel Seitz	Granges-Aumontzey	48.1452141	6.79264021	101	ECOLE MATERNELLE	88	44	12	88218	Vosges	Grand Est	Nancy-Metz
0911176J	Ecole maternelle Le Chat Botté	Avenue des Tuileries	Grigny	48.6488304	2.39199948	101	ECOLE MATERNELLE	91	11	25	91286	Essonne	Ile-de-France	Versailles
0920466G	Ecole maternelle publique Paul Bert	1 RUE MARIE LAHY HOLLEBECQUE	Malakoff	48.815979	2.29469943	101	ECOLE MATERNELLE	92	11	25	92046	Hauts-de-Seine	Ile-de-France	Versailles
0920943A	Ecole élémentaire publique Ambroise Paré A	140 rue Saint-Denis	Colombes	48.9247322	2.24619961	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92025	Hauts-de-Seine	Ile-de-France	Versailles
0922655L	Ecole élémentaire publique Jean Jerphanion	38 rue Plaisance	La Garenne-Colombes	48.9081039	2.25178981	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92035	Hauts-de-Seine	Ile-de-France	Versailles
0922782Z	Ecole maternelle Victor Hugo	9 rue FOUCAULT	Clichy	48.9011574	2.31161022	101	ECOLE MATERNELLE	92	11	25	92024	Hauts-de-Seine	Ile-de-France	Versailles
0460604G	Ecole maternelle publique	Place Font des Fraysses	Catus	44.5552673	1.33831036	101	ECOLE MATERNELLE	46	76	16	46064	Lot	Occitanie	Toulouse
0840150G	Ecole primaire	Rue du Stade	Sablet	44.190712	5.00610065	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84104	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0921169W	Section d'enseignement général et professionnel adapté du Collège Romain Rolland	28 rue DE LA LISETTE	Bagneux	48.7918358	2.30054021	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	92	11	25	92007	Hauts-de-Seine	Ile-de-France	Versailles
0671134U	Ecole primaire	16 grand'rue .	Haegen	48.7136421	7.33950949	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67179	Bas-Rhin	Grand Est	Strasbourg
0840387P	Ecole primaire Les Rotondes	2 impasse des Ecoles	Avignon	43.9365997	4.82480955	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84007	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0621311N	Ecole primaire Jules Ferry	29 rue Jules Ferry	Noyelles-Godault	50.4205742	2.99702954	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62624	Pas-de-Calais	Hauts-de-France	Lille
0621891U	Ecole maternelle Les Genêts RPI 126	18 rue de Rely	Linghem	50.5930786	2.36826968	101	ECOLE MATERNELLE	62	32	09	62517	Pas-de-Calais	Hauts-de-France	Lille
0622696U	Ecole primaire privée Jeanne d'Arc	2 rue Léon Sergent	Wimille	50.7619057	1.63312995	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62894	Pas-de-Calais	Hauts-de-France	Lille
0622790W	Collège Roger Salengro	Rue Roger Salengro	Saint-Pol-sur-Ternoise	50.3786469	2.32999063	340	COLLEGE	62	32	09	62767	Pas-de-Calais	Hauts-de-France	Lille
0623416B	Ecole primaire Félix Faure	10  SENTIER LEBRUN	Bruay-la-Buissière	50.4866486	2.53586936	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62178	Pas-de-Calais	Hauts-de-France	Lille
0624006T	Ecole primaire Leuliette-Eurvin	23 rue de Wicardenne	Boulogne-sur-Mer	50.7292404	1.62044978	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62160	Pas-de-Calais	Hauts-de-France	Lille
0681057E	Ecole maternelle les lucioles	1 A carrefour de Ribeauvillé	Sainte-Marie-aux-Mines	48.2529182	7.19754028	101	ECOLE MATERNELLE	68	44	15	68298	Haut-Rhin	Grand Est	Strasbourg
0691251K	Ecole primaire les trois châteaux	80 impasse de la Mairie	Marcilly-d'Azergues	45.872345	4.72754955	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69125	Rhône	Auvergne-Rhône-Alpes	Lyon
0930560D	Ecole maternelle Joliot-Curie	25 rue des Grilles	Pantin	48.8905563	2.40548015	101	ECOLE MATERNELLE	93	11	24	93055	Seine-Saint-Denis	Ile-de-France	Créteil
0930715X	Ecole élémentaire Claude Bernard	3 boulevard Lucien Gelot	Sevran	48.9396591	2.52009058	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93071	Seine-Saint-Denis	Ile-de-France	Créteil
0060263D	Ecole élémentaire Gambetta	26 boulevard Gambetta	Grasse	43.660778	6.92572021	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06069	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0710034B	Collège les Dîmes	Rue DE WACHENHEIM	Cuisery	46.558857	4.99268961	340	COLLEGE	71	27	07	71158	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0721166B	Ecole primaire privée Notre-Dame de Bonneval	6 chemin des Glonnières	Mayet	47.7620277	0.280900627	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72191	Sarthe	Pays de la Loire	Nantes
0721168D	Ecole primaire privée Saint Charles	Rue Pioger	Auvers-le-Hamon	47.9035454	-0.348119855	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72016	Sarthe	Pays de la Loire	Nantes
0760013B	Lycée professionnel Pierre et Marie Curie	33 rue du Calvaire	Bolbec	49.5708504	0.480629921	320	LYCEE PROFESSIONNEL	76	28	21	76114	Seine-Maritime	Normandie	Rouen
0132712C	Ecole élémentaire Le Carestier	1 rue G.BIDAULT	Marignane	43.404705	5.22135019	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13054	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0133101A	Ecole maternelle Coteaux de Veline	Rue Maurel Agricol	Gardanne	43.453846	5.47229004	101	ECOLE MATERNELLE	13	93	02	13041	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0310237P	Ecole maternelle publique Lardenne	8 place Jacques Sauvegrain	Toulouse	43.5892143	1.37821949	101	ECOLE MATERNELLE	31	76	16	31555	Haute-Garonne	Occitanie	Toulouse
0311796J	Ecole maternelle publique	Rue Jules Ferry	Valentine	43.0960312	0.708039463	101	ECOLE MATERNELLE	31	76	16	31565	Haute-Garonne	Occitanie	Toulouse
0602030F	Ecole primaire de la Prairie	Boulevard de la Première Armée	Venette	49.4214134	2.80691957	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60665	Oise	Hauts-de-France	Amiens
0270659V	Ecole primaire	Rue des Forges	Boulleville	49.3681641	0.392690569	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27100	Eure	Normandie	Rouen
0270908R	Ecole primaire	11 AVENUE DE KRONSTORF	Bourth	48.7677116	0.807409465	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27108	Eure	Normandie	Rouen
0011387C	Collège Lucie Aubrac	29 rue LEON MORAND	Ceyzériat	46.1841812	5.32216024	340	COLLEGE	01	84	10	01072	Ain	Auvergne-Rhône-Alpes	Lyon
0870760D	Ecole primaire publique	24 rue Consulat	Saint-Victurnien	45.8804283	1.01563954	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87185	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0870857J	Ecole élémentaire publique	Rue Françoise Dolto	Saint-Junien	45.8938217	0.91081959	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87154	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0740202T	Ecole primaire publique MENTHONNEX EN BORNES	Chef Lieu	Menthonnex-en-Bornes	46.0519447	6.17247963	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74177	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0740700J	Ecole primaire publique Christine Janin HAUTEVILLE SUR FIER	Chemin de Glandon	Hauteville-sur-Fier	45.904541	5.97507048	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74141	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0100810B	Ecole maternelle Teilhard de Chardin	60 avenue Jean Moulin	La Chapelle-Saint-Luc	48.306488	4.02968025	101	ECOLE MATERNELLE	10	44	19	10081	Aube	Grand Est	Reims
0410536K	Ecole élémentaire	8 rue de l'Ecole	Villermain	47.8628273	1.53142059	151	ECOLE DE NIVEAU ELEMENTAIRE	41	24	18	41289	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0500049G	Lycée polyvalent Robert de Mortain - Lycée des métiers des carrières du sanitaire et du social	30 rue de la 30è Division Américaine	Mortain-Bocage	48.6448631	-0.940720439	306	LYCEE POLYVALENT	50	28	05	50359	Manche	Normandie	Caen
0860601L	Ecole élémentaire Louis Pergaud	11 bis route DE VAUX	Dangé-Saint-Romain	46.9350243	0.596610129	151	ECOLE DE NIVEAU ELEMENTAIRE	86	75	13	86092	Vienne	Nouvelle-Aquitaine	Poitiers
0020453G	Ecole primaire	1 rue DE ST QUENTIN	Fayet	49.8679924	3.25162935	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02303	Aisne	Hauts-de-France	Amiens
0021120G	Ecole maternelle des Promenades	12 allée des Promenades	Hirson	49.9272308	4.09218979	101	ECOLE MATERNELLE	02	32	20	02381	Aisne	Hauts-de-France	Amiens
6200157B	Ecole primaire Pila Canale	\N	Pila-Canale	41.8127518	8.91101933	151	ECOLE DE NIVEAU ELEMENTAIRE	2A	94	27	2A232	Corse-du-Sud	Corse	Corse
0341909R	Ecole élémentaire Louise Michel	14 rue Engabanac	Saint-Jean-de-Védas	43.5812836	3.83500051	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34270	Hérault	Occitanie	Montpellier
0491278Y	Ecole primaire privée Grain de Soleil	4 rue Jacques Prévert	Sèvremoine	47.1038513	-0.996079862	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49301	Maine-et-Loire	Pays de la Loire	Nantes
0491476N	Ecole primaire privée Saint Joseph	Impasse Joseph Giron	Vezins	47.1194229	-0.707610071	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49371	Maine-et-Loire	Pays de la Loire	Nantes
0682068D	Ecole Steiner de Haut-Alsace Pédagogie Steiner	1 rue Palissy	Wittelsheim	47.7874832	7.22067976	340	COLLEGE	68	44	15	68375	Haut-Rhin	Grand Est	Strasbourg
9730503J	École élémentaire Prospérité	Allée Prospérité	Saint-Laurent-du-Maroni	5.47551966	-53.9293709	151	ECOLE DE NIVEAU ELEMENTAIRE	973	03	33	97311	Guyane	Guyane	Guyane
0430019M	Collège Val de Senouire	1 rue du Collège	Paulhaguet	45.2105484	3.51694036	340	COLLEGE	43	84	06	43148	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0810788S	Collège Augustin Malroux	Chemin A RIVENC	Blaye-les-Mines	44.0485535	2.13880968	340	COLLEGE	81	76	16	81033	Tarn	Occitanie	Toulouse
0100213C	Ecole primaire	2 place Aimé Chanet	Courteranges	48.2687149	4.23709059	151	ECOLE DE NIVEAU ELEMENTAIRE	10	44	19	10110	Aube	Grand Est	Reims
0250344N	Ecole élémentaire	18  GRANDE RUE	Chamesol	47.3480453	6.83435965	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25114	Doubs	Bourgogne-Franche-Comté	Besançon
0251701N	Ecole maternelle Raymond Vauthier	63 rue Mirabeau	Besançon	47.2486267	6.05672979	101	ECOLE MATERNELLE	25	27	03	25056	Doubs	Bourgogne-Franche-Comté	Besançon
0331987F	Ecole primaire privée du Sacré-Coeur	9 rue des Ecoles	Puisseguin	44.9246788	-0.0725199655	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33342	Gironde	Nouvelle-Aquitaine	Bordeaux
0332139W	Ecole maternelle Pierre et Marie Curie	Avenue Pasteur	Floirac	44.837326	-0.53033942	101	ECOLE MATERNELLE	33	75	04	33167	Gironde	Nouvelle-Aquitaine	Bordeaux
0440544C	Ecole primaire Jean de la Fontaine	Rue Jean de la Fontaine	Fercé	47.7949944	-1.41499019	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44058	Loire-Atlantique	Pays de la Loire	Nantes
0440739P	Ecole élémentaire Bois Saint-Louis	18 avenue des Lilas	Orvault	47.246212	-1.58233058	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44114	Loire-Atlantique	Pays de la Loire	Nantes
0440747Y	Ecole maternelle Les 4 Amarres	11 rue Pierre Chevry	Paimboeuf	47.2856407	-2.02979016	101	ECOLE MATERNELLE	44	52	17	44116	Loire-Atlantique	Pays de la Loire	Nantes
0441682P	Ecole maternelle Pont Marchand	26 avenue Pont Marchand	Orvault	47.263504	-1.63176024	101	ECOLE MATERNELLE	44	52	17	44114	Loire-Atlantique	Pays de la Loire	Nantes
0470173H	Ecole primaire	13 rue de l'Ecole	Boé	44.1621513	0.631249428	151	ECOLE DE NIVEAU ELEMENTAIRE	47	75	04	47031	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0470630E	Ecole primaire	\N	Prayssas	44.2897186	0.511866271	151	ECOLE DE NIVEAU ELEMENTAIRE	47	75	04	47213	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0490704Z	Ecole élémentaire	4 place du Parc	Verrie	47.2669144	-0.179310456	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49370	Maine-et-Loire	Pays de la Loire	Nantes
0491683N	Ecole primaire Camille Claudel	19 rue Champ de Foire des Champs	Lys-Haut-Layon	47.1411705	-0.535749972	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49373	Maine-et-Loire	Pays de la Loire	Nantes
0491892R	Ecole primaire Jacques Cartier	24 route d'Angers	Soulaire-et-Bourg	47.5775261	-0.554279864	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49339	Maine-et-Loire	Pays de la Loire	Nantes
0510396D	Ecole primaire	9 rue des Voyeux	Rosnay	49.2591133	3.85996938	151	ECOLE DE NIVEAU ELEMENTAIRE	51	44	19	51468	Marne	Grand Est	Reims
0511680Z	Ecole maternelle	5  rue des Ladres	Lavannes	49.312912	4.17231035	101	ECOLE MATERNELLE	51	44	19	51318	Marne	Grand Est	Reims
0520303X	Ecole maternelle Michelet	Rue des Bragards la Noue	Saint-Dizier	48.6373672	4.93832016	101	ECOLE MATERNELLE	52	44	19	52448	Haute-Marne	Grand Est	Reims
0520930D	Ecole maternelle	Rue de la Chavoie	Chaumont	48.0822792	5.13010931	101	ECOLE MATERNELLE	52	44	19	52121	Haute-Marne	Grand Est	Reims
0530718T	Ecole primaire privée Sacré-Coeur	2 rue de la Vallée	Champéon	48.3680267	-0.519239902	151	ECOLE DE NIVEAU ELEMENTAIRE	53	52	17	53051	Mayenne	Pays de la Loire	Nantes
0590024F	Lycée général des Nerviens	Place Charles de Gaulle	Bavay	50.2986107	3.7946806	302	LYCEE D ENSEIGNEMENT GENERAL	59	32	09	59053	Nord	Hauts-de-France	Lille
0591277T	Ecole primaire Jacques Prévert	Rue Victor Hugo	Grande-Synthe	51.0124893	2.29654956	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59271	Nord	Hauts-de-France	Lille
0591283Z	Ecole maternelle Victor Hugo	Rue Victor Hugo	Grande-Synthe	51.0121956	2.29728031	101	ECOLE MATERNELLE	59	32	09	59271	Nord	Hauts-de-France	Lille
0591352Z	Ecole primaire Michel Montaigne	35 place Général de Gaulle	Hautmont	50.250679	3.92022061	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59291	Nord	Hauts-de-France	Lille
0591478L	Ecole maternelle Marie Curie	Cité du Nouveau Monde	Lallaing	50.3883095	3.16306973	101	ECOLE MATERNELLE	59	32	09	59327	Nord	Hauts-de-France	Lille
0591524L	Ecole primaire Jules Ferry niveau 2	107  RUE JEAN BAPTISTE DEFAUX	Lezennes	50.6154633	3.11160946	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59346	Nord	Hauts-de-France	Lille
0592296A	Ecole primaire du Tilleul	2 rue de l'Epinette	Steenwerck	50.6755676	2.79073048	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59581	Nord	Hauts-de-France	Lille
0594833H	Collège privé Saint Joseph	15 bis rue Alphonse Daudet	Neuville-en-Ferrain	50.7506485	3.15502024	340	COLLEGE	59	32	09	59426	Nord	Hauts-de-France	Lille
0596306J	Ecole primaire privée Sainte Marie	22 rue Bonne Nouvelle	Tourcoing	50.7299042	3.17946935	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59599	Nord	Hauts-de-France	Lille
0620021L	Collège Sévigné	19 boulevard EMILE BASLY	Auchel	50.5065727	2.46453953	340	COLLEGE	62	32	09	62048	Pas-de-Calais	Hauts-de-France	Lille
0620562Z	Ecole maternelle RPI 36	2 rue de l'Eglise	Ruyaulcourt	50.08395	3.01260948	101	ECOLE MATERNELLE	62	32	09	62731	Pas-de-Calais	Hauts-de-France	Lille
0900194X	Ecole élémentaire	21 rue Principale	Chavanatte	47.5779572	7.06858969	151	ECOLE DE NIVEAU ELEMENTAIRE	90	27	03	90024	Territoire de Belfort	Bourgogne-Franche-Comté	Besançon
0910177Y	Ecole élémentaire Les Prés	15 promenade des Prés	Etampes	48.4326057	2.16527009	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91223	Essonne	Ile-de-France	Versailles
0910465L	Ecole élémentaire Jean Macé	42 avenue de l'Eperon	Sainte-Geneviève-des-Bois	48.6424255	2.34104967	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91549	Essonne	Ile-de-France	Versailles
9740045F	Lycée polyvalent Antoine de Saint-Exupéry	20 rue du Lycée	Les Avirons	-21.2385273	55.337059	306	LYCEE POLYVALENT	974	04	28	97401	La Réunion	La Réunion	La Réunion
0752378C	E.E.PR LE COURS DU SOLEIL 53 rue la Fontaine	53 rue la Fontaine	Paris 16e  Arrondissement	48.8498268	2.26933002	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75116	Paris	Ile-de-France	Paris
0211821R	ECOLE MATERNELLE	Rue Flavigny	Bligny-le-Sec	47.4445114	4.74221039	101	ECOLE MATERNELLE	21	27	07	21085	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0221094V	Ecole primaire publique de Saint Nicolas du Pelem	17 rue Anatole le Braz	Saint-Nicolas-du-Pélem	48.3097534	-3.1649003	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22321	Côtes-d'Armor	Bretagne	Rennes
0260194V	Ecole publique Cléon d'Andran	Place Olivier de Serres	Cléon-d'Andran	44.6132202	4.93764019	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26095	Drôme	Auvergne-Rhône-Alpes	Grenoble
0260485L	Ecole élémentaire d'application La Fontaine	15 rue Châteaubriand	Valence	44.9213219	4.89405966	153	ECOLE ELEMENTAIRE D APPLICATION	26	84	08	26362	Drôme	Auvergne-Rhône-Alpes	Grenoble
0261120B	Ecole primaire Emile Loubet	Place Castellane	Grignan	44.4196281	4.91127014	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26146	Drôme	Auvergne-Rhône-Alpes	Grenoble
0261230W	Ecole maternelle Mairie	Rue de la Mairie	Saint-Marcel-lès-Valence	44.9713669	4.95391941	101	ECOLE MATERNELLE	26	84	08	26313	Drôme	Auvergne-Rhône-Alpes	Grenoble
0270309P	Ecole primaire	\N	Saint-Jean-du-Thenney	49.014534	0.464419425	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27552	Eure	Normandie	Rouen
0380321T	Ecole primaire Belledonne	120 route du Rompey	Le Cheylas	45.3923759	5.99779987	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38100	Isère	Auvergne-Rhône-Alpes	Grenoble
0382237A	Ecole maternelle Stendhal	Rue Beyle Stendhal	Voreppe	45.2772141	5.64818001	101	ECOLE MATERNELLE	38	84	08	38565	Isère	Auvergne-Rhône-Alpes	Grenoble
0382750H	Ecole primaire Les Béalières	2 rue Le Routoir	Meylan	45.2122726	5.78846025	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38229	Isère	Auvergne-Rhône-Alpes	Grenoble
0382770E	Ecole primaire Glay	1 chemin de la Fontaine	Saint-Clair-du-Rhône	45.4309883	4.78669024	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38378	Isère	Auvergne-Rhône-Alpes	Grenoble
0382800M	Ecole primaire Gustave Rivet	Rue Gustave Rivet	Domène	45.2032471	5.83903027	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38150	Isère	Auvergne-Rhône-Alpes	Grenoble
0382889J	Ecole primaire Paul Bert	4 rue Chopin	Saint-Martin-d'Hères	45.1662292	5.75083971	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38421	Isère	Auvergne-Rhône-Alpes	Grenoble
0560960P	Ecole primaire privée Notre-Dame	2 rue du Pré de la Dame	Férel	47.4816246	-2.34356046	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56058	Morbihan	Bretagne	Rennes
0561237R	Ecole primaire privée Sainte Magdeleine	4 route Saint Martin	Saint-Gravé	47.7258339	-2.2786305	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56218	Morbihan	Bretagne	Rennes
0561267Y	Ecole primaire privée Sainte Anne	9 bis rue des Ecoles	Séné	47.6172142	-2.73414016	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56243	Morbihan	Bretagne	Rennes
0710361G	Ecole primaire	\N	Rigny-sur-Arroux	46.5326958	4.0278101	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71370	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0711244S	Ecole primaire	6 quai du Doubs	Verdun-sur-le-Doubs	46.8996658	5.02255011	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71566	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0711664Y	Ecole primaire	Place du Marché	Mervans	46.7996941	5.18396044	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71295	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0750956G	E.P.PU PAUL BAUDRY 10 rue Paul Baubry	10  RUE PAUL BAUDRY	Paris  8e  Arrondissement	48.8723412	2.30738974	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75108	Paris	Ile-de-France	Paris
0751286R	E.M.PU COURONNES 94 rue des Couronnes	94 rue des Couronnes	Paris 20e  Arrondissement	48.8704185	2.38766026	101	ECOLE MATERNELLE	75	11	01	75120	Paris	Ile-de-France	Paris
0753123M	E.M.PU CHAT.DES RENTIERS 31 rue Château des Rentiers	31 rue Château des Rentiers	Paris 13e  Arrondissement	48.824337	2.37016058	101	ECOLE MATERNELLE	75	11	01	75113	Paris	Ile-de-France	Paris
0800169Z	Les écoles du centre	2 rue Sadi Carnot	Corbie	49.9097633	2.5116694	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80212	Somme	Hauts-de-France	Amiens
9740171T	Ecole maternelle publique Jeanne Visnelda	3 rue Chabrier	L'Etang-Salé	-21.2582645	55.3614693	101	ECOLE MATERNELLE	974	04	28	97404	La Réunion	La Réunion	La Réunion
9740194T	Ecole primaire publique Edmond Albius	2 chemin Baptiste Cambourg	Saint-Benoît	-21.1131611	55.7267303	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97410	La Réunion	La Réunion	La Réunion
9740899J	Ecole maternelle publique George Sand	77 route Ligne Paradis	Saint-Pierre	-21.3129635	55.4748421	101	ECOLE MATERNELLE	974	04	28	97416	La Réunion	La Réunion	La Réunion
9741304Z	Ecole maternelle publique Célimène	135 rue Pablo Neruda	La Possession	-20.9565868	55.3341484	101	ECOLE MATERNELLE	974	04	28	97408	La Réunion	La Réunion	La Réunion
0170176Z	Ecole primaire Chérac	\N	Chérac	45.7037544	-0.438409984	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17100	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0170766R	Ecole élémentaire le renard l'Houmeau	1 rue des Sports	L'Houmeau	46.1944351	-1.18622029	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17190	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0171306C	Ecole maternelle Charles Perrault Surgères	1 rue HELENE DE FONSEQUE	Surgères	46.1037521	-0.749459445	101	ECOLE MATERNELLE	17	75	13	17434	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0290437T	Ecole primaire publique Jules Verne	Rue du Commandant Fernand	Douarnenez	48.0920105	-4.3407793	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29046	Finistère	Bretagne	Rennes
0351283E	Ecole primaire privée Ste Anne	14 rue des Pommiers Fleuris	La Dominelais	47.7636108	-1.68687987	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35098	Ille-et-Vilaine	Bretagne	Rennes
0351661R	Ecole primaire publique les Korrigans	2 rue Saint Mauron	Livré-sur-Changeon	48.2198181	-1.34502041	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35154	Ille-et-Vilaine	Bretagne	Rennes
0352358Y	Ecole primaire privée Ste Jeanne d'Arc	Rue Saint-Georges	Acigné	48.1314659	-1.53885007	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35001	Ille-et-Vilaine	Bretagne	Rennes
0790485Y	Ecole primaire Agrippa d'Aubigné	Place Constant-Saboureau	Niort	46.3260689	-0.511610329	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79191	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0790539G	Ecole primaire	28 rue de la Mairie	Clessé	46.7167549	-0.403660029	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79094	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
9710003B	Lycée général et technologique Baimbridge	Boulevard DES HEROS	Les Abymes	16.2478886	-61.5242081	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	971	01	32	97101	Guadeloupe	Guadeloupe	Guadeloupe
0542241T	Ecole élémentairee Paul Bert	6 rue Paul Bert	Vandoeuvre-lès-Nancy	48.6645393	6.18568993	151	ECOLE DE NIVEAU ELEMENTAIRE	54	44	12	54547	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0570455K	Ecole primaire Revenu 1	3 rue de Metz	Sainte-Marie-aux-Chênes	49.1912766	6.0073204	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57620	Moselle	Grand Est	Nancy-Metz
0881014Z	Groupe Scolaire - Jacques Prévert -	6 rue René Fonck	Saint-Dié-des-Vosges	48.2973747	6.94327068	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88413	Vosges	Grand Est	Nancy-Metz
0301642X	Ecole primaire Les Mugues	Rue du Stade	Sanilhac-Sagriès	43.957283	4.42444944	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30308	Gard	Occitanie	Montpellier
0010404J	Ecole primaire	\N	Champdor-Corcelles	46.0176353	5.59714031	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01080	Ain	Auvergne-Rhône-Alpes	Lyon
0021908N	Maison Familiale Rurale de La Capelle	12 BIS PLACE DEMI-LUNE	La Capelle	49.9762039	3.91824031	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	02	32	20	02141	Aisne	Hauts-de-France	Amiens
0030341E	Ecole maternelle	35 rue Hôtel de Ville	Neuilly-en-Donjon	46.3448982	3.88210988	101	ECOLE MATERNELLE	03	84	06	03196	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0030759J	Ecole maternelle François Reveret	Rue de la République	Avermes	46.5851593	3.31486964	101	ECOLE MATERNELLE	03	84	06	03013	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0040095G	Ecole primaire	Rue de la Mairie	Le Chaffaut-Saint-Jurson	44.0379715	6.15074015	151	ECOLE DE NIVEAU ELEMENTAIRE	04	93	02	04046	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0040287R	Ecole maternelle Langevin-Wallon	Rue Marcel Cachin	Sainte-Tulle	43.7868767	5.76672029	101	ECOLE MATERNELLE	04	93	02	04197	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0090219P	Ecole primaire Nelson Mandela  Madiba	Rue Jules Palmade	Foix	42.9533653	1.61668968	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09122	Ariège	Occitanie	Toulouse
0090295X	Ecole primaire	Rue des Ecoles	Le Mas-d'Azil	43.0799446	1.3629396	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09181	Ariège	Occitanie	Toulouse
0111006J	Ecole primaire privée Saint Joseph des Carmes	Domaine DES CARMES	Montréal	43.2170906	2.18696022	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11254	Aude	Occitanie	Montpellier
0132574C	Ecole élémentaire Zac de Mazargues la soude	30 avenue de la Martheline	Marseille  9e  Arrondissement	43.2454453	5.40075445	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13209	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0133630A	Section d'enseignement général et technologique du Lycée professionnel La Calade	430  CHEMIN DE LA MADRAGUE VILLE	Marseille 15e  Arrondissement	43.3410454	5.35261059	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	13	93	02	13215	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0180506C	Ecole primaire	2 route de Brécy	Villabon	47.0990829	2.66965961	151	ECOLE DE NIVEAU ELEMENTAIRE	18	24	18	18282	Cher	Centre-Val de Loire	Orléans-Tours
0210056X	Lycée professionnel Eugène Guillaume	12 avenue MAL DE LATTRE DE TASSIGNY	Montbard	47.6227608	4.33997965	320	LYCEE PROFESSIONNEL	21	27	07	21425	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0211217J	Lycée d'enseignement général et technologique agricole de la Barotte-Haute-Côte-d'Or	\N	Châtillon-sur-Seine	47.8600998	4.61452961	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	21	27	07	21154	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0220824B	Ecole primaire publique de Graces	26 rue de l'Eglise	Grâces	48.557209	-3.18547988	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22067	Côtes-d'Armor	Bretagne	Rennes
0240712U	Ecole maternelle	BOURG	Sainte-Mondane	44.8443298	1.33828199	101	ECOLE MATERNELLE	24	75	04	24470	Dordogne	Nouvelle-Aquitaine	Bordeaux
0240732R	Ecole élémentaire Ferdinand Buisson	Place du 14 juillet	Sarlat-la-Canéda	44.8873978	1.21589053	151	ECOLE DE NIVEAU ELEMENTAIRE	24	75	04	24520	Dordogne	Nouvelle-Aquitaine	Bordeaux
0251993F	Micro lycée Armand Peugeot	30 rue DES CARRIERES	Valentigney	47.4697647	6.82693005	315	ETABLISSEMENT EXPERIMENTAL	25	27	03	25580	Doubs	Bourgogne-Franche-Comté	Besançon
0271139S	Ecole maternelle intercommunale	71 route du Ranger	Les Monts du Roumois	49.2699738	0.8362903	101	ECOLE MATERNELLE	27	28	21	27062	Eure	Normandie	Rouen
0291288T	Ecole primaire privée Immaculée Conception	15 place Sanquer	Brest	48.3910942	-4.47827053	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29019	Finistère	Bretagne	Rennes
0291427U	Ecole primaire privée Sainte Thérèse	6 rue de la Mairie	Plouzévédé	48.595768	-4.11553049	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29213	Finistère	Bretagne	Rennes
0300314D	Ecole primaire	1030 ROUTE DEPARTEMENTALE 306	Carsan	44.2370872	4.59336042	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30070	Gard	Occitanie	Montpellier
0300433H	Ecole primaire	136 avenue des Ecoles	Saint-Paulet-de-Caisson	44.2616348	4.59684992	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30290	Gard	Occitanie	Montpellier
0301180V	Ecole maternelle les Aristoloches	1 BIS AVENUE JEAN AURILLON	Générac	43.7308235	4.34512043	101	ECOLE MATERNELLE	30	76	11	30128	Gard	Occitanie	Montpellier
0311294N	Ecole maternelle publique La Madeleine	Place de Lattre de Tassigny	Auterive	43.3512688	1.47245955	101	ECOLE MATERNELLE	31	76	16	31033	Haute-Garonne	Occitanie	Toulouse
0311451J	Ecole primaire privée Saint-Louis	78 place du Fort	Labarthe-sur-Lèze	43.4516945	1.39844036	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31248	Haute-Garonne	Occitanie	Toulouse
0312354R	Lycée d'enseignement général et technologique agricole d'Ondes	RUE CASTELNAU	Ondes	43.7794571	1.32066965	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	31	76	16	31403	Haute-Garonne	Occitanie	Toulouse
0330646Y	Ecole élementaire	\N	Coutras	45.0270042	-0.0585116185	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33138	Gironde	Nouvelle-Aquitaine	Bordeaux
0340429G	Ecole élémentaire Maffre de Baugé	Boulevard Marius Roqueblave	Marseillan	43.3595352	3.52806044	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34150	Hérault	Occitanie	Montpellier
0341180Y	Ecole primaire privée Sainte Thérèse - La Salle	21 rue de l'Hospice	Frontignan	43.4467278	3.75172949	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34108	Hérault	Occitanie	Montpellier
0350529K	Ecole primaire publique Les Hirondelles	7 bis route de Médréac	Montauban-de-Bretagne	48.229126	-2.05886054	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35184	Ille-et-Vilaine	Bretagne	Rennes
0360675N	Ecole primaire	23 rue Elie Granat	Val-Fouzon	47.2133141	1.6049906	151	ECOLE DE NIVEAU ELEMENTAIRE	36	24	18	36229	Indre	Centre-Val de Loire	Orléans-Tours
0370299Z	Ecole maternelle	Impasse des Ecoles	Ligueil	47.0423279	0.817499816	101	ECOLE MATERNELLE	37	24	18	37130	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0420962T	Ecole primaire Les Cordes	7 rue des Cordes	Firminy	45.3941536	4.2913003	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42095	Loire	Auvergne-Rhône-Alpes	Lyon
0422052C	Ecole professionnelle privée de l'Association forézienne d'Ecoles de Production	7 rue du Vercors	Saint-Etienne	45.4162788	4.38448	320	LYCEE PROFESSIONNEL	42	84	10	42218	Loire	Auvergne-Rhône-Alpes	Lyon
0422183V	Ecole maternelle Massenet Pasteur	11  RUE DE BRETAGNE	Saint-Chamond	45.4732361	4.5322094	101	ECOLE MATERNELLE	42	84	10	42207	Loire	Auvergne-Rhône-Alpes	Lyon
0430393U	Ecole Maternelle	Rue du Velay	Pont-Salomon	45.3381119	4.24819946	101	ECOLE MATERNELLE	43	84	06	43153	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0460736A	Ecole maternelle privée hors contrat Les Pit'chouns à Molières	Bourg	Molières	44.7895622	1.91814435	101	ECOLE MATERNELLE	46	76	16	46195	Lot	Occitanie	Toulouse
0480139R	Ecole primaire le Sycomore	Rue Magdeleine Quarante	Banassac-Canilhac	44.4342499	3.19894934	151	ECOLE DE NIVEAU ELEMENTAIRE	48	76	11	48017	Lozère	Occitanie	Montpellier
0490867B	Collège privé Saint Joseph	18 BIS PLACE DU CHAMP DE FOIRE	Longué-Jumelles	47.3772812	-0.111200377	340	COLLEGE	49	52	17	49180	Maine-et-Loire	Pays de la Loire	Nantes
0501235W	Ecole maternelle les Tournesols	Rue du Soissonais	Cherbourg-en-Cotentin	49.6282806	-1.63160992	101	ECOLE MATERNELLE	50	28	05	50129	Manche	Normandie	Caen
0501453H	Ecole primaire	-	Saint-Denis-le-Vêtu	48.9864731	-1.40374959	151	ECOLE DE NIVEAU ELEMENTAIRE	50	28	05	50464	Manche	Normandie	Caen
0512148H	Ecole primaire des deux moulins	6 rue de la Renaissance	Livry-Louvercy	49.1127586	4.31501055	151	ECOLE DE NIVEAU ELEMENTAIRE	51	44	19	51326	Marne	Grand Est	Reims
0530887B	Maison Familiale Rurale de Craon	Route DE SEGRE	Craon	47.8397484	-0.94244957	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	53	52	17	53084	Mayenne	Pays de la Loire	Nantes
0570112M	Lycée d'enseignement général et technologique agricole de Château-Salins	40  ROUTE DE STRASBOURG	Château-Salins	48.8199234	6.51672983	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	57	44	12	57132	Moselle	Grand Est	Nancy-Metz
0573759B	Ecole alternative Plant B	6 route de Sierck	Hunting	49.4166756	6.32578945	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57341	Moselle	Grand Est	Nancy-Metz
0641570J	ECOLE MATERNELLE PUBLIQUE  JEAN JACCACHOURY	Rue Berrua	Bidart	43.4375725	-1.5869025	101	ECOLE MATERNELLE	64	75	04	64125	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0650630G	Ecole maternelle Henri IV	23 rue Charles Perrault	Tarbes	43.2332039	0.0538597852	101	ECOLE MATERNELLE	65	76	16	65440	Hautes-Pyrénées	Occitanie	Toulouse
0650982P	Ecole maternelle	2 rue de l'Agriculture	Sarniguet	43.3176003	0.0876904279	101	ECOLE MATERNELLE	65	76	16	65406	Hautes-Pyrénées	Occitanie	Toulouse
0680636X	Ecole maternelle	13 rue de l'Eglise	Baldersheim	47.8005486	7.37974977	101	ECOLE MATERNELLE	68	44	15	68015	Haut-Rhin	Grand Est	Strasbourg
0692465E	Ecole élémentaire Louis Pasteur	11 rue Buzy	Mions	45.6667137	4.96221972	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69283	Rhône	Auvergne-Rhône-Alpes	Lyon
0711815M	Lycée professionnel agricole de Velet	ROUTE DE ST DIDIER-SUR-ARROUX	Etang-sur-Arroux	46.8542862	4.17133951	320	LYCEE PROFESSIONNEL	71	27	07	71192	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0720072M	Section enseignement professionnel du LPO Robert Garnier	Avenue du Général de Gaulle	La Ferté-Bernard	48.1846809	0.646880448	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	72	52	17	72132	Sarthe	Pays de la Loire	Nantes
0755564R	E.P.PR ECOLE GALILEE 43 rue François Gérard	43 rue François Gérard	Paris 16e  Arrondissement	48.8484268	2.27093029	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75116	Paris	Ile-de-France	Paris
0760093N	Lycée général Camille Saint-Saëns	22 rue Saint-Lô	Rouen	49.4426613	1.09410036	302	LYCEE D ENSEIGNEMENT GENERAL	76	28	21	76540	Seine-Maritime	Normandie	Rouen
0760778H	Ecole élémentaire Marius Grout	151 rue de la Gare	Saint-Saire	49.6950607	1.49300051	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76649	Seine-Maritime	Normandie	Rouen
0761445H	Ecole élémentaire	54 route de Limpiville	Bénarville	49.6739578	0.492789716	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76076	Seine-Maritime	Normandie	Rouen
0762434H	Ecole maternelle Raymond Queneau	143 rue Pomone	Saint-Antoine-la-Forêt	49.5340424	0.473529369	101	ECOLE MATERNELLE	76	28	21	76556	Seine-Maritime	Normandie	Rouen
0762533R	Ecole élémentaire Louise Michel	4 rue Pablo Picasso	Montivilliers	49.5507584	0.170119345	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76447	Seine-Maritime	Normandie	Rouen
0763004C	Lycée professionnel agricole d'Envermeu	Rue du Général de Gaulle	Envermeu	49.8919449	1.27074015	320	LYCEE PROFESSIONNEL	76	28	21	76235	Seine-Maritime	Normandie	Rouen
0780305H	Ecole élémentaire Les Bessières	Rue de Noirmoutier	Maurepas	48.7636681	1.93514061	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78383	Yvelines	Ile-de-France	Versailles
0781321M	Ecole maternelle La Ruche	41 rue du Coin du Bois	Rambouillet	48.6507835	1.85661972	101	ECOLE MATERNELLE	78	11	25	78517	Yvelines	Ile-de-France	Versailles
0781969S	Ecole élémentaire Leclerc	11 rue Maurice Berteaux	Croissy-sur-Seine	48.8765984	2.14406943	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78190	Yvelines	Ile-de-France	Versailles
0783283V	Lycée général et technologique privé L'Ermitage	24 RUE DES COTES	Maisons-Laffitte	48.9431419	2.14550948	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	78	11	25	78358	Yvelines	Ile-de-France	Versailles
0790831Z	Ecole primaire privée Jeanne d'Arc	10 rue GRANDE AIRE	Frontenay-Rohan-Rohan	46.2556953	-0.539459527	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79130	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0801335S	Lycée professionnel agricole de la Baie-de-Somme	21  RUE DU LIEUTENANT CARON	Abbeville	50.111618	1.84263051	320	LYCEE PROFESSIONNEL	80	32	20	80001	Somme	Hauts-de-France	Amiens
0801394F	Ecole primaire privée Sainte Thérèse-Saint Acheul	48 chaussée Jules Ferry	Amiens	49.883213	2.32387018	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80021	Somme	Hauts-de-France	Amiens
0801400M	Ecole primaire privée Jeanne d'Arc	9 rue Jacques Mossion	Doullens	50.1548233	2.34449983	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80253	Somme	Hauts-de-France	Amiens
0811129M	Ecole primaire	29  GRAND'RUE GRANDE RUE	Cunac	43.9298096	2.21779013	151	ECOLE DE NIVEAU ELEMENTAIRE	81	76	16	81074	Tarn	Occitanie	Toulouse
0820810K	Ecole élémentaire Pierre Bonhoure	Route Escatalens	Montbeton	44.0104561	1.28481007	151	ECOLE DE NIVEAU ELEMENTAIRE	82	76	16	82124	Tarn-et-Garonne	Occitanie	Toulouse
0831110F	Section d'enseignement général et professionnel adapté du Collège Raimu	55 chemin SAINT ETIENNE	Bandol	43.1392365	5.74818993	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	83	93	23	83009	Var	Provence-Alpes-Côte d'Azur	Nice
0840677E	Ecole primaire	6 rue des Ecoles	Rasteau	44.2307549	4.98582554	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84096	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0851569U	Section d'Enseignement Général et Professionnel Adapté du Collège Pierre Garcie Ferrande	13 rue DES MARAIS SALANTS	Saint-Gilles-Croix-de-Vie	46.7016678	-1.92955971	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	85	52	17	85222	Vendée	Pays de la Loire	Nantes
0910326K	Ecole élémentaire Jean Jaurès	11 rue Jean Jaurès	Villabé	48.5880852	2.45777988	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91659	Essonne	Ile-de-France	Versailles
0910657V	Ecole maternelle Clos Fleuri	26 rue d'Antony	Verrières-le-Buisson	48.7487679	2.27076054	101	ECOLE MATERNELLE	91	11	25	91645	Essonne	Ile-de-France	Versailles
0910910V	Ecole primaire privée du Cours Secondaire	11  RUE DE COURTABOEUF	Orsay	48.6961555	2.19032049	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91471	Essonne	Ile-de-France	Versailles
0940710L	Ecole élémentaire Edouard Herriot	10 AVENUE DES LUATS	Villiers-sur-Marne	48.8196564	2.53715038	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94079	Val-de-Marne	Ile-de-France	Créteil
0942031X	Ecole élémentaire la Grange	Rue de la Grange	Rungis	48.7497253	2.34458947	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94065	Val-de-Marne	Ile-de-France	Créteil
0942033Z	Section d'enseignement professionnel du Lycée Louise Michel	7 RUE PIERRE MARIE DERRIEN	Champigny-sur-Marne	48.8160706	2.49524927	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	94	11	24	94017	Val-de-Marne	Ile-de-France	Créteil
0942110H	Ecole élémentaire Paul Bert	36 bis avenue de Choisy	Villeneuve-Saint-Georges	48.7500839	2.43512034	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94078	Val-de-Marne	Ile-de-France	Créteil
0951220K	Collège privé Saint Pie X	5 BIS ROUTE STRATEGIQUE	Domont	49.013092	2.31802011	340	COLLEGE	95	11	25	95199	Val-d'Oise	Ile-de-France	Versailles
9710611M	Section d'enseignement général et professionnel adapté du Collège Joseph Pitat	32  AVENUE PAUL LACAVE	Basse-Terre	15.9911566	-61.7220497	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	971	01	32	97105	Guadeloupe	Guadeloupe	Guadeloupe
9720899V	WELCOME TO ACP PRIVE HORS CONTRAT	5 impasse Faucigny	Ducos	14.5748634	-60.969471	340	COLLEGE	972	02	31	97207	Martinique	Martinique	Martinique
9741354D	Section d'enseignement général et technologique du lycée professionnel J. de Rontaunay	CÎTE SCOLAIRE DU BUTOR	Saint-Denis	-20.8884754	55.4705086	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	974	04	28	97411	La Réunion	La Réunion	La Réunion
9760045V	Ecole élémentaire ARC-EN-CIEL	Bouyouni	Bandraboua	-12.7401571	45.14077	151	ECOLE DE NIVEAU ELEMENTAIRE	976	06	43	97602	Mayotte	Mayotte	Mayotte
9840107U	Ecole primaire FANGATAU PAETAHA	\N	Fangatau	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	987	00	41	98717	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
0931223Z	Collège Gustave Courbet	17 rue François Mitterrand	Pierrefitte-sur-Seine	48.9491768	2.36294007	340	COLLEGE	93	11	24	93059	Seine-Saint-Denis	Ile-de-France	Créteil
0941413A	Lycée polyvalent Léon Blum	5 rue JEAN GABIN	Créteil	48.7797585	2.44515991	306	LYCEE POLYVALENT	94	11	24	94028	Val-de-Marne	Ile-de-France	Créteil
0050070Z	Ecole élémentaire	\N	Val-des-Prés	44.9496346	6.67835951	151	ECOLE DE NIVEAU ELEMENTAIRE	05	93	02	05174	Hautes-Alpes	Provence-Alpes-Côte d'Azur	Aix-Marseille
0342411L	Ecole primaire Jeanne Moreau	400 rue du 56e régiment d'artillerie	Montpellier	43.6003075	3.86076641	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34172	Hérault	Occitanie	Montpellier
0572670T	Ecole maternelle	16 rue Bernanos	Vaudreching	49.2830849	6.52581024	101	ECOLE MATERNELLE	57	44	12	57700	Moselle	Grand Est	Nancy-Metz
0490060Z	Collège Jean Lurçat	Boulevard Robert Schuman	Angers	47.4884834	-0.526860118	340	COLLEGE	49	52	17	49007	Maine-et-Loire	Pays de la Loire	Nantes
0352220Y	Ecole maternelle publique Torigné	Chemin de Torigne	Rennes	48.0862885	-1.65715027	101	ECOLE MATERNELLE	35	53	14	35238	Ille-et-Vilaine	Bretagne	Rennes
0573152S	Ecole primaire Centre Pasteur	1 rue de la Fontaine	Behren-lès-Forbach	49.1657448	6.94297981	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57058	Moselle	Grand Est	Nancy-Metz
0241100R	Section d'enseignement général et professionnel adapté du Collège Max Bramerie	Rue du Collège	La Force	44.8705177	0.373775631	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	24	75	04	24222	Dordogne	Nouvelle-Aquitaine	Bordeaux
0381803D	Lycée général privé Externat Notre Dame	43  AVENUE MARCELLIN BERTHELOT	Grenoble	45.1741829	5.73287964	302	LYCEE D ENSEIGNEMENT GENERAL	38	84	08	38185	Isère	Auvergne-Rhône-Alpes	Grenoble
0951178P	Ecole élémentaire Les Plants	Rue des Plants Bruns	Cergy	49.0328827	2.08192039	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95127	Val-d'Oise	Ile-de-France	Versailles
0951251U	Ecole élémentaire La Ravinière	Place de la Ravinière	Osny	49.0566597	2.06266999	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95476	Val-d'Oise	Ile-de-France	Versailles
0951335K	Ecole maternelle Montedour	Rue de la Croix Verte	Franconville	48.9954033	2.21448064	101	ECOLE MATERNELLE	95	11	25	95252	Val-d'Oise	Ile-de-France	Versailles
0160974X	Ecole primaire Pierre de Ronsard	2 boulevard Jacques Monod Ma Campagne	Angoulême	45.6324539	0.15790002	151	ECOLE DE NIVEAU ELEMENTAIRE	16	75	13	16015	Charente	Nouvelle-Aquitaine	Poitiers
0241042C	Collège Bertran de Born	1 rue CHARLES MANGOLD	Périgueux	45.1799545	0.719965696	340	COLLEGE	24	75	04	24322	Dordogne	Nouvelle-Aquitaine	Bordeaux
0333287U	Collège de Lacanau	Allée du Collège	Lacanau	44.9874344	-1.08817816	340	COLLEGE	33	75	04	33214	Gironde	Nouvelle-Aquitaine	Bordeaux
0920802X	Lycée général et technologique Jean-Pierre Vernant	21  RUE DU DR LEDERMANN	Sèvres	48.8252678	2.21141052	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	92	11	25	92072	Hauts-de-Seine	Ile-de-France	Versailles
0850014D	Collège Golfe des Pictons	21 rue DU MOULIN ROUGE	L'Ile-d'Elle	46.3288422	-0.950599551	340	COLLEGE	85	52	17	85111	Vendée	Pays de la Loire	Nantes
9720320R	Ecole maternelle SAINT-PIERRE	Rue Alfred Lacroix	Saint-Pierre	14.7397776	-61.175148	101	ECOLE MATERNELLE	972	02	31	97225	Martinique	Martinique	Martinique
9720357F	Ecole élémentaire Dillon A	25 avenue Judes Turiaf	Fort-de-France	14.6096029	-61.0500984	151	ECOLE DE NIVEAU ELEMENTAIRE	972	02	31	97209	Martinique	Martinique	Martinique
9840031L	Ecole primaire Hane	\N	Ua-huka	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	987	00	41	98756	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
0501217B	Collège André Miclot	Rue Montfiquet	Port-Bail-sur-Mer	49.3370399	-1.69881845	340	COLLEGE	50	28	05	50412	Manche	Normandie	Caen
0601389J	Ecole primaire privée saint-esprit	68 rue de Pontoise	Beauvais	49.4171066	2.08743978	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60057	Oise	Hauts-de-France	Amiens
0110628Y	Ecole primaire	1 rue des Ecoles	Serviès-en-Val	43.0893211	2.51804042	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11378	Aude	Occitanie	Montpellier
0180036S	Lycée polyvalent Henri Brisson - Lycée des métiers de l'industrie et des sciences appliquées	25 avenue Henri Brisson	Vierzon	47.2284279	2.06254005	306	LYCEE POLYVALENT	18	24	18	18279	Cher	Centre-Val de Loire	Orléans-Tours
0220869A	Ecole primaire publique de Gouarec	Route de Plounevez	Gouarec	48.2286606	-3.17963958	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22064	Côtes-d'Armor	Bretagne	Rennes
0230404P	Ecole primaire	Rue Camille Bennassy	Royère-de-Vassivière	45.8416901	1.91237998	151	ECOLE DE NIVEAU ELEMENTAIRE	23	75	22	23165	Creuse	Nouvelle-Aquitaine	Limoges
0630936A	Ecole primaire	3 route de la Mairie	Saint-Clément-de-Régnat	45.999382	3.29821968	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63332	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0721177N	Ecole primaire privée Saint Paul	1 rue PAUL LAMBERT	Notre-Dame-du-Pé	47.7312813	-0.326399833	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72232	Sarthe	Pays de la Loire	Nantes
0910111B	Ecole élémentaire Publique	1 RUE DE LA FOSSE BLANCHE	Prunay-sur-Essonne	48.3566399	2.37797046	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91507	Essonne	Ile-de-France	Versailles
0720146T	Ecole primaire	\N	Fatines	48.0457535	0.34521988	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72129	Sarthe	Pays de la Loire	Nantes
0720789S	Ecole primaire	22 rue Pierreuse	Ségrie	48.1996994	0.0262400117	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72332	Sarthe	Pays de la Loire	Nantes
0721069W	Ecole élémentaire	11 rue de Verdun	Loué	47.9968948	-0.153699875	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72168	Sarthe	Pays de la Loire	Nantes
0721258B	Ecole élémentaire Louis Blériot	23 boulevard Jean Yves Chapalain	Le Mans	47.9675941	0.222839594	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72181	Sarthe	Pays de la Loire	Nantes
0721289K	Ecole primaire	11 bis rue Jules Ferry	Requeil	47.7862816	0.158889502	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72252	Sarthe	Pays de la Loire	Nantes
0780089Y	Ecole élémentaire privée Sainte Thérèse	Allée Golda Meir	Elancourt	48.770874	1.96633065	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78208	Yvelines	Ile-de-France	Versailles
0790014L	Collège François Truffaut	18 AVENUE DE L'HOTEL DE VILLE	Chef-Boutonne	46.1092453	-0.0745497197	340	COLLEGE	79	75	13	79083	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0851352H	ECOLE MATERNELLE	Rue du Saule Creux	Soullans	46.7969055	-1.9022795	101	ECOLE MATERNELLE	85	52	17	85284	Vendée	Pays de la Loire	Nantes
0941485D	Ecole élémentaire Eugene Voisin	4 rue Eugène Voisin	Joinville-le-Pont	48.8151703	2.46525955	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94042	Val-de-Marne	Ile-de-France	Créteil
0951233Z	Collège Frania Eisenbach Haverland	13  RUE BERNARD ASTRUC	Menucourt	49.0296135	1.97754002	340	COLLEGE	95	11	25	95388	Val-d'Oise	Ile-de-France	Versailles
0341637V	Ecole maternelle	Place Joseph Delteil	Saussan	43.5701027	3.77171969	101	ECOLE MATERNELLE	34	76	11	34295	Hérault	Occitanie	Montpellier
0550866T	Ecole primaire d'application Jean Errard	9 chemin de Pilviteuil	Bar-le-Duc	48.761467	5.15303993	153	ECOLE ELEMENTAIRE D APPLICATION	55	44	12	55029	Meuse	Grand Est	Nancy-Metz
0770393J	Ecole élémentaire Les Orangers	3 place Charles de Gaulle	Vulaines-sur-Seine	48.430439	2.76457834	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77533	Seine-et-Marne	Ile-de-France	Créteil
0771510Y	Ecole maternelle Eaubonne	Rue Saint-Guinfort	Dammartin-en-Goële	49.0541611	2.67301035	101	ECOLE MATERNELLE	77	11	24	77153	Seine-et-Marne	Ile-de-France	Créteil
0772080T	Ecole maternelle Fosse Cornue	343 rue des Maillettes	Moissy-Cramayel	48.6234207	2.59003949	101	ECOLE MATERNELLE	77	11	24	77296	Seine-et-Marne	Ile-de-France	Créteil
0572814Z	Collège Charles Hermite	6 rue DU CALVAIRE	Dieuze	48.8082352	6.72416019	340	COLLEGE	57	44	12	57177	Moselle	Grand Est	Nancy-Metz
0601139M	Collège privé Notre-Dame	32 rue DE BUZANVAL	Beauvais	49.4328079	2.08625054	340	COLLEGE	60	32	20	60057	Oise	Hauts-de-France	Amiens
0601318G	Section d'enseignement général et professionnel adapté du Collège Claude Debussy	1059 rue de la République	Margny-lès-Compiègne	49.4320259	2.82651949	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	60	32	20	60382	Oise	Hauts-de-France	Amiens
0593226L	Collège Anne Frank	23 avenue du Maréchal Foch	Lambersart	50.6490898	3.02778935	340	COLLEGE	59	32	09	59328	Nord	Hauts-de-France	Lille
0512079H	Section d'Enseignement Professionnel du Lycée polyvalent privé Frédéric Ozanam	1 rue DE LA FRATERNITE	Châlons-en-Champagne	48.9787216	4.36085033	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	51	44	19	51108	Marne	Grand Est	Reims
0771760V	Collège Madame de La Fayette	16 avenue de la République	Coulommiers	48.8146667	3.08829975	340	COLLEGE	77	11	24	77131	Seine-et-Marne	Ile-de-France	Créteil
0755241P	Collège Colette Besson	9 rue des Panoyaux	Paris 20e  Arrondissement	48.8663635	2.38476062	340	COLLEGE	75	11	01	75120	Paris	Ile-de-France	Paris
0601449Z	Collège Jules Michelet	70 rue JULES MICHELET	Creil	49.2629128	2.48264956	340	COLLEGE	60	32	20	60175	Oise	Hauts-de-France	Amiens
0660022R	Collège Gustave Violet	PLAINE SAINT-MARTIN	Prades	42.6199951	2.41849041	340	COLLEGE	66	76	11	66149	Pyrénées-Orientales	Occitanie	Montpellier
0460189F	Ecole élémentaire publique	Place de la Mairie	Lavercantière	44.6373291	1.31791961	151	ECOLE DE NIVEAU ELEMENTAIRE	46	76	16	46164	Lot	Occitanie	Toulouse
0271743Y	Section d'enseignement professionnel privé Notre-Dame	8  rue Portevin	Evreux	49.0163422	1.14886987	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	27	28	21	27229	Eure	Normandie	Rouen
0594653M	Lycée professionnel André Jurénil	Boulevard du 8 Mai 1945	Denain	50.3213692	3.39865017	320	LYCEE PROFESSIONNEL	59	32	09	59172	Nord	Hauts-de-France	Lille
0790015M	Lycée professionnel Jean-François Cail - Lycée des métiers du commerce et de la vente	1 rue MAURICE GADIOUX	Chef-Boutonne	46.1048622	-0.0690896288	320	LYCEE PROFESSIONNEL	79	75	13	79083	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0830493K	Ecole primaire Le Plantier	Quartier Le Plantier	Régusse	43.6579018	6.1301198	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83102	Var	Provence-Alpes-Côte d'Azur	Nice
0061987C	Lycée polyvalent de la Montagne	QUARTIER DU CLOT	Valdeblore	44.0694504	7.16821051	306	LYCEE POLYVALENT	06	93	23	06153	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0801375K	Collège Pierre et Marie Curie	Place EMILE LETURCQ	Albert	50.002121	2.65195942	340	COLLEGE	80	32	20	80016	Somme	Hauts-de-France	Amiens
0801488H	Collège Jacques Prévert	8 rue du Collège	Nouvion	50.2144394	1.77993941	340	COLLEGE	80	32	20	80598	Somme	Hauts-de-France	Amiens
0950963F	Ecole  primaire Henri Barbusse A	1 allée DES MURIERS	Garges-lès-Gonesse	48.9723015	2.40382004	151	ECOLE DE NIVEAU ELEMENTAIRE	95	11	25	95268	Val-d'Oise	Ile-de-France	Versailles
0780254C	Collège François Mauriac	677 rue Des Clos de l'Ecu	Houdan	48.7905693	1.60888052	340	COLLEGE	78	11	25	78310	Yvelines	Ile-de-France	Versailles
0950885W	Collège Irène Joliot-Curie	12  RUE DE MAULLY	Argenteuil	48.9573441	2.28137946	340	COLLEGE	95	11	25	95018	Val-d'Oise	Ile-de-France	Versailles
0911074Y	Ecole élémentaire Roux Tenon	Rue Georges Mandel	Massy	48.7347145	2.25765944	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91377	Essonne	Ile-de-France	Versailles
0382798K	Ecole maternelle Le Ruisseau	Rue des Eaux Vives	Villefontaine	45.6120377	5.16127968	101	ECOLE MATERNELLE	38	84	08	38553	Isère	Auvergne-Rhône-Alpes	Grenoble
0421968L	Ecole élémentaire Jules Ferry	3 rue des Eaux Vives	Le Chambon-Feugerolles	45.3974304	4.34690046	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42044	Loire	Auvergne-Rhône-Alpes	Lyon
0422307E	Ecole primaire privée Montessori Saint-Louis	4 place larochette	Roanne	46.0286751	4.06777811	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42187	Loire	Auvergne-Rhône-Alpes	Lyon
0061237M	Collège La Vesubie-Jean Salines	8 PROMENADE JEAN LAURENTI	Roquebillière	44.0121803	7.30926037	340	COLLEGE	06	93	23	06103	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0190683P	Ecole maternelle	6 rue des Ecoles	Laguenne-sur-Avalouze	45.2429237	1.77948987	101	ECOLE MATERNELLE	19	75	22	19101	Corrèze	Nouvelle-Aquitaine	Limoges
0190836F	Ecole primaire	3 place de la Mairie	Chamberet	45.5819244	1.72113001	151	ECOLE DE NIVEAU ELEMENTAIRE	19	75	22	19036	Corrèze	Nouvelle-Aquitaine	Limoges
0230442F	Ecole maternelle	Rue de Rentière	Evaux-les-Bains	46.1719017	2.4860096	101	ECOLE MATERNELLE	23	75	22	23076	Creuse	Nouvelle-Aquitaine	Limoges
0230475S	Ecole primaire	16 rue Jules Ferry	Clugnat	46.307785	2.11664057	151	ECOLE DE NIVEAU ELEMENTAIRE	23	75	22	23064	Creuse	Nouvelle-Aquitaine	Limoges
9730355Y	Ecole maternelle Albertine Sida	42 avenue François Mitterrand	Apatou	5.15905857	-54.3413811	101	ECOLE MATERNELLE	973	03	33	97360	Guyane	Guyane	Guyane
0030739M	Ecole maternelle Jean Zay	Rue de la Perche	Bellerive-sur-Allier	46.1198006	3.41020989	101	ECOLE MATERNELLE	03	84	06	03023	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0080352P	Ecole maternelle Bellevue	11 rue Edmond Pierrot	Warcq	49.7788925	4.69185972	101	ECOLE MATERNELLE	08	44	19	08497	Ardennes	Grand Est	Reims
0100149H	Ecole élémentaire	1 rue des Herbues	Les Bordes-Aumont	48.1841354	4.12331009	151	ECOLE DE NIVEAU ELEMENTAIRE	10	44	19	10049	Aube	Grand Est	Reims
0160284X	Ecole élémentaire Le Cormier	4 allée François Mitterrand	L'Isle-d'Espagnac	45.6631775	0.198545605	151	ECOLE DE NIVEAU ELEMENTAIRE	16	75	13	16166	Charente	Nouvelle-Aquitaine	Poitiers
0251198S	Ecole maternelle	Rue Frédéric Bataille	Nommay	47.5373764	6.84414005	101	ECOLE MATERNELLE	25	27	03	25428	Doubs	Bourgogne-Franche-Comté	Besançon
0251518P	Ecole primaire privée Saint Joseph	3 place Roger Salengro	Pontarlier	46.9031639	6.35233021	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25462	Doubs	Bourgogne-Franche-Comté	Besançon
0332544L	Ecole primaire privée Saint Gabriel	68 rue Mondenard	Bordeaux	44.8463593	-0.589312375	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0390767X	Ecole primaire	28 centre du Village	Lajoux	46.3749275	5.9721303	151	ECOLE DE NIVEAU ELEMENTAIRE	39	27	03	39274	Jura	Bourgogne-Franche-Comté	Besançon
0530574L	Ecole primaire privée Sacré-Coeur	2 rue Les Bergeries	Montaudin	48.3862228	-0.994489551	151	ECOLE DE NIVEAU ELEMENTAIRE	53	52	17	53154	Mayenne	Pays de la Loire	Nantes
0590228C	Collège François Villon	RUE MARTIN LUTHER KING	Walincourt-Selvigny	50.0748253	3.34145045	340	COLLEGE	59	32	09	59631	Nord	Hauts-de-France	Lille
0591037G	Ecole maternelle Andersen	1 rue des Ecoliers	Dunkerque	51.0213242	2.35260034	101	ECOLE MATERNELLE	59	32	09	59183	Nord	Hauts-de-France	Lille
0593899T	Ecole primaire privée Jeanne d'Arc	48 rue Faidherbe	La Madeleine	50.6507645	3.0746901	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59368	Nord	Hauts-de-France	Lille
0594114B	Ecole primaire privée Saint Jean	111 rue de Roncq	Tourcoing	50.7324219	3.14756942	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59599	Nord	Hauts-de-France	Lille
0610710R	Collège privé Tregaro	7 boulevard de la Gare	Gacé	48.7939339	0.295380086	340	COLLEGE	61	28	05	61181	Orne	Normandie	Caen
0610714V	Collège privé Saint Remi	9 boulevard DU MIDI	Tinchebray-Bocage	48.7624359	-0.734679878	340	COLLEGE	61	28	05	61486	Orne	Normandie	Caen
0620368N	Ecole maternelle Victor Hugo	16 rue Victor Hugo	Loos-en-Gohelle	50.4591827	2.79804945	101	ECOLE MATERNELLE	62	32	09	62528	Pas-de-Calais	Hauts-de-France	Lille
0620827M	Ecole primaire RPI 85	38 rue Nationale	Bourecq	50.5704422	2.43441033	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62162	Pas-de-Calais	Hauts-de-France	Lille
0622130D	Collège privé Saint Joseph de Navarin	30 rue DE BELTERRE	Boulogne-sur-Mer	50.7268867	1.60815001	340	COLLEGE	62	32	09	62160	Pas-de-Calais	Hauts-de-France	Lille
0622740S	Ecole primaire privée Sainte Germaine	5 rue de Lima	Calais	50.9328117	1.85724938	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62193	Pas-de-Calais	Hauts-de-France	Lille
0623004D	Ecole primaire Jean Jaurès	63 rue de Quiery	Vitry-en-Artois	50.3321762	2.98472953	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62865	Pas-de-Calais	Hauts-de-France	Lille
0623484A	Ecole maternelle Saint-Exupéry	Chemin des Ecoliers	Aire-sur-la-Lys	50.6321259	2.40380979	101	ECOLE MATERNELLE	62	32	09	62014	Pas-de-Calais	Hauts-de-France	Lille
0623849X	Ecole maternelle Lamartine-Maison Pour Tous	Rue Phècle Carpentier	Liévin	50.4146652	2.77958012	101	ECOLE MATERNELLE	62	32	09	62510	Pas-de-Calais	Hauts-de-France	Lille
0870366A	Ecole élémentaire publique	Avenue des Ligures	Saint-Jean-Ligoure	45.6881599	1.30800056	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87151	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0071207Z	Ecole maternelle	95 chemin des Ecoliers	Lavilledieu	44.5770302	4.45287943	101	ECOLE MATERNELLE	07	84	08	07138	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0210314C	ECOLE ELEMENTAIRE PUBLIQUE     R.P.I.	1 rue DE L EGLISE	Brion-sur-Ource	47.9160881	4.66157055	151	ECOLE DE NIVEAU ELEMENTAIRE	21	27	07	21109	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0382655E	Ecole primaire privée Les Marronniers	95 rue des Frères	Corbelin	45.609127	5.54508924	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38124	Isère	Auvergne-Rhône-Alpes	Grenoble
0710438R	Ecole primaire	6 rue de la Promenade	Salornay-sur-Guye	46.5190506	4.59620047	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71495	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0711805B	Ecole maternelle	\N	Simard	46.7151222	5.18229961	101	ECOLE MATERNELLE	71	27	07	71523	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0730959W	Ecole élémentaire Les Chaudannes	Rue Joliot Curie	Saint-Jean-de-Maurienne	45.2730713	6.35916042	151	ECOLE DE NIVEAU ELEMENTAIRE	73	84	08	73248	Savoie	Auvergne-Rhône-Alpes	Grenoble
0751339Y	E.M.PU EUPATORIA 15 rue d'Eupatoria	15 rue d'Eupatoria	Paris 20e  Arrondissement	48.8688927	2.38731956	101	ECOLE MATERNELLE	75	11	01	75120	Paris	Ile-de-France	Paris
0800316J	Ecole primaire Jules Lefèbvre	41 rue Jules Lefèbvre	Amiens	49.8871231	2.29162955	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80021	Somme	Hauts-de-France	Amiens
9740122P	Ecole élémentaire publique Henry Dunant	99 boulevard de la Trinité	Saint-Denis	-20.8963718	55.4674606	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97411	La Réunion	La Réunion	La Réunion
9740515S	Ecole primaire privée catholique Sainte Madeleine	162 bis rue Roger Payet	Sainte-Marie	-20.914711	55.5097694	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97418	La Réunion	La Réunion	La Réunion
9740901L	Ecole maternelle publique les Tulipiers	89 allée des Tulipes	Saint-Denis	-20.9163551	55.4859505	101	ECOLE MATERNELLE	974	04	28	97411	La Réunion	La Réunion	La Réunion
0130827D	Ecole élémentaire Vincent Leblanc	32 rue Vincent Leblanc	Marseille  2e  Arrondissement	43.3054161	5.36807013	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13202	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0160356A	ECOLE MATERNELLE BOUTEVILLE	GRAND'RUE	Bouteville	45.5991821	-0.13636981	101	ECOLE MATERNELLE	16	75	13	16057	Charente	Nouvelle-Aquitaine	Poitiers
0171145C	Ecole élémentaire l'Yeuse Royan	53 boulevard de la Marne	Royan	45.6263084	-1.00797999	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17306	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0271536Y	Ecole primaire	6 chemin des Ecoliers	Glos-sur-Risle	49.268692	0.681370258	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27288	Eure	Normandie	Rouen
9740198X	Ecole primaire publique Maxime Fontaine	27 bis cité Cité S.M.A.	Saint-Benoît	-21.0349541	55.7141991	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97410	La Réunion	La Réunion	La Réunion
0020395U	Ecole primaire Jules Verne / Léo Lagrange	6 rue Jacquin	Belleu	49.3586502	3.33348989	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02064	Aisne	Hauts-de-France	Amiens
0021112Y	Ecole primaire R Gérard	Rue Jean Jaurès	Lehaucourt	49.9173279	3.27953053	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02374	Aisne	Hauts-de-France	Amiens
0021996J	Ecole primaire Jean Moulin	Avenue Winston Churchill	Soissons	49.3807106	3.30649972	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02722	Aisne	Hauts-de-France	Amiens
0132713D	Ecole primaire Paul Cézanne	Place des Jonquilles	Miramas	43.5975761	5.00968981	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13063	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0310705Y	Ecole élémentaire publique	Village	Montsaunès	43.1120415	0.934560001	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31391	Haute-Garonne	Occitanie	Toulouse
0312959Y	école élémentaire publique Claudie Haigneré	20 rue des troubadours	Cugnaux	43.5535278	1.36061013	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31157	Haute-Garonne	Occitanie	Toulouse
0921012A	Collège privé Notre-Dame de France	3 RUE ARBLADE	Malakoff	48.8188934	2.29375982	340	COLLEGE	92	11	25	92046	Hauts-de-Seine	Ile-de-France	Versailles
0131557X	Ecole maternelle Louis Rostand	Rue Bazarde	Orgon	43.7931061	5.04043007	101	ECOLE MATERNELLE	13	93	02	13067	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0692944A	Collège privé Notre Dame de Mongré	276  AVENUE SAINT EXUPERY	Villefranche-sur-Saône	45.9922028	4.7116003	340	COLLEGE	69	84	10	69264	Rhône	Auvergne-Rhône-Alpes	Lyon
0740824U	Ecole primaire publique Adrien Bonnefoy FILLINGES	1020 route du Chef Lieu	Fillinges	46.1585236	6.34110928	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74128	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0741020G	Ecole primaire privée L'Annonciation Cran-Gevrier ANNECY	45 avenue de la République	Annecy	45.9083252	6.0980196	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74010	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0540987E	Ecole maternelle	9 rue du Château	Saint-Jean-lès-Longuyon	49.4528656	5.4630003	101	ECOLE MATERNELLE	54	44	12	54476	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0541185V	Ecole primaire DU MADON	14 rue Claude Beauregard	Xirocourt	48.4337616	6.17512941	151	ECOLE DE NIVEAU ELEMENTAIRE	54	44	12	54597	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0541213A	Ecole maternelle Louise Michel	11 rue Jules Ferry	Varangéville	48.6362648	6.31766939	101	ECOLE MATERNELLE	54	44	12	54549	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0570844H	Ecole maternelle Montagne Supérieure	1  RUE DES PINSONS	Sarreguemines	49.1013832	7.05028963	101	ECOLE MATERNELLE	57	44	12	57631	Moselle	Grand Est	Nancy-Metz
0571358S	Ecole primaire	3 rue Principale	Bourdonnay	48.7199783	6.72818041	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57099	Moselle	Grand Est	Nancy-Metz
0571377M	Ecole primaire	8 rue de l'Ecole	Hellimer	48.9974632	6.83082914	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57311	Moselle	Grand Est	Nancy-Metz
0572525K	Ecole maternelle	5 rue de l'Eglise	Henridorff	48.7326393	7.21187973	101	ECOLE MATERNELLE	57	44	12	57315	Moselle	Grand Est	Nancy-Metz
0572928Y	Collège privé Notre-Dame	2 rue DE METZ	Peltre	49.0739594	6.2178297	340	COLLEGE	57	44	12	57534	Moselle	Grand Est	Nancy-Metz
0573030J	Ecole primaire Le Patural	Rue des Ecoles	Augny	49.0587769	6.1208396	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57039	Moselle	Grand Est	Nancy-Metz
0573551A	Ecole élémentaire	13 rue Jeanne d'Arc	Châtel-Saint-Germain	49.1154709	6.08397007	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57134	Moselle	Grand Est	Nancy-Metz
0881261T	École Élémentaire	2 rue des Ecoles	Corcieux	48.1726341	6.87821007	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88115	Vosges	Grand Est	Nancy-Metz
9710153P	Ecole maternelle Olga Capro-Jeanville	Rue Jules Ferry	Saint-François	16.2543259	-61.2740097	101	ECOLE MATERNELLE	971	01	32	97125	Guadeloupe	Guadeloupe	Guadeloupe
0131344R	Cours Bastide (Lycée général privé)	50  RUE DE LODI	Marseille  6e  Arrondissement	43.2897072	5.38691998	302	LYCEE D ENSEIGNEMENT GENERAL	13	93	02	13206	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0550996J	Ecole élémentaire publique Albert Toussaint	5 rue Albert Toussaint	Stenay	49.4935379	5.18610954	151	ECOLE DE NIVEAU ELEMENTAIRE	55	44	12	55502	Meuse	Grand Est	Nancy-Metz
0040034R	Lycée professionnel privé Le Sacré-Coeur	2  AVENUE DES THERMES	Digne-les-Bains	44.0913734	6.24118996	306	LYCEE POLYVALENT	04	93	02	04070	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0030731D	Ecole Elementaire	1 RUE MEUBLE	Beaulon	46.5998573	3.6792202	151	ECOLE DE NIVEAU ELEMENTAIRE	03	84	06	03019	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0630944J	Ecole primaire	Rue des Ecoles	Martres-sur-Morge	45.9355583	3.22130013	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63215	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0631343T	Ecole élémentaire privée Saint Joseph	7 rue Baraban	Maringues	45.9219589	3.33209014	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63210	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0631936M	Ecole maternelle René Cassin	3 avenue du Docteur Besserve	Pont-du-Château	45.7987289	3.25740933	101	ECOLE MATERNELLE	63	84	06	63284	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0011008R	Ecole maternelle Les Terres d'Ain	Lieu-dit LES TERRES D'AIN	Poncin	46.0865631	5.40426922	101	ECOLE MATERNELLE	01	84	10	01303	Ain	Auvergne-Rhône-Alpes	Lyon
0011219V	Ecole primaire	Grande rue	Francheleins	46.0734673	4.80944014	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01165	Ain	Auvergne-Rhône-Alpes	Lyon
0030554L	Ecole Primaire	16 rue d'Ussel	Etroussat	46.2179451	3.21834993	151	ECOLE DE NIVEAU ELEMENTAIRE	03	84	06	03112	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0062011D	Collège International	190 RUE F.MISTRAL	Valbonne	43.6200256	7.04150963	340	COLLEGE	06	93	23	06152	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0110100Z	Ecole élémentaire	16 route de la Fabrique	Bagnoles	43.2690353	2.43864989	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11025	Aude	Occitanie	Montpellier
0110177H	Ecole maternelle Jules Ferry	11 rue Emile Alain	Carcassonne	43.20924	2.33174014	101	ECOLE MATERNELLE	11	76	11	11069	Aude	Occitanie	Montpellier
0132951M	Collège privé Sainte Trinité	55  AVENUE DELATTRE  DE TASSIGNY	Marseille  9e  Arrondissement	43.2473145	5.40716982	340	COLLEGE	13	93	02	13209	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0141904U	Maison Familiale Rurale de Les Moutiers-en-Cinglais	CHÂTEAU DE LA BAGOTIERE	Les Moutiers-en-Cinglais	49.020649	-0.428760022	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	14	28	05	14458	Calvados	Normandie	Caen
0142176P	Ecole élémentaire d'application Jean Moulin	10  RUE LUCIEN NELLE	Caen	49.1741753	-0.397450238	153	ECOLE ELEMENTAIRE D APPLICATION	14	28	05	14118	Calvados	Normandie	Caen
0180456Y	Ecole maternelle	9 rue des treize blés	Loye-sur-Arnon	46.6530418	2.3878696	101	ECOLE MATERNELLE	18	24	18	18130	Cher	Centre-Val de Loire	Orléans-Tours
0190542L	Ecole primaire La Croix de Bar	28 route de la Croix de Bar	Tulle	45.2745323	1.75304019	151	ECOLE DE NIVEAU ELEMENTAIRE	19	75	22	19272	Corrèze	Nouvelle-Aquitaine	Limoges
0210368L	ECOLE ELEMENTAIRE PUBLIQUE     HAMEAU DE GIGNY	Rue de la Motte	Beaune	47.0379181	4.87065935	151	ECOLE DE NIVEAU ELEMENTAIRE	21	27	07	21054	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0221228R	Ecole primaire privée Notre Dame	3 rue des Frères Lamennais	Pleudihen-sur-Rance	48.5084496	-1.95189989	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22197	Côtes-d'Armor	Bretagne	Rennes
0240340P	Ecole primaire	Allée Joséphine Baker	Sagelat	44.7873764	1.01549304	151	ECOLE DE NIVEAU ELEMENTAIRE	24	75	04	24360	Dordogne	Nouvelle-Aquitaine	Bordeaux
0251070C	Ecole secondaire professionnelle privée Cours hôtelier de Besançon	98 grande rue	Besançon	47.2357178	6.02716064	320	LYCEE PROFESSIONNEL	25	27	03	25056	Doubs	Bourgogne-Franche-Comté	Besançon
0270082T	Ecole maternelle Françoise Dolto	9 rue de Sainte Colombe	Le Neubourg	49.1394272	0.907599866	101	ECOLE MATERNELLE	27	28	21	27428	Eure	Normandie	Rouen
0271526M	Ecole maternelle Flora Tristan	19 rue de la Colonie	Gaillon	49.1601677	1.32632065	101	ECOLE MATERNELLE	27	28	21	27275	Eure	Normandie	Rouen
0280075E	Ecole élémentaire	2 rue de la Sanglerie	Conie-Molitard	48.1131096	1.43945003	151	ECOLE DE NIVEAU ELEMENTAIRE	28	24	18	28106	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0291633T	Lycée professionnel René Laënnec - Lycée des métiers des services à la personne	61 rue du Lycée	Pont-l'Abbé	47.8608742	-4.23355055	320	LYCEE PROFESSIONNEL	29	53	14	29220	Finistère	Bretagne	Rennes
0300199D	Ecole maternelle Nadine Worms	4 rue Jacques Duclos	Alès	44.1249313	4.07386017	101	ECOLE MATERNELLE	30	76	11	30007	Gard	Occitanie	Montpellier
0311162V	Collège privé Sainte-Geneviève	5 place de la Mairie	Saint-Jory	43.7432632	1.37015986	340	COLLEGE	31	76	16	31490	Haute-Garonne	Occitanie	Toulouse
0311238C	Collège Jean Jaurès	1 chemin DES BOURDETTES	Colomiers	43.6068726	1.34007943	340	COLLEGE	31	76	16	31149	Haute-Garonne	Occitanie	Toulouse
0330437W	Ecole primaire	2 rue de la Merci	Bonnetan	44.8207664	-0.411755234	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33061	Gironde	Nouvelle-Aquitaine	Bordeaux
0331624L	Ecole maternelle Bousquet	52 RUE DU MAL DE LATTRE DE TASS	Bassens	44.90028	-0.513080299	101	ECOLE MATERNELLE	33	75	04	33032	Gironde	Nouvelle-Aquitaine	Bordeaux
0340489X	Ecole élémentaire Gambetta	20 rue des Soldats	Montpellier	43.6076622	3.87120938	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34172	Hérault	Occitanie	Montpellier
0340518D	Ecole élémentaire Eugène Pottier - Jean Sibelius	120 rue de la Jalade	Montpellier	43.6265984	3.86449933	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34172	Hérault	Occitanie	Montpellier
0340697Y	Ecole élémentaire les Chênes Verts	108  AVENUE DE GALARGUES	Saint-Hilaire-de-Beauvoir	43.7566681	4.01272058	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34263	Hérault	Occitanie	Montpellier
0340798H	Ecole élémentaire Louise Weiss	255 rue des Ecoles	Vailhauquès	43.6709709	3.71799994	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34320	Hérault	Occitanie	Montpellier
0340800K	Ecole élémentaire Edmond Teissier	Rue des Ecoles	Valflaunès	43.8001709	3.87434983	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34322	Hérault	Occitanie	Montpellier
0340966R	Ecole primaire	Rue des Ecoles	Montpeyroux	43.6980209	3.50232029	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34173	Hérault	Occitanie	Montpellier
0341190J	Ecole primaire privée de Puységur	25 avenue Pierre Sirven	Montagnac	43.4811172	3.48132992	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34162	Hérault	Occitanie	Montpellier
0360664B	Ecole primaire	7 place de la Mairie	Pruniers	46.7894173	2.04845977	151	ECOLE DE NIVEAU ELEMENTAIRE	36	24	18	36169	Indre	Centre-Val de Loire	Orléans-Tours
0360817T	Ecole technique privée Centre de Formation Berrichonne Football	Route de Velles	Châteauroux	46.7825432	1.69485974	320	LYCEE PROFESSIONNEL	36	24	18	36044	Indre	Centre-Val de Loire	Orléans-Tours
0400515T	Ecole élémentaire	\N	Peyre	43.5695114	-0.548197627	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40223	Landes	Nouvelle-Aquitaine	Bordeaux
0400750Y	Lycée d'enseignement général et technologique agricole de Oeyreluy - Dax	2915 route des barthes	Oeyreluy	43.6588097	-1.06855869	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	40	75	04	40207	Landes	Nouvelle-Aquitaine	Bordeaux
0400800C	Maison Familiale Rurale de Oeyreluy	DOMAINE DE PONTCHEVRON	Oeyreluy	43.6692467	-1.08961415	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	40	75	04	40207	Landes	Nouvelle-Aquitaine	Bordeaux
0421262U	Ecole primaire privée Les Blés	24 place	Maringes	45.6609154	4.35293055	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42138	Loire	Auvergne-Rhône-Alpes	Lyon
0421404Y	Ecole primaire privée Saint Joseph	7 bis rue des Verchères	Sury-le-Comtal	45.5351906	4.18584061	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42304	Loire	Auvergne-Rhône-Alpes	Lyon
0422005B	Ecole primaire	Chemin des Côtes	Saint-Germain-Laval	45.8274841	4.01199961	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42230	Loire	Auvergne-Rhône-Alpes	Lyon
0430086K	Collège privé Saint Joseph	RUE CHAUSSADE	Saint-Julien-Chapteuil	45.0350227	4.06170034	340	COLLEGE	43	84	06	43200	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0430864F	Ecole Maternelle	Route de la Bâtie	Sainte-Sigolène	45.2406578	4.23783064	101	ECOLE MATERNELLE	43	84	06	43224	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0441210B	Ecole primaire privée Saint Louis de Gonzague	\N	Joué-sur-Erdre	47.497303	-1.41732943	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44077	Loire-Atlantique	Pays de la Loire	Nantes
0450163H	Ecole primaire	1 route de Villemurlin	Viglain	47.7277069	2.30214953	151	ECOLE DE NIVEAU ELEMENTAIRE	45	24	18	45336	Loiret	Centre-Val de Loire	Orléans-Tours
0450280K	Ecole élémentaire des Cordiers	14 rue des Cordiers	Orléans	47.902729	1.92103028	151	ECOLE DE NIVEAU ELEMENTAIRE	45	24	18	45234	Loiret	Centre-Val de Loire	Orléans-Tours
0450299F	Ecole élémentaire d'application Louis Guilloux	28 faubourg Saint Jean	Orléans	47.9051514	1.8934505	153	ECOLE ELEMENTAIRE D APPLICATION	45	24	18	45234	Loiret	Centre-Val de Loire	Orléans-Tours
0573793N	L'ÉCOL'O'THÈQUE	13 rue DES MAGES	Orny	\N	\N	101	ECOLE MATERNELLE	57	44	12	57527	Moselle	Grand Est	Nancy-Metz
0460210D	Ecole élémentaire publique	Bourg	Marcilhac-sur-Célé	44.5543747	1.77163064	151	ECOLE DE NIVEAU ELEMENTAIRE	46	76	16	46183	Lot	Occitanie	Toulouse
0501345R	Ecole privée Sainte Marie	4 rue de l'Eglise	La Haye	49.291069	-1.54288983	151	ECOLE DE NIVEAU ELEMENTAIRE	50	28	05	50236	Manche	Normandie	Caen
0501518D	Ecole maternelle	6 route du Bourg Neuf	Chérencé-le-Héron	48.8009987	-1.19529068	101	ECOLE MATERNELLE	50	28	05	50130	Manche	Normandie	Caen
0530207M	Ecole maternelle	11 boulevard Pasteur	Ernée	48.2966003	-0.931830287	101	ECOLE MATERNELLE	53	52	17	53096	Mayenne	Pays de la Loire	Nantes
0530809S	Ecole maternelle albert Jacquard	Rue Albert Jacquard	Le Genest-Saint-Isle	48.0779686	-0.829466999	101	ECOLE MATERNELLE	53	52	17	53103	Mayenne	Pays de la Loire	Nantes
0551005U	Section d'enseignement professionnel du Lycée polyvalent Alfred Kastler	1 rue DE MUNNERSTADT	Stenay	49.4864082	5.19812965	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	55	44	12	55502	Meuse	Grand Est	Nancy-Metz
0572351W	Section d'enseignement général et professionnel adapté du Collège Philippe de Vigneulles	20 RUE DES DEPORTES	Metz	49.0966263	6.19931936	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	57	44	12	57463	Moselle	Grand Est	Nancy-Metz
0600539K	Ecole maternelle	38 bis grande rue	Velennes	49.4725151	2.18075013	101	ECOLE MATERNELLE	60	32	20	60663	Oise	Hauts-de-France	Amiens
0600565N	Ecole primaire des Marronniers	10 rue DES MARRONNIERS	Cauffry	49.3197746	2.44365001	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60134	Oise	Hauts-de-France	Amiens
0601032W	Ecole primaire André Masson	6 rue Edmond Richard	Balagny-sur-Thérain	49.2968216	2.34101963	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60044	Oise	Hauts-de-France	Amiens
0641607Z	ECOLE PRIMAIRE PUBLIQUE VICTOR DURUY	136 boulevard Kennedy	Biarritz	43.4616203	-1.55023086	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64122	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0660393U	Ecole élémentaire Simone Veil	Place du Général d'Aoust	Peyrestortes	42.7527924	2.85310245	151	ECOLE DE NIVEAU ELEMENTAIRE	66	76	11	66138	Pyrénées-Orientales	Occitanie	Montpellier
0681369U	Collège Emile Zola	30 rue de Pfastatt	Kingersheim	47.7870865	7.32929039	340	COLLEGE	68	44	15	68166	Haut-Rhin	Grand Est	Strasbourg
0681744B	Ecole Elémentaire  La Vigne en Fleurs	5 place de Gaulle	Eguisheim	48.0436363	7.30392933	151	ECOLE DE NIVEAU ELEMENTAIRE	68	44	15	68078	Haut-Rhin	Grand Est	Strasbourg
0690250X	Lycée d'enseignement général et technologique agricole de Lyon - Dardilly	26  CHEMIN DE LA BRUYERE	Dardilly	45.8137627	4.76842976	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	69	84	10	69072	Rhône	Auvergne-Rhône-Alpes	Lyon
0690863N	Ecole élémentaire	376 rue du 11 Novembre 1918	Val d'Oingt	45.9191399	4.58226013	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69024	Rhône	Auvergne-Rhône-Alpes	Lyon
0691418S	Ecole primaire des Crêtes	500 route des Crêtes	Lachassagne	45.9263687	4.68644953	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69106	Rhône	Auvergne-Rhône-Alpes	Lyon
0693150Z	Ecole primaire Georges Brassens	1254 route de Montmelas	Gleizé	46.0011864	4.70421982	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69092	Rhône	Auvergne-Rhône-Alpes	Lyon
0693316E	Ecole privée multilingue Ombrosa	95 quai Clémenceau	Caluire-et-Cuire	45.8060112	4.84545994	302	LYCEE D ENSEIGNEMENT GENERAL	69	84	10	69034	Rhône	Auvergne-Rhône-Alpes	Lyon
0760713M	Ecole élémentaire Joseph Devaux	Rue Joseph Devaux	La Chaussée	49.8210411	1.1198101	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76173	Seine-Maritime	Normandie	Rouen
0760715P	Ecole élémentaire	2 impasse de la Cavée	Crosville-sur-Scie	49.8211632	1.09031987	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76205	Seine-Maritime	Normandie	Rouen
0761562K	Ecole élémentaire	11 rue DE L'YERES	Sept-Meules	49.9543724	1.4208101	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76671	Seine-Maritime	Normandie	Rouen
0761763D	Ecole maternelle Marie Curie	Rue Paul Bazin	Dieppe	49.9230995	1.10188985	101	ECOLE MATERNELLE	76	28	21	76217	Seine-Maritime	Normandie	Rouen
0762015C	Ecole primaire privée la Providence-Nazareth	62 rue de la République	Eu	50.047966	1.42316949	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76255	Seine-Maritime	Normandie	Rouen
0762999X	Ecole primaire Martainville	Rue des Ecoles	Sassetot-le-Mauconduit	49.8023987	0.529720008	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76663	Seine-Maritime	Normandie	Rouen
0763307G	Ecole élémentaire Edouard Vaillant	106 rue EDOUARD VAILLANT	Le Havre	49.5160027	0.17592001	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76351	Seine-Maritime	Normandie	Rouen
0781183M	Ecole maternelle Le Gandouget	03 RUE DES JONQUILLES	Elancourt	48.7760544	1.9456104	101	ECOLE MATERNELLE	78	11	25	78208	Yvelines	Ile-de-France	Versailles
0781851N	Ecole maternelle Val Joyeux	1 avenue de l'Image Notre Dame	Villepreux	48.8178482	2.00054955	101	ECOLE MATERNELLE	78	11	25	78674	Yvelines	Ile-de-France	Versailles
0810529K	Ecole primaire	\N	Saint-Germain-des-Prés	43.5621033	2.06497931	151	ECOLE DE NIVEAU ELEMENTAIRE	81	76	16	81251	Tarn	Occitanie	Toulouse
0811324Z	Lycée professionnel Marie-Antoinette Riess	Rue du Lycée	Mazamet	43.5018501	2.38078976	320	LYCEE PROFESSIONNEL	81	76	16	81163	Tarn	Occitanie	Toulouse
0820781D	Ecole primaire	\N	Vazerac	44.1907463	1.28538966	151	ECOLE DE NIVEAU ELEMENTAIRE	82	76	16	82189	Tarn-et-Garonne	Occitanie	Toulouse
0820904M	Section enseignement général et technologique du lycée professionnel privé Skhole d'Art	7 ALLÉE DE L EMPEREUR	Montauban	44.0162468	1.35627043	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	82	76	16	82121	Tarn-et-Garonne	Occitanie	Toulouse
0830257D	Ecole maternelle Font-Pré	290 avenue Edouard Branly	Toulon	43.1323318	5.96881008	101	ECOLE MATERNELLE	83	93	23	83137	Var	Provence-Alpes-Côte d'Azur	Nice
0830526W	Ecole primaire Les Borrels	\N	Hyères	43.1583061	6.15726995	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83069	Var	Provence-Alpes-Côte d'Azur	Nice
0840669W	Ecole primaire Elsa Triolet	Boulevard Jean Cocteau	Sorgues	44.0176544	4.86251974	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84129	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0850918L	école primaire privée saint sauveur	25 rue de la Mairie	Rives de l'Yon	46.5832863	-1.3690604	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85213	Vendée	Pays de la Loire	Nantes
0851238J	Maison Familiale Rurale de Saint-Jean-de-Monts	RUE DE LA CHESSELIERE	Saint-Jean-de-Monts	46.7926216	-2.04797935	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	85	52	17	85234	Vendée	Pays de la Loire	Nantes
0910240S	Ecole élémentaire Les Grands Godeaux	28 rue Frédéric Koelher	Yerres	48.708271	2.48884988	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91691	Essonne	Ile-de-France	Versailles
0911475J	Ecole élémentaire Les Myrtilles	2 place de l'Ecole les Myrtilles	Mennecy	48.5470009	2.42610931	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91386	Essonne	Ile-de-France	Versailles
0912335U	Ecole élémentaire Léonard de Vinci	11 rue Léonard de Vinci	Massy	48.7221947	2.26686001	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91377	Essonne	Ile-de-France	Versailles
0940486T	Ecole maternelle Blancs Bouleaux	22 boulevard Pasteur	Fresnes	48.7589226	2.31781054	101	ECOLE MATERNELLE	94	11	24	94034	Val-de-Marne	Ile-de-France	Créteil
0940731J	Ecole maternelle Jean Jaurès	1 rue LOUISE ADELAIDE	Villiers-sur-Marne	48.8232994	2.54956007	101	ECOLE MATERNELLE	94	11	24	94079	Val-de-Marne	Ile-de-France	Créteil
0942407F	Lycée professionnel privé CFI	5 place de la gare des Saules	Orly	48.745472	2.41664958	320	LYCEE PROFESSIONNEL	94	11	24	94054	Val-de-Marne	Ile-de-France	Créteil
7200312B	Ecole primaire Velone Orneto bilingue LCC	Hameau de Carbonaccio	Velone-Orneto	42.4006615	9.48031044	151	ECOLE DE NIVEAU ELEMENTAIRE	2B	94	27	2B340	Haute-Corse	Corse	Corse
9830008S	Collège Raymond Vauthier	30 BIS ROUTE PROVINCIALE 3	Poindimie	\N	\N	340	COLLEGE	988	00	40	98822	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9830398R	Ecole primaire de l'Île Ouen	ILE OUEN	Mont-dore	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98817	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9830437H	Ecole primaire 2 James Paddon	12 VOIE URBAINE LOT ADMINISTRATIF	Paita	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98821	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9840316W	Ecole maternelle Taharu'u	PK 39 2  C-MT  PAPARA	Papara	\N	\N	101	ECOLE MATERNELLE	987	00	41	98734	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
0930343T	Ecole élémentaire Paul Langevin	28 rue Charles Auray	Pantin	48.8899879	2.41500068	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93055	Seine-Saint-Denis	Ile-de-France	Créteil
0930518H	Ecole maternelle Edouard Vaillant	2 rue de Rome	Bobigny	48.9104118	2.46806979	101	ECOLE MATERNELLE	93	11	24	93008	Seine-Saint-Denis	Ile-de-France	Créteil
0930704K	Ecole élémentaire Joliot-Curie	3 avenue Montgolfier	Montfermeil	48.9032898	2.58339	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93047	Seine-Saint-Denis	Ile-de-France	Créteil
0931247A	Ecole maternelle Louis Pasteur	31 rue Victor Hugo	Bobigny	48.9007683	2.43937969	101	ECOLE MATERNELLE	93	11	24	93008	Seine-Saint-Denis	Ile-de-France	Créteil
0351907H	Lycée général et technologique René Descartes	Chemin DE RONDE	Rennes	48.0883942	-1.64287937	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	35	53	14	35238	Ille-et-Vilaine	Bretagne	Rennes
0770150V	Ecole maternelle	8 route de Château Landon	Mondreville	48.1426048	2.60969019	101	ECOLE MATERNELLE	77	11	24	77297	Seine-et-Marne	Ile-de-France	Créteil
0770192R	Ecole élémentaire Joliot-Curie	5 rue des Primevères	Mitry-Mory	48.9555893	2.60324049	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77294	Seine-et-Marne	Ile-de-France	Créteil
0770343E	Ecole primaire Joseph-Paul Meslé	Rue Roubineau	Chamigny	48.9738274	3.15052056	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77078	Seine-et-Marne	Ile-de-France	Créteil
0770381W	Ecole élémentaire internationale	Rue de Verdun	Fontainebleau	48.410923	2.69460034	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77186	Seine-et-Marne	Ile-de-France	Créteil
0771146C	Ecole maternelle Guy Mocquet	Rue du 8 Mai 1945	Mitry-Mory	48.9793129	2.62467003	101	ECOLE MATERNELLE	77	11	24	77294	Seine-et-Marne	Ile-de-France	Créteil
0771458S	Ecole élémentaire Jean de Lamartine	Lotissement des Jondelles	Roissy-en-Brie	48.7935104	2.6673398	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77390	Seine-et-Marne	Ile-de-France	Créteil
0771576V	Ecole maternelle Michel Lefèvre	Route Cossée	Courtry	48.9114342	2.59417963	101	ECOLE MATERNELLE	77	11	24	77139	Seine-et-Marne	Ile-de-France	Créteil
0771906D	Ecole élémentaire Les Tilleuls	43 allée Voltaire	Noisiel	48.8454971	2.61898017	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77337	Seine-et-Marne	Ile-de-France	Créteil
0251994G	Lycée polyvalent Germaine Tillion	1 bis rue Donzelot	Montbéliard	47.4964294	6.80998087	306	LYCEE POLYVALENT	25	27	03	25388	Doubs	Bourgogne-Franche-Comté	Besançon
0460080M	Ecole primaire  Roger Laval	Bourg	Saint-Sozy	44.8923492	1.56641948	151	ECOLE DE NIVEAU ELEMENTAIRE	46	76	16	46293	Lot	Occitanie	Toulouse
0910658W	Ecole maternelle Paul Langevin	9 chemin de la Motte Samson	Palaiseau	48.7237396	2.24176002	101	ECOLE MATERNELLE	91	11	25	91477	Essonne	Ile-de-France	Versailles
9720410N	Ecole primaire privée Notre-Dame de La Delivrande	Bourg	Le Morne-Rouge	14.776082	-61.1362114	151	ECOLE DE NIVEAU ELEMENTAIRE	972	02	31	97218	Martinique	Martinique	Martinique
0010982M	Ecole élémentaire Le Lion	2 rue des Ecoles	Saint-Genis-Pouilly	46.2444	6.02957058	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01354	Ain	Auvergne-Rhône-Alpes	Lyon
0011071J	Collège Le Grand Cèdre	Route DE VERGONGEAT	Coligny	46.3833313	5.34877062	340	COLLEGE	01	84	10	01108	Ain	Auvergne-Rhône-Alpes	Lyon
0410483C	Ecole primaire Jacques PREVERT	Place des Ecoles	Thésée	47.3240166	1.30908954	151	ECOLE DE NIVEAU ELEMENTAIRE	41	24	18	41258	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0421316C	Ecole primaire privée Sainte Marie La Grand'Grange	15 route du Coin	Saint-Chamond	45.4718971	4.52187061	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42207	Loire	Auvergne-Rhône-Alpes	Lyon
0430854V	Collège La Fayette	Plateau SAINT LAURENT	Brioude	45.2899628	3.38143039	340	COLLEGE	43	84	06	43040	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0511214T	Collège Trois Fontaines	247 rue PAUL VAILLANT COUTURIER	Reims	49.2765388	4.01000977	340	COLLEGE	51	44	19	51454	Marne	Grand Est	Reims
0763226U	Ecole élémentaire Francis Carco	23 rue Francis Carco	Le Havre	49.5280418	0.115470126	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76351	Seine-Maritime	Normandie	Rouen
0801333P	Ecole primaire Albert Schweitzer B	Rue du Docteur Schweitzer	Amiens	49.9097252	2.31250024	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80021	Somme	Hauts-de-France	Amiens
0881640E	École Élémentaire	Rue des Curtilles	Châtenois	48.304882	5.8324995	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88095	Vosges	Grand Est	Nancy-Metz
0801212H	Collège privé La Providence	146 boulevard DE SAINT QUENTIN	Amiens	49.878109	2.3008604	340	COLLEGE	80	32	20	80021	Somme	Hauts-de-France	Amiens
0880956L	École Élémentaire	4 rue de la Mairie	Belval	48.4090309	7.05259037	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88053	Vosges	Grand Est	Nancy-Metz
0922085S	Ecole maternelle publique Ancien Couvent	21 rue Gutenberg	Puteaux	48.8828735	2.22834992	101	ECOLE MATERNELLE	92	11	25	92062	Hauts-de-Seine	Ile-de-France	Versailles
0331187L	Ecole primaire	67 rue Jean Jaurès	Saint-Mariens	45.1172066	-0.402654409	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33439	Gironde	Nouvelle-Aquitaine	Bordeaux
0332452L	Ecole maternelle Pablo Picasso	1 rue Alfred de Musset	Talence	44.7892914	-0.590320706	101	ECOLE MATERNELLE	33	75	04	33522	Gironde	Nouvelle-Aquitaine	Bordeaux
0332937N	Section d'enseignement professionnel du Lycée polyvalent Jean Monnet	40  AVENUE HENRI BRULLE	Libourne	44.9060059	-0.240677342	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	33	75	04	33243	Gironde	Nouvelle-Aquitaine	Bordeaux
0342332A	Ecole élémentaire Arc en Ciel	260 route d'Usclas	Paulhan	43.5369682	3.46298051	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34194	Hérault	Occitanie	Montpellier
0350270D	Ecole élémentaire publique de Goven	8 rue de Lampatre	Goven	48.0049133	-1.84884036	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35123	Ille-et-Vilaine	Bretagne	Rennes
0360819V	Section d'enseignement professionnel du Lycée polyvalent privé Sainte Solange	1 place de la Gare	Châteauroux	46.8106155	1.69823933	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	36	24	18	36044	Indre	Centre-Val de Loire	Orléans-Tours
0370426M	Ecole primaire	16 rue des Lavandières	Rivière	47.1455994	0.277059942	151	ECOLE DE NIVEAU ELEMENTAIRE	37	24	18	37201	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0420440A	Ecole primaire Bourg	120 rue de l'école	Précieux	45.5869102	4.15027666	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42180	Loire	Auvergne-Rhône-Alpes	Lyon
0421488P	Section d'enseignement général et professionnel adapté du Collège Jacques Prévert	Rue RACINE	Andrézieux-Bouthéon	45.5270157	4.2658596	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	42	84	10	42005	Loire	Auvergne-Rhône-Alpes	Lyon
0451387N	Section d'enseignement général et professionnel adapté du Collège Neuville Aux Bois	10 rue de Ruau	Neuville-aux-Bois	48.0660706	2.05593944	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	45	24	18	45224	Loiret	Centre-Val de Loire	Orléans-Tours
0480253P	Ecole primaire du Lion	Quartier du Luxembourg	Balsièges	44.4872894	3.46069217	151	ECOLE DE NIVEAU ELEMENTAIRE	48	76	11	48016	Lozère	Occitanie	Montpellier
0490857R	Collège privé Saint François	Rue DES FONTAINES	Les Hauts-d'Anjou	47.6632271	-0.561562419	340	COLLEGE	49	52	17	49080	Maine-et-Loire	Pays de la Loire	Nantes
0520727H	Lycée d'enseignement général et technologique agricole de Chaumont	Rue du Lycée	Chamarandes-Choignes	48.1025276	5.16311932	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	52	44	19	52125	Haute-Marne	Grand Est	Reims
0520741Y	Lycée professionnel agricole de Fayl-Billot	5  RUELLE AUX LOUPS	Fayl-Billot	47.7811928	5.60588026	320	LYCEE PROFESSIONNEL	52	44	19	52197	Haute-Marne	Grand Est	Reims
0550682T	Ecole primaire publique Michèle Drouet	64 rue Bancelin	Les Islettes	49.109066	5.0043807	151	ECOLE DE NIVEAU ELEMENTAIRE	55	44	12	55253	Meuse	Grand Est	Nancy-Metz
0595773E	Maison Familiale Rurale de Haussy	14 rue AUGUSTE DELCROIX	Haussy	50.2212982	3.47493935	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	59	32	09	59289	Nord	Hauts-de-France	Lille
0600118C	Ecole maternelle	56 rue Diogène Maillart	Lachaussée-du-Bois-d'Ecu	49.5575562	2.1713295	101	ECOLE MATERNELLE	60	32	20	60336	Oise	Hauts-de-France	Amiens
0600226V	Ecole primaire	3 rue des Ecoles	Saint-Crépin-Ibouvillers	49.2630959	2.07309008	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60570	Oise	Hauts-de-France	Amiens
0600286K	Ecole élémentaire	3 rue de l'Ecole	La Hérelle	49.591259	2.41441011	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60311	Oise	Hauts-de-France	Amiens
0601694R	Ecole maternelle	26 A rue Saint-Antoine	Tricot	49.5589485	2.58418036	101	ECOLE MATERNELLE	60	32	20	60643	Oise	Hauts-de-France	Amiens
0623320X	Section d'enseignement général et professionnel adapté du Collège Angellier	13 rue CAZIN	Boulogne-sur-Mer	50.7209473	1.60902035	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	62	32	09	62160	Pas-de-Calais	Hauts-de-France	Lille
0642040V	Ecole primaire privée ikastola Ametza	40 avenue du Labourd	Saint-Pierre-d'Irube	43.4755173	-1.45576262	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64496	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0642067Z	ECOLE ELEMENTAIRE PUBLIQUE PAUL FORT	Rue du Taa	Lescar	43.3353806	-0.436762244	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64335	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0651048L	ECOLE MATERNELLE JEAN BOUSQUET	Rue Maurice Ravel	Séméac	43.2258568	0.100679822	101	ECOLE MATERNELLE	65	76	16	65417	Hautes-Pyrénées	Occitanie	Toulouse
0672905U	Ecole élémentaire privée ABCM Zweispachigkeit	50 rue Ettore Bugatti	Haguenau	48.7999306	7.79886961	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67180	Bas-Rhin	Grand Est	Strasbourg
0680706Y	Ecole élémentaire intercommunale	Rue du Moulin	Kirchberg	47.7977219	6.95877075	151	ECOLE DE NIVEAU ELEMENTAIRE	68	44	15	68167	Haut-Rhin	Grand Est	Strasbourg
0681045S	Ecole maternelle George Sand	14 rue George Sand	Mulhouse	47.733036	7.3078804	101	ECOLE MATERNELLE	68	44	15	68224	Haut-Rhin	Grand Est	Strasbourg
0681510X	Ecole primaire Jean Geiler	4 rue des Tilleuls	Kaysersberg Vignoble	48.1474648	7.25440931	151	ECOLE DE NIVEAU ELEMENTAIRE	68	44	15	68162	Haut-Rhin	Grand Est	Strasbourg
0681879Y	Section d'enseignement professionnel du Lycée Martin Schongauer	25 rue Voltaire	Colmar	48.0698395	7.3521204	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	68	44	15	68066	Haut-Rhin	Grand Est	Strasbourg
0690553B	Lycée technologique privé Notre Dame	72  RUE DES JARDINIERS	Villefranche-sur-Saône	45.9889107	4.72052002	301	LYCEE D ENSEIGNEMENT TECHNOLOGIQUE	69	84	10	69264	Rhône	Auvergne-Rhône-Alpes	Lyon
0691368M	Ecole élémentaire Le Courlis Cendré	Route de Berthoud	Taluyers	45.6374168	4.71704006	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69241	Rhône	Auvergne-Rhône-Alpes	Lyon
0692078J	Ecole primaire privée Notre Dame du Bon Conseil	23 rue de la Camille	Oullins	45.7137833	4.80110025	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69149	Rhône	Auvergne-Rhône-Alpes	Lyon
0694363T	Ecole élémentaire privée CERENE	62 rue Montgolfier	Lyon 6e  Arrondissement	45.7718086	4.84900999	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69386	Rhône	Auvergne-Rhône-Alpes	Lyon
0721111S	Ecole maternelle privée Sainte Marie	10  RUE PIERRE BELON	Le Mans	48.006752	0.205149844	101	ECOLE MATERNELLE	72	52	17	72181	Sarthe	Pays de la Loire	Nantes
0740283F	Institut des sciences de l'environnement et des territoires d'Annecy - site de Poisy	895 ROUTE ECOLE DE L'AGRICULTURE	Poisy	45.9266129	6.07239962	320	LYCEE PROFESSIONNEL	74	84	08	74213	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0741236S	Maison Familiale Rurale des Alluaz - Bonne	1154 ROUTE DES ALLUAZ	Bonne	46.1694794	6.33435011	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	74	84	08	74040	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0741288Y	Section d'enseignement général et professionnel adapté du Collège de Varens	361  AVENUE PAUL ELUARD	Passy	45.9145164	6.70071077	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	74	84	08	74208	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0753982W	Collège privé La Salle - Notre-Dame de La Gare	20 rue DE DOMREMY	Paris 13e  Arrondissement	48.8301964	2.37260985	340	COLLEGE	75	11	01	75113	Paris	Ile-de-France	Paris
0760436L	Ecole élémentaire Larpin	41 rue du Docteur Caron	Bihorel	49.4576836	1.1159296	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76095	Seine-Maritime	Normandie	Rouen
0760754G	Ecole élémentaire	66 route de Villequier	Port-Jérôme-sur-Seine	49.5030746	0.628919661	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76476	Seine-Maritime	Normandie	Rouen
0761343X	Lycée polyvalent privé la Châtaigneraie	2 rue Charles Scherer	Le Mesnil-Esnard	49.4145164	1.14710999	306	LYCEE POLYVALENT	76	28	21	76429	Seine-Maritime	Normandie	Rouen
0762118P	Ecole primaire	8 place de la Mairie	Saint-Laurent-de-Brèvedent	49.5333405	0.259310454	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76596	Seine-Maritime	Normandie	Rouen
0762413K	Ecole primaire	Place Paul Levieux	Allouville-Bellefosse	49.5973701	0.676549792	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76001	Seine-Maritime	Normandie	Rouen
0763346Z	Ecole élémentaire Aragon - Prévert	3 rue Gilbert Grenier	Le Houlme	49.5054779	1.03759992	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76366	Seine-Maritime	Normandie	Rouen
0763489E	Ecole maternelle privé Montessori Le Havre	208 bis rue Irène Joliot-Curie	Le Havre	49.5157471	0.105600514	101	ECOLE MATERNELLE	76	28	21	76351	Seine-Maritime	Normandie	Rouen
0771217E	Collège privé Campus Sainte Thérèse	Avenue ERASME - ROND PT DE L'EUROPE	Ozoir-la-Ferrière	48.7579994	2.69494939	340	COLLEGE	77	11	24	77350	Seine-et-Marne	Ile-de-France	Créteil
0570069R	Collège Jules Lagneau	3 rue SAINT VINCENT DE PAUL	Metz	49.1200752	6.19758987	340	COLLEGE	57	44	12	57463	Moselle	Grand Est	Nancy-Metz
0440579R	Ecole primaire La Sarmentille	2 rue des Ecoles	Le Landreau	47.2026672	-1.3060894	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44079	Loire-Atlantique	Pays de la Loire	Nantes
0810674T	Ecole primaire Louis Germain	1 boulevard de la Mairie	Pont-de-Larn	43.5037804	2.40327024	151	ECOLE DE NIVEAU ELEMENTAIRE	81	76	16	81209	Tarn	Occitanie	Toulouse
0770933W	Lycée général et technologique Jacques Amyot	6 bis rue Michelet	Melun	48.5461578	2.65958023	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	77	11	24	77288	Seine-et-Marne	Ile-de-France	Créteil
0740040S	Collège André Corbet	186 route DE TANINGES	Samoëns	46.0857239	6.72058964	340	COLLEGE	74	84	08	74258	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
9830155B	Ecole primaire privée Saint Joseph - Enseignement catholique	ROUTE SAINT-JOSEPH	Ouvéa	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98820	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9830233L	Ecole primaire privée CSC de Bondé - Enseignement catholique	ROUTE DE BONDE	Ouegoa	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98819	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9870028S	Ecole primaire privée de Ahoa	\N	Uvea	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	986	00	42	98613	Wallis et Futuna	TOM et Collectivités territoriales	Wallis et Futuna
0500153V	Collège privé Notre-Dame	10 avenue Maréchal Foch	Sourdeval	48.7241096	-0.925959468	340	COLLEGE	50	28	05	50582	Manche	Normandie	Caen
0381150U	Ecole primaire	104 allée du vallons	Saint-Nizier-du-Moucherotte	45.1696777	5.62926006	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38433	Isère	Auvergne-Rhône-Alpes	Grenoble
0382246K	Ecole primaire Criel	28 rue de Criel	Voiron	45.3574409	5.58413029	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38563	Isère	Auvergne-Rhône-Alpes	Grenoble
0410840R	Ecole primaire	Route de Blois	Moisy	47.9135551	1.31423056	151	ECOLE DE NIVEAU ELEMENTAIRE	41	24	18	41141	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0600223S	Ecole maternelle	22 rue des Sources	Monts	49.216774	2.01602936	101	ECOLE MATERNELLE	60	32	20	60427	Oise	Hauts-de-France	Amiens
0010566K	Ecole primaire	Rue de la Mairie	Arandas	45.8965836	5.48589039	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01013	Ain	Auvergne-Rhône-Alpes	Lyon
0110577T	Ecole primaire	22 route de Salsigne	Villardonnel	43.3343964	2.31225967	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11413	Aude	Occitanie	Montpellier
0110637H	Ecole primaire	Avenue Termenès	Talairan	43.0520592	2.66271996	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11386	Aude	Occitanie	Montpellier
0190104K	Ecole primaire	\N	Yssandon	45.2094421	1.37760019	151	ECOLE DE NIVEAU ELEMENTAIRE	19	75	22	19289	Corrèze	Nouvelle-Aquitaine	Limoges
0221239C	Ecole primaire privée Saint Joseph	14 rue de Néal	Plouasne	48.3000221	-2.01041031	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22208	Côtes-d'Armor	Bretagne	Rennes
0281038B	Collège Mozart	Rue André Boxhorn	Anet	48.8552399	1.44684947	340	COLLEGE	28	24	18	28007	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0341233F	Ecole élémentaire privée Saint Genies	2 rue de l'Eglise	Saint-Jean-de-Fos	43.701622	3.55252051	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34267	Hérault	Occitanie	Montpellier
0370035M	Lycée général Descartes	10 rue des Minimes	Tours	47.3913422	0.689530313	302	LYCEE D ENSEIGNEMENT GENERAL	37	24	18	37261	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0371403Z	Collège René Cassin	Avenue Jean Mermoz	Ballan-Miré	47.3437271	0.612689435	340	COLLEGE	37	24	18	37018	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0400307S	Ecole primaire	393 route Amou	Nassiet	43.6007423	-0.683349669	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40203	Landes	Nouvelle-Aquitaine	Bordeaux
0400735G	Ecole primaire	193 route des Ecoles	Bégaar	43.8249245	-0.850330174	151	ECOLE DE NIVEAU ELEMENTAIRE	40	75	04	40031	Landes	Nouvelle-Aquitaine	Bordeaux
0421238T	Ecole primaire privée Saint Just en Doizieux	21 route	Doizieux	45.4270973	4.58699942	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42085	Loire	Auvergne-Rhône-Alpes	Lyon
0450061X	Collège Alfred de Musset	Route du Pont	Patay	48.0522079	1.69507051	340	COLLEGE	45	24	18	45248	Loiret	Centre-Val de Loire	Orléans-Tours
0591840E	Ecole primaire	205 route de Cassel	Merckeghem	50.8605347	2.29760027	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59397	Nord	Hauts-de-France	Lille
0601048N	Ecole primaire de la Mare du Bois	314 rue de la Mare du Bois	Morangles	49.1970329	2.29492021	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60429	Oise	Hauts-de-France	Amiens
0630396N	Ecole primaire	\N	Doranges	45.4067192	3.61552	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63137	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0630972P	Ecole primaire	Rue de la Mairie	Montpensier	46.0330276	3.22134972	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63240	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0811269P	Ecole primaire	\N	Garrigues	43.6956291	1.71680951	151	ECOLE DE NIVEAU ELEMENTAIRE	81	76	16	81102	Tarn	Occitanie	Toulouse
0130605M	Ecole élémentaire Pharo Catalans	Rue des Catalans	Marseille  7e  Arrondissement	43.2921371	5.35573053	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13207	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0132905M	Ecole maternelle Haïti	83 avenue d'Haïti	Marseille 12e  Arrondissement	43.2982597	5.41501665	101	ECOLE MATERNELLE	13	93	02	13212	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0133255T	Ecole élémentaire Santolines	Rue Robespierre	Saint-Cannat	43.6241455	5.29636002	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13091	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0270439F	Ecole primaire	380 route de Bourg Achard	Flancourt-Crescy-en-Roumois	49.332653	0.770129442	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27085	Eure	Normandie	Rouen
0600140B	Ecole élémentaire	5 rue de la Croix du Bellay	Hadancourt-le-Haut-Clocher	49.1861839	1.85476971	151	ECOLE DE NIVEAU ELEMENTAIRE	60	32	20	60293	Oise	Hauts-de-France	Amiens
0921097T	Ecole primaire privée Sainte Marie de La Providence	56 rue Edouard Vaillant	Levallois-Perret	48.8950768	2.29023981	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92044	Hauts-de-Seine	Ile-de-France	Versailles
0130280J	Ecole maternelle La Beauvalle	Avenue Pierre Brossolette	Aix-en-Provence	43.5226707	5.4427495	101	ECOLE MATERNELLE	13	93	02	13001	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0740733V	Ecole élémentaire publique Malagny VIRY	122 chemin des Ecoles	Viry	46.1364708	6.01095009	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74309	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0720512R	Ecole primaire	7 rue des Déportés	Assé-le-Boisne	48.3234024	-0.00833970122	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72011	Sarthe	Pays de la Loire	Nantes
0851566R	ECOLE PRIMAIRE JULES VERNE	6  RUE DE L'ESPERANCE	Chavagnes-en-Paillers	46.891468	-1.25462997	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85065	Vendée	Pays de la Loire	Nantes
0623033K	Ecole primaire Charlemagne	Boulevard des Etats-Unis	Béthune	50.5192451	2.6286304	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62119	Pas-de-Calais	Hauts-de-France	Lille
0861279Y	Ecole primaire Micromégas	4 rue Voltaire	Poitiers	46.5859756	0.378169656	151	ECOLE DE NIVEAU ELEMENTAIRE	86	75	13	86194	Vienne	Nouvelle-Aquitaine	Poitiers
0290320R	Collège La Tourelle	21  IMPASSE GAUGUIN	Quimper	47.9898033	-4.09567022	340	COLLEGE	29	53	14	29232	Finistère	Bretagne	Rennes
0752536Z	Collège Voltaire	101 avenue de la République	Paris 11e  Arrondissement	48.8635292	2.38451052	340	COLLEGE	75	11	01	75111	Paris	Ile-de-France	Paris
0831402Y	Ecole primaire Paul Barles	Route de Mazaugues	Saint-Maximin-la-Sainte-Baume	43.4449158	5.8601203	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83116	Var	Provence-Alpes-Côte d'Azur	Nice
0020046P	Collège de La Chesnoye	Avenue Charles de Gaulle	Saint-Gobain	49.59095	3.37798023	340	COLLEGE	02	32	20	02680	Aisne	Hauts-de-France	Amiens
0020052W	Lycée professionnel Colard Noël - Lycée des métiers du bâtiment et de l'hôtellerie	132 avenue de la République	Saint-Quentin	49.862999	3.30915999	320	LYCEE PROFESSIONNEL	02	32	20	02691	Aisne	Hauts-de-France	Amiens
0670901R	Ecole élémentaire publique Vieille Ile	28 boulevard Nessel	Haguenau	48.814518	7.78539991	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67180	Bas-Rhin	Grand Est	Strasbourg
0672225E	Ecole primaire	1 place de l'Eglise	Riedseltz	48.9928017	7.95268965	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67400	Bas-Rhin	Grand Est	Strasbourg
0752935H	Ecole Jeannine Manuel (Collège privé)	70 rue du Théatre	Paris 15e  Arrondissement	48.8477516	2.29088998	340	COLLEGE	75	11	01	75115	Paris	Ile-de-France	Paris
0741188P	Ecole primaire publique Les Primevères VALLEIRY	141 rue Paul Chautemps	Valleiry	46.1082687	5.96576023	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74288	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0830479V	Ecole primaire Marcel Aumeran	Quartier Saint Lazare	Le Plan-de-la-Tour	43.340786	6.54605961	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83094	Var	Provence-Alpes-Côte d'Azur	Nice
0022162P	Lycée d'enseignement général privé académie musicale de liesse	5 RUE DE LA PLUME AU VENT	Liesse-Notre-Dame	49.611248	3.80922961	302	LYCEE D ENSEIGNEMENT GENERAL	02	32	20	02430	Aisne	Hauts-de-France	Amiens
0120318F	Ecole élémentaire publique	\N	Gaillac-d'Aveyron	44.3551292	2.93053007	151	ECOLE DE NIVEAU ELEMENTAIRE	12	76	16	12107	Aveyron	Occitanie	Toulouse
0931219V	Collège Jean-Jacques Rousseau	24 rue EMILE AUGIER	Le Pré-Saint-Gervais	48.8834305	2.40070987	340	COLLEGE	93	11	24	93061	Seine-Saint-Denis	Ile-de-France	Créteil
0940038F	Collège Jean Charcot	Place du 8 Mai 1945	Joinville-le-Pont	48.8166275	2.46662021	340	COLLEGE	94	11	24	94042	Val-de-Marne	Ile-de-France	Créteil
0940121W	Lycée général et technologique d'Arsonval	65 rue DU PONT DE CRETEIL	Saint-Maur-des-Fossés	48.8031845	2.47315955	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	94	11	24	94068	Val-de-Marne	Ile-de-France	Créteil
0570851R	Ecole maternelle La Roseraie	2 rue de la Source	Sarrebourg	48.7323074	7.05287933	101	ECOLE MATERNELLE	57	44	12	57630	Moselle	Grand Est	Nancy-Metz
0952255K	Ecole 2D degré général privée Football Academy	64 rue des bouquinvilles	Eaubonne	48.9775467	2.27475309	302	LYCEE D ENSEIGNEMENT GENERAL	95	11	25	95203	Val-d'Oise	Ile-de-France	Versailles
0133351X	Collège Jean de La Fontaine	AVENUE CESAR BALDACCHINI	Gémenos	43.2886238	5.6204133	340	COLLEGE	13	93	02	13042	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0762132E	Collège Robespierre	20 avenue Jean Macé	Saint-Etienne-du-Rouvray	49.3965492	1.06779039	340	COLLEGE	76	28	21	76575	Seine-Maritime	Normandie	Rouen
0595668R	Ecole maternelle Elise Dussart	Rue Haute	Maubeuge	50.270031	3.94198012	101	ECOLE MATERNELLE	59	32	09	59392	Nord	Hauts-de-France	Lille
0595672V	Ecole maternelle Michelet	24 rue Pasteur	Tourcoing	50.7267609	3.16358948	101	ECOLE MATERNELLE	59	32	09	59599	Nord	Hauts-de-France	Lille
0920488F	Ecole maternelle publique Felix Pyat	12 rue Félix Pyat	Puteaux	48.8899078	2.23324013	101	ECOLE MATERNELLE	92	11	25	92062	Hauts-de-Seine	Ile-de-France	Versailles
0932485W	Ecole primaire Joséphine Baker	1-3 parvis Joséphine Baker	La Courneuve	48.9300079	2.3790195	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93027	Seine-Saint-Denis	Ile-de-France	Créteil
0950023J	Collège Henri Wallon	2 rue DU TIERS POT	Garges-lès-Gonesse	48.9676476	2.39946985	340	COLLEGE	95	11	25	95268	Val-d'Oise	Ile-de-France	Versailles
0300203H	Ecole élémentaire André Clavel	Place Albert Cabrière	Anduze	44.0562134	3.98602057	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30010	Gard	Occitanie	Montpellier
0300206L	Ecole élémentaire Jules Ferry	Rue Jules Ferry	Les Angles	43.9536781	4.77307987	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30011	Gard	Occitanie	Montpellier
0780032L	Collège Flora Tristan	595 rue Pasteur	Carrières-sous-Poissy	48.9379463	2.02182055	340	COLLEGE	78	11	25	78123	Yvelines	Ile-de-France	Versailles
0820715G	Ecole primaire Louis Aragon	Cité Issanchou rue 8 Mai 1946	Montauban	44.0326805	1.35224998	151	ECOLE DE NIVEAU ELEMENTAIRE	82	76	16	82121	Tarn-et-Garonne	Occitanie	Toulouse
0840413T	Ecole primaire Sénateur Béraud	180 place du Sénateur Béraud	Monteux	44.0366287	4.99916029	151	ECOLE DE NIVEAU ELEMENTAIRE	84	93	02	84080	Vaucluse	Provence-Alpes-Côte d'Azur	Aix-Marseille
0071441D	Lycée technologique privé CFAP	60 rue DE NARVIK	Guilherand-Granges	44.933075	4.87435055	301	LYCEE D ENSEIGNEMENT TECHNOLOGIQUE	07	84	08	07102	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0150415V	Ecole maternelle	Place de la République	Arpajon-sur-Cère	44.9007721	2.45802999	101	ECOLE MATERNELLE	15	84	06	15012	Cantal	Auvergne-Rhône-Alpes	Clermont-Ferrand
0401076C	Section d'enseignement du lycée polyvalent Jean Taris	Avenue J. DUPAYA	Peyrehorade	43.5490837	-1.0906105	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	40	75	04	40224	Landes	Nouvelle-Aquitaine	Bordeaux
0591359G	Ecole maternelle Grands Champs	Cité des Grands Champs	Haveluy	50.3478775	3.40456986	101	ECOLE MATERNELLE	59	32	09	59292	Nord	Hauts-de-France	Lille
0950643H	Ecole maternelle Jean de La Fontaine	Square des Sports	Gonesse	49.0018959	2.42637992	101	ECOLE MATERNELLE	95	11	25	95277	Val-d'Oise	Ile-de-France	Versailles
0951713W	Ecole maternelle Le Village	Place de Wendlingen	Saint-Leu-la-Forêt	49.0181961	2.2465806	101	ECOLE MATERNELLE	95	11	25	95563	Val-d'Oise	Ile-de-France	Versailles
0111055M	Ecole privée d'esthétique Art Création Beauté (Ecole second degré professionnel privée)	8 avenue Pierre Sémard	Carcassonne	43.3120232	1.94361949	320	LYCEE PROFESSIONNEL	11	76	11	11069	Aude	Occitanie	Montpellier
0910676R	Lycée polyvalent Clément Ader	37 bis rue G.ANTHONIOZ DE GAULL	Athis-Mons	48.7117043	2.3917098	306	LYCEE POLYVALENT	91	11	25	91027	Essonne	Ile-de-France	Versailles
0930154M	Ecole élémentaire Foch 1	73 rue Bernard Gante	Villemomble	48.8899879	2.50439024	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93077	Seine-Saint-Denis	Ile-de-France	Créteil
0931771V	Ecole primaire d'application Jules Verne	3 avenue Georges Pompidou	Les Pavillons-sous-Bois	48.914444	2.5008719	153	ECOLE ELEMENTAIRE D APPLICATION	93	11	24	93057	Seine-Saint-Denis	Ile-de-France	Créteil
0932054C	Ecole maternelle Etienne Dolet	2-4 rue Etienne Dolet	Rosny-sous-Bois	48.8766747	2.46797943	101	ECOLE MATERNELLE	93	11	24	93064	Seine-Saint-Denis	Ile-de-France	Créteil
0941117D	Ecole élémentaire les Noyers	35 rue de la République	Sucy-en-Brie	48.7786102	2.50940967	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94071	Val-de-Marne	Ile-de-France	Créteil
0941136Z	Ecole maternelle Pauline Kergomard	10 rue BENOIT MALON	Le Kremlin-Bicêtre	48.807373	2.35167003	101	ECOLE MATERNELLE	94	11	24	94043	Val-de-Marne	Ile-de-France	Créteil
0060932F	Ecole élémentaire La Corniche Fleurie	73 avenue de la Corniche Fleurie	Nice	43.6857758	7.20867014	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06088	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0190334K	Ecole primaire	10 rue de la Gare	Lagraulière	45.3515892	1.63994956	151	ECOLE DE NIVEAU ELEMENTAIRE	19	75	22	19100	Corrèze	Nouvelle-Aquitaine	Limoges
0230489G	Section d'enseignement général et professionnel adapté du Collège Raymond Loewy	1 place DE FILDERSTADT	La Souterraine	46.2402306	1.48505843	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	23	75	22	23176	Creuse	Nouvelle-Aquitaine	Limoges
0491591N	Ecole primaire privée Sainte Marie	3 rue des Marronniers	Loiré	47.6137199	-0.980780005	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49178	Maine-et-Loire	Pays de la Loire	Nantes
0501847L	Section d'enseignement général et professionnel adapté du collège Jacques Prévert	20 avenue Jean-François Millet	Coutances	49.0543594	-1.43059015	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	50	28	05	50147	Manche	Normandie	Caen
0721711U	Ecole primaire privée COURS JULES VERNE - ESPERANCE BANLIEUES	5 rue de BEL AIR	Le Mans	47.9689827	0.215823695	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72181	Sarthe	Pays de la Loire	Nantes
0830032J	Lycée Polyvalent de Lorgues Thomas Edison	1 RUE EMILE HERAUD	Lorgues	43.4929237	6.35594034	306	LYCEE POLYVALENT	83	93	23	83072	Var	Provence-Alpes-Côte d'Azur	Nice
9730030V	Ecole élémentaire Pascal Joinville	Digue Joinville Saint-Georges	Saint-Georges	3.88922715	-51.8015289	151	ECOLE DE NIVEAU ELEMENTAIRE	973	03	33	97308	Guyane	Guyane	Guyane
0300002P	Lycée polyvalent Jean-Baptiste Dumas, Lycée des métiers du travail social, de la mécanique et des pluritechnologies	Place DE LA BELGIQUE	Alès	44.1300774	4.07498932	306	LYCEE POLYVALENT	30	76	11	30007	Gard	Occitanie	Montpellier
0421489R	Lycée professionnel Etienne Legrand - Lycée des métiers du bois, du métal et des services à la personne	8  BOULEVARD CHARLES GALLET	Le Coteau	46.0224876	4.09434032	320	LYCEE PROFESSIONNEL	42	84	10	42071	Loire	Auvergne-Rhône-Alpes	Lyon
0610606C	Ecole des Cormiers	6 rue du Clos	Saint-Germain-de-la-Coudre	48.2797813	0.602259636	151	ECOLE DE NIVEAU ELEMENTAIRE	61	28	05	61394	Orne	Normandie	Caen
0671737Z	Section professionnelle du lycée Cassin	3 quai Charles Frey	Strasbourg	48.5784454	7.74648046	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	67	44	15	67482	Bas-Rhin	Grand Est	Strasbourg
0720895G	Section d'enseignement général et professionnel adapté du Collège Joséphine Baker	9 rue JACQUES MILLET	Le Mans	47.9739304	0.221150473	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	72	52	17	72181	Sarthe	Pays de la Loire	Nantes
0100320U	Ecole primaire	12 rue des Tonnelles	Mailly-le-Camp	48.6711082	4.19589949	151	ECOLE DE NIVEAU ELEMENTAIRE	10	44	19	10216	Aube	Grand Est	Reims
0101019D	Ecole élémentaire Charles Dutreix	27 rue Charles Dutreix	Troyes	48.2873993	4.08383989	151	ECOLE DE NIVEAU ELEMENTAIRE	10	44	19	10387	Aube	Grand Est	Reims
0110891J	Ecole primaire Port Leucate	Rue du Kercorb	Leucate	42.8609505	3.04267955	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11202	Aude	Occitanie	Montpellier
0210053U	Collège Docteur Kuhn	19 rue DE L'HOTEL DE VILLE	Vitteaux	47.399559	4.53839064	340	COLLEGE	21	27	07	21710	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0260918G	Ecole  privée Les Primevères	24 avenue du Vercors	Montélier	44.9373474	5.03081036	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26197	Drôme	Auvergne-Rhône-Alpes	Grenoble
0300046M	Lycée général et technologique Charles Gide	Place ADOLPHE BOSC	Uzès	44.0162163	4.42207003	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	30	76	11	30334	Gard	Occitanie	Montpellier
0330778S	Ecole élementaire	12 route des Châteaux	Labarde	45.021946	-0.638546944	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33211	Gironde	Nouvelle-Aquitaine	Bordeaux
0331922K	Ecole primaire privée Institution Jeanne Arc	43 rue de Francis de Pressensé	Le Bouscat	44.859375	-0.604078889	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33069	Gironde	Nouvelle-Aquitaine	Bordeaux
0331928S	Ecole primaire privée Sainte Thérèse	17 rue du Fils	Bordeaux	44.8237495	-0.61206162	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0860267Y	Ecole primaire Doussay	5 rue de la Mairie	Doussay	46.8430901	0.274259478	151	ECOLE DE NIVEAU ELEMENTAIRE	86	75	13	86096	Vienne	Nouvelle-Aquitaine	Poitiers
0332205T	Ecole maternelle La Boétie	Avenue Bossuet	Le Taillan-Médoc	44.9033623	-0.699386835	101	ECOLE MATERNELLE	33	75	04	33519	Gironde	Nouvelle-Aquitaine	Bordeaux
0332538E	Ecole maternelle	1 rue du Prince Noir	Le Barp	44.6066437	-0.766634226	101	ECOLE MATERNELLE	33	75	04	33029	Gironde	Nouvelle-Aquitaine	Bordeaux
0670286X	Ecole maternelle Lezay Marnésia	24 rue du Poitou	Strasbourg	48.5482826	7.74725008	101	ECOLE MATERNELLE	67	44	15	67482	Bas-Rhin	Grand Est	Strasbourg
0671243M	Ecole primaire	47 rue du Général de Gaulle	Griesheim-près-Molsheim	48.5027924	7.53272009	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67172	Bas-Rhin	Grand Est	Strasbourg
0390310A	Ecole élémentaire	2 rue Séraphin Morand	Saint-Aubin	47.0315361	5.32910967	151	ECOLE DE NIVEAU ELEMENTAIRE	39	27	03	39476	Jura	Bourgogne-Franche-Comté	Besançon
0390654Z	Ecole primaire	7 rue des Ecoles	Viry	46.2995186	5.73679972	151	ECOLE DE NIVEAU ELEMENTAIRE	39	27	03	39579	Jura	Bourgogne-Franche-Comté	Besançon
9730119S	Ecole maternelle Henri Agarande	Cité Chatenay III	Cayenne	4.94280148	-52.3102608	101	ECOLE MATERNELLE	973	03	33	97302	Guyane	Guyane	Guyane
0440029T	Lycée général et technologique Livet	16 rue DUFOUR	Nantes	47.2254868	-1.54520059	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	44	52	17	44109	Loire-Atlantique	Pays de la Loire	Nantes
0470397B	Ecole élémentaire	\N	Lacaussade	44.5059471	0.825664937	151	ECOLE DE NIVEAU ELEMENTAIRE	47	75	04	47124	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0491990X	Ecole primaire La Pérussaie	15 rue du Haut Chêne	Angers	47.4672852	-0.598539531	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49007	Maine-et-Loire	Pays de la Loire	Nantes
0750508V	Lycée professionnel Charles de Gaulle	17 rue Ligner	Paris 20e  Arrondissement	48.8580475	2.39736938	320	LYCEE PROFESSIONNEL	75	11	01	75120	Paris	Ile-de-France	Paris
7200200E	Ecole élémentaire J.Balestrini Calenzana	Quartier Villanova	Calenzana	42.5065994	8.85875988	151	ECOLE DE NIVEAU ELEMENTAIRE	2B	94	27	2B049	Haute-Corse	Corse	Corse
7200409G	Ecole primaire d'application Modeste Venturi Bastia	Rue Saint François	Bastia	42.6986923	9.44777966	153	ECOLE ELEMENTAIRE D APPLICATION	2B	94	27	2B033	Haute-Corse	Corse	Corse
0593668S	Collège Paul Eluard	1 rue MAURICE THOREZ	Roncq	50.7497559	3.12581992	340	COLLEGE	59	32	09	59508	Nord	Hauts-de-France	Lille
0593784T	Ecole primaire privée Saint Joseph	Avenue François Mitterrand	Bourbourg	50.9445724	2.1941092	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59094	Nord	Hauts-de-France	Lille
0594218P	Ecole primaire Mendès-France	82 rue Pasteur	Salomé	50.5327988	2.83962941	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59550	Nord	Hauts-de-France	Lille
0594376L	Ecole primaire Pasteur	1 RUE DU PARC	Don	50.5498962	2.91997981	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59670	Nord	Hauts-de-France	Lille
0594683V	Ecole élémentaire Jules Ferry	Rue Balzac	Douchy-les-Mines	50.2979507	3.39806032	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59179	Nord	Hauts-de-France	Lille
0596017V	Ecole primaire privée Saint Blaise	488 rue du Clinquet	Tourcoing	50.7268944	3.13066959	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59599	Nord	Hauts-de-France	Lille
0610699D	Collège privé Esat de Giel	Lieu-dit Les Cours	Giel-Courteilles	48.7545052	-0.189529493	340	COLLEGE	61	28	05	61189	Orne	Normandie	Caen
0620056Z	Lycée polyvalent Carnot - Lycée des Métiers des systèmes automatiques et de l'électronique communicante	51 rue SADI CARNOT	Bruay-la-Buissière	50.4800758	2.54427481	306	LYCEE POLYVALENT	62	32	09	62178	Pas-de-Calais	Hauts-de-France	Lille
0620119T	Collège Pierre et Marie Curie	1503 rue Emile Zola	Liévin	50.4355659	2.75574946	340	COLLEGE	62	32	09	62510	Pas-de-Calais	Hauts-de-France	Lille
0621955N	Ecole primaire RPI 34	Rue de Bonnières	Villers-l'Hôpital	50.2281494	2.21352053	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62859	Pas-de-Calais	Hauts-de-France	Lille
0622142S	Collège privé Notre-Dame	5 rue CANDIDE COUZIN	Lumbres	50.7065964	2.12262058	340	COLLEGE	62	32	09	62534	Pas-de-Calais	Hauts-de-France	Lille
0622246E	Ecole maternelle Jean-Claude Casadesus	Rue Pierre Malvoisin	Hulluch	50.4830093	2.81716013	101	ECOLE MATERNELLE	62	32	09	62464	Pas-de-Calais	Hauts-de-France	Lille
0622917J	Ecole maternelle	Rue Pasteur	Camblain-Châtelain	50.4836693	2.46193957	101	ECOLE MATERNELLE	62	32	09	62197	Pas-de-Calais	Hauts-de-France	Lille
0672611Z	Section d'enseignement général et professionnel adapté du Collège Rembrant Bugatti Molsheim	1 place La Royale Bugatti	Molsheim	48.5312271	7.49178982	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	67	44	15	67300	Bas-Rhin	Grand Est	Strasbourg
0681153J	Ecole maternelle Les Pâquerettes	2 rue de Schongau	Colmar	48.0797195	7.33625984	101	ECOLE MATERNELLE	68	44	15	68066	Haut-Rhin	Grand Est	Strasbourg
0700359K	Ecole primaire	2 place	Echenans-sous-Mont-Vaudois	47.6042061	6.77215004	151	ECOLE DE NIVEAU ELEMENTAIRE	70	27	03	70206	Haute-Saône	Bourgogne-Franche-Comté	Besançon
0910113D	Ecole primaire Les Deux Tertres	Place de la Mairie	Soisy-sur-Ecole	48.4745598	2.4978106	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91599	Essonne	Ile-de-France	Versailles
0910162G	Ecole élémentaire Jean Moulin	19 rue des Ecoles	Lardy	48.5352707	2.29546952	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91330	Essonne	Ile-de-France	Versailles
0911437T	Ecole maternelle La Souris verte	1 RUE DE LA BEAUCE	Corbreuse	48.4989815	1.96090066	101	ECOLE MATERNELLE	91	11	25	91175	Essonne	Ile-de-France	Versailles
0671058L	Ecole primaire	55 rue Principale	Buswiller	48.8198662	7.55964994	151	ECOLE DE NIVEAU ELEMENTAIRE	67	44	15	67068	Bas-Rhin	Grand Est	Strasbourg
9710981P	Lycée professionnel des Iles du Nord	\N	Saint-Martin	18.0677452	-63.072361	320	LYCEE PROFESSIONNEL	978	00	32	97801	Saint-Martin	TOM et Collectivités territoriales	Guadeloupe
9760059K	Ecole primaire de Mbouini	\N	Kani-Kéli	-12.9566402	45.1051102	151	ECOLE DE NIVEAU ELEMENTAIRE	976	06	43	97609	Mayotte	Mayotte	Mayotte
0891267U	Ecole maternelle	6 route de l'Ecole	Charny Orée de Puisaye	47.8404579	3.1041801	151	ECOLE DE NIVEAU ELEMENTAIRE	89	27	07	89086	Yonne	Bourgogne-Franche-Comté	Dijon
0802103B	Section d'enseignement professionnelle au lycée de la hotoie	Rue DU BATONNIER MAHIU	Amiens	49.8975792	2.27434063	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	80	32	20	80021	Somme	Hauts-de-France	Amiens
0070222D	Ecole primaire	\N	Orgnac-l'Aven	44.3059006	4.43317032	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07168	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0070493Y	Ecole primaire	\N	Pranles	44.7716179	4.57424021	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07184	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0071033K	Ecole primaire privée des Roches	17 rue Jean Moulin	Cruas	44.6578636	4.76461077	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07076	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0210940H	ECOLE PRIMAIRE PUBLIQUE        DE VELUZE	Rue de Véluze	Gissey-sur-Ouche	47.269371	4.77075005	151	ECOLE DE NIVEAU ELEMENTAIRE	21	27	07	21300	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0333466N	Ecole primaire Tivoli Rivière	Rue Chaigneau	Bordeaux	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0260572F	Ecole Beaumont Monteux	Rue des Ecoles	Beaumont-Monteux	45.019577	4.9222703	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26038	Drôme	Auvergne-Rhône-Alpes	Grenoble
0381551E	Ecole maternelle	\N	Arandon-Passins	45.7097816	5.4331398	101	ECOLE MATERNELLE	38	84	08	38297	Isère	Auvergne-Rhône-Alpes	Grenoble
0382078C	Ecole primaire La Cascade	Place de la Mairie	Crolles	45.2844009	5.88173962	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38140	Isère	Auvergne-Rhône-Alpes	Grenoble
0382458R	Ecole primaire Henri Wallon	Rue du 19 Mars 62	Roussillon	45.3713951	4.81198978	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38344	Isère	Auvergne-Rhône-Alpes	Grenoble
0762320J	Section d'enseignement général et professionnel adapté du collège Rollon	24 bis rue du Croquet du Bosc	Gournay-en-Bray	49.480751	1.71783066	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	76	28	21	76312	Seine-Maritime	Normandie	Rouen
0771511Z	Collège Armand Lanoux	9  AVENUE DES PYRAMIDES	Champs-sur-Marne	48.8510933	2.58505964	340	COLLEGE	77	11	24	77083	Seine-et-Marne	Ile-de-France	Créteil
0771992X	Collège la Maillière	2 place MARCEL PAGNOL - LOGNES	Lognes	48.8427467	2.6326406	340	COLLEGE	77	11	24	77258	Seine-et-Marne	Ile-de-France	Créteil
0922801V	Lycée général et technologique de Boulogne-Billancourt	6 place JULES GUESDE	Boulogne-Billancourt	48.8264275	2.2414	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	92	11	25	92012	Hauts-de-Seine	Ile-de-France	Versailles
0382671X	Ecole primaire La Plaine	12 rue des Quatre Buissons	Tignieu-Jameyzieu	45.7513885	5.18469	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38507	Isère	Auvergne-Rhône-Alpes	Grenoble
0382874T	Ecole primaire Jules Ferry	47 rue Léon Jouhaux	Grenoble	45.1802483	5.74206066	153	ECOLE ELEMENTAIRE D APPLICATION	38	84	08	38185	Isère	Auvergne-Rhône-Alpes	Grenoble
0383266U	Ecole élémentaire	\N	Saint-Geoirs	45.3214569	5.35323	151	ECOLE DE NIVEAU ELEMENTAIRE	38	84	08	38387	Isère	Auvergne-Rhône-Alpes	Grenoble
0560879B	Ecole primaire privée Gabriel Deshayes	6 rue de Lamennais	Auray	47.6705055	-2.98750019	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56007	Morbihan	Bretagne	Rennes
0560886J	Ecole primaire privée Sainte Anne	Rue de la Libération	Baud	47.8775902	-3.01865935	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56010	Morbihan	Bretagne	Rennes
0360050J	Etablissement régional d'enseignement adapté	365 avenue de Verdun	Châteauroux	46.7900848	1.70167041	370	ETABLISSEMENT REGIONAL D'ENSEIGNT ADAPTE	36	24	18	36044	Indre	Centre-Val de Loire	Orléans-Tours
0580153B	Ecole élémentaire	\N	Montreuillon	47.1731415	3.78830957	151	ECOLE DE NIVEAU ELEMENTAIRE	58	27	07	58179	Nièvre	Bourgogne-Franche-Comté	Dijon
0710630Z	Ecole primaire	\N	Bosjean	46.7621574	5.3326807	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71044	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0710901U	ECOLE MATERNELLE PUBLIQUE	\N	Saint-Vallerin	46.6868553	4.67357969	101	ECOLE MATERNELLE	71	27	07	71485	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0751329M	E.M.PU LESSEPS M 9 rue de Lesseps	9 rue de Lesseps	Paris 20e  Arrondissement	48.8587151	2.40016007	101	ECOLE MATERNELLE	75	11	01	75120	Paris	Ile-de-France	Paris
0730502Z	Ecole primaire publique	LIEU-DIT LE PLAN	Albiez-Montrond	45.2167053	6.36504936	151	ECOLE DE NIVEAU ELEMENTAIRE	73	84	08	73013	Savoie	Auvergne-Rhône-Alpes	Grenoble
0330257A	Ecole maternelle Paul Antin	3 rue Paul Antin	Bordeaux	44.8186798	-0.571627975	101	ECOLE MATERNELLE	33	75	04	33063	Gironde	Nouvelle-Aquitaine	Bordeaux
0441471K	Ecole primaire privée Notre-Dame de Lourdes	3 rue Jean-Baptiste Olivaux	Nantes	47.2512169	-1.57533967	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44109	Loire-Atlantique	Pays de la Loire	Nantes
0750855X	E.E.PU CHERNOVIZ 8 rue Chernoviz	8 rue Chernoviz	Paris 16e  Arrondissement	48.8573723	2.28191066	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75116	Paris	Ile-de-France	Paris
0693603S	Ecole maternelle La Velette	30 avenue du Général Leclerc	Rillieux-la-Pape	45.8143616	4.90315962	101	ECOLE MATERNELLE	69	84	10	69286	Rhône	Auvergne-Rhône-Alpes	Lyon
0752525M	Collège Charlemagne	13 rue Charlemagne	Paris  4e  Arrondissement	48.8541756	2.36034989	340	COLLEGE	75	11	01	75104	Paris	Ile-de-France	Paris
0781465U	Ecole élémentaire Ferdinand Buisson	02  RUE FERDINAND BUISSON	Mantes-la-Jolie	48.9980278	1.69824982	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78361	Yvelines	Ile-de-France	Versailles
0800767Z	Ecole élémentaire	6 rue des Ecoles	Saint-Maxent	50.003727	1.73444033	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80710	Somme	Hauts-de-France	Amiens
0800862C	Ecole maternelle Saint-Roch	48 boulevard Garibaldi	Amiens	49.8957672	2.28740001	101	ECOLE MATERNELLE	80	32	20	80021	Somme	Hauts-de-France	Amiens
0911325W	Ecole élémentaire Elsa Triolet	15 avenue des Sablons	Grigny	48.6545677	2.39122009	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91286	Essonne	Ile-de-France	Versailles
0921578R	Ecole primaire publique Pierre Brossolette	25 avenue Henri IV	Meudon	48.8184128	2.24308014	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92048	Hauts-de-Seine	Ile-de-France	Versailles
0921641J	Ecole élémentaire publique Louise Michel	16 rue du Parc	Clamart	48.7918892	2.26103997	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92023	Hauts-de-Seine	Ile-de-France	Versailles
0922719F	Ecole primaire publique Abdelmalek Sayad	56 rue Abdelmalek Sayad	Nanterre	48.8867722	2.19513965	151	ECOLE DE NIVEAU ELEMENTAIRE	92	11	25	92050	Hauts-de-Seine	Ile-de-France	Versailles
0141161L	Lycée général privé Jeanne d'Arc	27 rue Claude Chappe	Caen	49.1815491	-0.395379812	302	LYCEE D ENSEIGNEMENT GENERAL	14	28	05	14118	Calvados	Normandie	Caen
0160896M	Ecole élémentaire Relette	9 rue René Gillardie	Magnac-sur-Touvre	45.675354	0.224760398	151	ECOLE DE NIVEAU ELEMENTAIRE	16	75	13	16199	Charente	Nouvelle-Aquitaine	Poitiers
0170150W	Ecole élémentaire Léon Gambetta St Jean d'Angély	81 rue Gambetta	Saint-Jean-d'Angély	45.9461899	-0.525449395	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17347	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0170412F	Ecole maternelle Mirambeau	Groupe Pechèvre	Mirambeau	45.3709297	-0.570010543	101	ECOLE MATERNELLE	17	75	13	17236	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0170414H	Ecole maternelle Ginette Bertrand Port des barques	5 rue des Ecoles	Port-des-Barques	45.9478226	-1.08264983	101	ECOLE MATERNELLE	17	75	13	17484	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0740039R	Collège du Verney	283 rue DU VERNEY	Sallanches	45.9347229	6.64101934	340	COLLEGE	74	84	08	74256	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0170521Z	Ecole élémentaire Jean Zay St Georges de Didonne	5 avenue des Tilleuls	Saint-Georges-de-Didonne	45.6042061	-0.993410349	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17333	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0170845B	Ecole primaire Forges	4 rue de la Mairie	Forges	46.1050148	-0.896790028	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17166	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0410838N	Ecole maternelle Louis PERGAUD	Rue des Ruelles	Vendôme	47.78685	1.0703795	101	ECOLE MATERNELLE	41	24	18	41269	Loir-et-Cher	Centre-Val de Loire	Orléans-Tours
0290418X	Ecole primaire publique Paul-Emile Victor	65 rue Laënnec	Plonéis	48.0178719	-4.2126298	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29173	Finistère	Bretagne	Rennes
0290872R	Ecole primaire publique Pilier Rouge	59 rue Sébastopol	Brest	48.3997574	-4.46986961	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29019	Finistère	Bretagne	Rennes
0290874T	Ecole primaire publique Jacques Kerhoas	2 place Vinet	Brest	48.3993378	-4.45485973	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29019	Finistère	Bretagne	Rennes
0290894P	Ecole primaire publique Jacques Prévert	Rue Laënnec	Guipavas	48.4285431	-4.41092062	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29075	Finistère	Bretagne	Rennes
0352293C	Ecole primaire privée Ste Croix Ste Agnès	30 rue Ville Pépin	Saint-Malo	48.6359749	-2.01517987	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35288	Ille-et-Vilaine	Bretagne	Rennes
0490845C	Collège privé Immaculée-Conception	14  BOULEVARD JACQUES PORTET	Angers	47.4520149	-0.56390965	340	COLLEGE	49	52	17	49007	Maine-et-Loire	Pays de la Loire	Nantes
0790232Y	Ecole primaire	6 rue du Général de Gaulle	Moncoutant-sur-Sèvre	46.7198067	-0.59038651	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79179	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0860262T	Ecole primaire Curzay sur Vonne	1bis rue IMPASSE DU CHATEAU	Curzay-sur-Vonne	46.513279	0.372812986	151	ECOLE DE NIVEAU ELEMENTAIRE	86	75	13	86091	Vienne	Nouvelle-Aquitaine	Poitiers
0740775R	Ecole primaire publique Alexandre Dumas FRANCLENS	37 chemin des Ecoliers	Franclens	46.0438919	5.82858038	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74130	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0740926E	Ecole primaire privée Saint Michel ANNECY	27 faubourg des Balmettes	Annecy	45.8908463	6.12268972	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74010	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0741256N	Ecole primaire publique Roger Frison Roche CRANVES SALES	42 route des Fontaines	Cranves-Sales	46.1867218	6.29038	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74094	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0541177L	Ecole maternelle	7 rue des Ecoles	Viviers-sur-Chiers	49.4776649	5.63090038	101	ECOLE MATERNELLE	54	44	12	54590	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0542256J	Ecole élémentaire François Mitterrand	2 rue Victor Hugo	Varangéville	48.637352	6.31775999	151	ECOLE DE NIVEAU ELEMENTAIRE	54	44	12	54549	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0571494P	Ecole primaire Nondkeil	15 rue des Ecoles	Ottange	49.4265556	6.01585054	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57529	Moselle	Grand Est	Nancy-Metz
0880909K	École Primaire	11 RUE DU CENTRE	Uzemain	48.0857697	6.34655952	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88484	Vosges	Grand Est	Nancy-Metz
0694356K	Ecole secondaire privée Horizons	74 boulevard du 11 Novembre 1918	Villeurbanne	45.7786293	4.86729002	340	COLLEGE	69	84	10	69266	Rhône	Auvergne-Rhône-Alpes	Lyon
0630250E	Ecole élémentaire	2 place de l'Eglise	Chidrac	45.5542259	3.1482904	151	ECOLE DE NIVEAU ELEMENTAIRE	63	84	06	63109	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0011218U	Ecole primaire Arbère	805 rue d'Arbère	Divonne-les-Bains	46.3449478	6.12489986	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01143	Ain	Auvergne-Rhône-Alpes	Lyon
0011227D	Ecole primaire	\N	Ambérieux-en-Dombes	45.9966621	4.90361977	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01005	Ain	Auvergne-Rhône-Alpes	Lyon
0030439L	Ecole élémentaire	\N	Meillard	46.3891258	3.23422956	151	ECOLE DE NIVEAU ELEMENTAIRE	03	84	06	03169	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0030603P	Ecole élémentaire	\N	Couzon	46.657959	3.11843061	151	ECOLE DE NIVEAU ELEMENTAIRE	03	84	06	03090	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0030774A	Ecole maternelle Louise Michel	22 rue Bergeron Vebret	Yzeure	46.5642967	3.35526013	101	ECOLE MATERNELLE	03	84	06	03321	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0030950S	Ecole maternelle Les Quatre Vents	5 rue des Landes	Vendat	46.1661682	3.35447979	101	ECOLE MATERNELLE	03	84	06	03304	Allier	Auvergne-Rhône-Alpes	Clermont-Ferrand
0061120K	Ecole élémentaire privée La Fontaine	11 AVENUE DES ALPES	Cagnes-sur-Mer	43.6601143	7.14296055	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06027	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0061270Y	Ecole maternelle Debré	165 avenue Doyen Lépine	Menton	43.7773743	7.48591042	101	ECOLE MATERNELLE	06	93	23	06083	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0090222T	Ecole primaire Le Cardié	Place du Cardié	Foix	42.9636955	1.59519947	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09122	Ariège	Occitanie	Toulouse
0090453U	Ecole primaire Groupe de Lédar	Avenue Rhin-et-Danube	Saint-Girons	42.9865608	1.13096988	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09261	Ariège	Occitanie	Toulouse
0110127D	Ecole élémentaire Marie-Jeanne Estevenon	1  RUE JEAN BART	Bram	43.2414131	2.11027002	151	ECOLE DE NIVEAU ELEMENTAIRE	11	76	11	11049	Aude	Occitanie	Montpellier
0141816Y	Collège Jacques Monod	1 rue Jacques Prévert	Caen	49.2059975	-0.380170077	340	COLLEGE	14	28	05	14118	Calvados	Normandie	Caen
0180218P	Ecole élémentaire	Route Saint Palais	Quantilly	47.2259178	2.44155049	151	ECOLE DE NIVEAU ELEMENTAIRE	18	24	18	18189	Cher	Centre-Val de Loire	Orléans-Tours
0180367B	Ecole élémentaire	2 place de l'Eglise	Morogues	47.2400856	2.59836054	151	ECOLE DE NIVEAU ELEMENTAIRE	18	24	18	18156	Cher	Centre-Val de Loire	Orléans-Tours
0211727N	ECOLE MATERNELLE	23 rue de Lavau	Santenay	46.91045	4.69111013	101	ECOLE MATERNELLE	21	27	07	21582	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0221095W	Ecole primaire publique Les Embruns	Rue des Ecoles	Saint-Quay-Portrieux	48.6484833	-2.83205032	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22325	Côtes-d'Armor	Bretagne	Rennes
0230069A	Ecole maternelle Villeneuve	Rue Williams Dumazet	Aubusson	45.9531746	2.16601992	101	ECOLE MATERNELLE	23	75	22	23008	Creuse	Nouvelle-Aquitaine	Limoges
0241033T	Lycée agricole privé Le Cluzeau de Sigoulès	\N	Sigoulès-et-Flaugeac	44.7651291	0.418207258	320	LYCEE PROFESSIONNEL	24	75	04	24534	Dordogne	Nouvelle-Aquitaine	Bordeaux
0251806C	Section d'enseignement professionnel Jules Haag	1 rue Labbé	Besançon	47.2392426	6.01317024	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	25	27	03	25056	Doubs	Bourgogne-Franche-Comté	Besançon
0270065Z	Ecole maternelle Georges Brassens	Rue du Général Leclerc	Brionne	49.1938477	0.722880006	101	ECOLE MATERNELLE	27	28	21	27116	Eure	Normandie	Rouen
0271187U	Ecole primaire privée Jeanne d'Arc	19 rue de la Charentonne	Bernay	49.0893707	0.601520479	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27056	Eure	Normandie	Rouen
0271759R	Ecole maternelle	7 rue Saint-Pierre	La Vieille-Lyre	48.9176216	0.749989927	101	ECOLE MATERNELLE	27	28	21	27685	Eure	Normandie	Rouen
0280691Z	Lycée professionnel privé Notre Dame	2 avenue Béthouart	Chartres	48.4511452	1.49303997	320	LYCEE PROFESSIONNEL	28	24	18	28085	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0280842N	Ecole primaire privée Sainte Marie	2 rue Aristide Briand	Courville-sur-Eure	48.447197	1.24274063	151	ECOLE DE NIVEAU ELEMENTAIRE	28	24	18	28116	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0290576U	Ecole maternelle publique Joliot-Curie	35 rue Pierre Curie	Scaër	48.0282402	-3.70851994	101	ECOLE MATERNELLE	29	53	14	29274	Finistère	Bretagne	Rennes
0290852U	Ecole élémentaire publique Roz Avel	1 rue DE MEZOU VILIN	Plougonvelin	48.3418732	-4.71990013	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29190	Finistère	Bretagne	Rennes
0291683X	Ecole primaire publique Rue d'Arvor	4 rue de la Citadelle	Landivisiau	48.511898	-4.07376051	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29105	Finistère	Bretagne	Rennes
0300003R	Section d'enseignement général et professionnel adapté du Collège Condorcet	691  RUE BELLINI	Nîmes	43.8279991	4.33649969	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	30	76	11	30189	Gard	Occitanie	Montpellier
0301729S	Ecole privée Calendreta de Gardons	16 rue Enclos Roux	Alès	44.1257973	4.06866026	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30007	Gard	Occitanie	Montpellier
0310656V	Ecole élémentaire publique	Place Occitane	Miremont	43.3698196	1.41766012	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31345	Haute-Garonne	Occitanie	Toulouse
0311391U	Ecole maternelle publique Jean-Marie Fériol	7 rue des Côteaux	Quint-Fonsegrives	43.5850906	1.53197956	101	ECOLE MATERNELLE	31	76	16	31445	Haute-Garonne	Occitanie	Toulouse
0780292U	Ecole élémentaire Les Bergeronnettes	16 rue Alfred Lasson	Mézy-sur-Seine	49.002285	1.88077986	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78403	Yvelines	Ile-de-France	Versailles
0780485D	Ecole élémentaire Antoine de Saint-Exupéry	28 rue des Courcieux	Andrésy	48.9788437	2.05642962	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78015	Yvelines	Ile-de-France	Versailles
0780954N	Ecole maternelle sivos MBT	06 rue DE L'HIRONDELLE	Mareil-le-Guyon	48.7899742	1.8468107	101	ECOLE MATERNELLE	78	11	25	78366	Yvelines	Ile-de-France	Versailles
0781904W	Section d'enseignement professionnel du lycée polyvalent Hotellerie et Tourisme	Place François Rabelais	Guyancourt	48.7846031	2.04971933	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	78	11	25	78297	Yvelines	Ile-de-France	Versailles
0781968R	Ecole élémentaire Jean Monnet	19 rue de Bruxelles	Elancourt	48.7931938	1.97415996	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78208	Yvelines	Ile-de-France	Versailles
0782373F	Ecole maternelle Francis Julliand	01 RUE DOCTEUR ZAMENHOF	Houilles	48.9261551	2.18959951	101	ECOLE MATERNELLE	78	11	25	78311	Yvelines	Ile-de-France	Versailles
0820333S	Ecole maternelle Marceau Faure	2 boulevard Marceau Fauré	Castelsarrasin	44.0368767	1.1073103	101	ECOLE MATERNELLE	82	76	16	82033	Tarn-et-Garonne	Occitanie	Toulouse
0830288M	Ecole primaire Malbousquet	224 avenue des Fusiliers Marins	Toulon	43.1258354	5.9059701	151	ECOLE DE NIVEAU ELEMENTAIRE	83	93	23	83137	Var	Provence-Alpes-Côte d'Azur	Nice
0851351G	ECOLE ELEMENTAIRE LA METAIRIE	Rue Michel Richard Delalande	Les Herbiers	46.8586884	-1.02210057	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85109	Vendée	Pays de la Loire	Nantes
0851681R	Ecole secondaire privée Chavagnes International Collège	96 rue du Calvaire	Chavagnes-en-Paillers	46.8941574	-1.25106108	340	COLLEGE	85	52	17	85065	Vendée	Pays de la Loire	Nantes
0861039M	Section d'enseignement général et professionnel adapté du Collège George Sand	11 rue ARTHUR RANC	Châtellerault	46.8050804	0.54698056	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	86	75	13	86066	Vienne	Nouvelle-Aquitaine	Poitiers
0881473Y	Section d'enseignement général et professionnel adapté du Collège Jules Ferry	7 BIS RUE DES TERTRES	Le Thillot	47.8848	6.7645998	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	88	44	12	88468	Vosges	Grand Est	Nancy-Metz
0890231T	Ecole élémentaire	14  GRANDE RUE	Sépeaux-Saint Romain	47.942482	3.23662996	151	ECOLE DE NIVEAU ELEMENTAIRE	89	27	07	89388	Yonne	Bourgogne-Franche-Comté	Dijon
0932373Z	Section d'enseignement général et technologique du Lycée professionnel J.B Clément	25 RUE DES TROIS NOYERS	Gagny	48.8881721	2.54267955	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	93	11	24	93032	Seine-Saint-Denis	Ile-de-France	Créteil
0940407G	Ecole maternelle Cités Jardins Albert Thomas	46 rue Charles Fourier	Champigny-sur-Marne	48.8230858	2.51492953	101	ECOLE MATERNELLE	94	11	24	94017	Val-de-Marne	Ile-de-France	Créteil
0940451E	Ecole maternelle Jean Jaurès	10  RUE DESIRE GRANET	Vitry-sur-Seine	48.7936783	2.3979497	101	ECOLE MATERNELLE	94	11	24	94081	Val-de-Marne	Ile-de-France	Créteil
9720495F	Collège Trianon	Route du Stade	Le François	14.6205292	-60.9115715	340	COLLEGE	972	02	31	97210	Martinique	Martinique	Martinique
9830132B	Ecole maternelle de Tawainedre	ROUTE TAWAINEDRE	Maré	\N	\N	101	ECOLE MATERNELLE	988	00	40	98815	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9840366A	CETAD DE MATAURA	\N	Tubuai	\N	\N	344	CETAD (TOM)	987	00	41	98753	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
9840496S	ECOLE PRIMAIRE PUBLIQUE DE HAAPITI	PK 24,100 côté mer	Moorea	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	987	00	41	98729	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
9740510L	Ecole primaire privée catholique Notre Dame des Neiges	1 rue des Ecoles	Cilaos	-21.1327419	55.4723511	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97424	La Réunion	La Réunion	La Réunion
0170475Z	Ecole élémentaire Pierre Loti St Pierre d'Oléron	Place Camille Memain	Saint-Pierre-d'Oléron	45.945034	-1.30542994	151	ECOLE DE NIVEAU ELEMENTAIRE	17	75	13	17385	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0352269B	Ecole élémentaire publique Joseph Launay	Rue du Pré de la Roche	Pleurtuit	48.5827103	-2.05451941	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35228	Ille-et-Vilaine	Bretagne	Rennes
0860493U	Ecole maternelle d'application Renaudot	69 rue Théophraste Renaudot	Poitiers	46.5771751	0.334460139	103	ECOLE MATERNELLE D APPLICATION	86	75	13	86194	Vienne	Nouvelle-Aquitaine	Poitiers
0731141U	Ecole primaire publique du Chat Perché	Place du 8 Mai 1945	Saint-Marcel	45.4987602	6.55915928	151	ECOLE DE NIVEAU ELEMENTAIRE	73	84	08	73253	Savoie	Auvergne-Rhône-Alpes	Grenoble
9830030R	Ecole primaire de Wé	Route DE HNASSE	Lifou	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98814	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9840495R	ECOLE PRIMAIRE PUBLIQUE DE TIVA	Village TIVA PK 13,5	Tahaa	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	987	00	41	98745	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
0400303M	Ecole maternelle	\N	Castel-Sarrazin	43.6206627	-0.780926287	101	ECOLE MATERNELLE	40	75	04	40074	Landes	Nouvelle-Aquitaine	Bordeaux
0160062F	Lycée général et technologique privé Saint Paul	101  RUE DE BEAULIEU	Angoulême	45.6504478	0.148789421	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	16	75	13	16015	Charente	Nouvelle-Aquitaine	Poitiers
0312778B	Ecole technique privée hors contrat Studio M	54 rue DU PECH	Toulouse	43.5926476	1.41322029	320	LYCEE PROFESSIONNEL	31	76	16	31555	Haute-Garonne	Occitanie	Toulouse
0500154W	Collège privé Sainte Marie	2 place de l'Eglise	Tessy-Bocage	48.9730034	-1.06038988	340	COLLEGE	50	28	05	50592	Manche	Normandie	Caen
0070251K	Ecole primaire	Centre Village	Saint-Etienne-de-Lugdarès	44.6511078	3.95331955	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07232	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0250368P	Pôle scolaire Louise et René ROBBE	1 rue des Prés Parrets	Chaux-Neuve	46.6796875	6.13289022	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25142	Doubs	Bourgogne-Franche-Comté	Besançon
0371290B	Section d'enseignement général et professionnel adapté du Collège Georges Besse	17 rue des Prébendes	Loches	47.1283226	0.981640279	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	37	24	18	37132	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0430752J	Ecole élémentaire privée Saint Joseph	4 chemin de Brard	Saint-Bonnet-le-Froid	45.1411476	4.43479013	151	ECOLE DE NIVEAU ELEMENTAIRE	43	84	06	43172	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0861228T	Lycée général et technologique du Bois d'Amour	9 rue DE LA GARENNE	Poitiers	46.5514565	0.311270654	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	86	75	13	86194	Vienne	Nouvelle-Aquitaine	Poitiers
0910304L	Ecole Primaire L'Ormeteau	9 rue de l'Ormeteau	Mennecy	48.5676727	2.43612027	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91386	Essonne	Ile-de-France	Versailles
0623052F	Ecole maternelle Jacques Prévert	Rue Danielle Casanova	Fouquières-lès-Lens	50.4287643	2.91832948	101	ECOLE MATERNELLE	62	32	09	62351	Pas-de-Calais	Hauts-de-France	Lille
0261034H	Etablissement régional d'enseignement adapté	68 route DE CHATEAUNEUF DU RHONE	Montélimar	44.5395126	4.74213028	370	ETABLISSEMENT REGIONAL D'ENSEIGNT ADAPTE	26	84	08	26198	Drôme	Auvergne-Rhône-Alpes	Grenoble
0511961E	Collège Pierre de Coubertin	1 rue Pierre BEREGOVOY	Cormontreuil	49.2186279	4.03557062	340	COLLEGE	51	44	19	51172	Marne	Grand Est	Reims
0520040L	Collège Les Franchises	713 avenue de l'Europe	Langres	47.8684578	5.34160042	340	COLLEGE	52	44	19	52269	Haute-Marne	Grand Est	Reims
0701043D	Ecole maternelle	9 rue du Lavau	Genevrey	47.7247467	6.32266998	101	ECOLE MATERNELLE	70	27	03	70263	Haute-Saône	Bourgogne-Franche-Comté	Besançon
0720170U	Ecole primaire	7 rue de l'Ecole	Cures	48.0997429	-0.00400035828	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72111	Sarthe	Pays de la Loire	Nantes
0720313Z	Ecole primaire	5 rue du Puits Forget	Sougé-le-Ganelon	48.3171196	-0.030250052	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72337	Sarthe	Pays de la Loire	Nantes
0720452A	Ecole primaire	4 rue Jacques Gallet	Ligron	47.7712669	0.0106205633	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72163	Sarthe	Pays de la Loire	Nantes
0721278Y	Ecole primaire	Rue de l'Ecole	Oisseau-le-Petit	48.3499489	0.087250486	151	ECOLE DE NIVEAU ELEMENTAIRE	72	52	17	72225	Sarthe	Pays de la Loire	Nantes
0931231H	Collège Pierre de Geyter	58 boulevard MARCEL SEMBAT	Saint-Denis	48.933773	2.34996939	340	COLLEGE	93	11	24	93066	Seine-Saint-Denis	Ile-de-France	Créteil
0011447T	Ecole Montessori Les chemins de traverse	58 avenue Amédée Mercier	Bourg-en-Bresse	46.2031059	5.24339008	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01053	Ain	Auvergne-Rhône-Alpes	Lyon
0761786D	Collège Georges Braque	3 ter rue Louis Fromager	Dieppe	49.9126053	1.07370055	340	COLLEGE	76	28	21	76217	Seine-Maritime	Normandie	Rouen
0762442S	Lycée polyvalent privé Saint Joseph	Château de Mesnières	Mesnières-en-Bray	49.7610283	1.38176012	306	LYCEE POLYVALENT	76	28	21	76427	Seine-Maritime	Normandie	Rouen
0640582K	ECOLE PRIMAIRE PUBLIQUE	6 bis route du Béarn	Lourenties	43.2883301	-0.161930919	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64352	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0881666H	École Élémentaire	17 place Réné Linge	Bulgnéville	48.2060356	5.83476019	151	ECOLE DE NIVEAU ELEMENTAIRE	88	44	12	88079	Vosges	Grand Est	Nancy-Metz
0060345T	Ecole élémentaire Digue des Français 2	18 traverse de la Digue des Français	Nice	43.6779518	7.20552349	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06088	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0081003X	Ecole primaire des Capucines	Impasse des Capucines	Charleville-Mézières	49.7425232	4.71919012	151	ECOLE DE NIVEAU ELEMENTAIRE	08	44	19	08105	Ardennes	Grand Est	Reims
0310212M	Ecole maternelle publique André Daste	29 rue de Toulon	Toulouse	43.5804138	1.43890989	101	ECOLE MATERNELLE	31	76	16	31555	Haute-Garonne	Occitanie	Toulouse
0640115C	Lycée général privé Saint Louis Villa Pia	Avenue MARECHAL SOULT	Bayonne	43.4847832	-1.49537957	302	LYCEE D ENSEIGNEMENT GENERAL	64	75	04	64102	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0640508E	ECOLE PRIMAIRE HAMEAU	11 CHEMIN CHATIEU	Gelos	43.2489243	-0.371949852	151	ECOLE DE NIVEAU ELEMENTAIRE	64	75	04	64237	Pyrénées-Atlantiques	Nouvelle-Aquitaine	Bordeaux
0290288F	Collège privé Saint Germain	21 rue DE CARHAIX	Pleyben	48.2271385	-3.96704006	340	COLLEGE	29	53	14	29162	Finistère	Bretagne	Rennes
0301333L	Ecole élémentaire Alphonse Daudet	2 rue des Ecoles	Bezouce	43.8816948	4.49074936	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30039	Gard	Occitanie	Montpellier
0783463R	Collège Louis Paulhan	15  RUE GUY DE MAUPASSANT	Sartrouville	48.9481697	2.1709497	340	COLLEGE	78	11	25	78586	Yvelines	Ile-de-France	Versailles
0070009X	Lycée professionnel Léon Pavin	241  chemin DU TROUILLET	Chomérac	44.7015915	4.66517353	320	LYCEE PROFESSIONNEL	07	84	08	07066	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0380087N	Collège Joseph chassigneux	8 avenue JOSEPH CHASSIGNEUX	Vinay	45.2100143	5.40734005	340	COLLEGE	38	84	08	38559	Isère	Auvergne-Rhône-Alpes	Grenoble
0450494T	Ecole élémentaire	6 rue de l'Eglise	Sceaux-du-Gâtinais	48.104538	2.5968194	151	ECOLE DE NIVEAU ELEMENTAIRE	45	24	18	45303	Loiret	Centre-Val de Loire	Orléans-Tours
0922796P	Ecole Maternelle privée Montessori Bilingue de Colombes	19 rue JEAN WIENER	Colombes	48.9148827	2.24697948	101	ECOLE MATERNELLE	92	11	25	92025	Hauts-de-Seine	Ile-de-France	Versailles
0950365F	Ecole maternelle	2 route de la Vallée du Roi	Vienne-en-Arthies	49.0663795	1.71798038	101	ECOLE MATERNELLE	95	11	25	95656	Val-d'Oise	Ile-de-France	Versailles
0540039Z	Lycée international Jeanne d'Arc	16 rue PIERRE FOURIER	Nancy	48.6926003	6.1858902	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	54	44	12	54395	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0911493D	Lycée professionnel Les Frères Moreau	Rue DE BRUNOY	Quincy-sous-Sénart	48.6774406	2.52533078	320	LYCEE PROFESSIONNEL	91	11	25	91514	Essonne	Ile-de-France	Versailles
0930767D	Ecole maternelle Victor Hugo	Boulevard du Président Kennedy	Villepinte	48.9580574	2.53908515	101	ECOLE MATERNELLE	93	11	24	93078	Seine-Saint-Denis	Ile-de-France	Créteil
0931720P	Ecole maternelle Vincent Van Gogh	Allée des Bâtonnets	Noisy-le-Grand	48.8448639	2.573102	101	ECOLE MATERNELLE	93	11	24	93051	Seine-Saint-Denis	Ile-de-France	Créteil
0932372Y	Ecole élémentaire Lamartine	37 boulevard de la République	Sevran	48.9325981	2.5290494	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93071	Seine-Saint-Denis	Ile-de-France	Créteil
0940752G	Ecole maternelle La Fosse Rouge	51 rue du Grand Val	Sucy-en-Brie	48.7766533	2.52933955	101	ECOLE MATERNELLE	94	11	24	94071	Val-de-Marne	Ile-de-France	Créteil
0941401M	Ecole élémentaire Jean Jaurès	6 rue du Verrou	Champigny-sur-Marne	48.8262253	2.49945951	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94017	Val-de-Marne	Ile-de-France	Créteil
0060168A	Ecole élémentaire Daudet 2	2 rue Albert Camus	Cagnes-sur-Mer	43.6593475	7.14700079	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06027	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0061522X	Ecole maternelle Lou Souleou	19 avenue des Cigales	Carros	43.7695999	7.19159985	101	ECOLE MATERNELLE	06	93	23	06033	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0061571A	Ecole primaire Fiori	\N	Carros	43.801033	7.19746017	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06033	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0220008P	Collège Victor Vasarely	Rue ANDRE GILLES	Le Mené	48.2970276	-2.51239944	340	COLLEGE	22	53	14	22046	Côtes-d'Armor	Bretagne	Rennes
0261135T	Collège Chabrillan St Jean-Baptiste	109 route DE DIEULEFIT	Montélimar	44.5502586	4.77418995	340	COLLEGE	26	84	08	26198	Drôme	Auvergne-Rhône-Alpes	Grenoble
0770113E	Ecole élémentaire	3 rue de la Moque Souris	Amponville	48.2784996	2.5295198	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77003	Seine-et-Marne	Ile-de-France	Créteil
0770198X	Ecole Elémentaire François Couperin	3 rue Maurice Thorez	Mitry-Mory	48.9848137	2.61748052	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77294	Seine-et-Marne	Ile-de-France	Créteil
0770408A	Ecole maternelle Arcades Fleuries	Rue des Arcades	Chelles	48.8805771	2.62125969	101	ECOLE MATERNELLE	77	11	24	77108	Seine-et-Marne	Ile-de-France	Créteil
0770826E	Ecole élémentaire	Place Albert Boyer	Verdelot	48.8748207	3.36787057	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77492	Seine-et-Marne	Ile-de-France	Créteil
0771311G	Ecole maternelle Jules Ferry	Rue Jules Ferry	Fontenay-Trésigny	48.7073708	2.86685944	101	ECOLE MATERNELLE	77	11	24	77192	Seine-et-Marne	Ile-de-France	Créteil
0771693X	Ecole élémentaire Les Rivières	26 rue de Savigny	Savigny-le-Temple	48.601078	2.57304025	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77445	Seine-et-Marne	Ile-de-France	Créteil
0772457C	Ecole maternelle La Fontaine	1 rue DE RICHELIEU	Mitry-Mory	48.9592285	2.58394003	101	ECOLE MATERNELLE	77	11	24	77294	Seine-et-Marne	Ile-de-France	Créteil
0772656U	Ecole élémentaire Les Pêcheurs	6 esplanade Louis Chiron	Vaires-sur-Marne	48.8685074	2.6504097	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77479	Seine-et-Marne	Ile-de-France	Créteil
0131711P	Collège Rocher du Dragon	AVENUE HENRI PONTIER	Aix-en-Provence	43.5333672	5.43841982	340	COLLEGE	13	93	02	13001	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0170028N	Lycée général et technologique Jean Dautet	18 rue DELAYANT	La Rochelle	46.1644974	-1.1538198	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	17	75	13	17300	Charente-Maritime	Nouvelle-Aquitaine	Poitiers
0340434M	Ecole maternelle du Vidourle	Boulevard Ernest Renan	Marsillargues	43.6675301	4.18003035	101	ECOLE MATERNELLE	34	76	11	34151	Hérault	Occitanie	Montpellier
0491185X	Ecole primaire privée Notre-Dame de Nantilly	6 rue de Sévigné	Saumur	47.2535439	-0.075950183	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49328	Maine-et-Loire	Pays de la Loire	Nantes
0300031W	Collège George Ville	24 place Général Leclerc	Pont-Saint-Esprit	44.2562752	4.6458807	340	COLLEGE	30	76	11	30202	Gard	Occitanie	Montpellier
0670086E	Lycée polyvalent Rene Cassin -  Lycée des métiers	4 rue Schoch	Strasbourg	48.5826759	7.77042007	306	LYCEE POLYVALENT	67	44	15	67482	Bas-Rhin	Grand Est	Strasbourg
0810020G	Collège Madeleine Cros	\N	Dourgne	43.4859314	2.13637018	340	COLLEGE	81	76	16	81081	Tarn	Occitanie	Toulouse
0080711E	Ecole primaire Calmette	148 avenue Albert Calmette	Revin	49.9267006	4.65034008	151	ECOLE DE NIVEAU ELEMENTAIRE	08	44	19	08363	Ardennes	Grand Est	Reims
0080782G	Ecole maternelle Résidence	3 avenue Winston Churchill	Sedan	49.7047424	4.94563961	101	ECOLE MATERNELLE	08	44	19	08409	Ardennes	Grand Est	Reims
0101013X	Ecole élémentaire	10 RUE HENRI RODIN	Saint-Lyé	48.3625221	4.00418043	151	ECOLE DE NIVEAU ELEMENTAIRE	10	44	19	10349	Aube	Grand Est	Reims
0141276L	Section d'enseignement professionnel du Lycée polyvalent Paul Cornu	9 rue Paul Cornu	Lisieux	49.1624222	0.218930259	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	14	28	05	14366	Calvados	Normandie	Caen
0250429F	Ecole élémentaire	6 rue de l'Ecole	Dommartin	46.923439	6.30792952	151	ECOLE DE NIVEAU ELEMENTAIRE	25	27	03	25201	Doubs	Bourgogne-Franche-Comté	Besançon
0312004K	Ecole maternelle d'application Maurice Bécanne	3 impasse Boutignon	Toulouse	43.5818672	1.42636955	103	ECOLE MATERNELLE D APPLICATION	31	76	16	31555	Haute-Garonne	Occitanie	Toulouse
0331523B	Collège privé Sainte Anne	117 RUE DU PRESIDENT KENNEDY	Le Bouscat	44.8664017	-0.606888592	340	COLLEGE	33	75	04	33069	Gironde	Nouvelle-Aquitaine	Bordeaux
0390331Y	Ecole maternelle	3 bis rue de la Gare	Fraisans	47.1519356	5.75888968	101	ECOLE MATERNELLE	39	27	03	39235	Jura	Bourgogne-Franche-Comté	Besançon
0440835U	Ecole élémentaire Les Grands Bois	9 avenue des Grands Bois	Saint-Herblain	47.233799	-1.59097934	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44162	Loire-Atlantique	Pays de la Loire	Nantes
0441420E	Ecole primaire privée Saint Michel	15 rue Marie Anne du Boccage	Nantes	47.2155838	-1.5703696	151	ECOLE DE NIVEAU ELEMENTAIRE	44	52	17	44109	Loire-Atlantique	Pays de la Loire	Nantes
0442728B	collège Marcelle Baron	3 rue  ANNE DE BRETAGNE	Héric	47.4077415	-1.64866054	340	COLLEGE	44	52	17	44073	Loire-Atlantique	Pays de la Loire	Nantes
0470323W	Ecole maternelle Edouard Lacour	Rue Alfred de Vigny	Agen	44.1891556	0.628114522	101	ECOLE MATERNELLE	47	75	04	47001	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0470593P	Ecole primaire	\N	Francescas	44.0638657	0.425847739	151	ECOLE DE NIVEAU ELEMENTAIRE	47	75	04	47102	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0570073V	Collège l'Arborétum	5 rue VERLAINE	Morhange	48.9185982	6.62967968	340	COLLEGE	57	44	12	57483	Moselle	Grand Est	Nancy-Metz
0590738G	Ecole primaire Jacques Prévert	Rue des Poilus	Busigny	50.034729	3.46746016	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59118	Nord	Hauts-de-France	Lille
0591318M	Ecole primaire Jean Macé	18 rue Mirabeau	Hantay	50.5335007	2.86762023	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59281	Nord	Hauts-de-France	Lille
0591459R	Ecole maternelle Jean de La Fontaine	500 rue Marx Dormoy	Jeumont	50.3034668	4.09574032	101	ECOLE MATERNELLE	59	32	09	59324	Nord	Hauts-de-France	Lille
0591701D	Ecole primaire Henri Millez	34 rue Henri Millez	Louvil	50.5596848	3.19394922	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59364	Nord	Hauts-de-France	Lille
0592528C	Ecole maternelle Pierre Malfait	60 rue Delerue	Wasquehal	50.6677132	3.12542939	101	ECOLE MATERNELLE	59	32	09	59646	Nord	Hauts-de-France	Lille
0593485T	Ecole primaire du Val d'Yser	270 route de Wormhout	Herzeele	50.8866692	2.52620935	151	ECOLE DE NIVEAU ELEMENTAIRE	59	32	09	59305	Nord	Hauts-de-France	Lille
0621022Z	Ecole primaire Les Sources	Rue Herse	Lillers	50.5807686	2.4683094	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62516	Pas-de-Calais	Hauts-de-France	Lille
0621270U	Ecole primaire RPI 72	Rue de la Mairie	Tingry	50.6190453	1.73160076	151	ECOLE DE NIVEAU ELEMENTAIRE	62	32	09	62821	Pas-de-Calais	Hauts-de-France	Lille
0623168G	Ecole maternelle Pauline Kergomard	115 boulevard de la Liberté	Outreau	50.701561	1.57939935	101	ECOLE MATERNELLE	62	32	09	62643	Pas-de-Calais	Hauts-de-France	Lille
0870519S	Ecole élémentaire publique	5 rue du 19 Mars 1962	Vaulry	46.0223541	1.0851897	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87198	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0875005T	Ecole élémentaire publique	Rue Pasteur	Rochechouart	45.8263741	0.824689627	151	ECOLE DE NIVEAU ELEMENTAIRE	87	75	22	87126	Haute-Vienne	Nouvelle-Aquitaine	Limoges
0910957W	Ecole élémentaire Jean Moulin	184 boulevard de France	Brétigny-sur-Orge	48.5989685	2.3058207	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91103	Essonne	Ile-de-France	Versailles
0911400C	Section d'enseignement général et professionnel adapté du Collège Albert Camus	17 RUE DU PEUPLE LA LANCE	La Norville	48.5798683	2.25234008	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	91	11	25	91457	Essonne	Ile-de-France	Versailles
0912301G	Ecole maternelle Le Petit Prince	19 mail Antoine de Saint-Exupéry	Etampes	48.4359169	2.14023972	101	ECOLE MATERNELLE	91	11	25	91223	Essonne	Ile-de-France	Versailles
9741051Z	Lycée polyvalent Paul Moreau	51 chemin BRAS PANON	Bras-Panon	-21.0031681	55.68293	306	LYCEE POLYVALENT	974	04	28	97402	La Réunion	La Réunion	La Réunion
0071068Y	Ecole primaire privée Saint Louis	20 boulevard Jean Jaurès	Le Teil	44.54879	4.68090963	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07319	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0071119D	Ecole élémentaire Brémondières	18 rue du Général Leclerc	Saint-Péray	44.9485245	4.8465004	151	ECOLE DE NIVEAU ELEMENTAIRE	07	84	08	07281	Ardèche	Auvergne-Rhône-Alpes	Grenoble
0220233J	Ecole primaire publique Jean Gillet	6 rue de la Liberté	Plémy	48.3358803	-2.68011045	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22184	Côtes-d'Armor	Bretagne	Rennes
0220337X	Ecole primaire publique de Plouguenast	Rue Fulgence Bienvenue	Plouguenast-Langast	48.2826614	-2.706918	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22219	Côtes-d'Armor	Bretagne	Rennes
0220381V	Ecole primaire publique  Trégomar/la Poterie	Rue de l'Orée	Lamballe-Armor	48.4642868	-2.42448068	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22093	Côtes-d'Armor	Bretagne	Rennes
0221613J	Ecole primaire publique L'Hilvern	32 route Nationale	Saint-Caradec	48.1928482	-2.85424948	151	ECOLE DE NIVEAU ELEMENTAIRE	22	53	14	22279	Côtes-d'Armor	Bretagne	Rennes
0260483J	Ecole primaire Kergomard-Récamier	6 rue de l'Armée Belge	Valence	44.9305458	4.90260983	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26362	Drôme	Auvergne-Rhône-Alpes	Grenoble
0260909X	Ecole  privée Sainte Marie	3 chemin des Rossignols	Dieulefit	44.5273514	5.06355953	151	ECOLE DE NIVEAU ELEMENTAIRE	26	84	08	26114	Drôme	Auvergne-Rhône-Alpes	Grenoble
0271569J	Ecole primaire Coluche	Allée du Faon	Val-de-Reuil	49.2717819	1.20163941	151	ECOLE DE NIVEAU ELEMENTAIRE	27	28	21	27701	Eure	Normandie	Rouen
0560173J	Collège privé Sainte Marie	20 rue ST VINCENT	Sarzeau	47.5273285	-2.76599956	340	COLLEGE	56	53	14	56240	Morbihan	Bretagne	Rennes
0560467D	Ecole primaire publique Lucien Paye	5 rue de la Grotte	Saint-Nolff	47.7029343	-2.64858055	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56231	Morbihan	Bretagne	Rennes
0560599X	Ecole primaire publique La Colline aux Ajoncs	4 rue de l'Etang	Malguénac	48.0819016	-3.04923034	151	ECOLE DE NIVEAU ELEMENTAIRE	56	53	14	56125	Morbihan	Bretagne	Rennes
0710183N	Ecole maternelle La brierette	16 rue Léon Pic	Digoin	46.4896812	4.00107956	101	ECOLE MATERNELLE	71	27	07	71176	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0710904X	Ecole primaire	\N	Saint-Boil	46.6552505	4.68335962	151	ECOLE DE NIVEAU ELEMENTAIRE	71	27	07	71392	Saône-et-Loire	Bourgogne-Franche-Comté	Dijon
0730137C	Ecole élémentaire	LIEU-DIT CHEF LIEU	Lépin-le-Lac	45.5378036	5.7938199	151	ECOLE DE NIVEAU ELEMENTAIRE	73	84	08	73145	Savoie	Auvergne-Rhône-Alpes	Grenoble
0750671X	Lycée polyvalent Edgar Quinet	63 rue des Martyrs	Paris  9e  Arrondissement	48.8812561	2.33987021	306	LYCEE POLYVALENT	75	11	01	75109	Paris	Ile-de-France	Paris
0750708M	Lycée Polyvalent Jean Drouant - Lycée des métiers de l'hôtellerie et de la restauration	20 rue Médéric	Paris 17e  Arrondissement	48.8807487	2.30373955	306	LYCEE POLYVALENT	75	11	01	75117	Paris	Ile-de-France	Paris
0800797G	Ecole primaire	5 rue DE SAUCOURT	Nibas	50.0982704	1.58970976	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80597	Somme	Hauts-de-France	Amiens
0801434Z	Ecole élémentaire	10 rue de la Mairie	Pendé	50.1583824	1.58620989	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80618	Somme	Hauts-de-France	Amiens
0801843U	Ecole primaire	5 rue Thiers	Fouilloy	49.8994293	2.50468946	151	ECOLE DE NIVEAU ELEMENTAIRE	80	32	20	80338	Somme	Hauts-de-France	Amiens
9740288V	Ecole primaire Jules Ferry	Chemin les Canaux	Saint-Louis	-21.2839775	55.4347496	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97414	La Réunion	La Réunion	La Réunion
9740298F	Ecole primaire publique Louise Payet	4 chemin de l'Ecole	Saint-Paul	-21.02425	55.2855301	151	ECOLE DE NIVEAU ELEMENTAIRE	974	04	28	97415	La Réunion	La Réunion	La Réunion
0021006H	Ecole primaire	2 rue de la Nation	Lemé	49.8376579	3.76376009	101	ECOLE MATERNELLE	02	32	20	02416	Aisne	Hauts-de-France	Amiens
0021612S	Ecole primaire privée La Providence	40 rue Vinchon	Laon	49.5623856	3.62692022	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02408	Aisne	Hauts-de-France	Amiens
0022051U	Ecole élémentaire	6 rue Chantereau	Homblières	49.8497963	3.36588001	151	ECOLE DE NIVEAU ELEMENTAIRE	02	32	20	02383	Aisne	Hauts-de-France	Amiens
0022066K	Ecole élémentaire d'application Centre	1 rue DU VIEUX REMPART	Soissons	49.3785744	3.3262701	153	ECOLE ELEMENTAIRE D APPLICATION	02	32	20	02722	Aisne	Hauts-de-France	Amiens
0130380T	Ecole maternelle Paul Langevin	Avenue Fernand Léger	Berre-l'Etang	43.4884682	5.17292023	101	ECOLE MATERNELLE	13	93	02	13014	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0131219E	Ecole élémentaire Albert Camus	Avenue de Lacanau	Marignane	43.411602	5.22252989	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13054	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0130338X	Ecole maternelle du Cloître	30 rue du Cloître	Arles	43.6760864	4.62839937	101	ECOLE MATERNELLE	13	93	02	13004	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0132442J	Ecole élémentaire Romain Rolland	Rue Louis Flisi Mallebarge	Port-Saint-Louis-du-Rhône	43.392498	4.80183935	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13078	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0351972D	Maison Familiale Rurale de Montauban	\N	Montauban-de-Bretagne	48.2031517	-2.07575011	380	MAISON FAMILIALE RURALE EDUCATION ORIENT	35	53	14	35184	Ille-et-Vilaine	Bretagne	Rennes
0740308H	Ecole primaire publique André Zénoni ST GINGOLPH	2 rue du 23 Juillet 1944	Saint-Gingolph	46.3928871	6.80143929	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74237	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0740759Y	Ecole primaire publique Annie Bettex MORILLON	Chef Lieu	Morillon	46.0859184	6.66720963	151	ECOLE DE NIVEAU ELEMENTAIRE	74	84	08	74190	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0741301M	Ecole maternelle publique Les Prés Riants RUMILLY	Rue des Prés Riants	Rumilly	45.8601074	5.95567942	101	ECOLE MATERNELLE	74	84	08	74225	Haute-Savoie	Auvergne-Rhône-Alpes	Grenoble
0540852H	Ecole maternelle d'application Boudonville	60 rue de Boudonville	Nancy	48.6980972	6.16423941	103	ECOLE MATERNELLE D APPLICATION	54	44	12	54395	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0541951C	Ecole maternelle Jacques Prévert	Rue Salvador Allende	Blénod-lès-Pont-à-Mousson	48.8872604	6.0436306	101	ECOLE MATERNELLE	54	44	12	54079	Meurthe-et-Moselle	Grand Est	Nancy-Metz
0571966C	Ecole maternelle Arc en Ciel	3 rue des Alliés	Novéant-sur-Moselle	49.0241241	6.04805994	101	ECOLE MATERNELLE	57	44	12	57515	Moselle	Grand Est	Nancy-Metz
0571993G	Ecole primaire Huver	Rue des Mirabelles	Courcelles-sur-Nied	49.066658	6.30524969	151	ECOLE DE NIVEAU ELEMENTAIRE	57	44	12	57156	Moselle	Grand Est	Nancy-Metz
0572114N	Ecole maternelle Magny Plaine La Moineaudière	Rue du Cottage	Metz	49.0745316	6.1887598	101	ECOLE MATERNELLE	57	44	12	57463	Moselle	Grand Est	Nancy-Metz
0572423Z	Ecole maternelle Le Petit Prince	12 rue du Presbytère	Volmunster	49.1222191	7.35734987	101	ECOLE MATERNELLE	57	44	12	57732	Moselle	Grand Est	Nancy-Metz
0881651S	Lycée professionnel privé Jeanne d'Arc	1 avenue DE HERRINGEN	Neufchâteau	48.3588486	5.69252968	320	LYCEE PROFESSIONNEL	88	44	12	88321	Vosges	Grand Est	Nancy-Metz
9710158V	Ecole primaire Beaujour Agénor	\N	Deshaies	16.3259792	-61.7774811	151	ECOLE DE NIVEAU ELEMENTAIRE	971	01	32	97111	Guadeloupe	Guadeloupe	Guadeloupe
9710643X	Collège Félix Aladin FLEMIN	Quartier LA-HAUT	Deshaies	16.3084126	-61.7892113	340	COLLEGE	971	01	32	97111	Guadeloupe	Guadeloupe	Guadeloupe
9710687V	COLLEGE OLYMPE RAME DECORBIN	Rue DU COLLEGE - DOUVILLE	Sainte-Anne	16.2602863	-61.375679	340	COLLEGE	971	01	32	97128	Guadeloupe	Guadeloupe	Guadeloupe
0750346U	E.P.PR SAINT-BERNARD SAINTE-MARIE 50 rue Stephenson	50 rue Stephenson	Paris 18e  Arrondissement	48.8882027	2.35624957	151	ECOLE DE NIVEAU ELEMENTAIRE	75	11	01	75118	Paris	Ile-de-France	Paris
0010842K	Ecole primaire privée Saint Vincent de Paul	310 grande rue	Montluel	45.8507805	5.0544796	151	ECOLE DE NIVEAU ELEMENTAIRE	01	84	10	01262	Ain	Auvergne-Rhône-Alpes	Lyon
0631430M	Ecole maternelle Louis Aragon	Place de la Résistance	Vertaizon	45.7712479	3.29001021	101	ECOLE MATERNELLE	63	84	06	63453	Puy-de-Dôme	Auvergne-Rhône-Alpes	Clermont-Ferrand
0010817H	Ecole maternelle	96 rue des Greffets	Viriat	46.2530251	5.21494961	101	ECOLE MATERNELLE	01	84	10	01451	Ain	Auvergne-Rhône-Alpes	Lyon
0040108W	Ecole primaire	Place de la Mairie	Clamensane	44.3230591	6.06972599	151	ECOLE DE NIVEAU ELEMENTAIRE	04	93	02	04057	Alpes-de-Haute-Provence	Provence-Alpes-Côte d'Azur	Aix-Marseille
0060514B	Ecole primaire Groupe scolaire du Soleil	Route de Sigale	Roquestéron	43.875618	7.00631046	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06106	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0062117U	Ecole primaire Les Oliviers	2012 avenue de la République	La Roquette-sur-Siagne	43.5872688	6.94007921	151	ECOLE DE NIVEAU ELEMENTAIRE	06	93	23	06108	Alpes-Maritimes	Provence-Alpes-Côte d'Azur	Nice
0090067Z	Ecole primaire	Place Cante Raines	Le Vernet	43.185791	1.60255015	151	ECOLE DE NIVEAU ELEMENTAIRE	09	76	16	09331	Ariège	Occitanie	Toulouse
0090573Z	Collège Mirepoix	Route DE LIMOUX	Mirepoix	43.0858231	1.88247979	340	COLLEGE	09	76	16	09194	Ariège	Occitanie	Toulouse
0131175G	Ecole élémentaire Jean Moulin	Rue Fernand Chauvin	Trets	43.4448204	5.68695974	151	ECOLE DE NIVEAU ELEMENTAIRE	13	93	02	13110	Bouches-du-Rhône	Provence-Alpes-Côte d'Azur	Aix-Marseille
0140302C	Ecole primaire Lucien Cingal	Allée Lucrèce Lucas de Couville	Moult-Chicheboville	49.1160812	-0.167079687	151	ECOLE DE NIVEAU ELEMENTAIRE	14	28	05	14456	Calvados	Normandie	Caen
0180869X	Ecole élémentaire Buissonnets	Avenue de la République	Saint-Amand-Montrond	46.7310638	2.5091095	151	ECOLE DE NIVEAU ELEMENTAIRE	18	24	18	18197	Cher	Centre-Val de Loire	Orléans-Tours
0211566N	ECOLE MATERNELLE	12  GRANDE RUE	Morey-Saint-Denis	47.1948853	4.96344042	101	ECOLE MATERNELLE	21	27	07	21442	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0211970C	ECOLE MATERNELLE	Rue d'Aval	Til-Châtel	47.5153656	5.17496967	101	ECOLE MATERNELLE	21	27	07	21638	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0212187N	ESTHETIQUE 21 - GROUPE SYLVIA TERRADE	6 rue DU CAP VERT	Quetigny	47.3111877	5.09298658	320	LYCEE PROFESSIONNEL	21	27	07	21515	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0212224D	ECOLE PRIVÉE EDUC'AVENIR	4 rue des métiers	Couternon	47.3230476	5.13866711	151	ECOLE DE NIVEAU ELEMENTAIRE	21	27	07	21209	Côte-d'Or	Bourgogne-Franche-Comté	Dijon
0240083K	Collège privé Jeanne d'Arc	Place EMILE CHEYLUD	La Roche-Chalais	45.1525688	0.0067406334	340	COLLEGE	24	75	04	24354	Dordogne	Nouvelle-Aquitaine	Bordeaux
0271539B	Ecole maternelle Henri Wallon	18 rue Saint-Sauveur	Evreux	49.0275459	1.14575958	101	ECOLE MATERNELLE	27	28	21	27229	Eure	Normandie	Rouen
0281012Y	Ecole élémentaire Georges Brassens	1 CLOS GEORGES BRASSENS	Nogent-le-Rotrou	48.3122101	0.831460476	151	ECOLE DE NIVEAU ELEMENTAIRE	28	24	18	28280	Eure-et-Loir	Centre-Val de Loire	Orléans-Tours
0291670H	Ecole primaire publique Quizac	21 avenue DE PROVENCE	Brest	48.40728	-4.51701927	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29019	Finistère	Bretagne	Rennes
0292131J	Ecole primaire publique Les Ajoncs	1 rue des Ecoles	Plouhinec	48.0154152	-4.49012041	151	ECOLE DE NIVEAU ELEMENTAIRE	29	53	14	29197	Finistère	Bretagne	Rennes
0300042H	Collège Marceau Lapierre	Quartier DES FUMADES	Saint-Jean-du-Gard	44.1089706	3.88933992	340	COLLEGE	30	76	11	30269	Gard	Occitanie	Montpellier
0301165D	Ecole primaire privée Saint Jean-Baptiste de La Salle	2 rue Salomon Reinach	Nîmes	43.8352051	4.37479973	151	ECOLE DE NIVEAU ELEMENTAIRE	30	76	11	30189	Gard	Occitanie	Montpellier
0310662B	Ecole maternelle publique Jules Verne	3 rue de la Liberté	Mondonville	43.6704597	1.28825963	101	ECOLE MATERNELLE	31	76	16	31351	Haute-Garonne	Occitanie	Toulouse
0311652C	Ecole maternelle publique le Trépadé	Place du Trépadé	Fonsorbes	43.5329285	1.23016036	101	ECOLE MATERNELLE	31	76	16	31187	Haute-Garonne	Occitanie	Toulouse
0311653D	Ecole maternelle publique Henri Trentin	Chemin de Pujo	Lavernose-Lacasse	43.3949928	1.26508975	101	ECOLE MATERNELLE	31	76	16	31287	Haute-Garonne	Occitanie	Toulouse
0311781T	Ecole maternelle publique Hélène Boucher	2 rue du Château d'Eau	Colomiers	43.6161613	1.33674967	101	ECOLE MATERNELLE	31	76	16	31149	Haute-Garonne	Occitanie	Toulouse
0312748U	Ecole primaire publique Génibrat	Lieu-dit Génibrat	Fontenilles	43.5354919	1.19340968	151	ECOLE DE NIVEAU ELEMENTAIRE	31	76	16	31188	Haute-Garonne	Occitanie	Toulouse
0320256E	Ecole primaire publique	\N	Saint-Jean-le-Comtal	43.5773201	0.52025944	151	ECOLE DE NIVEAU ELEMENTAIRE	32	76	16	32381	Gers	Occitanie	Toulouse
0320557G	Lycée professionnel agricole de Mirande	DOMAINE DE VALENTEES	Mirande	43.5301361	0.401709974	320	LYCEE PROFESSIONNEL	32	76	16	32256	Gers	Occitanie	Toulouse
0330662R	Ecole élementaire	\N	Daignac	44.799324	-0.249363557	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33147	Gironde	Nouvelle-Aquitaine	Bordeaux
0331081W	Ecole élementaire Pierre Dufour	59 rue Henri Groues	Saint-André-de-Cubzac	44.9888496	-0.450500995	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33366	Gironde	Nouvelle-Aquitaine	Bordeaux
0332821M	Ecole elementaire Jean Jaurès	2 rue Edouard Branly	Le Bouscat	44.8667603	-0.584056377	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33069	Gironde	Nouvelle-Aquitaine	Bordeaux
0333310U	Ecole primaire Jules Verne	RUE COLETTE BESSON	Villenave-d'Ornon	44.776989	-0.532533169	151	ECOLE DE NIVEAU ELEMENTAIRE	33	75	04	33550	Gironde	Nouvelle-Aquitaine	Bordeaux
0341191K	Ecole primaire privée Notre-Dame-Bonne-Nouvelle	3 rue Aristide Olivier	Montpellier	43.6069832	3.88119006	151	ECOLE DE NIVEAU ELEMENTAIRE	34	76	11	34172	Hérault	Occitanie	Montpellier
0341341Y	Ecole maternelle Thierry Pautes	Rue Jean Sébastien Bach	Jacou	43.6560402	3.90882993	101	ECOLE MATERNELLE	34	76	11	34120	Hérault	Occitanie	Montpellier
0342263A	Section d'enseignement général et technologique du Lycée professionnel Charles Allies	24  BOULEVARD JOLIOT CURIE	Pézenas	43.4570351	3.41753983	335	SECTION ENSEIGT GENERAL ET TECHNOLOGIQUE	34	76	11	34199	Hérault	Occitanie	Montpellier
0351320V	Ecole primaire privée St Joseph	13 rue des Cotières	La Fresnais	48.5948868	-1.84696949	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35116	Ille-et-Vilaine	Bretagne	Rennes
0351361P	Ecole primaire privée St François	1 rue des Charmilles	Maen Roch	48.4039345	-1.32563031	151	ECOLE DE NIVEAU ELEMENTAIRE	35	53	14	35257	Ille-et-Vilaine	Bretagne	Rennes
0370711X	Ecole maternelle	5 place Charles d'Orléans	Chisseaux	47.3318901	1.09249973	101	ECOLE MATERNELLE	37	24	18	37073	Indre-et-Loire	Centre-Val de Loire	Orléans-Tours
0420850W	Ecole maternelle Jean Plathey	Rue Antonin-Croizier	La Talaudière	45.4776878	4.43288994	101	ECOLE MATERNELLE	42	84	10	42305	Loire	Auvergne-Rhône-Alpes	Lyon
0421038A	Collège privé Les Chartreux-Sainte Famille	36 rue DU VERNAY	Saint-Etienne	45.4302292	4.3926897	340	COLLEGE	42	84	10	42218	Loire	Auvergne-Rhône-Alpes	Lyon
0421318E	Ecole primaire privée Bourg	9 rue des Ecoles	Saint-Christo-en-Jarez	45.5446548	4.48586035	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42208	Loire	Auvergne-Rhône-Alpes	Lyon
0421770W	Ecole élémentaire	Rue Bayard	Savigneux	45.6118202	4.08561039	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42299	Loire	Auvergne-Rhône-Alpes	Lyon
0422196J	Ecole primaire Paule et Joseph Thiollier	4  RUE RECHATIN	Saint-Etienne	45.4500237	4.38712978	151	ECOLE DE NIVEAU ELEMENTAIRE	42	84	10	42218	Loire	Auvergne-Rhône-Alpes	Lyon
0430746C	Ecole élémentaire privée Maison Soeurs Saint Joseph	1 place de l'Eglise	Raucoules	45.1881294	4.29567051	151	ECOLE DE NIVEAU ELEMENTAIRE	43	84	06	43159	Haute-Loire	Auvergne-Rhône-Alpes	Clermont-Ferrand
0450403U	Ecole primaire La Clé des Champs	3 rue Joseph Dabout	Saint-Péravy-la-Colombe	47.9991722	1.70417058	151	ECOLE DE NIVEAU ELEMENTAIRE	45	24	18	45296	Loiret	Centre-Val de Loire	Orléans-Tours
0451092T	Ecole maternelle A. Lavoisier	4 rue Ampère	Orléans	47.8317146	1.92688942	101	ECOLE MATERNELLE	45	24	18	45234	Loiret	Centre-Val de Loire	Orléans-Tours
0451181P	Ecole primaire La Clef des Champs	6 rue de l'Ancien Bourg	Corquilleroy	48.0463028	2.69633055	151	ECOLE DE NIVEAU ELEMENTAIRE	45	24	18	45104	Loiret	Centre-Val de Loire	Orléans-Tours
0470060K	Lycée général et technologique privé Saint Caprais	8 rue Raspail	Agen	44.2074242	0.618823349	300	LYCEE ENSEIGNT GENERAL ET TECHNOLOGIQUE	47	75	04	47001	Lot-et-Garonne	Nouvelle-Aquitaine	Bordeaux
0491626B	Ecole élémentaire Claude Monet	17 boulevard d'Arbrissel	Angers	47.4439316	-0.55960989	151	ECOLE DE NIVEAU ELEMENTAIRE	49	52	17	49007	Maine-et-Loire	Pays de la Loire	Nantes
0500570Y	Ecole primaire	1 bis village de l'Eglise	Sideville	49.5930786	-1.68804979	151	ECOLE DE NIVEAU ELEMENTAIRE	50	28	05	50575	Manche	Normandie	Caen
0561680X	Section d'enseignement professionnel du Lycee des metiers du moulage et de la plasturgie, Marcelin Berthelot	Avenue ROLAND GARROS	Questembert	47.6628761	-2.46187949	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	56	53	14	56184	Morbihan	Bretagne	Rennes
0601347N	Ecole maternelle la Briqueterie	1A rue Paul Verlaine	Beauvais	49.4167519	2.07542062	101	ECOLE MATERNELLE	60	32	20	60057	Oise	Hauts-de-France	Amiens
0660307A	Ecole élémentaire d'application Jules Ferry 2	Boulevard des Pyrénées	Perpignan	42.6956711	2.88752031	153	ECOLE ELEMENTAIRE D APPLICATION	66	76	11	66136	Pyrénées-Orientales	Occitanie	Montpellier
0680584R	Ecole maternelle Centre	Rue du Petit Prince	Sausheim	47.7840919	7.37029982	101	ECOLE MATERNELLE	68	44	15	68300	Haut-Rhin	Grand Est	Strasbourg
0693972T	Ecole primaire privée Saint Pierre - Les Remparts	59 rue Claude Bernard	Villefranche-sur-Saône	45.9944038	4.71760941	151	ECOLE DE NIVEAU ELEMENTAIRE	69	84	10	69264	Rhône	Auvergne-Rhône-Alpes	Lyon
0752896R	Collège privé Notre-Dame de France	63  RUE DE LA SANTE	Paris 13e  Arrondissement	48.8330574	2.34135938	340	COLLEGE	75	11	01	75113	Paris	Ile-de-France	Paris
0761124J	Ecole primaire	2 rue Saint Nicolas	Cauville-sur-Mer	49.5955849	0.129430383	151	ECOLE DE NIVEAU ELEMENTAIRE	76	28	21	76167	Seine-Maritime	Normandie	Rouen
0761503W	Ecole maternelle Jacques Prévert	15 rue Salvandy	Elbeuf	49.2864037	1.00475049	101	ECOLE MATERNELLE	76	28	21	76231	Seine-Maritime	Normandie	Rouen
0762360C	Ecole maternelle Jacques Prévert	Rue de Thurmaston	Offranville	49.8743095	1.04535007	101	ECOLE MATERNELLE	76	28	21	76482	Seine-Maritime	Normandie	Rouen
0771301W	Ecole primaire privée Sainte-Marie	99 rue de l'Eglise	Sivry-Courtry	48.5263443	2.75371027	151	ECOLE DE NIVEAU ELEMENTAIRE	77	11	24	77453	Seine-et-Marne	Ile-de-France	Créteil
0780365Y	Ecole élémentaire	Place de la Mairie	Emancé	48.5902977	1.73042059	151	ECOLE DE NIVEAU ELEMENTAIRE	78	11	25	78209	Yvelines	Ile-de-France	Versailles
0780791L	Ecole maternelle Le Berceau	Sente des Noyers	Elancourt	48.7801781	1.96195984	101	ECOLE MATERNELLE	78	11	25	78208	Yvelines	Ile-de-France	Versailles
0790838G	Ecole primaire privée Loublande	12 rue du Bocage	Mauléon	46.9774628	-0.835490048	151	ECOLE DE NIVEAU ELEMENTAIRE	79	75	13	79079	Deux-Sèvres	Nouvelle-Aquitaine	Poitiers
0810785N	Section d'enseignement général et professionnel adapté du Collège Jean-Louis Etienne	Rue LAPEYROUSE	Mazamet	43.5042381	2.38327932	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	81	76	16	81163	Tarn	Occitanie	Toulouse
0810877N	Ecole primaire privée de La Salvetat	\N	Payrin-Augmontel	43.5191345	2.35627007	151	ECOLE DE NIVEAU ELEMENTAIRE	81	76	16	81204	Tarn	Occitanie	Toulouse
0831281S	Ecole maternelle Henri Olivier	Chemin des Cottes	Callian	43.6242905	6.75054073	101	ECOLE MATERNELLE	83	93	23	83029	Var	Provence-Alpes-Côte d'Azur	Nice
0850484P	ECOLE MATERNELLE CLEMENCEAU	17 boulevard Laplace	Les Sables-d'Olonne	46.4936867	-1.7683804	101	ECOLE MATERNELLE	85	52	17	85194	Vendée	Pays de la Loire	Nantes
0850686J	école primaire privée notre dame de bordevert	1 PLACE DE L'EGLISE	Saint-Gervais	46.9015732	-2.00041056	151	ECOLE DE NIVEAU ELEMENTAIRE	85	52	17	85221	Vendée	Pays de la Loire	Nantes
0890186U	Ecole primaire	2 rue de l'Abbé Gautier	Epineuil	47.8741226	3.98085999	151	ECOLE DE NIVEAU ELEMENTAIRE	89	27	07	89153	Yonne	Bourgogne-Franche-Comté	Dijon
0910798Y	Ecole élémentaire Louise Michel	1  RUE LOUISE MICHEL	Vigneux-sur-Seine	48.6918831	2.43273997	151	ECOLE DE NIVEAU ELEMENTAIRE	91	11	25	91657	Essonne	Ile-de-France	Versailles
0912101P	Ecole maternelle l'Indienne	24 avenue Chantemerle	Corbeil-Essonnes	48.6091156	2.47096014	101	ECOLE MATERNELLE	91	11	25	91174	Essonne	Ile-de-France	Versailles
0921395S	Section d'enseignement général et professionnel adapté du Collège Jean Renoir	29 rue KERMEN	Boulogne-Billancourt	48.8262863	2.2446003	390	SECTION ENSEIGNT GEN. ET PROF. ADAPTE	92	11	25	92012	Hauts-de-Seine	Ile-de-France	Versailles
0931107Y	Ecole primaire privée Sainte Croix	55 rue Henri Barbusse	Noisy-le-Sec	48.8911018	2.45858002	151	ECOLE DE NIVEAU ELEMENTAIRE	93	11	24	93053	Seine-Saint-Denis	Ile-de-France	Créteil
0951505V	Collège privé Notre-Dame de Bury	1 avenue Georges Pompidou	Margency	49.0030212	2.28214025	340	COLLEGE	95	11	25	95369	Val-d'Oise	Ile-de-France	Versailles
0941390A	Ecole élémentaire Victor Hugo	3840 rue Henri Matisse	Vitry-sur-Seine	48.7785912	2.39374042	151	ECOLE DE NIVEAU ELEMENTAIRE	94	11	24	94081	Val-de-Marne	Ile-de-France	Créteil
9720083H	Collège Petit Manoir	Cité SCOLAIRE PETIT MANOIR	Le Lamentin	14.6133499	-60.9985504	340	COLLEGE	972	02	31	97213	Martinique	Martinique	Martinique
9741558A	Section d'enseignement professionnel du Lycée Vincendo	10  ROUTE DE LA MARINE	Saint-Joseph	-21.377306	55.6678391	334	SECTION D ENSEIGNEMENT PROFESSIONNEL	974	04	28	97412	La Réunion	La Réunion	La Réunion
9830381X	Collège Saint Dominique Savio - (DDEC)	RUE LAURE FIORI	La foa	\N	\N	340	COLLEGE	988	00	40	98813	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9830461J	ECOLE ELEMENTAIRE PUBLIQUE GUSTAVE CLAIN (KOUTIO 2)	49 RUE J. MONOD FSH	Dumbea	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	988	00	40	98805	Nouvelle Calédonie	TOM et Collectivités territoriales	Nouvelle Calédonie
9840063W	Ecole élémentaire Pamatai	PK3.8 RTE DES MARAICHERS  FAAA	Faaa	\N	\N	151	ECOLE DE NIVEAU ELEMENTAIRE	987	00	41	98715	Polynésie Française	TOM et Collectivités territoriales	Polynésie Française
9750008K	Ecole du socle de Miquelon	3 rue Sourdeval	Miquelon-langlade	47.1002045	-56.3795509	151	ECOLE DE NIVEAU ELEMENTAIRE	975	00	44	97501	St-Pierre-et-Miquelon	TOM et Collectivités territoriales	Saint Pierre et Miquelon
9710341U	Ecole primaire Gustavia	\N	Saint-Barthélemy	17.8986588	-62.8494415	151	ECOLE DE NIVEAU ELEMENTAIRE	977	00	32	97701	Saint-Barthélémy	TOM et Collectivités territoriales	Guadeloupe
\.


--
-- PostgreSQL database dump complete
--

