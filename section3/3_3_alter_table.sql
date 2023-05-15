-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;



-- ADD column
ALTER TABLE users ADD COLUMN age int AFTER name;

describe users;


-- DROP column
ALTER TABLE users DROP COLUMN age;


describe users;


