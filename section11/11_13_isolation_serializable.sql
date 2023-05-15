-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



/* Serializable */
-- session A & B
SELECT @@transaction_isolation;
SET session transaction isolation level serializable;
SELECT @@transaction_isolation;


-- session A
START TRANSACTION;
select * from accounts where id =1; -- 1
update accounts set balance = balance - 1000 where id =1; -- 3



-- session B
begin;
select * from accounts where id =1; -- 2
update accounts set balance = balance - 1000 where id =1; -- 4



ROLLBACK;
