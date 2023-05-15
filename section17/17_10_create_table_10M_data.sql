-- Host: localhost    Database: my_db17
-- ------------------------------------------------------

use my_db17;


CREATE TABLE examinations
(
  id bigint NOT NULL AUTO_INCREMENT,
  test_id int,
  student_id bigint,
  score int,
  uuid varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);


set cte_max_recursion_depth = 10000001;

-- 196sec
insert into examinations (id, test_id, student_id, score, uuid)
WITH recursive randam_examinations as (
select 
1 as id, 
FLOOR(RAND()*100) as test_id, -- 0 - 99
FLOOR(RAND()*1000000) as student_id, -- 0 - 999999
FLOOR(RAND()*100) as score, 
UUID() as uuid
UNION
select 
id + 1, 
FLOOR(RAND()*100) as test_id, 
FLOOR(RAND()*1000000) as student_id, 
FLOOR(RAND()*100) as score, 
UUID() as uuid
from randam_examinations where id < 10000000
)  select id, test_id, student_id, score, uuid from randam_examinations; 


select * from examinations limit 1000;

select count(*) from examinations;