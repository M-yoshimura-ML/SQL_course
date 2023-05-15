-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;



-- OVER(partition by order by )


--  LAG() & LEAD() 
-- lower or equal to the previous employee
-- lag(column_name, [offset], [initial value])
select e.*,
lag(salary) OVER(partition by dept_name order by id) as prev_emp_salary,
lag(salary, 2, '0') OVER(partition by dept_name order by id) as prev_emp_salary2
from employees e;

-- fetch a query to display if the salary of an employee is higher, 
select e.*,
lag(salary) OVER(partition by dept_name order by id) as prev_emp_salary,
lead(salary) OVER(partition by dept_name order by id) as next_emp_salary
from employees e;



