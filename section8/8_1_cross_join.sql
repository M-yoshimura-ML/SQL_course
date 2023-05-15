-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- CROSS JOIN
SELECT * FROM books b cross join book_sales bs;

SELECT * FROM books b cross join book_sales bs
on b.id = bs.book_id;


