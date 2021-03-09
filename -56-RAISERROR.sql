--Write a statement that attempts to insert a duplicate row into the HumanResources.Department table. 
--Use the @@ERROR function to display the error. 


--Change the code you wrote in question 1 to use TRY…CATCH. Display the error number, message, and severitY


--Change the code you wrote in question 2 to raise a custom error message instead of the actual error message. 


DECLARE @ERRORNO INT;

BEGIN TRY
INSERT INTO HumanResources.Department 
		(DepartmentID,Name,GroupName,ModifiedDate)
VALUES (1,'ABC','DHE',GETDATE());
END TRY
BEGIN CATCH
	IF ERROR_NUMBER()=544 BEGIN
	RAISERROR ('NO GOOD',16,1)
 END
END CATCH;
GO