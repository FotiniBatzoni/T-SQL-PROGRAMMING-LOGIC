USE AdventureWorks2012;
GO

IF  EXISTS (SELECT * FROM sys.objects            
	 WHERE object_id = OBJECT_ID(N'dbo.demoContactType')                
	  AND type in (N'U')) DROP TABLE dbo.demoContactType; 
GO 
CREATE TABLE dbo.demoContactType(ContactTypeID INT NOT NULL PRIMARY KEY,     
									Processed BIT NOT NULL); 
GO 
INSERT INTO dbo.demoContactType(ContactTypeID,Processed) 
SELECT ContactTypeID, 0 
FROM Person.ContactType; 
DECLARE @Count INT = 1;
 WHILE EXISTS(SELECT * From dbo.demoContactType  WHERE Processed = 0) BEGIN     
 UPDATE dbo.demoContactType SET Processed = 1     
	WHERE ContactTypeID = @Count;     
	SET @Count += 1; 
	END; 
 PRINT 'Done!'; 