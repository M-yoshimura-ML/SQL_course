-- Host: localhost    Database: my_db10
-- ------------------------------------------------------


/*DB & table & data are for users who will start from this section.*/
create database my_db10;

show databases;


use my_db10;



CREATE TABLE areas (
  id bigint UNSIGNED NOT NULL,
  area_code varchar(3) NOT NULL,
  area_name varchar(30) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE shops (
  id bigint UNSIGNED NOT NULL,
  area_code varchar(3) NOT NULL,
  shop_code varchar(3) NOT NULL,
  shop_name varchar(60) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE book_sales (
  id bigint UNSIGNED NOT NULL,
  book_id bigint NOT NULL,
  sold_date char(8) NOT NULL,
  quantity varchar(5) NOT NULL,
  area_code varchar(3) NOT NULL,
  shop_code varchar(3) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE books (
  id bigint UNSIGNED NOT NULL,
  title varchar(60) NOT NULL,
  author varchar(20) NOT NULL,
  price varchar(5) NOT NULL,
  published_date char(8) NULL DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO areas (id, area_code, area_name, created_at) VALUES
(1, 1, '東京', now()),
(2, 2, '大阪', now()),
(3, 3, '愛知', now());

INSERT INTO shops (id, area_code, shop_code, shop_name, created_at) VALUES
(1, 1, 1, '足立区店', now()),
(2, 1, 2, '新宿区店', now()),
(3, 1, 3, '港区店', now()),
(4, 2, 1, '北区店', now()),
(5, 2, 2, '中央区店', now()),
(6, 3, 1, '名古屋店', now());

INSERT INTO books (id, title, author, price, published_date, created_at) VALUES
(1, 'Heath Control1', 'Amelia Smith', 1000, '20201124', now()),
(2, 'Heath Control2', 'Amelia Smith', 1100, '20201130', now()),
(3, 'Learn Foreign Language', 'Oliver Wilson', 1200, '20201201', now()),
(4, 'How to Learn Japanese', 'Jack Lee', 1300, '20201230', now()),
(5, 'How to Learn programming Language', 'Thomas Brown', 1400, NULL, now()),
(6, 'SQL Complete Guide', 'Harry Brown', 1500, '20220320', now()),
(7, 'MySQL beginner to intermediate', 'Harry Brown', 1600, '20220321', now()),
(8, 'Java Silver Complete Guide', 'Emily Martin', 1700, '20220325', now()),
(9, 'JavaScript Complete Guide', 'Lily Miller', 1800, '20220401', now()),
(10, 'Oracle Bronze Master Guide', 'William Wilson', 1900, '20220410', now()),
(11, 'Oracle Silver Master Guide', 'William Wilson', 2000, '20220415', now()),
(12, 'Oracle Gold Master Guide', 'William Wilson', 2100, '20220420', now());


INSERT INTO book_sales (id, book_id, sold_date, quantity, area_code, shop_code, created_at) VALUES
(1, 1, '20201201', 1, 1,1, now()),
(2, 2, '20201202', 2, 1,1, now()),
(3, 3, '20201203', 1, 1,1, now()),
(4, 1, '20201204', 2, 1,2, now()),
(5, 2, '20201205', 3, 1,2, now()),
(6, 3, '20201206', 1, 1,2, now()),
(7, 1, '20201207', 1, 1,1, now()),
(8, 2, '20201208', 1, 1,1, now()),
(9, 3, '20201209', 1, 1,1, now()),
(10, 1, '20201210', 1, 1,2, now()),
(11, 2, '20201211', 1, 1,2, now()),
(12, 3, '20201212', 1, 1,2, now()),
(13, 1, '20201213', 1, 1,3, now()),
(14, 2, '20201214', 1, 1,3, now()),
(15, 3, '20201215', 1, 1,3, now()),
(16, 1, '20201228', 1, 2,1, now()),
(17, 2, '20201229', 1, 2,2, now()),
(18, 3, '20201230', 1, 1,1, now()),
(19, 4, '20201231', 2, 3,1, now()),
(20, 1, '20210101', 1, 1,1, now()),
(21, 2, '20210102', 2, 1,2, now()),
(22, 3, '20210103', 2, 1,3, now()),
(23, 4, '20210104', 2, 2,1, now()),
(24, 2, '20210105', 1, 2,2, now()),
(25, 2, '20210106', 1, 3,1, now()),
(26, 3, '20210107', 1, 1,1, now()),
(27, 3, '20210108', 1, 1,2, now()),
(28, 3, '20210109', 1, 1,3, now()),
(29, 4, '20210110', 1, 2,1, now()),
(30, 4, '20220211', 1, 2,2, now()),
(31, 4, '20220212', 1, 3,1, now()),
(32, 6, '20220330', 1, 1,1, now()),
(33, 6, '20220331', 1, 1,2, now()),
(34, 7, '20220401', 1, 1,3, now()),
(35, 7, '20220402', 1, 2,1, now()),
(36, 1, '20220403', 1, 2,2, now()),
(37, 1, '20220404', 2, 3,1, now()),
(38, 3, '20220405', 1, 1,1, now()),
(39, 3, '20220406', 1, 1,2, now()),
(40, 5, '20220407', 1, 1,3, now()),
(41, 5, '20220408', 1, 2,1, now()),
(42, 7, '20220409', 1, 2,2, now()),
(43, 7, '20220410', 1, 3,1, now()),
(44, 9, '20220411', 2, 1,1, now()),
(45, 9, '20220412', 1, 1,2, now()),
(46, 1, '20220413', 1, 1,3, now()),
(47, 3, '20220414', 1, 2,1, now()),
(48, 5, '20220415', 1, 2,2, now()),
(49, 7, '20220416', 1, 3,1, now()),
(50, 2, '20220501', 1, 1,1, now()),
(51, 2, '20220502', 1, 1,2, now()),
(52, 4, '20220503', 1, 1,3, now()),
(53, 4, '20220504', 1, 2,1, now()),
(54, 6, '20220505', 1, 2,2, now()),
(55, 6, '20220506', 1, 3,1, now()),
(56, 8, '20220507', 1, 1,1, now()),
(57, 8, '20220508', 1, 1,2, now()),
(58, 10, '20220509', 1, 1,3, now()),
(59, 10, '20220510', 1, 2,1, now()),
(60, 12, '20220511', 1, 2,2, now()),
(61, 12, '20220512', 1, 3,1, now()),
(62, 12, '20220513', 1, 1,1, now()),
(63, 2, '20220514', 1, 1,2, now()),
(64, 4, '20220515', 1, 1,3, now()),
(65, 6, '20220516', 1, 2,1, now()),
(66, 8, '20220517', 1, 2,2, now()),
(67, 10, '20220518', 2, 3,1, now()),
(68, 12, '20220519', 2, 1,1, now()),
(69, 1, '20220601', 1, 1,2, now()),
(70, 2, '20220602', 3, 1,3, now()),
(71, 3, '20220602', 1, 2,1, now()),
(72, 4, '20220602', 1, 2,2, now()),
(73, 5, '20220602', 2, 3,1, now()),
(74, 6, '20220606', 4, 1,1, now()),
(75, 7, '20220606', 1, 1,2, now()),
(76, 8, '20220606', 2, 1,3, now()),
(77, 9, '20220606', 1, 2,1, now()),
(78, 10, '20220610', 1, 2,2, now()),
(79, 11, '20220610', 3, 3,1, now()),
(80, 12, '20220610', 1, 1,1, now()),
(81, 1, '20220613', 1, 1,2, now()),
(82, 2, '20220613', 1, 1,3, now()),
(83, 3, '20220613', 1, 2,1, now()),
(84, 4, '20220613', 1, 2,2, now()),
(85, 5, '20220617', 1, 3,1, now()),
(86, 6, '20220617', 1, 1,1, now()),
(87, 7, '20220617', 1, 1,2, now()),
(88, 8, '20220617', 1, 1,3, now()),
(89, 9, '20220621', 1, 2,1, now()),
(90, 10, '20220621', 1, 2,2, now()),
(91, 11, '20220621', 1, 3,1, now()),
(92, 12, '20220621', 1, 1,1, now()),
(93, 1, '20220625', 1, 1,2, now()),
(94, 2, '20220625', 1, 1,3, now()),
(95, 3, '20220627', 1, 2,1, now()),
(96, 4, '20220627', 1, 2,2, now()),
(97, 5, '20220629', 1, 3,1, now()),
(98, 6, '20220629', 1, 2,1, now()),
(99, 7, '20220630', 1, 2,2, now()),
(100, 8, '20220630', 1, 3,1, now());


