USE tempdb
GO

SELECT * FROM dbo.Products

-- Update existing rows with new values:
-- Change the ProductName to N'Fender' where the ProductID is  1
UPDATE dbo.Products
SET ProductName = N'Fender'
WHERE ProductID = 1
SELECT * FROM dbo.Products

-- Change the ProductName to N'Gretsch' and the ProductDesc to N'Electric Guitar' where the ProductID is 2 
UPDATE dbo.Products
SET ProductName = N'Gretsch', ProductDesc = N'Electric Guitar'
WHERE ProductID = 2
SELECT * FROM dbo.Products


