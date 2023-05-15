-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


use my_db18;

drop PROCEDURE IF EXISTS insert_orders_stocks_data;

/* order single book */
DELIMITER $$
CREATE PROCEDURE insert_orders_stocks_data(
    IN userId int,
    IN bookId varchar(255), 
    IN areaCode varchar(3),
    IN shopCode varchar(3),
    IN quantity varchar(255),
    IN orderDate VARCHAR(8) -- 20220101
)
BEGIN
	DECLARE maxOrderCode int;
	select max(order_code) into maxOrderCode from orders;
    
	INSERT INTO my_db18.orders (user_id, order_code, book_id, area_code, shop_code, quantity, order_date, created_at) value
    (userId, maxOrderCode + 1, bookId, areaCode, shopCode, quantities, orderDate, now());
    
    INSERT INTO my_db18.stocks (book_id, area_code, shop_code, type, quantity, delivered_date, created_at) values
    (bookId, areaCode, shopCode, 2, -quantity, orderDate, now());
END$$
DELIMITER ;

call insert_orders_stocks_data(1, 4, 1, 1, 2, "20230514");

select * from orders order by id desc;
select * from stocks order by id desc;
