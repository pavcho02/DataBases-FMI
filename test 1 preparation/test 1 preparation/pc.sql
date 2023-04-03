USE pc;

/*
SELECT model
FROM laptop
WHERE screen = 15
INTERSECT
SELECT model
FROM laptop
WHERE screen = 11
*/

/*
SELECT DISTINCT pc.model
FROM pc JOIN product AS P1 ON pc.model = P1.model
WHERE price <= (SELECT MIN(price) FROM laptop JOIN product ON laptop.model = product.model WHERE maker = P1.maker );
*/

/*
SELECT DISTINCT pc.model, AVG(price) AS AVGPRICE
FROM pc JOIN product AS P1 ON pc.model = P1.model
GROUP BY pc.model, maker
HAVING AVG(price) <= (SELECT MIN(price) FROM laptop JOIN product ON laptop.model = product.model WHERE maker = P1.maker);
*/

/*
SELECT code, maker, price, (SELECT COUNT(PC2.code) FROM pc PC2 WHERE PC1.price <= PC2.price AND PC1.code != PC2.code) AS NUMHIGHERPRICE
FROM pc PC1 JOIN product ON product.model = PC1.model
GROUP BY PC1.code, maker, PC1.price
*/