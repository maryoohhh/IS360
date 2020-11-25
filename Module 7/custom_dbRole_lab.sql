
-- Using SSMS, create a new Login called 'hrUser'
-- Map the new login to the TSQL2018 database in the public role

-- We want the new user to be able to do SELECT, INSERT and UPDATE statements
-- on the objects in the HR schema but nowhere else

-- at this point hrUser should not be able to query the HR.Employees table (or anything else)
-- Execute the statements between the *********s to make sure:

-- ***********************

EXECUTE AS USER = 'hrUser';
GO

SELECT * FROM HR.Employees;

-- revert to administrator security context
REVERT;
GO

-- ***********************

-- Expand TSQL2018\Security\Roles
-- Right click Database Roles and create a new database role
-- Call the role HR Users with the owner dbo.
-- Click on HR under Owned Schemas.
-- Click Add and add hrUser user to the HR Users role.
-- Click on the Securables window, Search, Specific Objects and OK
-- Click Object Types and choose Tables, then OK
-- Click in the Object Name field and type Production.Products, Check Names, and OK.
-- In the Permissions for Production.Products, under the Grant column, choose SELECT then OK.

-- hrUser, as a member of HR Users role, should know have permission
-- to SELECT from the HR schema objects and the Production.Products table. 

-- Execute the statements between the ************s to make sure:

-- ***********************

EXECUTE AS USER = 'hrUser';
GO

SELECT * FROM HR.Employees;

SELECT * FROM Production.Products;

SELECT * FROM Production.Categories;

-- revert to administrator security context
REVERT;
GO

-- ***********************


