-- Host: localhost    Database: my_db13
-- ------------------------------------------------------



use my_db13;



-- OVER(partition by order by )


-- FIRST_VALUE() & LAST_VALUE()
select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp
from employees;

select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp,
last_value(emp_name) over(partition by dept_name order by salary desc) as min_salary_emp -- dept_nameごとの適切な最小値が取れない
from employees;


select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp,
last_value(emp_name) over(partition by dept_name order by salary desc 
range between unbounded preceding and current row  -- default : 先頭から現在行
) as min_salary_emp
from employees;

select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp,
last_value(emp_name) over(partition by dept_name order by salary desc 
range between unbounded preceding and unbounded following -- 先頭から末尾
) as min_salary_emp
from employees;

-- row & range difference
select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp,
last_value(emp_name) over(partition by dept_name order by salary desc 
rows between unbounded preceding and current row -- exact row
) as min_salary_emp
from employees;

select *, 
first_value(emp_name) over(partition by dept_name order by salary desc) as max_salary_emp,
last_value(emp_name) over(partition by dept_name order by salary desc 
range between unbounded preceding and current row -- 重複した値がある場合、最後の行の値を取る
) as min_salary_emp
from employees;


-- alternative way to write SQL using Window function
select *, 
first_value(emp_name) over w as max_salary_emp,
last_value(emp_name) over w as min_salary_emp
from employees
window w as (partition by dept_name order by salary desc 
range between unbounded preceding and unbounded following);


