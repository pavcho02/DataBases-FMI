USE movies;

/*
SELECT NAME
FROM STARSIN, MOVIESTAR
WHERE GENDER = 'M' AND MOVIETITLE = 'The Usual Suspects' AND STARNAME = NAME AND STARSIN.STARNAME = MOVIESTAR.NAME
*/

/*
SELECT STARNAME
FROM STARSIN, MOVIE
WHERE MOVIEYEAR = 1995 AND STUDIONAME = 'MGM' AND STARSIN.MOVIETITLE = MOVIE.TITLE;
*/

/*
SELECT DISTINCT NAME
FROM MOVIEEXEC, MOVIE
WHERE STUDIONAME = 'MGM' AND PRODUCERC# = CERT#;
*/

/*
SELECT TITLE
FROM MOVIE
WHERE LENGTH > (SELECT LENGTH FROM MOVIE WHERE TITLE = 'Star Wars'); 
*/

/*
SELECT NAME
FROM MOVIEEXEC
WHERE NETWORTH > (SELECT NETWORTH FROM MOVIEEXEC WHERE NAME = 'Stephen Spielberg');
*/

