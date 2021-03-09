USE AdventureWorks2012;
GO

--1 
DECLARE @Count INT; 
 
SELECT @Count = COUNT(*) 
FROM Sales.Customer; 
 
IF @Count > 500 AND DATEPART(dw,getdate()) = 2 BEGIN     
	PRINT 'The count is over 500.';     
	PRINT 'Today is Monday.'; 
	END 
ELSE BEGIN     
	PRINT 'Either the count is too low or today is not Monday.'; 
END; 

