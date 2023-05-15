-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;


select AVG(salary) from employees;

-- OVER()
select e.*, AVG(salary) OVER() from employees e;

select e.*, AVG(salary) OVER() as avePrice, MAX(salary) OVER() as maxSalary 
from employees e;



-- OVER(partition by )
select e.*, AVG(salary) OVER(partition by dept_name) as aveSalary from employees e;
select e.*, MAX(salary) OVER(partition by dept_name) as maxSalary from employees e;

select e.*, row_number() OVER(partition by dept_name) as rowNum from employees e;

-- ordinal group by
select dept_name, AVG(salary) from employees e group by dept_name;


-- error
select e.*, dept_name, AVG(salary) from employees e group by dept_name;


