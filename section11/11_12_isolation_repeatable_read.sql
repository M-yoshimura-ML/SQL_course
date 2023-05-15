-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



/* Repeatable Read
 ・Non-Repeatable Read
 ・Phantom Read
*/
-- session A & B
SELECT @@transaction_isolation;
SET session transaction isolation level repeatable read;
SELECT @@transaction_isolation;


-- session A
START TRANSACTION;
select * from accounts where id =1;
update accounts set balance = balance - 1000 where id =1;
select * from accounts where id =1;


-- session B
begin;
-- before commit(session A)
select * from accounts where id =1;

-- commit at session A
COMMIT;

-- session B
select * from accounts where id =1; -- Non-Repeatable
select * from accounts where balance >= 7000; -- Phantom Read

update accounts set balance = balance - 1000 where id =1;
select * from accounts where id =1;


ROLLBACK;
