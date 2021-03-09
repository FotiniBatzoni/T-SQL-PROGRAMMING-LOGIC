USE AdventureWorks2012;
 GO 
 
--1 
PRINT 'Syntax error.'; 
GO 
BEGIN TRY     
	SELECT FROM Sales.SalesOrderDetail; 
END TRY 
BEGIN CATCH     
	PRINT ERROR_NUMBER(); 
END CATCH; 
GO 

--2
PRINT 'Invalid column.'; 
GO 
BEGIN TRY     
	SELECT ABC FROM Sales.SalesOrderDetail; 
END TRY 
BEGIN CATCH     
	PRINT ERROR_NUMBER(); 
END CATCH;

-- I put the PRINT statements before each TRY…CATCH block in separate batches because they wouldn’t print along with these incorrect statements. 
--Example 1 is a syntax error; the SELECT list is empty. Example 2 contains an invalid column name