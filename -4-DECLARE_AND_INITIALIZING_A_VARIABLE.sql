USE AdventureWorks2012;
GO 


--4

DECLARE @FirstName NVARCHAR(50), @LastName NVARCHAR(50); 
SELECT @FirstName  = FirstName, @LastName = LastName 
FROM Person.Person 
WHERE BusinessEntityID = 1; 
 
PRINT 'The value of @FirstName'; 
PRINT @FirstName;
PRINT 'The value of @LastName'; 
PRINT @LastName; 
GO 