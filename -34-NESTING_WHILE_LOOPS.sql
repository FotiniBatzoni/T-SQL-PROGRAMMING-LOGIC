USE AdventureWorks2012;
GO


DECLARE @OuterCount INT = 1;
 DECLARE @InnerCount INT; 
 
WHILE @OuterCount < 10 BEGIN     
	PRINT 'Outer Loop';     
	SET @InnerCount = 1;     
	  WHILE @InnerCount < 5 BEGIN         
		PRINT '    Inner Loop';         
		SET @InnerCount += 1;     
	END;     
	 SET @OuterCount += 1; 
END;