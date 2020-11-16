---------------------------------------------------------------------
--
-- UDF and TVF Exercise
---------------------------------------------------------------------

USE TSQL2018;
GO

---------------------------------------------------------------------
-- Task 1
---------------------------------------------------------------------
-- Create a User Defined Function called getEmpName in the HR schema
-- that has an integer input parameter called @empid
-- The function returns the concatenated firstname and lastname values from HR.Employees
-- for the employee whose empid matches the parameter value



---------------------------------------------------------------------
-- Task 2
---------------------------------------------------------------------
--
-- Write a SELECT statement against the Sales.OrderValues view to retrieve the custid and total sum of the val column when grouped by custid. 
-- Filter the results to include orders only for the order year 2016.


--
-- Execute the written statement to test the code and verify the results
--

-- Define an inline table-valued function using the following function header and add your previous query after the RETURN clause.
-- Include an integer input parameter called @orderyear
-- modify the query by replacing the '2016' in the WHERE clause with the parameter @orderyear.

CREATE FUNCTION dbo.fnGetSalesByCustomer
-- finish function code


-- Highlight the completed code and execute it. This will create an inline table-valued function named dbo.fnGetSalesByCustomer.

-- 
-- Write a SELECT statement to retrieve the custid and totalsalesamount columns from the dbo.fnGetSalesByCustomer inline table-valued function. 
-- Use the value 2015 for the parameter and execute the query



-- Change the value to 2016 for the parameter then execute the query again



-- Bonus: Alter the dbo.fnGetSalesByCustomer function using two input parameters
-- one for the year and one for the custid

-- test the new function passing two arguments