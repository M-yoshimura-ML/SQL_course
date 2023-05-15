-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



/*
1	IFを使い、booksのtitleが20文字より長い場合、”LONG TITLE”,
	そうでない場合は、”SHORT TITLE”を表示する。
	またtitleの長い順に表示する。
	Using IF, when books’ title is greater than 20 chars, display “LONG TITLE”,
	less than 20 chars, display “SHORT TITLE”.
	And sort title in long order. 
*/
SELECT
title,
length(title),
if(length(title) > 20, 'LONG TITLE', 'SHORT TITLE') AS category,
price
from books
ORDER BY length(title) DESC;


/*
2	CASEを使い、books のpriceを3つのカテゴリに分類する。
	Using CASE, categorize books’ price into 3 patterns.
	※price <= 1200, “CHEAP”
	※price > 1200 and price < 1800, “MEDIUM PRICE”
	※price >= 1800, “EXPENSIVE” 
*/
SELECT
title,
price,
CASE 
	WHEN price <= 1200 THEN "CHEAP"
    WHEN price > 1200 and price < 1800 THEN "MEDIUM PRICE"
    WHEN price >= 1800 THEN "EXPENSIVE"
    ELSE ""
END AS category
from books;

