USE AdventureWorks2012;
GO

--Write a script that declares an integer variable called @ID. 
--Assign the value 70000 to the variable.
-- Use the variable in a SELECT statement that returns all the rows from the Sales.SalesOrderHeader table that have a SalesOrderID greater than the value of the variable. 

DECLARE @ID INT = 70000
SELECT SalesOrderID
FROM Sales.SalesOrderHeader 
WHERE SalesOrderID> (@ID)
ORDER BY SalesOrderID