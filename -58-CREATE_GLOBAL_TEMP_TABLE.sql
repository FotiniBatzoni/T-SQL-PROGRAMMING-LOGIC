USE AdventureWorks2012; 
GO 

CREATE TABLE ##myCustomers(CustomerID INT, FirstName VARCHAR(25), LastName VARCHAR(25));
 GO 
 
INSERT INTO ##myCustomers(CustomerID,FirstName,LastName) 
SELECT C.CustomerID, FirstName,LastName 
FROM Person.Person AS P 
INNER JOIN Sales.Customer AS C 
ON P.BusinessEntityID = C.PersonID; 
 
SELECT CustomerID, FirstName, LastName 
FROM ##myCustomers; 
 
--Run the drop statement when you are done 
--DROP TABLE ##myCustomers