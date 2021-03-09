USE AdventureWorks2012;
GO

--Write a script that declares three variables, 
--one integer variable called @ID, an NVARHCAR(50) variable called @FirstName, and a VARCHAR(50) variable called @LastName. 
--Use a SELECT statement to set the value of the variables with the row from the Person.Person table with BusinessEntityID = 1.
--Print a statement in the “BusinessEntityID: FirstName LastName” format

DECLARE @ID INT
SET @ID=1

SELECT BusinessEntityID,FirstName,LastName
FROM Person.Person
WHERE @ID= CASE @ID WHEN 0 THEN 0
 ELSE BusinessEntityID END
PRINT 'BusinessEntityID: FirstName LastName'