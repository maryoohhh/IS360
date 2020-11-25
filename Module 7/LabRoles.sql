-- Server Roles

-- Step 1: Use the master database.

USE master;
GO

-- Step 2: Create a login to use for testing.

CREATE LOGIN Test1 WITH PASSWORD = 'Pa$$w0rd', CHECK_POLICY = OFF;
GO

-- Step 3: In Object Explorer, expand Security, expand Server Roles.

-- Step 4: Right-click the bulkadmin role, click Properties. Add Test1 to the role.

-- Step 5: Expand Logins and right-click Test1, then click Properties. Note that if 
--         Test1 is not in the list of logins, refresh the list).

-- Step 6: Click on the Server Roles tab and note that roles can be assigned or removed
--         from the context of either the Login or the Role. Remove the bulkadmin role
--         from the login.

-- Step 7: View the available fixed server roles using T-SQL. Note that roles are considered
--         to be server principals. Also note that public is in the list of roles returned.

SELECT * FROM sys.server_principals WHERE type = 'R';
GO

-- Step 8: Add Test1 to the serveradmin role using T-SQL.

-- Enter code here

-- Step 9: View the members of the server roles using T-SQL.

SELECT r.name AS RoleName,
       p.name AS PrincipalName 
FROM sys.server_role_members AS srm
INNER JOIN sys.server_principals AS r
ON srm.role_principal_id = r.principal_id
INNER JOIN sys.server_principals AS p
ON srm.member_principal_id = p.principal_id;
GO

-- Step 10: Drop Test1 from the serveradmin role using T-SQL.

-- Enter code here

-- Database Roles

-- Step 11: Use the TSQL2018 database.

USE TSQL2018;
GO

-- Step 12: In Object Explorer, expand Databases, expand TSQL2018,
--         and expand Security.

-- Step 13: Add the login Test1 to the database and to the 
--         db_backupoperator fixed database role. Name the user Test1. 
--         (Expand the Users node. Right-click Users and click New User. From the 
--          User type drop down select SQL user with login. Click the elipsis beside  
--          the Login name textbox. In the Select Login window in the Enter the object 
--          names to select textbox type Test1 and click OK. In the 
--          Database User - New window, type Test1 in User name textbox. In the 
--          Select a page pane, click Membership. In the Database role membership
--          pane, check the db_backupoperator checkbox and click OK).

-- Step 14: In Object Explorer expand the Roles node,  expand the Database Roles node,
--         right-click the db_backupoperator role and click Properties. 
--         click on the Test1 and click Remove and click OK. Note that roles can 
--         be assigned or removed from the context of either the User or the Role.

-- Step 15: View the available database roles using T-SQL. Note that roles are considered
--         to be database principals. Also note that db_owner is in the list. Scroll 
--         to the right and note the is_fixed_role column values.

SELECT * FROM sys.database_principals WHERE type = 'R';
GO

-- Step 16: Add Test1 user to the db_backupoperator role using T-SQL. 

-- Enter code here

-- Step 17: View the members of the database roles using T-SQL.

SELECT r.name AS RoleName,
       p.name AS PrincipalName 
FROM sys.database_role_members AS drm
INNER JOIN sys.database_principals AS r
ON drm.role_principal_id = r.principal_id
INNER JOIN sys.database_principals AS p
ON drm.member_principal_id = p.principal_id;
GO

-- Step 18: Drop Test1 from the db_backupoperator role using T-SQL.

-- Enter code here


