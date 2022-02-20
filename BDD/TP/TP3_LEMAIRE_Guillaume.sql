-- LEMAIRE Guillaume
-- TDM 3 Bases de données
-- 30/09/2021

-- Q1
-- 1)
SELECT insee,nom,superficie FROM COMMUNES 
	ORDER BY superficie DESC;

-- 2)
SELECT insee,nom FROM COMMUNES 
	WHERE nom LIKE '%Lille%';

-- 3)
SELECT insee,SUBSTRING(insee,1,2) AS Departement,nom FROM COMMUNES;

-- 4)
SELECT C.insee,nom,recensement,pop_totale FROM COMMUNES AS C 
	JOIN POPULATION AS P ON C.insee = P.insee
	ORDER BY nom DESC, recensement;

-- 5)
SELECT C.insee,nom,pop_totale FROM COMMUNES AS C 
	JOIN POPULATION AS P ON C.insee = P.insee
	WHERE recensement = 2016
	ORDER BY pop_totale DESC;

-- 6)
SELECT C.insee,nom,pop_mun,superficie,CAST(pop_totale/superficie AS INT) AS densite FROM COMMUNES AS C
	JOIN POPULATION AS P ON C.insee = P.insee
	WHERE recensement = 2016
	ORDER BY densite DESC;

---------------------------
-- Q2
SELECT C.insee,nom,pop_mun,superficie,CAST(pop_totale/superficie AS INT) AS densite FROM COMMUNES AS C
	JOIN POPULATION USING(insee)
	WHERE recensement = 2016
	ORDER BY densite DESC;
     
---------------------------
-- Q3
-- 1)
SELECT C.nom,nom_station,lon,lat FROM COMMUNES AS C
	JOIN STATIONS USING(insee)
	ORDER BY C.nom;

-- 2)
SELECT C.nom,nom_station,lon,lat FROM COMMUNES AS C
	LEFT JOIN STATIONS USING(insee)
	ORDER BY C.nom;

---------------------------
-- Q4
-- 1)
SELECT count(*) AS "nombre de mesure" FROM MESURES_MENSUELLES;

-- 2)
SELECT COUNT(valeur) AS "nombre de mesure", AVG(valeur) AS moyenne, MAX(valeur) AS maximum, MIN(valeur) AS minimum FROM MESURES_MENSUELLES
	WHERE code_polluant = 7;

-- 3)
SELECT COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	WHERE code_polluant = 7
	GROUP BY code_station;

-- 4)
SELECT nom_station, COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	JOIN STATIONS USING(code_station)
	WHERE code_polluant = 7
	GROUP BY nom_station;

-- 5)
SELECT nom_station, COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	JOIN STATIONS USING(code_station)
	WHERE code_polluant = 6001
	GROUP BY nom_station;

-- 6)
SELECT nom_station, COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	JOIN STATIONS USING(code_station)
	GROUP BY nom_station, code_polluant
	HAVING code_polluant = 6001 AND AVG(valeur)>10;
	
-- 7)
SELECT code_station, code_polluant, COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	GROUP BY code_station, code_polluant
	ORDER BY code_polluant;

-- 8)
SELECT code_station, nom_station, code_polluant, nom_polluant, COUNT(valeur), AVG(valeur), MAX(valeur), MIN(valeur) FROM MESURES_MENSUELLES 
	JOIN STATIONS USING(code_station)
	JOIN POLLUANTS USING(code_polluant)
	GROUP BY code_station, code_polluant, nom_station, nom_polluant
	ORDER BY code_polluant;


