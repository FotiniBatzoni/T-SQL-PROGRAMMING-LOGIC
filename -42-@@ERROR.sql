USE AdventureWorks2012;
 GO 
 
--1 
DECLARE @errorNo INT; 
PRINT 1/0; 
SET @errorNo = @@ERROR; 
IF @errorNo > 0 BEGIN     
	PRINT 'An error has occurred.'     
	PRINT @errorNo;     
	PRINT @@ERROR; 
END; 
 
GO 