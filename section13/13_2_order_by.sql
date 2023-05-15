-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;



-- OVER(order by )
select e.*, 
SUM(salary) OVER(order by emp_name) as totalSalary,
AVG(salary) OVER(order by emp_name) as avgSalary
from employees e;


select e.*,
AVG(salary) OVER(ORDER BY emp_name ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) as avg_salary -- 1行前から現在行
from employees e;


select e.*, 
AVG(salary) OVER(order by emp_name) as avg_salary1,
AVG(salary) OVER(ORDER BY emp_name ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as avg_salar2,
AVG(salary) OVER(ORDER BY emp_name ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) as avg_salar3
from employees e;