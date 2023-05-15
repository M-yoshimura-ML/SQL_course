-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


create database my_db14;

show databases;

use my_db14;

--
-- Table structure for table `employee`
--
CREATE TABLE employee (
employee_id int primary key,
name varchar(60) 
);

DESCRIBE employee;

DROP TABLE employee;


-- without PK
CREATE TABLE employee (
employee_id int,
name varchar(60) 
);

DESCRIBE employee;

-- ADD PK
ALTER TABLE employee ADD primary key(employee_id);

DESCRIBE employee;


-- insert employee data
insert into employee(employee_id, name) values (1,'taro tanaka');

-- error: Duplicate entry 
insert into employee(employee_id, name) values (1,'jiro sato');

-- PK index
show index from employee;

