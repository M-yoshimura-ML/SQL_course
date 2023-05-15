-- Host: localhost    Database: my_db15
-- ------------------------------------------------------



use my_db15;

-- CHAR & VARCHAR
CREATE TABLE char_string(char_text char(4),  var_text VARCHAR(4));

INSERT INTO char_string(char_text, var_text) VALUES ('', ''), ('ab  ', 'ab  '),('abcd', 'abcd');

select length(char_text), length(var_text) from char_string;

select concat('(',char_text, ')'), concat('(',var_text, ')') from char_string;

-- error: because of length
INSERT INTO char_string(char_text, var_text) VALUES ('abcdefgh', 'abcdefgh');

-- warning: 'efgh' is cut
INSERT IGNORE INTO char_string(char_text, var_text) VALUES ('abcdefgh', 'abcdefgh');



-- BINARY & VARBINARY
CREATE TABLE varbin(bin BINARY(4),  var_bin VARBINARY(4));

INSERT INTO varbin(bin, var_bin) VALUES ('a b ', 'a b ');

select * from varbin;

select CAST('a b ' as binary);
select CAST(bin as char), CAST(var_bin as char) from varbin;


-- BLOBG & TEXT
CREATE TABLE text(blob_text BLOB,  text TEXT);

-- error because of ley length
ALTER TABLE text add INDEX index_text(text);

ALTER TABLE text ADD INDEX index_text(text(10));


