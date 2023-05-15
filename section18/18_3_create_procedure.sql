-- Host: localhost    Database: my_db18
-- ------------------------------------------------------

create database my_db18;

use my_db18;
-- DROP PROCEDURE IF EXISTS get_book_sales_data;
DELIMITER $$
CREATE PROCEDURE `get_book_sales_data`()
BEGIN

    SELECT * FROM my_db1.book_sales;
    
END$$
DELIMITER ;

call get_book_sales_data();