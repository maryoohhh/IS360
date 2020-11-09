-- Use the TSQL2018 database
USE TSQL2018;
GO

-- create a schema with AUTHORIZATION dbo

GO

-- start fresh if necessary
IF OBJECT_ID('Operations.Operators') IS NOT NULL 
DROP TABLE Operations.Operators;

/*
Create a table in the Operations schema called Operators
with a primary key column named opID that is also and identity column.
Create a column named opName of type nvarchar with maximum 20 characters
Create a column named opDescription of type nvarchar with maximum 80 characters
Give this column a default value of 'no description'
Create a column named dateEntered of type date with a default value of the return from the GETDATE() function
*/


GO

-- query metadata, look for new table
SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Operations';

-- select from table
SELECT * FROM Operations.Operators;

-- use the sp_help stored procedure
exec sp_help 'Operations.Operators'

