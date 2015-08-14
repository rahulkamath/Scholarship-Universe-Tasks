/*
Create database command
*/
CREATE DATABASE MySQLDB;

/*
Use database command
*/
USE MySQLDB;

/*
Create table command specifying columns with datatypes and properties
*/
CREATE TABLE TuMesa
(
TuMesaId int IDENTITY(1,1) PRIMARY KEY,
TuMesaDescription varchar(50)
);

/*
Query to insert 5 records
*/
INSERT INTO TuMesa VALUES ('test1'),('test2'),('test3'),('test4'),('test5');

