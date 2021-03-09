USE AdventureWorks2012;
GO

--1
 DECLARE @ID INT; 
 SET @ID = 1; 
 
SELECT BusinessEntityID, FirstName, LastName 
FROM Person.Person 
WHERE BusinessEntityID = @ID; 
GO