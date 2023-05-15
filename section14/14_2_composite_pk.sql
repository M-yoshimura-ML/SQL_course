-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


use my_db14;

--
-- Table structure for table `orders`
--
CREATE TABLE orders (
order_id int,
product_id int, 
quantity int,
primary key(order_id, product_id)
);

DESCRIBE orders;


DROP TABLE orders;


-- without PK
CREATE TABLE orders (
order_id int,
product_id int,
quantity int 
);

DESCRIBE orders;

-- ADD PK
ALTER TABLE orders ADD primary key(order_id, product_id);

DESCRIBE orders;



-- insert orders data
insert into orders(order_id, product_id, quantity) values (1,1, 1),(1,2, 2);

-- error: Duplicate entry 
insert into orders(order_id, product_id, quantity) values (1,1, 3);

-- PK index
show index from orders;


