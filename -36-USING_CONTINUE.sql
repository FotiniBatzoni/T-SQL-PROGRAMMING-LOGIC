USE AdventureWorks2012;
GO


DECLARE @Count INT = 1; 
 
WHILE @Count < 10 BEGIN     
	PRINT @Count;     
	SET @Count += 1;     
	IF @Count = 3 BEGIN        
		PRINT 'CONTINUE';        
		CONTINUE;     
	END;     
	PRINT 'Bottom of loop'; 
END;