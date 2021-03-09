USE AdventureWorks2012;
 GO 
 
--2

DECLARE @errorNo INT; 
DROP TABLE testTable; 
SET @errorNo = @@ERROR; 
IF @errorNo > 0 BEGIN     
	PRINT 'An error has occurred.'     
	PRINT @errorNo;     
	PRINT @@ERROR; 
END; 
GO 