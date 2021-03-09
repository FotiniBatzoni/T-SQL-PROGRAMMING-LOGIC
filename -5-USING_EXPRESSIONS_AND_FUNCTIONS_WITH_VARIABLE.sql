USE AdventureWorks2012; 
GO 
 
--1 
DECLARE @myINT1 INT = 10, @myINT2 INT = 20, @myINT3 INT; 
SET @myINT3 = @myINT1 * @myINT2; 
PRINT 'Value of @myINT3: ' + CONVERT(VARCHAR,@myINT3); 
GO