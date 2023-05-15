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

    SET @sqlSelectBookSalesData = CONCAT("SELECT * FROM my_db1.book_sales where area_code = ", areaCode, ";");
    
    -- For Debugging, uncomment below
    -- SELECT @sqlSelectBookSalesData AS '** DEBUG:';

    -- For Debugging, comment code below
    PREPARE stmtSelect FROM @sqlSelectBookSalesData;
    EXECUTE stmtSelect;
    DEALLOCATE PREPARE stmtSelect;
END$$
DELIMITER ;