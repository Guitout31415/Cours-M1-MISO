-- LEMAIRE Guillaume
-- TDM 1 Bases de données
-- 16/09/2021

-- Q1
-- a)
SELECT dossard,nom FROM coureurs;

-- b)
SELECT dossard,nom FROM coureurs ORDER BY dossard;

-- c)
SELECT equipe,dossard,nom FROM coureurs ORDER BY equipe,nom;

-- d)
SELECT dossard,nom,taille FROM coureurs ORDER BY taille;

-- e)
SELECT dossard,nom FROM coureurs WHERE equipe = 'LavePlusBlanc';

-- f)
-- g)
SELECT nom,taille,equipe FROM coureurs WHERE taille < 180;

-- h)
SELECT nom,taille,equipe FROM coureurs WHERE taille < 180 ORDER BY taille;

-- i)
SELECT couleur FROM equipes;

----------------------------------
-- Q2
-- a)
SELECT nom || ' appartient à l`équipe ' || equipe FROM coureurs;

-- b)
SELECT nom || ' appartient à l`équipe ' || equipe AS "appartenance" FROM coureurs;

-- c)
SELECT UPPER(nom) AS "nom maj", CHAR_LENGTH(nom) AS "lg" FROM coureurs;

-- d)
SELECT UPPER(nom),CHAR_LENGTH(nom) FROM coureurs ORDER BY CHAR_LENGTH(nom);
SELECT UPPER(nom) AS "nom maj",CHAR_LENGTH(nom) AS "lg" FROM coureurs ORDER BY CHAR_LENGTH(nom);

-- e)
SELECT dossard, INITCAP(nom), UPPER(SUBSTRING(equipe from 1 for 3)) FROM coureurs;

----------------------------------
-- Q3
-- a)
SELECT nom FROM coureurs WHERE nom LIKE 'a%';

-- b)
SELECT nom FROM coureurs WHERE nom LIKE '%er%';

-- c)
SELECT nom FROM coureurs WHERE nom LIKE '_____';

-- d)
SELECT nom FROM coureurs WHERE nom LIKE 'a__';

-- e)
SELECT nom FROM coureurs WHERE nom LIKE 'a%%';

----------------------------------
-- Q4
-- a)
SELECT taille/100 FROM coureurs;
--On obtient 1 dans tout les cas

-- b)
SELECT taille/100.0 FROM coureurs;
--On obtient beaucoup trop de chiffres significatifs

-- c)
SELECT CAST(taille/100.0 AS float8) FROM coureurs;

-- d)
SELECT TRUNC(taille/100.0, 2) FROM coureurs;

----------------------------------
-- Q5
-- a) Il faut réaliser une jointure avec  equipes.nom et coureurs.equipe
-- b)
SELECT dossard,coureurs.nom,equipe,couleur FROM coureurs JOIN equipes ON equipes.nom = coureurs.equipe; 

-- c)
SELECT coureurs.nom,directeur FROM coureurs JOIN equipes ON equipes.nom = coureurs.equipe; 

-- d)
SELECT coureurs.nom,dossard FROM coureurs JOIN equipes ON equipes.nom = coureurs.equipe WHERE directeur = 'Ralph';

-- e)
SELECT directeur FROM equipes JOIN coureurs ON equipes.nom = coureurs.equipe WHERE coureurs.nom = 'alphonse';

----------------------------------
-- Q6
-- a)
INSERT INTO equipes VALUES ('Nouvelle Equipe', 'Orange', 'Archibald');

-- b)
INSERT INTO coureurs VALUES (8,'luc','Nouvelle Equipe',186);
INSERT INTO coureurs VALUES (9,'jules','Nouvelle Equipe',172);

----------------------------------
-- Q7
-- a)
SELECT nom FROM equipes WHERE directeur IS NULL;

-- b)
SELECT nom FROM equipes WHERE directeur IS NOT NULL;

----------------------------------
-- Q8
--a)
UPDATE coureurs SET taille = taille+1;

--b)
UPDATE equipes SET directeur = 'Hubert' WHERE directeur IS NULL;

