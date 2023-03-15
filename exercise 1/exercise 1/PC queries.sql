USE pc;

/*
SELECT model AS MODEL, speed AS MHz, hd AS GB
FROM pc
WHERE price < 1200;
*/

/*
SELECT DISTINCT maker 
FROM product, printer
WHERE product.type = 'Printer' AND printer.model = product.model;
*/

/*
SELECT model, ram, screen
FROM laptop
WHERE price > 1000;
*/

/*
SELECT *
FROM printer
WHERE color = 'y';
*/

/*
SELECT model, speed, hd
FROM pc
WHERE price < 2000 AND (cd = '12x' OR cd = '16x');
*/