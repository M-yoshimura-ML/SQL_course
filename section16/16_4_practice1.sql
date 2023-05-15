-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;


--
-- Table structure for table `player_inventory`
--
CREATE TABLE player_inventory (
  player_id bigint UNSIGNED NOT NULL,
  item_type varchar(60) NOT NULL,
  quantity int NOT NULL,
   primary key(player_id, item_type)
);


--
-- Table structure for table `player`
--
CREATE TABLE player (
  player_id bigint UNSIGNED NOT NULL,
  player_rating int NOT NULL,
   primary key(player_id)
);



--
-- Table structure for table `rating_rank`
--
CREATE TABLE rating_rank (
  rate_from int NOT NULL,
  rate_to int NOT NULL,
  `rank` varchar(60) NOT NULL,
   primary key(rate_from, rate_to)
);



