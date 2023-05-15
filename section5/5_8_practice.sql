-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

/*
1	author: "Amelia Smith" OR "Harry Brown"
	上記の条件でbooksからデータを取得する
	get data from books with above condition.
*/
SELECT * FROM books
WHERE author IN ('Amelia Smith', 'Harry Brown');


/*
2	title: "Heath Control1"
	上記の条件でbook_salesからsold_dateを取得する。
	get all sold_date from book_sales table with above condition.
*/
SELECT sold_date FROM book_sales
WHERE book_id IN (SELECT id FROM books WHERE title='Heath Control1');


