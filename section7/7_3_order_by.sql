-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- ORDER BY published_date
SELECT author, title, price, published_date AS publishedDate
FROM books ORDER BY publishedDate;

-- ORDER BY price
SELECT author, title, price, published_date FROM books ORDER BY price DESC;


