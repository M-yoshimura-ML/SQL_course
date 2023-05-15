-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. id: start from "1" and 2 digit
--
SELECT * FROM books
WHERE id LIKE '1_';


--
-- 2. author: start from "Wil"
--
SELECT * FROM books
WHERE author LIKE 'Wil%';

--
-- 3. title: include 2 keywords(learn, language)
--
SELECT * FROM books
WHERE title LIKE '%learn%language%';


