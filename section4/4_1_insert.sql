-- Host: localhost    Database: my_db1
-- ------------------------------------------------------

--
-- Insert data into table `books`
--


INSERT INTO my_db1.books 
(id, 
title, 
author, 
price, 
published_date
)
VALUES (1, 'bookA','authorA','1000','20201124'),
 (2, 'bookB','authorB','1500','20220320');

--
-- Insert data into table `book_sales`
--
INSERT INTO my_db1.book_sales 
(id, 
book_id, 
sold_date, 
sold_number
)
VALUES 
(1, 1,'20201201','1'),
(2, 1,'20201202','2'),
(3, 2,'20220401','1'),
(4, 2,'20220430','2'),
(5, 2,'20220501','1');

