-- Host: localhost    Database: my_db16
-- ------------------------------------------------------


--
-- Table structure for table `player_inventory`
--
CREATE TABLE player_inventory (
  player_id bigint UNSIGNED NOT NULL,
  item_type varchar(60) NOT NULL,
  quantity int NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
   primary key(player_id, item_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


insert into player_inventory(player_id, item_type, quantity, created_at) values
(1001,' amulets', 4, now()),
(1002,' amulets', 4, now()),
(1002,' rings', 10, now()),
(1003,' amulets', 3, now()),
(1003,' rings', 9, now()),
(1003,' sheilds', 5, now());


