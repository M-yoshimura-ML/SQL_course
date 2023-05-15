-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/*
1	2020/12の本の売上一覧を取得する。
	Display book sale list on 2022/12.
	output：sold_date, sold_number, title, author, price
	sort order: sold_date ASC
*/
SELECT 
bs.sold_date,
bs.sold_number,
b.title,
b.author,
b.price,
b.published_date
FROM book_sales bs 
LEFT JOIN books b on 
bs.book_id=b.id
WHERE 
bs.sold_date >= '20201201' AND bs.sold_date <= '20201231'
ORDER BY bs.sold_date;



/*
2	2022/01 - 2022/06 間の月間売上ランキングを取得する
	Get monthly sales ranking between 2022/01 - 2022/06
	output：yearMonth(yyyymm), sumPrice
	GROUP BY: substring(sold_date, 1, 6)
	sort order: sumPrice DESC, yearMonth
*/
SELECT 
substring(bs.sold_date,1,6) AS yearMonth,
sum(b.price * bs.sold_number) as sumPrice
FROM book_sales bs 
LEFT JOIN books b on 
bs.book_id=b.id
WHERE 
bs.sold_date >= '20220101' AND bs.sold_date <= '20220630'
GROUP BY substring(bs.sold_date,1,6)
ORDER BY sumPrice DESC, yearMonth;



/*
3	2020/12 - 2021/01間の本の売れ筋ランキングを取得する
	Get best selling book ranking between 2020/12 - 2021/01.
	output：yearMonth(yyyymm), title, author, sumPrice
	GROUP BY: substring(sold_date, 1, 6), title, author
	sort order: yearMonth, sumPrice DESC
	※price * sum(sold_number) as sumPrice 
*/
SELECT 
b.title,
b.author,
substring(bs.sold_date,1,6) AS yearMonth,
sum(bs.sold_number) as totalNum,
sum(b.price * bs.sold_number) as sumPrice
FROM book_sales bs 
LEFT JOIN books b on 
bs.book_id=b.id
WHERE 
bs.sold_date >= '20201201' AND bs.sold_date <= '20210131'
GROUP BY yearMonth,b.title, b.author
ORDER BY yearMonth, sumPrice DESC;
