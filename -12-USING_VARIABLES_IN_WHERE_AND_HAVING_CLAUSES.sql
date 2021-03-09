USE AdventureWorks2012;
GO

--4 
DECLARE @Amount INT = 10000; 
 
SELECT SUM(TotalDue) AS TotalSales, CustomerID 
FROM Sales.SalesOrderHeader 
GROUP BY CustomerID 
HAVING SUM(TotalDue) > @Amount;