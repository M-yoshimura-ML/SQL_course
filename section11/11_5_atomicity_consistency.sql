-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



--
-- Table structure for table `accounts`
--
CREATE TABLE accounts (
id int primary key,
owner varchar(60),
balance int,
currency varchar(30)
);


insert into accounts( id, owner, balance, currency) VALUES
(1,'owner1',11000,'yen'),
(2,'owner2',19000,'yen'),
(3,'owner3',30000,'yen');



START TRANSACTION;
select * from accounts;
update accounts set balance = balance - 1000 where id =1;

-- crash
exit;

-- >mysql -u root -p --port=3360

select * from accounts;

START TRANSACTION;

update accounts set balance = balance - 1000 where id =1;
update accounts set balance = balance + 1000 where id =2;

commit;

