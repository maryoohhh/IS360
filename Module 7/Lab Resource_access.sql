-- Lab Resource Access

-- Step 1: Grant SELECT permission on the Production.Products table
--         to Test1.

-- Enter code here


-- Step 2: Change the execution context to the Test1 context.

EXECUTE AS USER = 'Test1';
GO

-- Step 3: Try to SELECT Production.Products and 
--         Production.Categories tables. Note that you are
--         able to SELECT from Production.Products but not
--         from Production.Categories. The default is that
--         users cannot perform any action apart from 
--         actions they have explicitly been permitted to
--         perform.

SELECT * FROM Production.Products;
GO

SELECT * FROM Production.Categories;
GO

-- Step 4: Revert to the Administrator security context.

REVERT;
GO

-- Step 5: Grant SELECT only on the categoryname and categoryid
--         columns in Production.Categories to Test1.

-- Enter code here


-- Step 6: Change the execution context to the Test1 context.

EXECUTE AS USER = 'Test1';
GO

-- Step 7: Try to SELECT the categoryname and categoryid columns from Production.Categories;
--          and also try to SELECT all columns from Production.Categories.
--          Note that the first query works. Note also, however, 
--          that an error message is returned for each column that
--          the user is not permitted to access, in the second query.

SELECT categoryname, categoryid FROM  Production.Categories;
GO

SELECT * FROM Production.Categories;
GO

-- Step 8: Try to execute a stored procedure without specific permissions.
--         Note that execution fails and that the error message shows the 
--         lack of EXECUTE permission.

EXEC [Sales].[GetTopCustomers];
GO

-- Step 9: Revert to Administrator security context.

REVERT;
GO

-- Step 10: Grant EXECUTE on the stored procedure to Test1.

-- Enter code here


-- Step 11: Change execution context to Test1.

EXECUTE AS USER = 'Test1';
GO

-- Step 12: Try to execute a stored procedure without specific permissions.
--         Note that execution now works.

EXEC [Sales].[GetTopCustomers];
GO

-- Step 13: Revert to Administrator security context.

REVERT;
GO

-- Step 14: Revoke permission to execute [Sales].[GetTopCustomers] from
--         Test1.

-- Enter code here


-- Step 15: Check if the Test1 can execute the procedure.
--         Note that execution is denied.

EXECUTE AS USER = 'Test1';
GO

EXEC [Sales].[GetTopCustomers];
GO

-- Step 16: Revert to Administrator security context.

REVERT;
GO

-- Step 17: Grant EXECUTE on the Sales schema to Test1.

-- Enter code here


-- Step 18: Check if the Test1 can execute the procedure.
--         Note that execution is now permitted.

EXECUTE AS USER = 'Test1';
GO

EXEC [Sales].[GetTopCustomers];
GO

REVERT;
GO