-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- GROUP BY author
SELECT author, sum(price) FROM books GROUP BY author;
SELECT author, count(*) FROM books GROUP BY author;


