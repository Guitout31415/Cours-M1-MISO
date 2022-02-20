-- LEMAIRE Guillaume
-- TDM 5 Bases de données
-- 14/10/2021

-- Q1)
CREATE TABLE etapes (
	numero INTEGER,
	CHECK (numero >= 1),
	nom VARCHAR(20),
	primary key (numero)
);
INSERT INTO etapes VALUES (1,'etapeA');
INSERT INTO etapes VALUES (2,'etapeB');
INSERT INTO etapes VALUES (3,'etapeC');

-----------------------------------
-- Q2)
CREATE TABLE temps (
	dossard INTEGER,
	etape INTEGER
	CHECK (etape >= 1),
	CHECK (dossard >= 1),
	chrono INTERVAL,
	id SERIAL,
	primary key (id)
);

-----------------------------------
-- Q3)
-- dossard est la primary key de la table coureurs et etape est la primary key de la table etapes.
ALTER TABLE temps ADD FOREIGN KEY (dossard) REFERENCES COUREURS(dossard);
ALTER TABLE temps ADD FOREIGN KEY (etape) REFERENCES ETAPES(numero);

-----------------------------------
-- Q4)  
ALTER TABLE temps ADD CHECK(chrono > '00:00:00');
ALTER TABLE temps ADD CHECK(chrono < '06:00:00');

-----------------------------------
-- Q5)
INSERT INTO temps VALUES (1,1,'00:30:27');
INSERT INTO temps VALUES (1,2,'01:00:58');
INSERT INTO temps VALUES (2,1,'00:36:43');
INSERT INTO temps VALUES (2,2,'01:03:54');
INSERT INTO temps VALUES (3,1,'00:34:02');
INSERT INTO temps VALUES (3,2,'01:08:35');
INSERT INTO temps VALUES (4,1,NULL);
INSERT INTO temps VALUES (4,2,NULL);
INSERT INTO temps VALUES (5,1,'00:25:00');
INSERT INTO temps VALUES (5,2,NULL);
INSERT INTO temps VALUES (6,1,NULL);
INSERT INTO temps VALUES (6,2,NULL);


-----------------------------------
-- Q6)
-- 1)
CREATE TABLE copy_etapes AS SELECT * FROM etapes;
CREATE TABLE copy_temps AS SELECT * FROM temps;

-- 2)
-- ERREUR:  UPDATE ou DELETE sur la table « etapes » viole la contrainte de clé étrangère
-- On ne peut pas vider la table etapes car la clé primaire est liée à des clés étrangères dans d'autre table, à savoir temps.

-- 3)
DELETE FROM temps;
INSERT INTO temps VALUES (5,1,'00:27:25');
-- La valeur générée pour l'id est 7.

-- 4)
DELETE FROM temps;
ALTER sequence temps_id_seq restart;

-- 5)
DELETE FROM etapes;

-- 6)
INSERT INTO etapes (SELECT * FROM copy_etapes);
INSERT INTO temps (SELECT * FROM copy_temps);
DROP TABLE copy_etapes;
DROP TABLE copy_temps;

-----------------------------------
-- Q7)
SELECT COUREURS.dossard, nom, chrono, rank() over(ORDER BY chrono) FROM COUREURS
	JOIN TEMPS ON COUREURS.dossard = TEMPS.dossard
	WHERE etape = 1;

SELECT COUREURS.dossard, nom, chrono, rank() over(ORDER BY chrono) FROM COUREURS
	JOIN TEMPS ON COUREURS.dossard = TEMPS.dossard
	WHERE etape = 2;	

-----------------------------------	
-- Q8)
SELECT COUREURS.dossard, nom, T.chrono, rank() over(ORDER BY T.chrono), TT.chrono, rank() over(ORDER BY TT.chrono) FROM COUREURS
	JOIN TEMPS AS T ON COUREURS.dossard = T.dossard
	JOIN TEMPS AS TT ON T.dossard = TT.dossard
	WHERE T.etape = 1 AND TT.etape = 2;

-----------------------------------	
-- Q9)
SELECT COUREURS.dossard, nom, T.chrono, rank() over(ORDER BY T.chrono), TT.chrono, rank() over(ORDER BY TT.chrono), T.chrono + TT.chrono AS "chrono total" FROM COUREURS
	JOIN TEMPS AS T ON COUREURS.dossard = T.dossard
	JOIN TEMPS AS TT ON T.dossard = TT.dossard
	WHERE T.etape = 1 AND TT.etape = 2;

