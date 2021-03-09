USE AdventureWorks2012;
GO

IF NOT EXISTS(SELECT * FROM Person.Person WHERE FirstName = 'Kathi') BEGIN    
	PRINT 'There is not a person with the first name "Kathi".'; 
END;