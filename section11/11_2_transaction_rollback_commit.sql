-- Host: localhost    Database: my_db11
-- ------------------------------------------------------

create database my_db11;

show databases;

use my_db11;

-- mysql> \! cls

--
-- Table structure for table `areas`
--
CREATE TABLE areas (
area_code int primary key,
area_name varchar(60) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- insert into areas
INSERT INTO areas (area_code, area_name) VALUES
(1, 'Tokyo'),
(2, 'Osaka'),
(3, 'Aichi');



START TRANSACTION;
SELECT * FROM areas; -- 3records

INSERT INTO areas (area_code, area_name) VALUES (4, 'Hokkaido');

SELECT * FROM areas; -- 4records

ROLLBACK;
-- COMMIT;