-- Host: localhost    Database: my_db1
-- ------------------------------------------------------


/*
1	UNIONを使って、books, books_2の全てのレコードを取得する。
	By using UNION, get all records for books, books_2 table.
*/
SELECT * FROM books
UNION
SELECT * FROM books_2;



/*
2	UNIONを使って、title, author, price を取得する。
	By using UNION, get title, author, price.
	books: price <= 1300
	books_2: price <= 9.0
*/
SELECT title, author, price FROM books
WHERE 
price <= 1300
UNION
SELECT title, author, price FROM books_2
where price <= 9.0;

