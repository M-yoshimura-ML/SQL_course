-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- Get data from `books`
--
SELECT * FROM books 
WHERE 
price > 900 
AND published_date > '20201124';


SELECT * FROM books 
WHERE 
price > 900 
OR published_date > '20201124';




