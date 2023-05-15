-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


use my_db14;

--
-- Table structure for table `animals`
--
CREATE TABLE animals (
id int auto_increment primary key,
name varchar(60) 
);

DESCRIBE animals;

DROP TABLE animals;


-- without auto_increment
CREATE TABLE animals (
id int primary key,
name varchar(60) 
);

DESCRIBE animals;


-- ADD auto_increment
ALTER TABLE animals MODIFY id int auto_increment;

DESCRIBE animals;


-- insert orders data
INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),('whale'),('ostrich');



-- check animals data
select * from animals;

-- delete animals data id = 5
delete from animals where id = 5;

select * from animals;

INSERT INTO animals (name) VALUES ('ostrich');

select * from animals;

delete from animals where name = 'ostrich';


-- ALTER auto_increment = 5
ALTER TABLE animals auto_increment = 5;

INSERT INTO animals (name) VALUES ('ostrich');


-- truncate table
truncate table animals;

select * from animals;

INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),('whale'),('ostrich');

select * from animals;



