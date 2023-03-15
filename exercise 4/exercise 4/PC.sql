USE pc;

/*
SELECT maker, product.model, product.type
FROM product LEFT JOIN pc ON pc.model = product.model
LEFT JOIN laptop ON laptop.model = product.model
LEFT JOIN printer ON printer.model = product.model
WHERE pc.code IS NULL AND laptop.code IS NULL AND printer.code IS NULL;
*/

/*
(SELECT maker
FROM product JOIN laptop ON laptop.model = product.model)
INTERSECT
(SELECT maker
FROM product JOIN printer ON printer.model = product.model);
*/

/*
SELECT DISTINCT l1.hd
FROM laptop AS l1 JOIN laptop AS l2 ON l1.hd=l2.hd
WHERE l1.code != l2.code;
*/

/*
SELECT pc.model
FROM pc LEFT JOIN product ON product.model = pc.model
WHERE maker  IS NULL;
*/