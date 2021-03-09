BEGIN TRY 
INSERT INTO Person.PersonPhone 
				(BusinessEntityID, PhoneNumber, PhoneNumberTypeID) 
				VALUES (1, '697-555-0142', 1); 
END TRY 
BEGIN CATCH 
THROW 999999, 'I will not allow you to insert a duplicate value.', 1; 
END CATCH 