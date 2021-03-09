USE AdventureWorks2012;
GO

--Write a script that declares an integer variable called @SalesCount. 
--Set the value of the variable to the total count of sales in the Sales.SalesOrderHeader table. 
--Use the variable in a SELECT statement that shows the difference between the @SalesCount and the count of sales by customer. 

DECLARE @SalesCount INT
SELECT @SalesCount =COUNT(SALESORDERID)
FROM Sales.SalesOrderHeader

SELECT @SalesCount AS COUNT,COUNT(SOH.SalesOrderID) AS [COUNT OF THE ORDER] , C.CustomerID,P.LastName
FROM PERSON.PERSON AS P
 JOIN SALES.CUSTOMER AS C
ON P.BUSINESSENTITYID=C.CUSTOMERID
LEFT JOIN Sales.SalesOrderHeader AS SOH
ON C.CustomerID=SOH.CustomerID
GROUP BY C.CustomerID,P.LastName
ORDER BY C.CustomerID

