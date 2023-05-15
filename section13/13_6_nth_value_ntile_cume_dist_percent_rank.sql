-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;



-- OVER(partition by order by )


-- NTH_VALUE
-- write query to display the second most highest salary under each dept_name.
select *, 
first_value(emp_name) over w as max_salary_emp,
last_value(emp_name) over w as min_salary_emp,
nth_value(emp_name, 2) over w as second_highest_emp 
from employees
window w as (partition by dept_name order by salary desc 
range between unbounded preceding and unbounded following );




-- NTILE
-- write a query to segregate all high slary's employees, mid salary employee and cheap salary's employee
select *,
ntile(3) over(order by salary desc) as buckets
from employees;


select 
tmp.emp_name,
tmp.salary,
case 
 when tmp.buckets = 1 then 'High'
 when tmp.buckets = 2 then 'Mid'
 when tmp.buckets = 3 then 'Low'
end as salary_range
from (
select *,
ntile(3) over(order by salary desc) as buckets
from employees ) tmp;




-- CUME_DIST(cumulative distribution): current row no / total row no of row
-- query to fetch all emp_name which are constituting the first 30% of data in employees table based on salary
-- if there is duplicated row, last row no / total no of row

select
*,
cume_dist() OVER(order by salary desc) as cume_distribution,
round(cume_dist() OVER(order by salary desc) * 100, 1) as cume_dist_percent
from employees;


select
tmp.emp_name,
tmp.salary,
tmp.cume_dist_percent
from
(
select
*,
cume_dist() OVER(order by salary desc) as cume_distribution,
round(cume_dist() OVER(order by salary desc) * 100, 1) as cume_dist_percent
from employees ) tmp
where tmp.cume_dist_percent <= 30;



-- PERCENT_RANK(relative rank of current row / percentage ranking): current row no - 1 / total row no of row - 1
-- query to identify how much percentage higher 
select
*,
percent_rank() OVER(order by salary desc) as percent_ranking,
round(percent_rank() OVER(order by salary desc) * 100, 1) as percentage_ranking
from employees;


select
tmp.emp_name, tmp.percentage_ranking
from 
(
select
*,
percent_rank() OVER(order by salary desc) as percent_ranking,
round(percent_rank() OVER(order by salary desc) * 100, 1) as percentage_ranking
from employees
) tmp
where tmp.emp_name = 'Benjamin Wilson';


