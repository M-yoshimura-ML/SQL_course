-- Host: localhost    Database: my_db14
-- ------------------------------------------------------


use my_db14;

-- make backup users for 14_7
rename table users to users_backup;

--
-- Table structure for table `users`
--
CREATE TABLE users(
user_id int primary key,
age int,
area_code varchar(3),
check(age >= 20), 
constraint area_check check(area_code in ('01', '02', '03'))
);



SELECT 
*
FROM information_schema.key_column_usage
WHERE
table_schema = "my_db14"
and table_name="users";


ALTER TABLE users DROP CONSTRAINT area_check;

ALTER TABLE users ADD CONSTRAINT area_check check(area_code in ('01', '02', '03'));

-- insert users
insert into users(user_id, age, area_code) 
values 
(1, 20, '01'),
(2, 21, '02'),
(3, 22, '03');

-- error: 
insert into users(user_id, age, area_code) 
values (4, 19, '01');

insert into users(user_id, age, area_code) 
values (5, 20, '04');


