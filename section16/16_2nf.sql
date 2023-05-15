-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;


--
-- Table structure for table `player`
--
CREATE TABLE player (
  player_id bigint UNSIGNED NOT NULL,
  player_rank varchar(60) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
   primary key(player_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


insert into player(player_id, player_rank, created_at) values
(1001,'bronze', now()),
(1002,'silver', now()),
(1003,'gold', now());


