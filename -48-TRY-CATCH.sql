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