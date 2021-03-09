
USE AdventureWorks2012;
 GO 

 -- Using a Cursor to Populate a Report 

DECLARE @Year INT; 
DECLARE @Month INT; 
DECLARE @TerritoryID INT; 
DECLARE @Total MONEY; 
DECLARE @PreviousTotal MONEY; 
DECLARE @FirstYear INT;
DECLARE @LastYear INT; 
DECLARE @BeginDate DATETIME;
DECLARE @EndDate DATETIME; 
 
CREATE TABLE #Totals(OrderYear INT, OrderMonth INT,     
			TerritoryID INT, TotalSales MONEY,PreviousSales MONEY); 
 
SELECT @FirstYear = MIN(YEAR(OrderDate)),@LastYear = MAX(YEAR(OrderDate)) 
FROM Sales.SalesOrderHeader; 
 
DECLARE Territory CURSOR FAST_FORWARD FOR     
SELECT TerritoryID     
FROM Sales.SalesTerritory; 
 
OPEN Territory; 
FETCH NEXT FROM Territory 
INTO @TerritoryID; 

WHILE @@FETCH_STATUS = 0 BEGIN     
SET @Year = @FirstYear; 
	 WHILE @Year <= @LastYear BEGIN         
	 SET @Month = 1;         
			WHILE @Month <= 12 BEGIN 
			SET @BeginDate = CAST(@Year AS VARCHAR) + '/' +                 
			CAST(@Month AS VARCHAR) + '/1';             
			SET @EndDate = DATEADD(M,1,@BeginDate);             
			SET @Total = 0;             
				SELECT @Total = SUM(LineTotal)             
				FROM Sales.SalesOrderDetail AS SOD             
				INNER JOIN Sales.SalesOrderHeader AS SOH            
				 ON SOD.SalesOrderID = SOH.SalesOrderID             
				 WHERE TerritoryID = @TerritoryID                 
				 AND OrderDate >= @BeginDate AND OrderDate < @EndDate; 
 
            SET @PreviousTotal = 0;             
			SET @EndDate = @BeginDate;             
			SET @BeginDate = DATEADD(M,-1,@BeginDate); 
 
SELECT @PreviousTotal = SUM(LineTotal)             
FROM Sales.SalesOrderDetail AS SOD             
INNER JOIN Sales.SalesOrderHeader AS SOH             
ON SOD.SalesOrderID = SOH.SalesOrderID             
WHERE TerritoryID = @TerritoryID                
AND OrderDate >= @BeginDate AND OrderDate < @EndDate; 
 
            INSERT INTO #Totals(TerritoryID, OrderYear,             
					OrderMonth,TotalSales, PreviousSales)             
					SELECT @TerritoryID, @Year, @Month,             
					ISNULL(@Total,0), ISNULL(@PreviousTotal,0); 
					SET @Month +=1;         
				END;
	 -- Month loop         
	 
	 SET @Year += 1;     
	 END; 
	 
	 -- Year Loop    
	  
	 FETCH NEXT FROM Territory 
	 INTO @TerritoryID; 
	 END; 
	 
	 -- Territory cursor CLOSE Territory; DEALLOCATE Territory; 
 
SELECT OrderYear, OrderMonth, TerritoryID,TotalSales, PreviousSales 
FROM #Totals 
ORDER BY OrderYear, OrderMonth, TerritoryID; 
 
SELECT OrderYear, OrderMonth, TerritoryID,TotalSales, PreviousSales 
FROM #Totals 
WHERE TerritoryID = 1 AND TotalSales <> 0 AND PreviousSales <> 0 
ORDER BY OrderYear, OrderMonth; 
 
DROP TABLE #Totals; 