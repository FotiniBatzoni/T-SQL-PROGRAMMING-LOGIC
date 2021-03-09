


--Create a table variable with two integer columns, one of them an IDENTITY column. 
--Use a WHILE loop to populate the table with 1,000 random integers using the following formula. 
--Use a second WHILE loop to print the values from the table variable one by one. CAST(RAND() * 10000 AS INT) + 1 

DECLARE @TV TABLE
   (ID INT NOT NULL IDENTITY, B INT)

DECLARE @ID INT=1

DECLARE @B INT

WHILE @B>0 BEGIN
 SELECT CAST(RAND() * 10000 AS INT) + 1 AS B
  PRINT @B
   IF @B=5 BEGIN
   PRINT'EXIT'
   BREAK
   END
  SET @B += 1 
   SELECT  @B
   INTO @TV
 END


--INSERT INTO @TV
 --SELECT CAST(RAND() * 10000 AS INT) + 1 

 SELECT* FROM @TV
