-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- Delete all data from `books`
--
TRUNCATE TABLE books;


--
-- Insert practice data INTO `books`
--

INSERT INTO books (id, title, author, price, published_date) VALUES
(1, 'Heath Control1', 'Amelia Smith', 1000, '20201124'),
(2, 'Heath Control2', 'Amelia Smith', 1100, '20201130'),
(3, 'Learn Foreign Language', 'Oliver Wilson', 1200, '20201201'),
(4, 'How to Learn Japanese', 'Jack Lee', 1300, '20201230'),
(5, 'How to Learn programming Language', 'Thomas Brown', 1400, NULL),
(6, 'SQL Complete Guide', 'Harry Brown', 1500, '20220320'),
(7, 'MySQL beginner to intermediate', 'Harry Brown', 1600, '20220321'),
(8, 'Java Silver Complete Guide', 'Emily Martin', 1700, '20220325'),
(9, 'JavaScript Complete Guide', 'Lily Miller', 1800, '20220401'),
(10, 'Oracle Bronze Master Guide', 'William Wilson', 1900, '20220410'),
(11, 'Oracle Silver Master Guide', 'William Wilson', 2000, '20220415'),
(12, 'Oracle Gold Master Guide', 'William Wilson', 2100, '20220420');


