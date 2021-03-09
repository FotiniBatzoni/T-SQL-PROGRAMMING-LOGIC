USE AdventureWorks2012;
GO

DECLARE @Count INT; 
 
SELECT @Count = COUNT(*)
FROM Sales.Customer; 
 
IF @Count < 500 PRINT 'The customer count is less than 500.'; 
ELSE PRINT 'The customer count is 500 or more.'; 
GO 