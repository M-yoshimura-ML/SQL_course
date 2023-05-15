-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



--
-- check record count
--
SELECT COUNT(*) FROM my_db1.books WHERE id = 2;


--
-- UPDATE `books` data
--
UPDATE my_db1.books SET author='author B', price=2000  WHERE id = 2;


SET SQL_SAFE_UPDATES = 0;


--
-- DELETE `book_sales` data
--
DELETE FROM my_db1.book_sales WHERE id = 5;

