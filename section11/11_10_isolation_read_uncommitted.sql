-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



/* Read Uncommitted */
-- session A & B
SELECT @@transaction_isolation;
SET session transaction isolation level read uncommitted;
SELECT @@transaction_isolation;


-- session A
START TRANSACTION;
select * from accounts;
update accounts set balance = balance - 1000 where id =1;
select * from accounts;

-- session B
begin;
-- before update
select * from accounts where id =1;

-- after session A update (dirty read)
select * from accounts where id =1;

-- after check, commit for A, B
COMMIT;

