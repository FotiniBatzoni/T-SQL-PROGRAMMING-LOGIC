USE AdventureWorks2012;
GO

--3 
DECLARE @ID INT = 1; 
--3.1 
SELECT BusinessEntityID, FirstName, LastName 
FROM Person.Person 
WHERE @ID = CASE @ID WHEN 0 THEN 0 ELSE BusinessEntityID 
END; 
 
SET @ID = 0; 
 
--3.2 
SELECT BusinessEntityID, FirstName, LastName 
FROM Person.Person 
WHERE @ID = CASE @ID WHEN 0 THEN 0 ELSE BusinessEntityID
 END; 