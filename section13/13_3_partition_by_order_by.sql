-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;



-- OVER(partition by order by )

-- row_number()
select e.*, 
row_number() OVER(partition by dept_name order by id) as rn
from employees e;

-- fetch first 3 employee from each dept
select * from (
select e.*, 
row_number() OVER(partition by dept_name order by id) as rn
from employees e
) tmp
where tmp.rn < 4;

-- rank()
-- fetch top 3 employees in each dept earning max salary
select e.*,
rank() over(partition by dept_name order by salary desc) as rnk
 from employees e;

select * from (
select e.*,
rank() over(partition by dept_name order by salary desc) as rnk
 from employees e
) tmp
where tmp.rnk < 4;

-- dense_rank() doesn't skip rank(value)
select e.*,
rank() over(partition by dept_name order by salary desc) as rnk,
dense_rank() over(partition by dept_name order by salary desc) as dense_rnk
 from employees e;


