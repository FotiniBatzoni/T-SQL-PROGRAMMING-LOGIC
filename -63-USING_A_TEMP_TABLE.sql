USE AdventureWorks2012;
 GO 
 
--Create a temp table called #CustomerInfo that contains CustomerID, FirstName, and LastName columns. Include CountOfSales and SumOfTotalDue columns. 
--Populate the table with a query using the Sales.Customer, Person.Person, and Sales.SalesOrderHeader tables. 




CREATE TABLE #CustomerInfo
		(CustomerID INT ,FirstName NVARCHAR(25),  LastName NVARCHAR(25) ,COUNTOFSALES INT, SUMOFTOTALDUE INT)
GO

INSERT INTO  #CustomerInfo
		(CustomerID, FirstName, LastName,COUNTOFSALES, SUMOFTOTALDUE)
	SELECT C.CUSTOMERID,P.FIRSTNAME,P.LASTNAME, COUNT(SalesOrderID) AS COUNTOFSALES, SUM(TOTALDUE) AS SUMOFTOTALDUE
	FROM Person.Person AS P
	INNER JOIN SALES.Customer AS C
	ON P.BusinessEntityID=C.PersonID
	LEFT JOIN Sales.SalesOrderHeader AS SOH
	ON C.CustomerID=SOH.CustomerID
	GROUP BY C.CustomerID,P.FIRSTNAME,P.LASTNAME

	SELECT CustomerID, FirstName, LastName,COUNTOFSALES, SUMOFTOTALDUE
	FROM #CustomerInfo
	ORDER BY CustomerID