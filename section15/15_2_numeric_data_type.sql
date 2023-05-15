-- Host: localhost    Database: my_db15
-- ------------------------------------------------------



use my_db15;

-- Integer
create table integer_table (
small_num smallint unsigned,
int_num int signed
);

-- okay
insert into integer_table(small_num, int_num) value (65535, 2147483647);
insert into integer_table(small_num, int_num) value (0, -2147483648);

-- error 
insert into integer_table(small_num, int_num) value (65536, 0);
insert into integer_table(small_num, int_num) value (0, 2147483648);
insert into integer_table(small_num, int_num) value (-1, 0);





-- FLOAT & DOUBLE & DECIMAL(M,N)
create table foat_double_decimal (
id int primary key auto_increment,
float_a float,
float_b float(20,10), -- 非推奨: warning deprecated
double_a double,
double_b double(20,10), -- 非推奨: warning deprecated
decimal_a decimal(20,10),
decimal_b decimal(20,10)
);


insert into foat_double_decimal (float_a, float_b, double_a, double_b, decimal_a, decimal_b) 
values (1.2,1.2,1.2,1.2, 1.2, 1.2);

select * from foat_double_decimal;


select float_a + float_b as float_result, 
double_a + double_b as double_result,
decimal_a + decimal_b as decimal_result
from foat_double_decimal;


-- 桁落ち float value truncated
insert into foat_double_decimal (float_a, float_b, double_a, double_b, decimal_a, decimal_b) 
values (1.2525252525,1.2525252525,1.2525252525,1.2525252525, 1.2525252525, 1.2525252525);

select * from foat_double_decimal;


insert into foat_double_decimal(double_a, double_b)
 values (0.00, 0.00), (-10.00, 0.00), (12.10,2.1), (1.04, 1.04);

-- 丸め込み誤差
select sum(double_a), sum(double_b) from foat_double_decimal where id >=3 and id <= 6;

insert into foat_double_decimal(decimal_a, decimal_b) 
values (0.00, 0.00), (-10.00, 0.00), (12.10,2.1), (1.04, 1.04);


select sum(decimal_a), sum(decimal_b) from foat_double_decimal where id >=7 and id <= 10;



