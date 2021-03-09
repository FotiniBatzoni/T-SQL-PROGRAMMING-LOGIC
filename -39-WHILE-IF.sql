--Write a script that contains a WHILE loop that counts up from 1 to 100.
-- Print “Odd” or “Even” depending on the value of the counter.

DECLARE @NUMBER INT =0

WHILE @NUMBER<101 BEGIN
SET @NUMBER+=1
PRINT @NUMBER
	IF @NUMBER%2=0
	PRINT 'EVEN'
	ELSE
	PRINT 'ODD'
END
