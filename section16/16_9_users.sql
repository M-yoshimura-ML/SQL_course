-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;


/* answer example1:No id setting  */
--
-- Table structure for table `users`
--
CREATE TABLE users (
  id bigint primary key auto_increment,
  email varchar(255) NOT NULL unique,
  password varchar(255) NOT NULL,
  role char(1) NOT NULL DEFAULT 0,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
