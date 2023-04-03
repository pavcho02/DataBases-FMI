USE ships;

/*
SELECT DISTINCT SHIP, COUNT(BATTLE)
FROM OUTCOMES
WHERE SHIP LIKE 'K%' OR SHIP LIKE 'C%'
GROUP BY SHIP
HAVING COUNT(BATTLE) >= 1;
*/

/*
SELECT DISTINCT NAME, COUNTRY
FROM SHIPS LEFT JOIN OUTCOMES ON SHIP = NAME
JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
WHERE RESULT != 'sunk' OR RESULT IS NULL ;
*/

/*
SELECT COUNTRY, COUNT(RESULT)
FROM SHIPS FULL JOIN OUTCOMES ON SHIP = NAME
FULL JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
WHERE RESULT = 'sunk' OR RESULT IS NULL OR NAME IS NULL
GROUP BY COUNTRY;
*/

/*
SELECT BATTLE
FROM OUTCOMES
GROUP BY BATTLE
HAVING COUNT(SHIP) > (SELECT COUNT(SHIP) FROM OUTCOMES WHERE BATTLE = 'Guadalcanal' GROUP BY BATTLE);
*/

/*
SELECT BATTLE
FROM OUTCOMES
JOIN SHIPS ON SHIP = NAME
JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
GROUP BY BATTLE
HAVING COUNT(DISTINCT COUNTRY) > (SELECT COUNT(DISTINCT COUNTRY) FROM OUTCOMES WHERE BATTLE = 'Surigao Strait' GROUP BY BATTLE);
*/

/*
SELECT NAME, DISPLACEMENT, NUMGUNS
FROM SHIPS
JOIN CLASSES ON CLASSES.CLASS = SHIPS.CLASS
WHERE DISPLACEMENT = (SELECT MIN(DISPLACEMENT) FROM CLASSES)
GROUP BY NUMGUNS,NAME, DISPLACEMENT
HAVING NUMGUNS = MAX(NUMGUNS);
--OR
SELECT NAME, DISPLACEMENT, NUMGUNS
FROM SHIPS
JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
WHERE DISPLACEMENT <= ALL (SELECT DISPLACEMENT FROM CLASSES)
AND DISPLACEMENT >= ALL (SELECT NUMGUNS FROM CLASSES)
*/

/*
SELECT COUNT(SHIP) AS COUNTSHIPS
FROM OUTCOMES O1
WHERE RESULT = 'damaged' AND SHIP IN (SELECT SHIP FROM OUTCOMES O2 WHERE O1.BATTLE != O2.BATTLE AND RESULT = 'ok');
*/

/*
SELECT SHIP
FROM OUTCOMES AS O1
WHERE RESULT = 'damaged' AND SHIP IN (SELECT SHIP FROM OUTCOMES O2 WHERE O1.BATTLE != O2.BATTLE AND RESULT = 'ok'
AND (SELECT COUNT(OO1.SHIP) FROM OUTCOMES AS OO1 WHERE OO1.BATTLE=O1.BATTLE) < (SELECT COUNT(OO2.SHIP) FROM OUTCOMES AS OO2 WHERE OO2.BATTLE=O2.BATTLE));
*/