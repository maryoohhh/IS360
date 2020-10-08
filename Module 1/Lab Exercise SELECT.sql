---------------------------------------------------------------------
-- LAB Writing Simple Select Statements
--
-- Exercise 1
---------------------------------------------------------------------
-- 
-- To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. 
-- After executing this statement, the TSQL2012 database should be selected in the Available Databases box. 
-- In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.

USE TSQL2018;
GO

---------------------------------------------------------------------
-- Task 1
--
-- In Object Explorer, expand the TSQL2012 database and expand the Tables folder.
--
-- Look at the names of the tables in the Sales schema.

---------------------------------------------------------------------

-- Task 2
--
-- Write a SELECT statement that will return all rows and all columns from the Sales.Customers table. 
--
-- Execute the written statement


---------------------------------------------------------------------

-- Task 3
-- 
-- Expand the Sales.Customers table in Object Explorer and expand the Columns folder. Observe all columns in the table.
--
-- Write a SELECT statement to return the contactname, address, postalcode, city, and country columns from the Sales.Customers table.
--
-- Execute the written statement.
--
-- What is the number of rows affected by the last query? (Tip: Because you are issuing a SELECT statement against the whole table, the number of rows will be the same as number of rows for the whole Sales.Customer table.)

---------------------------------------------------------------------

-- Task 4
--
-- Write a SELECT statement to return the unitprice and qty columns from the Sales.Orderdetails table.
-- Create a third output column by multiplying the unitprice and qty column values together


---------------------------------------------------------------------


-- Task 5
--
-- Write a SELECT statement to return the custid and contactname columns from the Sales.Customers table.
-- Create a third output column by concatenating the city and country column values together


