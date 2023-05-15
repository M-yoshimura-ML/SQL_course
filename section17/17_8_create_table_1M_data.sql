-- Host: localhost    Database: 
-- ------------------------------------------------------


create database my_db17;
use my_db17;


CREATE TABLE students
(
  id bigint NOT NULL AUTO_INCREMENT,
  number int, 
  name varchar(20)  NULL,
  grade int  DEFAULT NULL,
  uuid varchar(255) NOT NULL,
  PRIMARY KEY (id)
);


set cte_max_recursion_depth = 1000001;

-- RAND: random number: 0 <= x < 1.0
-- MD5: encript & generate random string
insert into students (number, name, grade, uuid)
WITH recursive randam_students as (
select 
1 as number, 
SUBSTRING(MD5(RAND()), 1, 6) as name, 
FLOOR(RAND()*10) as grade, 
UUID() as uuid
UNION
select 
number + 1, 
SUBSTRING(MD5(RAND()), 1, 6) as name, 
FLOOR(RAND()*10) as grade, 
UUID() as uuid
from randam_students where number < 1000000
)  select number, name, grade, uuid from randam_students;


select * from students limit 1000;

select count(*) from students;

