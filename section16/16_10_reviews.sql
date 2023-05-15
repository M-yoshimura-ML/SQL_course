-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;



--
-- Table structure for table `reviews`
--
CREATE TABLE reviews (
  id bigint primary key,
  book_id bigint NOT NULL,
  user_id bigint NOT NULL,
  rating varchar(3) NOT NULL,
  headline varchar(255) NOT NULL,
  comment longtext NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


