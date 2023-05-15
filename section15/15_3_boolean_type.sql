-- Host: localhost    Database: my_db15
-- ------------------------------------------------------



use my_db15;



-- BOOL, BOOLEAN
create table boolean_type (
is_true boolean
);

insert into boolean_type values (0), (1), (2);

select * from boolean_type;

select is_true, IF(is_true = TRUE, 'true', 'false') from boolean_type;

-- These types are synonyms for TINYINT(1). 
-- A value of zero is considered false. Nonzero values are considered true
SELECT IF(0, 'true', 'false'); -- false

SELECT IF(1, 'true', 'false'); -- true

SELECT IF(2, 'true', 'false'); -- true

--  the values TRUE and FALSE are merely aliases for 1 and 0
SELECT IF(0 = FALSE, 'true', 'false'); -- true

SELECT IF(1 = TRUE, 'true', 'false'); -- true

SELECT IF(2 = TRUE, 'true', 'false'); -- false

SELECT IF(2 = FALSE, 'true', 'false'); -- false

