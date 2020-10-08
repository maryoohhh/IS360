---------------------------------------------------------------------
-- LAB Using Column and Table Aliases
--
---------------------------------------------------------------------

USE TSQL2018;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Ensure that you are connected to the TSQL2018 database.
--
-- Write a SELECT statement to return the contactname and contacttitle columns from the Sales.Customers table, assigning “C” as the table alias. 
-- Use the table alias C to prefix the names of the two needed columns in the SELECT list. 
-- The benefit of using table aliases will become clearer in future modules when topics such as joins and subqueries will be introduced. 
--
-- Execute the written statement
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to return the contactname, contacttitle, and companyname columns from the Sales.Customers table. 
-- Assign these columns with the aliases Name, Title, and Company Name, respectively, in order to return more human-friendly column titles for reporting purposes.
--
-- Execute the written statement and notice specifically the titles of the columns in the desired output.
---------------------------------------------------------------------




---------------------------------------------------------------------
-- Task 3
-- 
-- Write a query to display the productname column from the Production.Products table using “P” as the table alias and Product Name as the column alias.
--
-- Execute the written statement.
---------------------------------------------------------------------


---------------------------------------------------------------------

-- Task 4
--
-- Write a SELECT statement to return the unitprice and qty columns from the Sales.Orderdetails table.
-- Create a third output column by multiplying the unitprice and qty column values together
-- Give the computed column the alias 'total'



---------------------------------------------------------------------
-- Task 5
-- 
-- A developer has written a query to retrieve two columns (city and region) from the Sales.Customers table. When the query is executed, it returns only one column. 
-- Your task is to analyze the query, correct it to return two columns, and explain why the query returned only one column.
--
-- Execute the query exactly as written inside a query window and observe the result.
--
-- Correct the query to return the city and country columns from the Sales.Customers table.
--
-- Why did the query return only one column? What was the title of the column in the output? What is the best practice when using aliases for columns to avoid such errors?
---------------------------------------------------------------------

SELECT 
	city country
FROM Sales.Customers;

