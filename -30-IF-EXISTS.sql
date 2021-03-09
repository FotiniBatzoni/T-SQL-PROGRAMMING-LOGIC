USE AdventureWorks2012;
GO

--Write a batch that uses IF EXISTS to check to see whether there is a row in the Sales. SalesOrderHeader table that has SalesOrderID = 1.
 --Print “There is a SalesOrderID = 1” or “There is not a SalesOrderID = 1” depending on the result. 

 IF EXISTS (SELECT*FROM Sales. SalesOrderHeader WHERE SalesOrderID = 1 ) BEGIN
  PRINT '“There is a SalesOrderID = 1”'
END
ELSE BEGIN
   PRINT ' “There is not a SalesOrderID = 1'
END