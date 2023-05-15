-- Host: localhost    Database: my_db1
-- ------------------------------------------------------


use my_db1;


-- get data from books
SELECT title,author, price,published_date FROM books;

-- concat
SELECT concat(title,': ', author), price,published_date FROM books;

-- substring
SELECT
substring(title, 1, 5),
author,
price,published_date 
FROM books;

-- replace
select replace(title, 'Complete Guide', 'PerfectGuide') FROM books;

-- trim & length
update my_db1.books set 
title = 'Heath Control1   '
where id = 1;

select trim(title), title FROM books where id = 1;

select trim(title),length(trim(title)), title, length(title)
FROM books where id = 1;

-- upper
select upper(title) FROM books;

-- lower
select lower(title) FROM books;

