-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- 1. EXISTS
--
SELECT * FROM books b 
WHERE 
EXISTS (
    select bs.id, bs.book_id from book_sales bs
    where b.id = bs.book_id
);


