-- Host: localhost    Database: my_db15
-- ------------------------------------------------------



use my_db15;

-- DATE & TIME & DATETIME & TIMESTAMP
CREATE TABLE date_time (
id int primary key auto_increment, 
d DATE, 
t TIME(3), 
dt DATETIME(6), 
ts TIMESTAMP(0)
);

INSERT INTO date_time (d, t, dt, ts)
VALUES(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

select * from date_time;

INSERT INTO date_time (d, t, dt, ts)
VALUES( "2020-01-01 09:08:07.5432", "2020-01-01 09:11:07.5432", "2020-01-01 10:12:07.6578", "2020-01-01 13:13:07.6578");

-- error: old date becomes incorrect value
INSERT INTO date_time (ts) VALUES("1969/01/01 00:00:01");
INSERT INTO date_time (ts) VALUES("1969-01-01 00:00:01");
INSERT INTO date_time (ts) VALUES ("9999/01/01 00:00:01");
INSERT INTO date_time (ts) VALUES ("2039/01/01 00:00:01");

-- okay
INSERT INTO date_time (ts) VALUES ("2038/01/19 03:14:07");

INSERT INTO date_time (d, t, dt, ts)
VALUES("9999/01/01 00:00:01", "2029/01/01 00:00:01", "2039/01/01 00:00:01", "2029/01/01 00:00:01");

select * from date_time;

INSERT INTO date_time (d) VALUES ("9999/01/01 00:00:01"), ("2039/01/01 00:00:01");
select * from date_time where d >= '2039-01-01';

INSERT INTO date_time (dt) VALUES ("9999/01/01 00:00:01"), ("2039/01/01 00:00:01");
select * from date_time where dt >= '2039-01-01';


