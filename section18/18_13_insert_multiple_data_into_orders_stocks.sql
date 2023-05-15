-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


use my_db18;


drop PROCEDURE IF EXISTS insert_orders_stocks_data;

/* order multiple books */
DELIMITER $$
CREATE PROCEDURE insert_orders_stocks_data(
    IN userId int,
    IN bookNumber int, -- unique number of book, if user select 3 books, 3
    IN bookIds varchar(255), -- "3,4,5"
    IN areaCode varchar(3),
    IN shopCode varchar(3),
    IN quantities varchar(255), -- "10,11,12"
    IN orderDate VARCHAR(8) -- 20220101
)
BEGIN
	DECLARE maxOrderCode int;
    DECLARE i INT;
    SET i = 1;
    SET @bookId = "";
    SET @quantity = "";
    
	select max(order_code) into maxOrderCode from orders;
    iterateBooks: LOOP
		IF  i > bookNumber THEN
			LEAVE iterateBooks;
        END IF;
		SET @bookId = substring_index(substring_index(bookIds, ',', i - bookNumber - 1), ',', 1);
        SET @quantity = substring_index(substring_index(quantities, ',', i - bookNumber - 1), ',', 1);
        
        INSERT INTO my_db18.orders (user_id, order_code, book_id, area_code, shop_code, quantity, order_date, created_at) value
        (userId, maxOrderCode + 1, @bookId, areaCode, shopCode, @quantity, orderDate, now());
        
        INSERT INTO my_db18.stocks (book_id, area_code, shop_code, type, quantity, delivered_date, created_at) values
		(@bookId, areaCode, shopCode, 2, -@quantity, orderDate, now());
        SET  i = i + 1;
    END LOOP;
END$$
DELIMITER ;



call insert_orders_stocks_data(1, 3,"3,4,5", 1, 1, "10,11,12", "20230514");


select * from orders order by id desc;
select * from stocks order by id desc;
