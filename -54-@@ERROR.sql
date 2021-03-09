--Write a statement that attempts to insert a duplicate row into the HumanResources.Department table. 
--Use the @@ERROR function to display the error. 

DECLARE @ERRORNO INT;

INSERT INTO HumanResources.Department 
		(DepartmentID,Name,GroupName,ModifiedDate)
VALUES (1,'ABC','DHE',GETDATE());
SET @ERRORNO=@@ERROR
  IF @ERRORNO>0 BEGIN
   PRINT 'YOU CANNOT DUPLICATE THE DEPARTMENTID NUMBER';
   PRINT @ERRORNO
END;
