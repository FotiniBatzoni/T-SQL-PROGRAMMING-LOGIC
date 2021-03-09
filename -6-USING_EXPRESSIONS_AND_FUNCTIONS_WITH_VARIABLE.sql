USE AdventureWorks2012; 
GO 
 

 --2
  DECLARE @myString VARCHAR(100); 
  SET @myString = 'Hello, '; 
  SET @myString += 'World'; 
  PRINT 'Value of @myString: ' + @myString;
   GO 
 