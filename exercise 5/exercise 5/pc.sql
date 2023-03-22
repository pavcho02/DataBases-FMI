USE pc;

/*
SELECT AVG(speed) AS AvgSpeed
FROM pc;
*/

/*
SELECT maker, AVG(screen) AS AvgScreen
FROM laptop, product
WHERE product.model = laptop.model
GROUP BY maker;
*/

/*
SELECT AVG(speed) AS AvgSpeed 
FROM laptop
WHERE price > 1000
*/

/*
SELECT AVG(price) AS AvgPrice
FROM pc JOIN product ON pc.model = product.model
WHERE maker = 'A';
*/

/*
SELECT AVG(T.price) AS AvgPrice
FROM ((SELECT price
FROM pc JOIN product ON product.model = pc.model
WHERE maker = 'B')
UNION ALL
(SELECT price
FROM laptop JOIN product ON product.model = laptop.model
WHERE maker = 'B')) AS T;
*/

/*
SELECT speed, AVG(price) AS AvgPrice
FROM pc
GROUP BY speed;
*/

/*
SELECT maker, COUNT(DISTINCT code) AS countPC
FROM pc JOIN product ON product.model = pc.model
GROUP BY maker
HAVING COUNT(DISTINCT code) >= 3;
*/

/*
SELECT DISTINCT maker, price
FROM pc JOIN product ON product.model = pc.model
WHERE price = (SELECT MAX(price) FROM pc);
*/

/*
SELECT speed, AVG(price) AS avgPrice
FROM pc
WHERE speed > 800
GROUP BY speed;
*/

/*
SELECT maker, AVG(hd) AS AVGHDD
FROM pc JOIN product ON product.model = pc.model
WHERE maker IN (SELECT maker FROM product WHERE type = 'Printer')
GROUP BY maker;
*/