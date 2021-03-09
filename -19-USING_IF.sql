USE AdventureWorks2012;
GO

DECLARE @Count INT; 
 
SELECT @Count = COUNT(*) 
FROM Sales.Customer; 
 
IF @Count > 500 BEGIN    
PRINT 'The customer count is over 500.';
 END; 
 GO 
 