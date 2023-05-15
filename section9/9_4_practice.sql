-- Host: localhost    Database: my_db1
-- ------------------------------------------------------


/* 
1	title = 'Oracle Gold Master Guide' の売り上げ一覧を表示する。
	Display sale list for title = 'Oracle Gold Master Guide'
	Output: are_name, shop_name, title, author, price, sold_date, quantity
 */
select 
-- bs.area_code, bs.shop_code,
a.area_name, s.shop_name,
b.title, b.author, b.price,
bs.sold_date, bs.quantity
FROM book_sales bs 
INNER join books b
on bs.book_id = b.id
left join areas a 
on a.area_code = bs.area_code
left JOIN shops s
on s.area_code = bs.area_code
and s.shop_code = bs.shop_code
where
b.title = 'Oracle Gold Master Guide';


/* 
2	shop_name=’足立区店’ の売り上げ一覧を取得する。
	Get sales list for shop_name = ‘足立区店’
	output：area_name, shop_name, sold_date, quantity, price, sumPrice
 */
SELECT 
a.area_name, s.shop_name, bs.sold_date, bs.quantity,
b.price, b.price * bs.quantity as sumPrice
FROM book_sales bs LEFT JOIN areas a
on bs.area_code = a.area_code
LEFT JOIN shops s
on s.area_code = bs.area_code
and s.shop_code = bs.shop_code
LEFT JOIN books b
on b.id = bs.book_id
WHERE
s.shop_name = '足立区店';


/* 
3	店舗の売り上げランキングを表示する。
	Display sales ranking of shop.
	Output: are_name, shop_name, totalQuantity, totalPrice
	※totalQuantity = sum(quantity)
	※totalPrice = sum(price * quantity)
*/
SELECT 
a.area_name, s.shop_name, 
sum(bs.quantity) as totalQuantity,
sum(b.price * bs.quantity) as totalPrice
FROM book_sales bs LEFT JOIN areas a
on bs.area_code = a.area_code
LEFT JOIN shops s
on s.area_code = bs.area_code
and s.shop_code = bs.shop_code
LEFT JOIN books b
on b.id = bs.book_id
GROUP BY a.area_name, s.shop_name
ORDER BY totalQuantity DESC;





/* 
4	折れ線グラフ表示に必要なデータをSQLを使って取得する。
	Get necessary data by using SQL to display line chart.
 */
select 
bs.area_code,
a.area_name, 
substring(bs.sold_date,1,6) as yearMonth, 
sum(bs.quantity) as totalQuantity
FROM book_sales bs 
left join areas a 
on a.area_code = bs.area_code
GROUP BY bs.area_code,a.area_name, yearMonth
ORDER BY bs.area_code, yearMonth;


