-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


use my_db14;


DROP TABLE customer_orders;

--
-- Table structure for table `customer_orders`
--
CREATE TABLE customer_orders(
order_id int primary key,
customer_id int,
order_date char(8),
foreign key fk_customer(customer_id) references customers(customer_id)
on delete cascade on update cascade
);



-- insert customer_orders
insert into customer_orders(order_id, customer_id, order_date) 
values 
(1, 1, '20221212'),
(2, 2, '20230119'),
(3, 3, '20230210');



-- success (customer_orders data is also deleted)
delete from customers where customer_id = 3;


-- success (customer_orders data is also updated)
update customers set customer_id = 4 where customer_id = 2;


