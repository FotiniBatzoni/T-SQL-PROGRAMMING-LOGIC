USE AdventureWorks2012;
GO


DECLARE @Count INT; 
 
SELECT @Count = COUNT(*) 
FROM Sales.Customer; 
 

IF @Count > 500 AND (DATEPART(dw,getdate()) = 2 OR DATEPART(m,getdate())= 5) BEGIN      
	PRINT 'The count is over 500.'      
	PRINT 'It is either Monday or the month is May.' 
END

