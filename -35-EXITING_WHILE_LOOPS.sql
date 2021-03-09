USE AdventureWorks2012;
GO


DECLARE @Count INT = 1; 
 
WHILE @Count < 50  BEGIN     
	PRINT @Count;     
	IF @Count = 10 BEGIN			
		PRINT 'Exiting the WHILE loop';				
		BREAK;     
	END;     
	SET @Count += 1; 
END; 