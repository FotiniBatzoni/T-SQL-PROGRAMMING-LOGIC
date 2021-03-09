USE AdventureWorks2012;
 GO 
 
 DECLARE @errorNo INT; 
 
PRINT 'Beginning of code.'
 PRINT 1/0; 
 SET @errorNo = @@ERROR; 
 IF @errorNo > 0 GOTO ERR_LABEL; 
 PRINT 'No error'; 
 ERR_LABEL: 
 PRINT 'At ERR_LABEL'; 