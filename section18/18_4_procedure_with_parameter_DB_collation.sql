-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


-- use my_db18;


-- DROP PROCEDURE IF EXISTS get_book_sales_data_with_params;
/* with parameters */
DELIMITER $$
CREATE PROCEDURE get_book_sales_data_with_params(
    IN areaCode VARCHAR(3) -- 1
)
BEGIN

    SELECT * FROM my_db1.book_sales where area_code = areaCode;
    
END$$
DELIMITER ;


-- error: because of mix of collations
call get_book_sales_data_with_params(1);


-- check collation
SELECT * FROM information_schema.SCHEMATA WHERE schema_name = 'my_db18';
-- use my_db18;
select @@character_set_database, @@collation_database;

/*
MySQL 8.0 default collate: utf8mb4_0900_ai_ci
*/

drop database my_db18;
CREATE DATABASE my_db18 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- check collation
SELECT * FROM information_schema.SCHEMATA WHERE schema_name = 'my_db18';


