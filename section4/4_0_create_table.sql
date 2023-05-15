-- Host: localhost    Database: my_db1
-- ------------------------------------------------------



use my_db1;

--
-- Table structure for table `books`
--
CREATE TABLE books (
  id bigint UNSIGNED NOT NULL,
  title varchar(60) NOT NULL,
  author varchar(20) NOT NULL,
  price varchar(5) NOT NULL,
  published_date char(8) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- Table structure for table `book_sales`
--
CREATE TABLE book_sales (
  id bigint UNSIGNED NOT NULL,
  book_id bigint NOT NULL,
  sold_date char(8) NOT NULL,
  sold_number int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



