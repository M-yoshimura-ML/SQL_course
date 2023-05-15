-- Host: localhost    Database: 
-- ------------------------------------------------------

SELECT * FROM mysql.innodb_table_stats WHERE database_name="my_db1";
SELECT * FROM mysql.innodb_index_stats WHERE table_name = 'book_sales';


SELECT * FROM mysql.innodb_table_stats WHERE database_name="my_db16";
SELECT * FROM mysql.innodb_index_stats WHERE table_name = 'player';
