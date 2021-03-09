USE AdventureWorks2012;
GO


--1 
IF EXISTS(SELECT * FROM Person.Person WHERE BusinessEntityID = 1) BEGIN    
	PRINT 'There is a row with BusinessEntityID = 1'; 
	END 
ELSE BEGIN    
	PRINT 'There is not a row with BusEntityID = 1'; 
END;