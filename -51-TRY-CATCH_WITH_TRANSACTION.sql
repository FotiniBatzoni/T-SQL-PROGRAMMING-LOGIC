--1
 CREATE TABLE #Test (ID INT NOT NULL PRIMARY KEY); 
 GO 
 
--2 
BEGIN TRY     
--2.1     
	BEGIN TRAN         
	--2.1.1         
		INSERT INTO #Test (ID)         
		VALUES (1),(2),(3);         
		--2.1.2         
			UPDATE #Test SET ID = 2 WHERE ID = 1;     
			--2.2     
		COMMIT 
END TRY 
--3 
BEGIN CATCH     
--3.1     
	PRINT ERROR_MESSAGE();     
	--3.2     
		PRINT 'Rolling back transaction';     
		ROLLBACK; 
END CATCH; 