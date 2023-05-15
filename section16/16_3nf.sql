-- Host: localhost    Database: my_db16
-- ------------------------------------------------------


use my_db16;

--
-- Table structure for table `player`
--
CREATE TABLE player (
  player_id bigint UNSIGNED NOT NULL,
  player_rating int NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
   primary key(player_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- player data
insert into player(player_id, player_rating, created_at) values
(1001,1600, now()),
(1002,2500, now()),
(1003,2900, now());



--
-- Table structure for table `rating_rank`
--
CREATE TABLE rating_rank (
  rate_from int NOT NULL,
  rate_to int NOT NULL,
  rank varchar(60) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
   primary key(rate_from, rate_to)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- rating_rank data
insert into rating_rank (rate_from, rate_to, rank, created_at) values
(1000, 1500, 'beginner', now()),
(1501, 2000, 'bronze', now()),
(2001, 2500, 'silver', now()),
(2501, 3000, 'gold', now()),
(3001, 3500, 'platinum', now());


/*get player data with rank */
SELECT
p.player_id,
p.player_rating,
rr.rank
FROM
player p
LEFT JOIN rating_rank rr on
p.player_rating >= rr.rate_from
and p.player_rating <= rr.rate_to;

