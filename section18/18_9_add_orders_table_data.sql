-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


use my_db18;

CREATE TABLE orders (
  id bigint NOT NULL primary key auto_increment,
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




insert into orders (id, user_id, order_code, book_id, area_code, shop_code, quantity, order_date, created_at)
WITH recursive randam_orders as (
select 
1 as id, 
1 + FLOOR(RAND()*100) as user_id, -- 1 - 100
1 as order_code, 
1 + FLOOR(RAND()*10) as book_id, -- 1 - 10
1 + FLOOR(RAND()*10) as area_code, -- 1 - 10
1 + FLOOR(RAND()*10) as shop_code, -- 1 - 10
1 + FLOOR(RAND()*10) as quantity, -- 1 - 10
replace(DATE(FROM_UNIXTIME(UNIX_TIMESTAMP('2022-01-01 01:00:00')+FLOOR(RAND()*31536000))), "-", "") as order_date,
now() as created_at
UNION
select 
id + 1, 
1 + FLOOR(RAND()*100) as user_id, 
1 + order_code as order_code, 
1 + FLOOR(RAND()*10) as book_id, 
1 + FLOOR(RAND()*10) as area_code,
1 + FLOOR(RAND()*10) as shop_code,
1 + FLOOR(RAND()*10) as quantity, 
replace(DATE(FROM_UNIXTIME(UNIX_TIMESTAMP('2022-01-01 01:00:00')+FLOOR(RAND()*31536000))), "-", "") as order_date,
now() as created_at
from randam_orders where id < 1000
)  select id, user_id, order_code, book_id, area_code, shop_code, quantity, order_date, created_at from randam_orders; 

select * from orders;

