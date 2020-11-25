-- Lab: Creating SQL Logins and Database Users

-- Step 1: Use the master database.

USE master;
GO

-- Step 2: Create a Windows login for [domain\user].

-- Enter code here

-- Step 3: Note that the name of the login is the Windows user name.
-- In SSMS, expand the Security node, then the Logins node, and locate the new login. 
-- You might have to refresh the view

-- Step 4: Query the list of existing logins. 
--         Scroll to the right to see the available columns. 

SELECT * FROM sys.server_principals WHERE type IN ('U','G');
GO

-- Step 5: In particular, note the values in the name, type, type_desc, 
--         is_disabled, default_database_name, and default_language_name 
--         columns.

-- Step 6: Create a SQL Server login named 'SQMJL1' with password 'Pa$$w0rd' using T-SQL.

-- Enter code here


-- Step 7: Use the Database Engine Query toolbar icon to logon
--         to the server as SQMJL1.
--         (Click on Database Engine Query, in the Connect to Server
--          window, select
--          SQL Authentication, enter SQMJL1 as the user name,
--          Pa$$w0rd as the password and click Connect)

-- Step 8: In the window that opens, copy and paste the following query
--         to see the available logon tokens.

SELECT * FROM sys.login_token;
GO

--         Try to change to the TSQL2018 database...?
--         Return to the Administrator query window

-- Step 9: Note that SQMJL1 is also a member of the public server role.
--         In SSMS, under Security\Logins, right click SQMJL1 and choose Properties.
--         Examine the Server Roles page to view role membership
--         Roles will be discussed in the next module. Close the
--         window that was opened when SQMJL1 connected.

-- Step 10: Create a SQL Server login for Nupur using the GUI interface.
--          (In Object Explorer, expand Security,
--           expand Logins, right-click Logins and click New Login.
--           In the Login - New window, enter Nupur as the login name,
--           click SQL Server authentication,
--           enter Pa$$w0rd as the password and as the confirm password.
--           Note the available policy options and click OK to create
--           the login)

-- Step 11: Requery the list of existing logins.

SELECT * FROM sys.server_principals WHERE type IN ('U','G');
GO

-- Step 12: Query the list of SQL Server logins. Scroll the results
--          to the right and notice in particular the columns 
--          is_policy_checked, is_expiration_checked, and password_hash.

SELECT * FROM sys.sql_logins;
GO

-- Step 13: Change to the TSQL2018 database. Note that you 
--         cannot create a user in one database from within
--         another database. Users are always created in
--         the current database.

USE TSQL2018;
GO

-- Step 14: Create a user for the SQMJL1 login

-- Enter code here

-- Go back to the SQMJL1 query window and try to change to the TSQL2018 database.

-- Step 15: Create a user in the TSQL2018 database for
--         the logon Nupur that was created using the GUI. Call the user
--         Nupur and leave all other values at their
--         defaults.
--         (In Object Explorer, expand Security,
--          expand Logins, right-click Logins and click Refresh.
--          Right-click the Nupur login and click Properties.
--          In the Select a page pane, click User Mapping. In the
--          list of mappings, check the box in the Map column
--          beside the TSQL2018 database)

-- Step 16: Query the list of existing users. Review the list
--         of users that is returned. Note in particular the
--         guest, INFORMATION_SCHEMA and sys users. These
--         will be discussed in a later module.

SELECT * FROM sys.database_principals WHERE type IN ('S','U');
GO