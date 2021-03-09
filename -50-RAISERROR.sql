USE master;
 GO 
 
--1 This code section creates a custom error message 

IF EXISTS(SELECT * FROM sys.messages where message_id = 50002) BEGIN     
	EXEC sp_dropmessage 50002; 
END 
GO 
PRINT 'Creating a custom error message.' 
	EXEC sp_addmessage 50002, 16,    N'Customer missing.';
 GO 
 
 USE AdventureWorks2012;
 GO 
 --2 
 IF NOT EXISTS(SELECT * FROM Sales.Customer          
				 WHERE CustomerID = -1) BEGIN    
	RAISERROR(50002,16,1);
END 
GO 
 
--3 
BEGIN TRY     
PRINT 1/0; 
END TRY 
BEGIN CATCH     
	IF ERROR_NUMBER() = 8134 BEGIN        
		RAISERROR('A bad math error!',16,1);   
  END; 
 END CATCH; 