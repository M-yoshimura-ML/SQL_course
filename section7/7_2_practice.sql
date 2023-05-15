-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/*
1	authorごとに、本のpriceの平均値を求める
	Get average price of book group by author
*/
SELECT 
author, 
avg(price)
FROM books 
GROUP BY author;



/*
2	authorごとに、本の最高priceを求める
	Get max price of book group by author
*/
SELECT 
author, 
max(price)
FROM books 
GROUP BY author;


