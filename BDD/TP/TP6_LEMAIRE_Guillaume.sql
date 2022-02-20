-- LEMAIRE Guillaume
-- TDM 6 Bases de données
-- 21/10/2021


-- EXERCICE 1

-- EXERCICE 2
-- 1,2,3)
-- On peut créer les relations (commune, code commmune), (departement, code dept), (region, code reg),
-- (academie, code acad), (nature, code nature) et (code etab, adresse)

CREATE TABLE REGIONS(
	code_reg TEXT PRIMARY KEY,
	region TEXT);

CREATE TABLE ACADEMIES(
	code_acad TEXT PRIMARY KEY,
	academie TEXT);

CREATE TABLE DEPARTEMENTS(
	code_dept TEXT PRIMARY KEY,
	departement TEXT,
	c_reg TEXT REFERENCES REGIONS(code_reg),
	reg TEXT);

CREATE TABLE COMMUNES(
	code_commune TEXT PRIMARY KEY,
	commune TEXT,
	c_dept TEXT REFERENCES DEPARTEMENTS(code_dept),
	dept TEXT,
	c_acad TEXT REFERENCES ACADEMIES(code_acad),
	acad TEXT);

CREATE TABLE NATURES(
	code_nature TEXT PRIMARY KEY,
	nature TEXT);

CREATE TABLE ETABLISSEMENTS(
	code_etab TEXT PRIMARY KEY,
	appellation TEXT,
	adresse TEXT,
	c_nature TEXT REFERENCES NATURES(code_nature),
	nature TEXT,
	c_commune TEXT REFERENCES COMMUNES(code_commune),
	commune TEXT);

--------------------------
-- EXERCICE 3
-- Q1)
-- Q2)
-- Q3)
INSERT INTO REGIONS (code_reg, region)
	SELECT code_reg, region FROM IMPORTATION 
		GROUP BY code_reg, region 
		ORDER BY code_reg;

INSERT INTO ACADEMIES (code_acad, academie) 
	SELECT code_acad, academie FROM IMPORTATION 
		GROUP BY code_acad, academie 
		ORDER BY code_acad;

INSERT INTO DEPARTEMENTS (code_dept, departement, c_reg, reg)
	SELECT code_dept, departement, code_reg, region FROM IMPORTATION 
		GROUP BY code_dept, departement, code_reg, region
		ORDER BY code_dept;

INSERT INTO COMMUNES (code_commune, commune, c_dept, dept, c_acad, acad)
	SELECT code_commune, commune, code_dept, departement, code_acad, academie FROM IMPORTATION 
		GROUP BY code_commune, commune, code_dept, departement, code_acad, academie
		ORDER BY code_commune;

INSERT INTO NATURES (code_nature, nature)
	SELECT code_nature, nature FROM IMPORTATION 
		GROUP BY code_nature, nature
		ORDER BY code_nature;

INSERT INTO ETABLISSEMENTS (code_etab, appellation, adresse, c_nature, nature, c_commune, commune)
	SELECT code_etab, appellation, adresse, code_nature, nature, code_commune, commune FROM IMPORTATION 
		GROUP BY code_etab, appellation, adresse, code_nature, nature, code_commune, commune
		ORDER BY code_etab;




