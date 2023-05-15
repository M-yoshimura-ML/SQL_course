-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



/* Read Committed 
 can prevent dirty read phenomenon.
*/
-- session A & B
SELECT @@transaction_isolation;
SET session transaction isolation level read committed;
SELECT @@transaction_isolation;


-- session A
START TRANSACTION;
select * from accounts;
update accounts set balance = balance - 1000 where id =1;

select * from accounts where id =1;




-- session B
begin;
-- before update
select * from accounts where id =1;

-- before commit(session A)
select * from accounts where id =1;
-- to check for repeatable Read
select * from accounts where balance >= 8000;

-- commit at session A
COMMIT;

-- session B
select * from accounts where id =1; -- Non-Repeatable
select * from accounts where balance >= 8000; -- Phantom Read



COMMIT;
