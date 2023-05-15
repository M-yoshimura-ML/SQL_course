-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



-- transaction A
select * from accounts;

START TRANSACTION;

update accounts set balance = balance - 1000 where id =1;
update accounts set balance = balance + 1000 where id =2;

-- transaction B
START TRANSACTION;
select * from accounts;

-- transaction A
commit;

-- transaction B
select * from accounts;