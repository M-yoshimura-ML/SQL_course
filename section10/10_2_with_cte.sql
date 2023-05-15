-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



WITH cte_sales as (
SELECT book_id, sold_date, quantity, area_code, shop_code 
FROM book_sales
WHERE area_code = 1
) SELECT * FROM cte_sales WHERE shop_code = 1;





-- subquery
select *
from (
	select book_id, sum(quantity) as total_quantity 
	from book_sales 
	group by book_id
) total_sales_num
inner join (
	select avg(total_quantity) as avg_sales_num 
	from
	(select book_id, sum(quantity) as total_quantity 
	from book_sales 
	group by book_id) total_sales_num
) avg_sales
on total_sales_num.total_quantity > avg_sales.avg_sales_num;


-- WITH
-- same result but not executing same subquery
-- merit: easy to maintain, improve performance of query
with total_sales_num (book_id, total_quantity) as
(	select book_id, sum(quantity) as total_quantity 
	from book_sales 
	group by book_id
),
avg_sales (avg_sales_num) as
(
	select avg(total_quantity) as avg_sales_num
	from total_sales_num
)
 select * from total_sales_num tsn 
 inner join avg_sales avs
 on tsn.total_quantity > avs.avg_sales_num;
