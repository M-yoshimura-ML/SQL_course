-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. NOT EXISTS
--
SELECT * FROM books b 
WHERE 
NOT EXISTS (
    select bs.id, bs.book_id from book_sales bs
    where b.id = bs.book_id
);

-- 2. NOT IN
SELECT * FROM books
WHERE price NOT IN (1000, 1500, 2000);


-- 3. NOT LIKE
SELECT * FROM books
WHERE title NOT LIKE '%SQL%';


-- 4. NOT BETWEEN
SELECT * FROM books
WHERE published_date BETWEEN '20220321' AND '20220331';
-- 
