USE AdventureWorks2012;
 GO 
 
--3
DECLARE @errorNo INT; 
SET IDENTITY_INSERT Person.ContactType ON; 
INSERT INTO Person.ContactType(ContactTypeID,Name,ModifiedDate) 
VALUES (1,'Accounting Manager',GETDATE()); 
SET @errorNo = @@ERROR; 
IF @errorNo > 0 BEGIN     
	PRINT 'An error has occurred.';    
	PRINT @errorNo; 
 END; 