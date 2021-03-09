USE AdventureWorks2012;
GO


DECLARE @Count INT; 
 
SELECT @Count = COUNT(*) 
FROM Sales.Customer; 
 
IF @Count > 500 BEGIN     
	PRINT 'The count is over 500.';     
	IF DATEPART(dw,getdate())= 2 BEGIN         
	PRINT 'Today is Monday.';     
	END;     
	ELSE BEGIN        
	 PRINT 'Today is not Monday.';     
	 END; 
END;