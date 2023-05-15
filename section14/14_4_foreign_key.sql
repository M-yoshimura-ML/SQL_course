-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


use my_db14;

--
-- Table structure for table `customers`
--
CREATE TABLE customers (
  customer_id int primary key,
  customer_name varchar(60)
);



--
-- Table structure for table `customer_orders`
--
CREATE TABLE customer_orders(
order_id int primary key,
customer_id int,
order_date char(8),
foreign key (customer_id) references customers(customer_id)
);


-- check foreign key
SELECT 
  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  TABLE_SCHEMA = 'my_db1' AND
  TABLE_NAME = 'customer_orders';


-- insert customer data
insert into customers(customer_id, customer_name) 
values (1,'taro tanaka'),(2, 'jiro sato'),(3, 'sabuto saito');

-- insert customer_orders
insert into customer_orders(order_id, customer_id, order_date) 
values 
(1, 1, '20221212'),
(2, 2, '20230119'),
(3, 3, '20230210');

-- error: foreign key constraint
insert into customer_orders(order_id, customer_id, order_date) 
values (4, 4, '20221212');


-- error: foreign key constraint
update customer_orders set customer_id = 4 where order_id = 3;


-- error: foreign key constraint
delete from customers where customer_id = 3;



-- check key name & drop foreign key
ALTER TABLE  customer_orders DROP foreign key [key name];

-- add foreign key with name
ALTER TABLE customer_orders ADD CONSTRAINT fk_customer
foreign key (customer_id) references customers(customer_id);


