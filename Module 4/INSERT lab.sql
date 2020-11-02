USE tempdb
GO


-- Execute the following code (between --start and --end) to create a table on the temporary database tempdb

-- start
USE tempdb
GO

CREATE TABLE dbo.Products
(
	ProductID int NOT NULL PRIMARY KEY,
	ProductDesc nvarchar(80) NULL,
	ProductName nvarchar(20) NOT NULL
);

GO
--end

-- Query the empty Products table - no rows should be returned
Select ProductID, ProductDesc, ProductName
FROM dbo.Products

GO


-- Insert a row with the values 001, N'Electric Guitar', N'Telecaster'
-- explicitly name columns
-- then query the table again to make sure the insert was successful


-- Insert two rows with the  values 002, N'Electric Guitar', N'Stratocaster', and 003, N'Acoustic Guitar', N'Martin'


-- Insert a row with the values 002, N'Electric Guitar', N'Martin'


-- does it work? If not fix the statement and try again


