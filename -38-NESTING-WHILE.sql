USE AdventureWorks2012;
GO

-- Write a script that contains a WHILE loop nested inside another WHILE loop. 
--The counter for the outer loop should count up from 1 to 100. 
--The counter for the inner loop should count up from 1 to 5. Print the product of the two counters inside the inner loop

DECLARE @OuterCount int=1
DECLARE @InnerCount INT;

WHILE @OuterCount<101 BEGIN
  PRINT @OUTERCOUNT
  SET @InnerCount = 1;
    WHILE @InnerCount <5 BEGIN
        PRINT @INNERCOUNT;
		SET @InnerCount+=1;
	END;
SET @OuterCount+=1;
END

