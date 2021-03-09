USE AdventureWorks2012; 
GO 
 

--3 
DECLARE @CustomerCount INT; 
SELECT @CustomerCount = COUNT(*) 
FROM Sales.Customer; 
PRINT 'Customer Count: ' + CAST(@CustomerCount AS VARCHAR); 