-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/* CASE */
 set @fruit = 'banana';

SELECT
  CASE 
    WHEN @fruit = 'apple' THEN 'red'
    WHEN @fruit = 'banana' THEN 'yellow'
    ELSE ''
  END AS fruitColor;
  
SELECT
published_date,
price,
  CASE 
    WHEN published_date >= '20220320' and price<1700 THEN 'new & cheap'
    WHEN published_date < '20220320' or price>=1700 THEN 'old or expensive'
    ELSE ''
  END AS category
from books;