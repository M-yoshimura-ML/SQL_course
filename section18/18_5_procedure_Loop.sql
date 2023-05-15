-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


-- use my_db18;


CREATE TABLE temp
(
  id         bigint(20) primary key AUTO_INCREMENT,
  date_time timestamp  NULL DEFAULT CURRENT_TIMESTAMP,
  `value`    double   DEFAULT NULL
);


/* WHILE Loop create 1000 records */
DELIMITER $$
CREATE PROCEDURE generate_data()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 1000 DO
    INSERT INTO temp (date_time,`value`) VALUES (
      FROM_UNIXTIME(UNIX_TIMESTAMP('2022-01-01 01:00:00')+FLOOR(RAND()*31536000)),
      ROUND(RAND()*100,2)
    );
    SET i = i + 1;
  END WHILE;
END$$
DELIMITER ;
