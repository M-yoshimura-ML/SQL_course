-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- get data from books
SELECT title,author, price,published_date FROM books;

-- count
SELECT count(*) FROM `books`;

-- sum
SELECT sum(price) as total_price FROM books;

-- max
SELECT max(price) as total_price FROM books;

-- min
SELECT min(price) as total_price FROM books;



-- avg
	SELECT
    avg(price) as average_price
    FROM books;

select sum(price)/12 as ave_price from books;


-- round
	SELECT
    price,
    price/3 as divide_by_3, 
    round(price/3,1) as round_1_price,
    round(price/3,2) as round_2_price,
    round(price/3,-1) as round_3_price
    FROM books;


-- GROUP_CONCAT
SELECT
author,
GROUP_CONCAT(title) FROM books
group by author;
