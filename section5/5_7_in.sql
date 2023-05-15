-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. IN condition
--
SELECT * FROM books
WHERE price IN (1000, 1500, 2000);


--
-- 2. IN (subquery)
--
SELECT * FROM books
WHERE id IN  (SELECT book_id FROM book_sales WHERE sold_date='20201201');


