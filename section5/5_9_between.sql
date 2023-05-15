-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. BETWEEN
--
SELECT * FROM books
WHERE published_date BETWEEN '20220321' AND '20220331';



--
-- 2. IN (subquery)
--
SELECT * FROM books
WHERE published_date >= '20220321' AND published_date <= '20220331';


