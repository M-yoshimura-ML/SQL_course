-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. price: more than or equal to 1500
--
SELECT * FROM books WHERE price >= 1500;

--
-- 2. price: more than or equal to 1800 OR less than or equal to 1300
--
SELECT * FROM books WHERE price >= 1800 OR price <= 1300;

--
-- 3. published_date: more than or equal to 20220301 AND less than or equal to 20220410
--
SELECT * FROM books WHERE published_date >= '20220301'
AND published_date <= '20220410';


