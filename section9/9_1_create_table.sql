-- Host: localhost    Database: my_db1
-- ------------------------------------------------------

use my_db1;


--
-- Table structure for table `areas`
--
CREATE TABLE areas (
  id bigint UNSIGNED NOT NULL,
  area_code varchar(3) NOT NULL,
  area_name varchar(30) NOT NULL,
  area_name_en varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- Table structure for table `shops`
--
CREATE TABLE shops (
  id bigint UNSIGNED NOT NULL,
  area_code varchar(3) NOT NULL,
  shop_code varchar(3) NOT NULL,
  shop_name varchar(60) NOT NULL,
  shop_name_en varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

