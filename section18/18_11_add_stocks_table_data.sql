-- Host: localhost    Database: my_db18
-- ------------------------------------------------------


use my_db18;


CREATE TABLE stocks (
  id bigint primary key auto_increment,
  book_id bigint,
  area_code varchar(3) NOT NULL,
  shop_code varchar(3) NOT NULL,
  type char(1) NOT NULL, -- 1: stored, 2: delivered
  quantity int signed NOT NULL,
  delivered_date char(8),
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



insert into stocks (id,book_id, area_code, shop_code, type, quantity, delivered_date, created_at)
WITH recursive randam_stocks as (
select 
1 as id, 
1 + FLOOR(RAND()*10) as book_id, -- 1 - 10
1 + FLOOR(RAND()*10) as area_code, -- 1 - 10
1 + FLOOR(RAND()*10) as shop_code, -- 1 - 10
1 as type,
100 as quantity,
replace(DATE(FROM_UNIXTIME(UNIX_TIMESTAMP('2021-01-01 01:00:00')+FLOOR(RAND()*31536000))), "-", "") as delivered_date,
now() as created_at
UNION
select 
id + 1, 
1 + FLOOR(RAND()*10) as book_id, -- 1 - 10
1 + FLOOR(RAND()*10) as area_code, -- 1 - 10
1 + FLOOR(RAND()*10) as shop_code, -- 1 - 10
1 as type,
100 as quantity,
replace(DATE(FROM_UNIXTIME(UNIX_TIMESTAMP('2021-01-01 01:00:00')+FLOOR(RAND()*31536000))), "-", "") as delivered_date,
now() as created_at
from randam_stocks where id < 100
)  select id,book_id, area_code, shop_code, type, quantity, delivered_date, created_at from randam_stocks; 


