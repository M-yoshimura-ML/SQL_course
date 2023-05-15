-- Host: localhost    Database: my_db14
-- ------------------------------------------------------



use my_db14;


--
-- Table structure for table `users`
--
CREATE TABLE users(
user_id int primary key,
telephone varchar(20),
address varchar(255),
unique telepnone_address(telephone, address) 
);


SELECT 
*
FROM information_schema.key_column_usage
WHERE
table_schema = "my_db14"
and table_name="users";


ALTER TABLE users DROP CONSTRAINT telepnone_address;

ALTER TABLE users ADD CONSTRAINT telepnone_address UNIQUE(telephone, address);

-- insert users
insert into users(user_id, telephone, address) 
values 
(1, '08012345678', '東京都千代田区'),
(2, '09012345678', '東京都千代田区'),
(3, '01201234567', '東京都港区'),
(4, '01201234567', '東京都練馬区'),
(5, NULL, '東京都千代田区');

-- error: Duplicate entry
insert into users(user_id, telephone, address) 
values (6, '08012345678', '東京都千代田区');

update users set telephone = '09012345678' where user_id = 5;


