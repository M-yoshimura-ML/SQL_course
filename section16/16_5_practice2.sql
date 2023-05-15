-- Host: localhost    Database: my_db16
-- ------------------------------------------------------

use my_db16;

/* Register data in player, rating_rank table  */
-- player data
insert into player(player_id, player_rating) values
(1001,1600),
(1002,2500),
(1003,2900);

-- rating_rank data
insert into rating_rank (rate_from, rate_to, `rank`) values
(1000, 1500, 'beginner'),
(1501, 2000, 'bronze'),
(2001, 2500, 'silver'),
(2501, 3000, 'gold'),
(3001, 3500, 'platinum');


/* display player_id, player_rating, rank using 2 tables. */
SELECT
p.player_id,
p.player_rating,
rr.rank
FROM
player p
LEFT JOIN rating_rank rr on
p.player_rating >= rr.rate_from
and p.player_rating <= rr.rate_to;

