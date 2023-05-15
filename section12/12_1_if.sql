-- Host: localhost    Database: my_db1
-- ------------------------------------------------------




/* IF */
set @fruit = 'apple';

SELECT 
 IF (@fruit = 'apple', 'red', IF(@fruit = 'banana', 'yellow', '') ) AS fruitColor;


select published_date, 
if(published_date >= '20220320', "new", "old") as category
 from books;


select published_date, price,
if(published_date >= '20220320' and price<1700, "new & cheap", "old or expensive") as category
from books;
 
