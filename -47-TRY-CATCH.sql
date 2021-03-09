USE AdventureWorks2012;
 GO 
 
BEGIN TRY     
DROP TABLE testTable; 
END TRY 
BEGIN CATCH     
	PRINT 'An error has occurred.'     
	PRINT ERROR_NUMBER();    
	PRINT ERROR_MESSAGE(); 
	END CATCH; 