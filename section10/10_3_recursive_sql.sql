-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/*
dislay number from 1 to 10 without any in built functions
*/

WITH recursive numbers as (
select 1 as n
union
select n + 1
from numbers where n < 10
) select * from numbers;



