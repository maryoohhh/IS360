USE tempdb;
GO


SELECT * FROM dbo.Products

-- Delete rows where the ProductID is 1
DELETE FROM dbo.Products
WHERE ProductID = 1
SELECT * FROM dbo.Products

-- Truncate the table
TRUNCATE TABLE dbo.Products
SELECT * FROM dbo.Products

-- Drop the table
DROP TABLE dbo.Products

-- query metadata
SELECT * FROM INFORMATION_SCHEMA.TABLES