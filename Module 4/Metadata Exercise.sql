---------------------------------------------------------------------
-- LAB System Views and Functions
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL2018;
GO

---------------------------------------------------------------------
-- Task 1

-- Write a SELECT statement that will return the name, dbid, and crdate columns from the view sys.sysdatabases. 





---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to retrieve all database objects by selecting the object_id, name, schema_id, type, type_desc, create_date,
--  and modify_date columns from the sys.objects table.



-- Write a SELECT statement to retrieve all the distinct object types by selecting the type and type_desc columns in the sys.objects table. 
-- Order the results by the type_desc column.


-- Copy the first query in this task and modify it to filter only user-based tables.
       


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement against the sys.tables view to show all user-defined tables. 
-- Retrieve the same columns as in task 2, but use the system function SCHEMA_NAME with the schema_id column. 
-- Use the alias schemaname to display the name of the schema.



-- Retrieve all views in the TSQL2018 database by writing a SELECT statement against the sys.views view, using the same columns as in the previous query. 



---------------------------------------------------------------------



---------------------------------------------------------------------
-- Task 4
-- 
-- Write a SELECT statement to retrieve the columns names from the sys.columns view, 
-- using the aliases columnname, column_id, system_type_id, max_length, precision, scale, and collation_name. 
-- Filter the result to show only the columns from the Sales.Customers table.


 
---------------------------------------------------------------------






