USE pc;

/*
SELECT maker
FROM product
WHERE type = 'PC' AND product.model IN (SELECT model FROM pc WHERE speed > 500);
*/

/*
SELECT code, model, price
FROM printer AS p
WHERE p.price > ALL (SELECT price FROM printer WHERE p.price < price);
*/

/*
SELECT code, model, speed, ram, hd, price, screen 
FROM laptop
WHERE speed < ALL (SELECT speed FROM pc);
*/

/*
SELECT TOP 1 T.model, T.price
FROM ((SELECT model, price
FROM printer AS pr
WHERE price > ALL (SELECT price FROM printer WHERE pr.price < price))
UNION
(SELECT model, price
FROM laptop AS L
WHERE price > ALL (SELECT price FROM laptop WHERE L.price < price))
UNION
(SELECT model, price
FROM pc AS P
WHERE price > ALL (SELECT price FROM pc WHERE P.price < price))) AS T ORDER BY T.price DESC;
*/

/*
SELECT maker
FROM printer AS pr, product
WHERE color = 'y' AND product.type = 'Printer' AND pr.model = product.model 
AND price < ALL ( SELECT price FROM printer WHERE color = 'y' AND pr.price > price);
*/

/*
SELECT DISTINCT maker
FROM product, pc AS p
WHERE type = 'PC' AND p.model = product.model 
AND ram < ALL ( SELECT ram FROM pc WHERE p.ram > ram AND speed > ALL ( SELECT speed FROM pc AS p2 WHERE speed < p2.speed )) ;
*/