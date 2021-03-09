USE AdventureWorks2012;
GO

DECLARE @Count INT = 1; 
 
WHILE @Count < 5 BEGIN     
	PRINT @Count;     
	SET @Count += 1; 
END; 
GO 