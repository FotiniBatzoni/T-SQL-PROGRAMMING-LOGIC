USE AdventureWorks2012;
GO


 IF  EXISTS (SELECT * FROM sys.objects             
		WHERE object_id = OBJECT_ID(N'dbo.demoSalesOrderDetail')                
		AND type in (N'U')) DROP TABLE dbo.demoSalesOrderDetail; 
GO 
CREATE TABLE dbo.demoSalesOrderDetail(SalesOrderID INT NOT NULL,     
										SalesOrderDetailID INT NOT NULL,
									    Processed BIT NOT NULL); 
GO 
SET ROWCOUNT 0; 
 
INSERT INTO dbo.demoSalesOrderDetail(SalesOrderID,SalesOrderDetailID,Processed) 
SELECT SalesOrderID, SalesOrderDetailID, 0 
FROM Sales.SalesOrderDetail; 
PRINT 'Populated work table'; 
 
SET ROWCOUNT 50000; 
WHILE EXISTS(SELECT * From dbo.demoSalesOrderDetail  WHERE Processed = 0) BEGIN 
 
 UPDATE dbo.demoSalesOrderDetail SET Processed = 1     
 WHERE Processed = 0;     
 PRINT 'Updated 50,000 rows'; 
END; 
PRINT 'Done!'; 