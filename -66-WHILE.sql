
DECLARE @ID INT=1

WHILE @ID>0 BEGIN
 SELECT CAST(RAND() * 10000 AS INT) + 1 AS B
  PRINT @ID
   IF @ID=5 BEGIN
   PRINT'EXIT'
   BREAK
   END
  SET @ID += 1 
 END
