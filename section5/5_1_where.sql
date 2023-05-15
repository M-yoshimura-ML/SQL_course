-- Host: localhost    Database: my_db1
-- ------------------------------------------------------

use my_db1;
--
-- Get data from `books`
--
SELECT * FROM books
WHERE price < 1500;

--
-- Get data from `books_sales`
--
SELECT * FROM book_sales
WHERE sold_number = 1;


