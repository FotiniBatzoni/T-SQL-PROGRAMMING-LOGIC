USE AdventureWorks2012;
 GO 
 
 BEGIN TRY     
	PRINT 1/0; 
 END TRY 
 BEGIN CATCH     
	PRINT 'Inside the Catch block';     
	PRINT ERROR_NUMBER();     
	PRINT ERROR_MESSAGE();     
	PRINT ERROR_NUMBER(); 
END CATCH 
	PRINT 'Outside the catch block'; 
	PRINT ERROR_NUMBER() 
	GO 