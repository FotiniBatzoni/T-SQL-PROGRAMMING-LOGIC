USE AdventureWorks2012; 
GO 

--Populating a Report with a Set-Based Approach -- MORE EFFICIENT

 
--1 
CREATE TABLE #Totals(TerritoryID INT, OrderYear INT, OrderMonth INT,     
						TotalSales MONEY, PreviousSales MONEY     ); 
 
--2
 CREATE TABLE #SalesMonths(MonthNo INT); 
 
--3 
INSERT INTO #SalesMonths(MonthNo) 
VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12); 
 
--4 
WITH SalesYears AS (     
		SELECT YEAR(OrderDate) AS OrderYear     
		FROM Sales.SalesOrderHeader     
		GROUP BY YEAR(OrderDate)     ) 
		
		INSERT INTO #Totals(OrderYear, OrderMonth, TerritoryID,     
						TotalSales, PreviousSales) 
				SELECT OrderYear, MonthNo,TerritoryID, 0 AS TotalSales,0 AS PreviousSales 
				FROM SalesYears, Sales.SalesTerritory, #SalesMonths 
				ORDER BY OrderYear, MonthNo, TerritoryID; 
 
--5
 WITH Totals AS (     
	SELECT SUM(LineTotal) AS TotalSales,         
		  YEAR(OrderDate) AS OrderYear,         
		  MONTH(OrderDate) AS OrderMonth, TerritoryID     
	FROM Sales.SalesOrderDetail AS SOD     
	INNER JOIN Sales.SalesOrderHeader AS SOH         
	ON SOD.SalesOrderID = SOH.SalesOrderID     
	GROUP BY YEAR(OrderDate), MONTH(OrderDate), TerritoryID ) UPDATE #Totals 
	SET TotalSales = Totals.TotalSales 
	FROM #Totals 
	INNER JOIN Totals 
	ON #Totals.OrderYear = Totals.OrderYear    
		AND #Totals.OrderMonth = Totals.OrderMonth    
		AND #Totals.TerritoryID = Totals.TerritoryID; 
		
--6 
WITH Totals AS (     
	SELECT SUM(LineTotal) AS TotalSales,         
	YEAR(DATEADD(M,1,OrderDate)) AS OrderYear, 
    MONTH(DATEADD(M,1,OrderDate)) AS OrderMonth, TerritoryID     
	FROM Sales.SalesOrderDetail AS SOD     
	INNER JOIN Sales.SalesOrderHeader AS SOH         
	ON SOD.SalesOrderID = SOH.SalesOrderID     
	GROUP BY YEAR(DATEADD(M,1,OrderDate)),             
			MONTH(DATEADD(M,1,OrderDate)), TerritoryID ) 
			UPDATE #Totals 
			SET PreviousSales = Totals.TotalSales 
			FROM #Totals INNER JOIN Totals 
			ON #Totals.OrderYear = Totals.OrderYear    
			AND #Totals.OrderMonth = Totals.OrderMonth    
			AND #Totals.TerritoryID = Totals.TerritoryID; 
 
--7 
SELECT OrderYear, OrderMonth, TerritoryID,     
		TotalSales, PreviousSales 
FROM #Totals 
ORDER BY OrderYear, OrderMonth, TerritoryID; 
 
--8 
SELECT OrderYear, OrderMonth, TerritoryID,TotalSales, PreviousSales 
FROM #Totals
WHERE TerritoryID = 1 AND TotalSales <> 0 AND PreviousSales <> 0 
ORDER BY OrderYear, OrderMonth; 
DROP TABLE #Totals; 
DROP TABLE #SalesMonths;