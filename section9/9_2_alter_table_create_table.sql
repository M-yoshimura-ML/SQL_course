-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/* 1.ALTER TABLE ADD COLUMN & UPDATE book_sales */

-- rename sold_number to quantity
ALTER TABLE book_sales RENAME COLUMN sold_number TO quantity;
-- MySQL ver. older than 8.x
ALTER TABLE book_sales CHANGE sold_number quantity varchar(5);

describe book_sales;

-- ADD COLUMN
ALTER TABLE book_sales ADD COLUMN area_code varchar(3) NOT NULL after quantity;
ALTER TABLE book_sales ADD COLUMN shop_code varchar(3) NOT NULL after area_code;



/* 2.CREATE TABLE new_book_sales from book_sales  */
CREATE TABLE new_book_sales LIKE book_sales;


