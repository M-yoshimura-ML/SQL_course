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
select * from accounts; -- 1

-- this isert is blocked because session B is holding a share lock.
insert into accounts(id, owner, balance, currency) 
values(4,'owner4',40000, 'yen'); -- 3



-- session B
begin;
select * from accounts; -- 2

-- this insert will get deadlock because both of transaction need to wait for each other.
insert into accounts(id, owner, balance, currency) 
values(4,'owner4',40000, 'yen'); -- 4



ROLLBACK;
