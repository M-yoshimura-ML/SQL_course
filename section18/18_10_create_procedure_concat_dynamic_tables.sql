-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


-- use my_db18;


DROP PROCEDURE IF EXISTS get_book_sales_orders_data;

DELIMITER $$
CREATE PROCEDURE get_book_sales_orders_data(
	IN dataSource char(1), -- 1: offline, 2: online, 3:both
    IN startDate VARCHAR(8), -- 20220101
    IN endDate VARCHAR(8) -- 20220101
)
BEGIN
	SET @sqlSelectBookSalesData = "";
	IF dataSource = 1 THEN
		SET @sqlSelectBookSalesData = CONCAT("SELECT area_code, shop_code, book_id, quantity, sold_date
        FROM my_db1.book_sales where sold_date >= ", startDate, 
        " and sold_date <= ",endDate, ";");
	ELSEIF dataSource = 2 THEN
		SET @sqlSelectBookSalesData = CONCAT("SELECT area_code, shop_code, book_id, quantity, order_date
        FROM my_db18.orders where order_date >= ", startDate, 
        " and order_date <= ",endDate, ";");
	ELSEIF dataSource = 3 THEN
		SET @sqlSelectBookSalesData = CONCAT("SELECT area_code, shop_code, book_id,quantity, sold_date
        FROM my_db1.book_sales where sold_date >= ", startDate, " and sold_date <= ",endDate,
        " UNION ALL SELECT area_code, shop_code, book_id,quantity, order_date as sold_date
        FROM my_db18.orders where order_date >= ", startDate, 
        " and order_date <= ",endDate, ";");
    END IF;
    
    PREPARE stmtSelect FROM @sqlSelectBookSalesData;
    EXECUTE stmtSelect;
    DEALLOCATE PREPARE stmtSelect;
END$$
DELIMITER ;

call get_book_sales_orders_data(1, "20220101", "20220630"); -- 71
call get_book_sales_orders_data(2, "20220101", "20220630"); -- 473
call get_book_sales_orders_data(3, "20220101", "20220630"); -- 544




DELIMITER $$
CREATE PROCEDURE get_book_sales_orders_data(
	IN dataSource char(1), -- 1: offline, 2: online, 3:both
    IN startDate VARCHAR(8), -- 20220101
    IN endDate VARCHAR(8) -- 20220101
)
BEGIN
	SET @strSelect = "SELECT area_code, shop_code, book_id, quantity";
	SET @sqlSelectBookSalesData = "";
	IF dataSource = 1 THEN
		SET @sqlSelectBookSalesData = CONCAT(@strSelect, ", sold_date
        FROM my_db1.book_sales where sold_date >= ", startDate, 
        " and sold_date <= ",endDate, ";");
	ELSEIF dataSource = 2 THEN
		SET @sqlSelectBookSalesData = CONCAT(@strSelect, ", order_date
        FROM my_db18.orders where order_date >= ", startDate, 
        " and order_date <= ",endDate, ";");
	ELSEIF dataSource = 3 THEN
		SET @sqlSelectBookSalesData = CONCAT(@strSelect,", sold_date
        FROM my_db1.book_sales where sold_date >= ", startDate, " and sold_date <= ",endDate,
        " UNION ALL ",@strSelect,", order_date as sold_date
        FROM my_db18.orders where order_date >= ", startDate, 
        " and order_date <= ",endDate, ";");
    END IF;
    
    PREPARE stmtSelect FROM @sqlSelectBookSalesData;
    EXECUTE stmtSelect;
    DEALLOCATE PREPARE stmtSelect;
END$$
DELIMITER ;



call get_book_sales_orders_data(1, "20220101", "20220630"); -- 71
call get_book_sales_orders_data(2, "20220101", "20220630"); -- 473
call get_book_sales_orders_data(3, "20220101", "20220630"); -- 544