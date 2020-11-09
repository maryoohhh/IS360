-- Constraint Lab

USE TSQL2018;
GO

/*
Create the Operations.Stock table with four columns:
The stockid column of type int
The opID column of type int that defines a foreign key constraint 'fk_ops' against the opID column in Operators table
The unitprice column of type money
The discontinued column of type BIT that will take NULL and a constraint named 'def_disc' defines a default value of zero 

Define a named primary key constraint called pk_stock on the stockid column

*/




-- Alter the table to add a CHECK constraint on the unitprice column called 'chk_unitprice'
-- to make sure that you insert a value greater than zero



SELECT * FROM Operations.Operators;
SELECT * FROM Operations.Stock;

-- Insert a row into the table with the values 1 for the stockid, 3 for the opID and 22.95 for the unitprice


-- The check operator specifies an invalid unitprice <= 0
-- Repeat the above insert with '2' for the stockid and 0 for the unitprice
-- This should work and tests the boundaries of our constraint
-- range testing

-- Repeat the above insert with '3' for the stockid and -1 for the unitprice
-- This should fail as it violates the constraint
-- conflict with the CHECK constraint "chk_unitprice"

-- Repeat the above insert with '3' for the stockid and 10.95 for the unitprice
-- This should work as it is a valid insert


-- Repeat the above insert with '4' for the stockid and 999 for the opID
-- This should fail as 999 is an invalid operator value i.e. does not exist in the Operators table
-- no operator 999

-- fix the statement with a valid opID from the Operators table and insert the row
 

-- Repeat the above insert with 12.95 for the unitprice
-- This should fail as it will violate the primary key constraint that says all values must be unique in stockid


-- fix the statement with a unique stockid and insert the row
