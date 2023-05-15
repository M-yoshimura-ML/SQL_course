-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



/*
Using LAG(), group by dept_name, order by id, and display like this.
If employee’s salary is higher than previous employee then “higher”,
If lower than previous employee then “lower”,
If same as previous employee then “same”.
*/
use my_db13;

select e.*,
lag(salary) OVER(partition by dept_name order by id) as prev_emp_salary,
case 
 when e.salary > lag(salary) OVER(partition by dept_name order by id) then 'higher'
 when e.salary < lag(salary) OVER(partition by dept_name order by id) then 'lower'
 when e.salary = lag(salary) OVER(partition by dept_name order by id) then 'same'
end sal_compare
from employees e;


/*
2	sold_dateごとのquantityの累積値を算出する。
	ヒント：最初にWITH で sold_date で集計する。
	Calculate the cumulative value of quantity for each sold_date.
	Hint: Aggregate by sold_date with WITH at first.
*/
use my_db1;

-- 以下だと日別にサマリーされていない。
select *, sum(quantity) OVER(order by sold_date)
from book_sales;


-- WITH を使って一度、日毎のサブトータルを算出する。
with daily_sum as (
select sold_date, sum(quantity) as totalNum
from book_sales
group by sold_date
)
select *, sum(totalNum) OVER(order by sold_date)
from daily_sum;



