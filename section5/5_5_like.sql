-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. include keyword "SQL" in title
--
SELECT * FROM books
WHERE title LIKE '%SQL%';


--
-- 2. include 2 keywords in title
--
SELECT * FROM books
WHERE title LIKE '%SQL%intermediate%';


-- id has 2 digit, end at 1
select * from books
where
id LIKE '_1';