-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;



--
-- Table structure for table `orders`
--
CREATE TABLE orders (
  id bigint NOT NULL primary key,
  user_id bigint NOT NULL,
  order_code bigint NOT NULL,
  book_id bigint NOT NULL,
  area_code varchar(3) NOT NULL,
  shop_code varchar(3) NOT NULL,
  quantity int NOT NULL,
  order_date char(8),
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


