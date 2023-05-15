-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

/*
1	author: "Amelia Smith" , "Harry Brown"
	上記以外のbooks dataを取得する。
	get data from books except above author. 
*/
SELECT * FROM books
WHERE 
author NOT IN ( 'Amelia Smith', 'Harry Brown' );


/*
2	title: doesn’t include “Guide”
	上記の条件でbooksデータを取得する。
	get book data from books with the condition
*/
SELECT * FROM books
WHERE 
title NOT LIKE '%Guide%';


/*
3	published_date < 2022/03/21 OR published_date > 2022/03/31
	BETWEENを使ってbooksデータを取得する。
	get book data from books by using “BETWEEN”
*/
SELECT * FROM books
WHERE 
published_date NOT BETWEEN '20220321' AND '20220331';



