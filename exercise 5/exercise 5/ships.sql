USE ships;

/*
SELECT COUNT(DISTINCT CLASS) AS bbCOUNT
FROM CLASSES
WHERE TYPE = 'bb';
*/

/*
SELECT CLASS, AVG(NUMGUNS) AS AvgGuns
FROM CLASSES
WHERE TYPE = 'bb'
GROUP BY CLASS;
*/

/*
SELECT AVG(NUMGUNS) AS AvgGuns
FROM CLASSES
WHERE TYPE = 'bb'
*/

/*
SELECT CLASS, MIN(LAUNCHED) AS FIRSTYEAR, MAX(LAUNCHED) AS LASTYEAR
FROM SHIPS
GROUP BY CLASS;
*/

/*
SELECT CLASS, COUNT(CLASS) AS countSunk
FROM OUTCOMES JOIN SHIPS ON SHIPS.NAME = OUTCOMES.SHIP
WHERE RESULT = 'sunk'
GROUP BY CLASS;
*/

/*
SELECT CLASS, COUNT(CLASS) AS countSunk
FROM OUTCOMES JOIN SHIPS ON SHIPS.NAME = OUTCOMES.SHIP
WHERE RESULT = 'sunk' AND CLASS IN (SELECT CLASS FROM SHIPS GROUP BY CLASS HAVING COUNT(CLASS) > 2)
GROUP BY CLASS;
*/

/*
SELECT COUNTRY, AVG(BORE)
FROM CLASSES JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS
GROUP BY COUNTRY;
*/