-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. IS NULL
--
SELECT * FROM books 
WHERE published_date IS NULL;



--
-- 2. IS NOT NULL
--
SELECT * FROM books 
WHERE published_date IS NOT NULL;


SET SQL_SAFE_UPDATES = 0;

--
-- 3. UPDATE
--
UPDATE books SET
published_date = '20210101'
WHERE published_date IS NULL;


-- change back
UPDATE books SET
published_date = NULL
WHERE published_date = '20210101';


-- error: because of NOT NULL constraint
UPDATE books SET
price = NULL
WHERE published_date = '20210101';


describe books;