-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



-- CREATE books_2 table
CREATE TABLE books_2 LIKE books;


-- INSERT books_2 data
INSERT INTO books_2 (id, title, author, price, published_date) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 12.99, '19600711'),
(2, '1984', 'George Orwell', 9.99, '19490608'),
(3, 'The Catcher in the Rye', 'J.D. Salinger', 8.99, '19510716'),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 11.99, '19250410'),
(5, 'To the Lighthouse', 'Virginia Woolf', 10.99, '19270505'),
(6, 'Brave New World', 'Aldous Huxley', 9.99, '19320601'),
(7, 'Lord of the Flies', 'William Golding', 7.99, '19540917'),
(8, 'Animal Farm', 'George Orwell', 6.99, '19450817'),
(9, 'The Picture of Dorian Gray', 'Oscar Wilde', 7.99, '18900701'),
(10, 'The Adventures of Huckleberry Finn', 'Mark Twain', 8.99, '18841210'),
(11, 'The Lord of the Rings: The Fellowship of...', 'J.R.R. Tolkien', 14.99, '19540729'),
(12, 'The Hobbit', 'J.R.R. Tolkien', 11.99, '19370921'),
(13, 'The Chronicles of Narnia: The Lion, the ...', 'C.S. Lewis', 9.99, '19501016'),
(14, 'The Hitchhiker Guide to the Galaxy', 'Douglas Adams', 10.99, '19791012'),
(15, 'Frankenstein', 'Mary Shelley', 6.99, '18180101'),
(16, 'The War of the Worlds', 'H.G. Wells', 8.99, '18980401'),
(17, 'Dracula', 'Bram Stoker', 7.99, '18970526'),
(18, 'The Time Machine', 'H.G. Wells', 7.99, '18950101'),
(19, 'Pride and Prejudice', 'Jane Austen', 5.99, '18130128'),
(20, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 8.99, '18921014');



