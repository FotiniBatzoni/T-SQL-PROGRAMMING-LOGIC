USE AdventureWorks2012;
GO


--Write a batch that contains nested IF blocks. 
--The outer block should check to see whether the month is October or November. If that is the case, print “The month is ” and the month name. 
--The inner block should check to see whether the year is even or odd and print the result. You can modify the month to check to make sure the inner block fires



 DECLARE @MONTH NVARCHAR(20)
 SELECT @MONTH = DATENAME (MONTH,GETDATE())

 IF DATENAME (M,GETDATE())='october' OR DATENAME (M,GETDATE())='november' BEGIN
  PRINT 'THE MONTH IS OCTOBER OR NOVEMBER';
  END ;
	 ELSE BEGIN
	 PRINT 'THE MONTH IS NOT OCTOBER OR NOVEMBER'
	 PRINT 'THE MONTH IS' +' ' + @MONTH 
  END;
   
   DECLARE @YEAR INT
   SELECT @YEAR = YEAR(GETDATE())

   IF @YEAR%2=0 BEGIN
   PRINT 'THE YEAR IS EVEN'
   END
   ELSE
   PRINT 'THE YEAR IS ODD'

  
