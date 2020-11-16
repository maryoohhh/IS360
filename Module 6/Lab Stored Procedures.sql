---------------------------------------------------------------------
-- LAB Stored Procedures
---------------------------------------------------------------------

USE TSQL2018;
GO

-- Start fresh (if needed)
IF OBJECT_ID( 'Sales.GetTopCustomers' ) IS NOT NULL DROP PROCEDURE Sales.GetTopCustomers
GO

-- Task 0
-- 
-- Execute the provided T-SQL code to return the custid, contactname and total sales
-- for the top ten customers based on their total sales value.
SELECT 
	c.custid,
	c.contactname,
	SUM(o.val) AS salesvalue
FROM Sales.OrderValues AS o
JOIN Sales.Customers AS c 
ON c.custid = o.custid
GROUP BY c.custid, c.contactname
ORDER BY salesvalue DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;


---------------------------------------------------------------------

-- Task 1
-- 
-- Create a stored procedure named Sales.GetTopCustomers. Use the query above for the procedure definition.




-- Write a T-SQL statement to execute the created procedure.



-- Execute the T-SQL statement.

---------------------------------------------------------------------

-- Task 2
-- 
-- Modify the Sales.GetTopCustomers stored procedure to include a parameter of type int named @orderyear.
-- Add a WHERE clause to the query in the function definition to filter by order year.
-- Use the YEAR() function and the orderdate column from the Orders table, check if it equals the @orderyear parameter



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure for the year 2016.



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure for the year 2017.



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure without a parameter. 



-- Execute the T-SQL statement. What happened? What is the error message?
--
-- If an application was designed to use the exercise 1 version of the stored procedure, 
-- would the modification made to the stored procedure in this exercise impact the usability of that application?

---------------------------------------------------------------------

-- Task 3
-- 
-- Modify the Sales.GetTopCustomers stored procedure to give the @orderyear parameter a default NULL




-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure without a parameter. 



-- Execute the T-SQL statement

---------------------------------------------------------------------

-- Task 4

-- Add the integer parameter @n to the Sales.GetTopCustomers stored procedure. Use this parameter to specify how many customers you want retrieved.
-- Use a default value of 10.




-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure without any parameters.



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure for order year 2017 and five customers.



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure for the order year 20016.



-- Write an EXECUTE statement to invoke the Sales.GetTopCustomers stored procedure to retrieve 20 customers.



-- Do the applications using the stored procedure need to be changed because another parameter was added?




