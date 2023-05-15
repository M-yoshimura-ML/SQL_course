-- Host: localhost    Database: 
-- ------------------------------------------------------



use my_db17;


/* after creating table & data, check with explain */
-- using PK, very fast
explain select id from students where id = 20;
/* -> Rows fetched before execution  (cost=0..0 rows=1) (actual time=100e-6..100e-6 rows=1 loops=1) */
explain analyze select id from students where id = 20;



/*
-> Filter: (students.id >= 20)  (cost=99670 rows=497515) (actual time=0.0339..732 rows=999981 loops=1)
    -> Covering index range scan on students using PRIMARY over (20 <= id)  (cost=99670 rows=497515) (actual time=0.0307..665 rows=999981 loops=1)
*/
explain analyze select id from students where id >= 20;


-- type = ALL, full table scan, very slow
explain select id, number from students where number = 1000;
/*
 -> Filter: (students.`number` = 1000)  (cost=100825 rows=99503) (actual time=0.376..322 rows=1 loops=1)
    -> Table scan on students  (cost=100825 rows=995030) (actual time=0.0544..273 rows=1e+6 loops=1)
*/
explain analyze select id, number from students where number = 1000;



select * from students limit 100; -- check name value

-- type = ALL, full table scan
explain select id, name, grade from students where name = '3c57d6';
explain analyze select id, name, grade from students where name = '3c57d6';





create index name_idx on students(name);
-- recheck execution plain
explain select id, name, grade from students where name = '3c57d6';
/*
-> Index range scan on students using name_idx over (name = '3c57d6'), with index condition: (students.`name` like '3c57d6')  (cost=0.71 rows=1) (actual time=0.0906..0.093 rows=1 loops=1)
*/
explain analyze select id, name, grade from students where name LIKE '3c57d6';


-- index doesn't work with expression(%)
explain select id, name, grade from students where name LIKE '%abc%';
/*
 -> Filter: (students.`name` like '%3c57d6%')  (cost=100825 rows=110548) (actual time=0.103..511 rows=1 loops=1)
    -> Table scan on students  (cost=100825 rows=995030) (actual time=0.0825..351 rows=1e+6 loops=1)
*/
explain analyze select id, name, grade from students where name LIKE '%3c57d6%';


-- index working: index range scan
explain select id, name, grade from students where name LIKE '3c57d6%';
/*
-> Index range scan on students using name_idx over ('3c57d6' <= name <= '3c57d6???'), with index condition: (students.`name` like '3c57d6%')  (cost=0.71 rows=1) (actual time=0.0275..0.0308 rows=1 loops=1)
*/
explain analyze select id, name, grade from students where name LIKE '3c57d6%';
