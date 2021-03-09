USE AdventureWorks2012; 
GO 
 

--4 
DECLARE @FullName NVARCHAR(152); 
SELECT @FullName = FirstName + ISNULL(' ' + MiddleName,'') + ' ' + LastName 
FROM Person.Person 
WHERE BusinessEntityID = 1; 
PRINT 'FullName: ' + @FullName; 