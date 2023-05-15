-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/*
find the hierarchy of employees under a given group manager "Anthony"
*/
with recursive emp_hierarchy as
(
select id, name, manager_id, designation from employees where name LIKE 'Anthony'
union 
select e.id, e.name, e.manager_id, e.designation from emp_hierarchy h
inner join employees e on h.id = e.manager_id -- join condition is also terminate condition. if it fails to join, recursion stops.
) select * from emp_hierarchy;


with recursive emp_hierarchy as
(
select id, name, manager_id, designation, 1 as level
from employees where name LIKE 'Anthony'
union 
select e.id, e.name, e.manager_id, e.designation from emp_hierarchy h
inner join employees e on h.id = e.manager_id
) select * from emp_hierarchy;



/*
find the hierarchy of employees under a given employee "Isaac"
*/
with recursive emp_hierarchy as
(
select id, name, manager_id, designation, 1 as level
from employees where name LIKE 'Isaac'
union 
select e.id, e.name, e.manager_id, e.designation, h.level + 1 as level
from emp_hierarchy h
 join employees e on h.manager_id = e.id 
) select * from emp_hierarchy;
