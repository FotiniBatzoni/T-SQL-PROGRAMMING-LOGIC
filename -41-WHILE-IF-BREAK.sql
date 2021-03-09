--Write a script that contains a WHILE loop that counts up from 1 to 100.
-- Print “Odd” or “Even” depending on the value of the counter.

--Change the script in question 2 so the inner loop exits instead of printing when the counter for the outer loop is evenly divisible by 5.

DECLARE @NUMBER INT =0

WHILE @NUMBER<101 BEGIN
SET @NUMBER+=1
PRINT @NUMBER
	IF @NUMBER%5=0
	BREAK
	ELSE
	PRINT ' '
END
