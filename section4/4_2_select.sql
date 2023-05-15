-- Host: localhost    Database: my_db1
-- ------------------------------------------------------


--
-- Get data from `books`
--

SELECT title, author, price FROM books;

--
-- Get data from `books_sales`
--

SELECT book_id, sold_date, sold_number FROM book_sales;


-- create backup table
CREATE TABLE my_db1.books_backup LIKE my_db1.books;

-- insert backup data
INSERT INTO my_db1.books_backup SELECT * FROM my_db1.books;

SELECT * FROM my_db1.books_backup;