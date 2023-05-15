-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- LEFT JOIN
SELECT * FROM books b LEFT JOIN book_sales bs on b.id = bs.book_id;

-- RIGHT JOIN
SELECT * FROM books b RIGHT JOIN book_sales bs on b.id = bs.book_id;

-- INNER JOIN
SELECT * FROM books b INNER JOIN  book_sales bs on b.id = bs.book_id;


