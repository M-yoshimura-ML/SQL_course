-- Host: localhost    Database: my_db17
-- ------------------------------------------------------



use my_db17;


/* 
-> Nested loop left join  (cost=1.02e+6 rows=9.7e+6) (actual time=98.1..4108 rows=8 loops=1)
    -> Rows fetched before execution  (cost=0..0 rows=1) (actual time=0..0 rows=1 loops=1)
    -> Filter: (e.student_id = 10000)  (cost=1.02e+6 rows=9.7e+6) (actual time=98.1..4108 rows=8 loops=1)
        -> Table scan on e  (cost=1.02e+6 rows=9.7e+6) (actual time=0.514..3738 rows=10e+6 loops=1)
     */
-- takes: 5s
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
 s.id = 10000;


/*
 -> Left hash join (e.student_id = s.id)  (cost=2.04e+6 rows=9.7e+6) (actual time=5642..6753 rows=7 loops=1)
    -> Index lookup on s using name_idx (name='abc5fe')  (cost=0.815 rows=1) (actual time=0.0481..0.0496 rows=1 loops=1)
    -> Hash
        -> Table scan on e  (cost=1.02e+6 rows=9.7e+6) (actual time=2.02..3927 rows=10e+6 loops=1)
*/
-- takes:7sec
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
s.name = 'abc5fe';


/*
-> Left hash join (e.student_id = s.id)  (cost=224e+6 rows=2.24e+9) (actual time=5634..14990 rows=2383 loops=1)
    -> Index range scan on s using name_idx over ('abc' <= name <= 'abc???'), with index condition: (s.`name` like 'abc%')  (cost=218 rows=231) (actual time=0.216..7.53 rows=231 loops=1)
    -> Hash
        -> Table scan on e  (cost=4426 rows=9.7e+6) (actual time=2.34..3995 rows=10e+6 loops=1)
*/
-- takes:15sec
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
s.name LIKE 'abc%';



-- Add Index
-- takes:26sec
create index student_id on examinations(student_id);

-- id's Cardinality might not be reflected properly.
show index from examinations;

-- check table & index statistics info 
SELECT * FROM mysql.innodb_table_stats WHERE database_name="my_db17";
select * from mysql.innodb_index_stats where table_name = 'examinations';

-- manual update statistics info
ANALYZE TABLE examinations;

-- check id's Cardinality
show index from examinations;



/*
-> Nested loop left join  (cost=8.8 rows=8) (actual time=0.0789..0.0831 rows=8 loops=1)
    -> Rows fetched before execution  (cost=0..0 rows=1) (actual time=100e-6..100e-6 rows=1 loops=1)
    -> Index lookup on e using student_id (student_id=10000)  (cost=8.8 rows=8) (actual time=0.0715..0.0744 rows=8 loops=1)
*/
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
 s.id = 10000;
 
/*
 -> Nested loop left join  (cost=11.4 rows=9.69) (actual time=0.0643..0.0676 rows=7 loops=1)
    -> Index lookup on s using name_idx (name='abc5fe')  (cost=1.07 rows=1) (actual time=0.0228..0.0235 rows=1 loops=1)
    -> Index lookup on e using student_id (student_id=s.id)  (cost=10.3 rows=9.69) (actual time=0.0395..0.0416 rows=7 loops=1)
*/
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
s.name = 'abc5fe'; 

/*
-> Nested loop left join  (cost=2723 rows=2223) (actual time=7.4..488 rows=2383 loops=1)
    -> Index range scan on s using name_idx over ('abc' <= name <= 'abc???'), with index condition: (s.`name` like 'abc%')  (cost=278 rows=231) (actual time=2.11..44.1 rows=231 loops=1)
    -> Index lookup on e using student_id (student_id=s.id)  (cost=9.62 rows=9.62) (actual time=1.61..1.92 rows=10.3 loops=231)
*/
explain analyze
select s.id, s.name, s.grade, e.test_id, e.score from students s
left join examinations e
on s.id = e.student_id
where
s.name LIKE 'abc%';



/*
 -> Sort: s.grade, avgScore DESC  (actual time=14.6..14.6 rows=7 loops=1)
    -> Table scan on <temporary>  (actual time=14.6..14.6 rows=7 loops=1)
        -> Aggregate using temporary table  (actual time=14.6..14.6 rows=7 loops=1)
            -> Nested loop inner join  (cost=2642 rows=222) (actual time=1.17..13.7 rows=20 loops=1)
                -> Index range scan on s using name_idx over ('abc' <= name <= 'abc???'), with index condition: (s.`name` like 'abc%')  (cost=271 rows=231) (actual time=0.0459..1.18 rows=231 loops=1)
                -> Filter: (e.test_id = 10)  (cost=9.3 rows=0.962) (actual time=0.053..0.0541 rows=0.0866 loops=231)
                    -> Index lookup on e using student_id (student_id=s.id)  (cost=9.3 rows=9.62) (actual time=0.0444..0.0536 rows=10.3 loops=231)

*/
explain analyze
select s.grade, avg(e.score) as avgScore from students s
left join examinations e
on s.id = e.student_id
where
s.name LIKE 'abc%'
and e.test_id = 10
group by s.grade
order by s.grade, avgScore DESC; 



/*
-> Nested loop left join  (cost=103 rows=41) (actual time=0.4..0.414 rows=3 loops=1)
    -> Table scan on exam  (cost=56..59 rows=41) (actual time=0.386..0.386 rows=3 loops=1)
        -> Materialize  (cost=55.9..55.9 rows=41) (actual time=0.385..0.385 rows=3 loops=1)
            -> Group aggregate: avg(examinations.score)  (cost=51.8 rows=41) (actual time=0.224..0.361 rows=3 loops=1)
                -> Index range scan on examinations using student_id over (student_id = 10001) OR (student_id = 100000) OR (student_id = 100001), 
                    with index condition: (examinations.student_id in (10001,100001,100000))  (cost=47.7 rows=41) (actual time=0.128..0.35 rows=41 loops=1)
    -> Single-row index lookup on s using PRIMARY (id=exam.student_id)  (cost=0.97 rows=1) (actual time=0.0082..0.0083 rows=1 loops=3)

*/
-- table scan is because exam is not using where clause
select exam.student_id, exam.avgScore, s.name, s.grade
FROM (
select student_id, avg(score) as avgScore from examinations
where
student_id in (10001, 100001, 100000)
group by student_id
) exam
left join students s
on exam.student_id = s.id;

