USE AdventureWorks2012;
GO

--Write a script that contains a WHILE loop that prints out the letters A to Z.
-- Use the function CHAR to change a number to a letter. Start the loop with the value 65. 
--Here is an example that uses the CHAR function:
 --DECLARE @Letter CHAR(1); 
 --SET @Letter = CHAR(65); 
 --PRINT @Letter


DECLARE @i int=65
WHILE @i < 91
BEGIN
PRINT CHAR(@i);
SET @i=@i+1;
END