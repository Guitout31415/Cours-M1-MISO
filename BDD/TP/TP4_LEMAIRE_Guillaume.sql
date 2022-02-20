-- LEMAIRE Guillaume
-- TDM 3 Bases de données
-- 07/10/2021


-- Exercice 1
-- Q1)
SELECT *, CAST(FLOOR(superficie/5)+1 AS INTEGER) AS "cat_sup"
	FROM COMMUNES;

-- Q2)
SELECT COUNT(commune), CAST(FLOOR(superficie/5)+1 AS INTEGER) AS "cat_sup"
	FROM COMMUNES 
	GROUP BY cat_sup;
	
-- Q3)
SELECT COMMUNES.*, CAST(FLOOR(superficie/5)+1 AS INTEGER) AS "cat_sup", CAST(FLOOR(pop_totale/1000)+1 AS INTEGER) AS "cat_pop", pop_totale AS "pop_2016" 
FROM COMMUNES JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
WHERE recensement = 2016;

-- Q4)
SELECT COUNT(commune), MIN(superficie), MAX(superficie), ROUND(AVG(superficie),2) AS "moyenne"
FROM COMMUNES JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
GROUP BY CAST(FLOOR(pop_totale/1000)+1 AS INTEGER);

SELECT COUNT(commune), MIN(superficie), MAX(superficie), ROUND(AVG(superficie),2) AS "moyenne"
FROM COMMUNES JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
GROUP BY CAST(FLOOR(pop_totale/1000)+1 AS INTEGER) HAVING COUNT(commune)>5
ORDER BY COUNT(commune) DESC;
---------------------
-- Exercice 2
-- Q1)
CREATE VIEW question_3 AS
SELECT COMMUNES.*, CAST(FLOOR(superficie/5)+1 AS INTEGER) AS "cat_sup", CAST(FLOOR(pop_totale/1000)+1 AS INTEGER) AS "cat_pop", pop_totale AS "pop_2016" 
FROM COMMUNES JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
WHERE recensement = 2016;

SELECT COUNT(commune), MIN(superficie), MAX(superficie), ROUND(AVG(superficie),2) AS "moyenne"
FROM question_3
GROUP BY cat_pop;

---------------------
-- Exercice 3
CREATE VIEW pop_2012 AS
SELECT COMMUNES.insee, nom, pop_totale AS "pop_tot_2012" FROM COMMUNES
JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
WHERE recensement = 2012;

CREATE VIEW pop_2016 AS
SELECT COMMUNES.insee, nom, pop_totale AS "pop_tot_2016" FROM COMMUNES
JOIN POPULATION ON COMMUNES.insee = POPULATION.insee
WHERE recensement = 2016;

SELECT pop_2012.insee, nom, pop_tot_2012, pop_tot_2016, ROUND(CAST(100*(CAST(pop_tot_2016 AS FLOAT)/pop_tot_2012) AS NUMERIC),2)-100 || '%' AS "progression" FROM pop_2012
NATURAL JOIN pop_2016
ORDER BY ROUND(CAST(100*(CAST(pop_tot_2016 AS FLOAT)/pop_tot_2012) AS NUMERIC),2)-100;

