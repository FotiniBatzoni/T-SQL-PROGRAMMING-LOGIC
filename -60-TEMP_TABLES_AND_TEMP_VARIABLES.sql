USE AdventureWorks2012; 
GO 

--1 
DECLARE @IDTable TABLE (ID INT); 
DECLARE @IDList VARCHAR(2000); 
DECLARE @ID INT; 
DECLARE @Loc INT; 
 
--2 
SET @IDList = '16496,12506,11390,10798,2191,11235,10879,15040,3086'; 
 
--3
 SET @Loc = CHARINDEX(',',@IDList);
 
  --4 
  WHILE @Loc > 0 BEGIN     
  --4.1 
      SET @ID = LEFT(@IDList,@Loc-1);    
	   --4.2     
		SET @IDList = SUBSTRING(@IDList,@Loc +1,2000);     
		--4.3     
			INSERT INTO @IDTable(ID)     
			VALUES (@ID);     
			--4.4     
				SET @Loc = CHARINDEX(',',@IDList); 
	END; --5 IF LEN(@IDList) > 0 BEGIN     SET @ID = @IDList;     INSERT INTO @IDTable(ID)     VALUES (@ID); END; 
 
--6 
SELECT BusinessEntityID, FirstName, LastName 
FROM Person.Person AS p 
INNER JOIN @IDTable 
ON p.BusinessEntityID = ID; 