-- Host: localhost    Database: my_db1
-- ------------------------------------------------------

use my_db1;


/*
ex) 本の平均価格よりも安い本の情報を表示する。
     Display info for books that are cheaper than average price of book.
*/
SELECT title, author, price , (SELECT avg(price) FROM books) AS avgPrice
FROM books
WHERE price < (SELECT avg(price) FROM books);


/*
ex) book_sales で集計(GROUP BY)した後に、booksを結合する。
     After grouping book_sales, join books.
*/
SELECT
b.title,
b.author,
b.price,
bs.sumNum,
bs.yearMonth,
b.price * bs.sumNum AS sumPrice
FROM
(SELECT 
bs.book_id,
substring(bs.sold_date,1,6) AS yearMonth,
sum(bs.quantity) as sumNum
FROM book_sales bs 
WHERE 
bs.sold_date >= '20201201' AND bs.sold_date <= '20210131'
GROUP BY bs.book_id, substring(bs.sold_date,1,6)
) bs
LEFT JOIN books b on 
bs.book_id=b.id
ORDER BY yearMonth, sumPrice DESC;


/*
ex) 2020/12/01に売り上げがあった本の情報を取得する
	Get book info sold at 2020/12/01.
*/
SELECT * FROM books WHERE 
id IN (SELECT book_id FROM book_sales WHERE sold_date='20201201');


/*
ex) book_sales に存在する books 情報を取得する。
	Get book info which exists in book_sales.
*/
SELECT * FROM books b WHERE 
EXISTS (  SELECT bs.id, bs.book_id FROM book_sales bs
    WHERE b.id = bs.book_id );


