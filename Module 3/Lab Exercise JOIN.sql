---------------------------------------------------------------------
-- JOIN Lab
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2018;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Write a SELECT statement that will return the productname column from the Production.Products table (use table alias “p”)
-- and the categoryname column from the Production.Categories table (use table alias “c”) using an inner join.
-- Specify the categoryid column common to both tables as a predicate in the ON clause of the join 




--
-- Execute the written statement.
--
---------------------------------------------------------------------

---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement that joins the Sales.Orders table (use table alias “o”)
-- with the Sales.Orderdetails table (use table alias “d”)
-- Use the orderid column common to both tables as a predicate in the ON clause of the join
-- Return the orderid, shipcity and shipcountry columns from the Sales.Orders table 
-- Return a computed column that shows the product of the qty column multiplied by the unitprice column
-- from the Sales.Orderdetails table. Use the column alias [Order Value].
-- Return only the orders with Order Value greater than or equal to $100.00
-- Order the results by Order Value descending.




--
-- Execute the written statement.
--
---------------------------------------------------------------------

---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement that joins the Sales.Orders table (use table alias “o”)
-- with the HR.Employees table (use table alias “e”).
-- Use the column common to both tables as a predicate in the ON clause of the join
-- Return the orderid, shipcity and shipcountry columns from the Sales.Orders table 
-- Return the lastname, title and phone columns from the HR.Employees table.




-- Execute the written statement.
--
---------------------------------------------------------------------
