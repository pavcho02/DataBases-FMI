USE pc;

--INSERT INTO PC(code, model, speed, ram, hd, cd, price) VALUES(12,'1100',2400,2048,500,'52x',299);
--INSERT INTO product(maker,model,type) VALUES ('C','1100','PC')

--DELETE FROM pc WHERE model = 1100;

--DELETE FROM LAPTOP WHERE model IN (SELECT model FROM product WHERE maker NOT IN 
--(SELECT DISTINCT maker FROM product WHERE type = 'Printer'));

--UPDATE product SET maker = 'A' WHERE maker = 'B';

--UPDATE PC SET hd+=20, price = price/2; 

--UPDATE laptop SET screen +=1 WHERE model IN (SELECT model FROM product WHERE maker = 'B');

