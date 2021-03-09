--Write a statement that attempts to insert a duplicate row into the HumanResources.Department table. 
--Use the @@ERROR function to display the error. 


--Change the code you wrote in question 1 to use TRY…CATCH. Display the error number, message, and severitY


DECLARE @ERRORNO INT;

BEGIN TRY
INSERT INTO HumanResources.Department 
		(DepartmentID,Name,GroupName,ModifiedDate)
VALUES (1,'ABC','DHE',GETDATE());
END TRY
BEGIN CATCH
   PRINT 'YOU CANNOT DUPLICATE THE DEPARTMENTID NUMBER';
   PRINT ERROR_NUMBER()
   PRINT ERROR_MESSAGE()
END CATCH;
GO