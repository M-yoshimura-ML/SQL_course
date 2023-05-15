-- Host: localhost    Database: my_db1
-- ------------------------------------------------------

use my_db1;


/* areas data */

INSERT INTO areas (id, area_code, area_name, area_name_en) VALUES
(1, 1, '東京', 'Tokyo'),
(2, 2, '大阪', 'Osaka'),
(3, 3, '愛知', 'Aichi');




/* shops data */

INSERT INTO shops (id, area_code, shop_code, shop_name, shop_name_en) VALUES
(1, 1, 1, '足立区店', 'Adachi branch'),
(2, 1, 2, '新宿区店', 'Shinjyuku branch'),
(3, 1, 3, '港区店', 'Minato branch'),
(4, 2, 1, '北区店', 'Kita branch'),
(5, 2, 2, '中央区店', 'Chuo branch'),
(6, 3, 1, '名古屋店', 'Nagoya branch');


/* UPDATE book_sales data */
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 1;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 2;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 3;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 4;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 5;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 6;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 7;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 8;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 9;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 10;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 11;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 12;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 13;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 14;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 15;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 16;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 17;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 18;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 19;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 20;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 21;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 22;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 23;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 24;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 25;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 26;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 27;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 28;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 29;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 30;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 31;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 32;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 33;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 34;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 35;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 36;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 37;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 38;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 39;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 40;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 41;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 42;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 43;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 44;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 45;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 46;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 47;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 48;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 49;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 50;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 51;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 52;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 53;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 54;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 55;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 56;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 57;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 58;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 59;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 60;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 61;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 62;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 63;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 64;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 65;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 66;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 67;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 68;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 69;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 70;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 71;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 72;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 73;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 74;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 75;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 76;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 77;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 78;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 79;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 80;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 81;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 82;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 83;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 84;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 85;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 86;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 87;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 88;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 89;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 90;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 91;
UPDATE book_sales set area_code = 1, shop_code = 1 WHERE id = 92;
UPDATE book_sales set area_code = 1, shop_code = 2 WHERE id = 93;
UPDATE book_sales set area_code = 1, shop_code = 3 WHERE id = 94;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 95;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 96;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 97;
UPDATE book_sales set area_code = 2, shop_code = 1 WHERE id = 98;
UPDATE book_sales set area_code = 2, shop_code = 2 WHERE id = 99;
UPDATE book_sales set area_code = 3, shop_code = 1 WHERE id = 100;


/*CREATE new table and INSERT book_sales data */
INSERT INTO new_book_sales (id, book_id, sold_date, quantity, area_code, shop_code) VALUES
(1, 1, '20201201', 1, 1,1),
(2, 2, '20201202', 2, 1,1),
(3, 3, '20201203', 1, 1,1),
(4, 1, '20201204', 2, 1,2),
(5, 2, '20201205', 3, 1,2),
(6, 3, '20201206', 1, 1,2),
(7, 1, '20201207', 1, 1,1),
(8, 2, '20201208', 1, 1,1),
(9, 3, '20201209', 1, 1,1),
(10, 1, '20201210', 1, 1,2),
(11, 2, '20201211', 1, 1,2),
(12, 3, '20201212', 1, 1,2),
(13, 1, '20201213', 1, 1,3),
(14, 2, '20201214', 1, 1,3),
(15, 3, '20201215', 1, 1,3),
(16, 1, '20201228', 1, 2,1),
(17, 2, '20201229', 1, 2,2),
(18, 3, '20201230', 1, 1,1),
(19, 4, '20201231', 2, 3,1),
(20, 1, '20210101', 1, 1,1),
(21, 2, '20210102', 2, 1,2),
(22, 3, '20210103', 2, 1,3),
(23, 4, '20210104', 2, 2,1),
(24, 2, '20210105', 1, 2,2),
(25, 2, '20210106', 1, 3,1),
(26, 3, '20210107', 1, 1,1),
(27, 3, '20210108', 1, 1,2),
(28, 3, '20210109', 1, 1,3),
(29, 4, '20210110', 1, 2,1),
(30, 4, '20220211', 1, 2,2),
(31, 4, '20220212', 1, 3,1),
(32, 6, '20220330', 1, 1,1),
(33, 6, '20220331', 1, 1,2),
(34, 7, '20220401', 1, 1,3),
(35, 7, '20220402', 1, 2,1),
(36, 1, '20220403', 1, 2,2),
(37, 1, '20220404', 2, 3,1),
(38, 3, '20220405', 1, 1,1),
(39, 3, '20220406', 1, 1,2),
(40, 5, '20220407', 1, 1,3),
(41, 5, '20220408', 1, 2,1),
(42, 7, '20220409', 1, 2,2),
(43, 7, '20220410', 1, 3,1),
(44, 9, '20220411', 2, 1,1),
(45, 9, '20220412', 1, 1,2),
(46, 1, '20220413', 1, 1,3),
(47, 3, '20220414', 1, 2,1),
(48, 5, '20220415', 1, 2,2),
(49, 7, '20220416', 1, 3,1),
(50, 2, '20220501', 1, 1,1),
(51, 2, '20220502', 1, 1,2),
(52, 4, '20220503', 1, 1,3),
(53, 4, '20220504', 1, 2,1),
(54, 6, '20220505', 1, 2,2),
(55, 6, '20220506', 1, 3,1),
(56, 8, '20220507', 1, 1,1),
(57, 8, '20220508', 1, 1,2),
(58, 10, '20220509', 1, 1,3),
(59, 10, '20220510', 1, 2,1),
(60, 12, '20220511', 1, 2,2),
(61, 12, '20220512', 1, 3,1),
(62, 12, '20220513', 1, 1,1),
(63, 2, '20220514', 1, 1,2),
(64, 4, '20220515', 1, 1,3),
(65, 6, '20220516', 1, 2,1),
(66, 8, '20220517', 1, 2,2),
(67, 10, '20220518', 2, 3,1),
(68, 12, '20220519', 2, 1,1),
(69, 1, '20220601', 1, 1,2),
(70, 2, '20220602', 3, 1,3),
(71, 3, '20220602', 1, 2,1),
(72, 4, '20220602', 1, 2,2),
(73, 5, '20220602', 2, 3,1),
(74, 6, '20220606', 4, 1,1),
(75, 7, '20220606', 1, 1,2),
(76, 8, '20220606', 2, 1,3),
(77, 9, '20220606', 1, 2,1),
(78, 10, '20220610', 1, 2,2),
(79, 11, '20220610', 3, 3,1),
(80, 12, '20220610', 1, 1,1),
(81, 1, '20220613', 1, 1,2),
(82, 2, '20220613', 1, 1,3),
(83, 3, '20220613', 1, 2,1),
(84, 4, '20220613', 1, 2,2),
(85, 5, '20220617', 1, 3,1),
(86, 6, '20220617', 1, 1,1),
(87, 7, '20220617', 1, 1,2),
(88, 8, '20220617', 1, 1,3),
(89, 9, '20220621', 1, 2,1),
(90, 10, '20220621', 1, 2,2),
(91, 11, '20220621', 1, 3,1),
(92, 12, '20220621', 1, 1,1),
(93, 1, '20220625', 1, 1,2),
(94, 2, '20220625', 1, 1,3),
(95, 3, '20220627', 1, 2,1),
(96, 4, '20220627', 1, 2,2),
(97, 5, '20220629', 1, 3,1),
(98, 6, '20220629', 1, 2,1),
(99, 7, '20220630', 1, 2,2),
(100, 8, '20220630', 1, 3,1);