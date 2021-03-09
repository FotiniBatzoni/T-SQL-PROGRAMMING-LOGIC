--1 
SET NOCOUNT ON;
 GO 
 
--2 
DECLARE @IDTable TABLE(ArrayIndex INT NOT NULL IDENTITY, ID INT); 
DECLARE @RowCount INT; 
DECLARE @ID INT; 
DECLARE @Count INT = 1; 
 
--3 
INSERT INTO @IDTable(ID) VALUES(500),(333),(200),(999); 
 
--4 
SELECT @RowCount = COUNT(*) 
FROM @IDTable; 
 
--5
 WHILE @Count <= @RowCount BEGIN     
 --5.1     
	SELECT @ID = ID     
	FROM @IDTable    
	 WHERE ArrayIndex = @Count;     
	 --5.2     
	    PRINT CAST(@COUNT AS VARCHAR) + ': ' + CAST(@ID AS VARCHAR);     
		--5.3     
		  SET @Count += 1; 
END;