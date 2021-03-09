USE AdventureWorks2012;
GO

--Write a script that declares two integer variables called @MaxID and @MinID. 
--Use the variables to print the highest and lowest SalesOrderID values from the Sales.SalesOrderHeader table

DECLARE  @MaxID INT,@MinID INT;
SELECT @MaxID= MAX(SalesOrderID),
		@MinID=MIN(SalesOrderID)
FROM Sales.SalesOrderHeader
PRINT 'THE HIGHEST VALUE OF SALESORDER IS'
PRINT  @MaxID
PRINT 'THE LOWEST VALUE OF SALESORDER IS'
PRINT @MinID