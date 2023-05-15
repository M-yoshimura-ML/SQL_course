-- Host: localhost    Database: my_db17
-- ------------------------------------------------------



use my_db17;



/*
-> Filter: (examinations.test_id = 9)  (cost=7.27 rows=0.8) (actual time=8.98..8.98 rows=0 loops=1)
    -> Index lookup on examinations using student_id (student_id=1000)  (cost=7.27 rows=8) (actual time=8.97..8.98 rows=8 loops=1)
*/
explain analyze
select * from examinations
where
test_id = 9
and student_id = 1000;

-- Add Composite Index
alter table examinations add index test_student_id (student_id, test_id);
/*
-> Index lookup on examinations using test_student_id (student_id=1000, test_id=9)  (cost=1.1 rows=1) (actual time=0.0273..0.0273 rows=0 loops=1)
*/



/*
 -> Filter: (examinations.test_id = 9)  (cost=10.7e+6 rows=969704) (actual time=1.42..5349 rows=99653 loops=1)
    -> Table scan on examinations  (cost=10.7e+6 rows=9.7e+6) (actual time=1.37..4883 rows=10e+6 loops=1)
*/
-- full table scan
explain analyze
select * from examinations FORCE INDEX(test_student_id)
where
test_id = 9;



/*
 -> Filter: ((examinations.test_id = 9) or (examinations.student_id = 370221))  (cost=1.02e+6 rows=969713) (actual time=2.74..5890 rows=99665 loops=1)
    -> Table scan on examinations  (cost=1.02e+6 rows=9.7e+6) (actual time=2.65..5167 rows=10e+6 loops=1)
*/
-- full table scan
explain analyze
select * from examinations
where
test_id = 9
or student_id = 370221;