-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- 1. display books data 
SELECT author, title, price, published_date FROM books 
WHERE published_date >= '20201201' ORDER BY published_date DESC;

-- 2. display books data 
SELECT author, avg(price) AS avgPrice FROM books 
GROUP BY author ORDER BY avgPrice DESC;


