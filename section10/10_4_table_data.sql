-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



create table employees (
id bigint not null,
name varchar(30) not null,
manager_id int,
salary int,
designation varchar(30)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert into employees values 
(1,'Emily',NULL,salary,'CEO'),
(2,'Benjamin',5,30000,'frontend developer'),
(3,'Olivia',5,8000,'backend developer'),
(4,'Ethan',5,12000,'data scientist'),
(5,'Madison',6,9000,'Manager'),
(6,'Anthony',1,15000,'Group Manager'),
(7,'Victoria',1,20000,'CTO'),
(8,'Isaac',10,19000,'infra engineer'),
(9,'Natalie',10,11000,'data analyst'),
(10,'Christopher',6,10000,'Manager');


