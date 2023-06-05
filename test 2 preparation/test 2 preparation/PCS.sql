USE pc;

--SELECT DISTINCT MAKER
--FROM product
--WHERE type = 'Laptop' AND MAKER IN (SELECT MAKER FROM product WHERE type = 'Printer');

--(SELECT DISTINCT MAKER
--FROM product
--WHERE type = 'Laptop') 
--INTERSECT
--(SELECT MAKER 
--FROM product 
--WHERE type = 'Printer');

--UPDATE pc
--SET price = price*0.95
--WHERE model IN (
--	SELECT PC.model FROM PC AS PC
--	JOIN product ON product.model = PC.model
--	WHERE maker IN (
--		SELECT maker
--		FROM product JOIN printer ON printer.model = product.model
--		GROUP BY maker
--		HAVING AVG(price) > 800)
--		);

--SELECT hd, MIN(price)
--FROM PC
--GROUP BY hd
--HAVING hd <= 30 AND hd >= 10;
