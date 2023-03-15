USE pc;

/*
SELECT maker, speed
FROM product, laptop
WHERE product.model = laptop.model AND hd >= 9;
*/

/*
(SELECT product.model, price
FROM product, laptop
WHERE maker = 'B' AND laptop.model = product.model)
UNION
(SELECT product.model, price
FROM product, printer
WHERE maker = 'B' AND printer.model = product.model)
UNION
(SELECT product.model, price
FROM product, pc
WHERE maker = 'B' AND pc.model = product.model)
*/

/*
(SELECT maker
FROM product
WHERE TYPE = 'Laptop')
EXCEPT
(SELECT maker
FROM product
WHERE TYPE = 'PC');
*/

/*
SELECT DISTINCT pc.hd
FROM pc, pc AS pc2
WHERE pc.hd = pc2.hd AND pc.code != pc2.code;
*/

/*
SELECT DISTINCT pc.model, pc2.model
FROM pc, pc AS pc2
WHERE pc.speed = pc2.speed AND pc2.ram = pc.ram AND pc.model < pc2.model;
*/

/*
SELECT DISTINCT product.maker
FROM pc, product, pc AS pc2, product AS pr2
WHERE pc.speed >= 400  AND pc2.speed >= 400 AND product.maker = pr2.maker 
AND pc.code != pc2.code AND pc.model = product.model AND pc2.model = pr2.model;
*/