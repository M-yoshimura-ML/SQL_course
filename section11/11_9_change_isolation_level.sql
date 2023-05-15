-- Host: localhost    Database: my_db11
-- ------------------------------------------------------



use my_db11;



/* Read Uncommitted */
SELECT @@transaction_isolation;
SET session transaction isolation level read uncommitted;
SELECT @@transaction_isolation;


/* Read Committed 
 can prevent dirty read phenomenon.
*/
SELECT @@transaction_isolation;
SET session transaction isolation level read committed;
SELECT @@transaction_isolation;


/* Repeatable Read 
 can prevent Non-Repeatable Read & Phantom Read
*/
SELECT @@transaction_isolation;
SET session transaction isolation level repeatable read;
SELECT @@transaction_isolation;


/* Serializable */
SELECT @@transaction_isolation;
SET session transaction isolation level serializable;
SELECT @@transaction_isolation;