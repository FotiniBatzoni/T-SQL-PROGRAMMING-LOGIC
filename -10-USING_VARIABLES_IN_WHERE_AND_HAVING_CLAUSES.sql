USE AdventureWorks2012;
GO

--2
DECLARE @FirstName NVARCHAR(50);
 SET @FirstName = N'Ke%'; 
 
SELECT BusinessEntityID, FirstName, LastName 
FROM Person.Person 
WHERE FirstName LIKE @FirstName 
ORDER BY BusinessEntityID;
GO 
