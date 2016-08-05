CREATE CREDENTIAL [https://backupdemojd02.blob.core.windows.net/backupcontainer] 
WITH IDENTITY = 'Shared Access Signature',  
SECRET = 'sv=2015-04-05&sr=c&sig=SuwDVCd45YGNj74u2qohSoBwCFf0ep2RbY%2FE70Jbllalalalfjflfllkfl6-08-05T02%3A19%3A17Z&sp=rwdl'


Use msdb;  
GO  
EXEC msdb.managed_backup.sp_backup_config_basic   
 @enable_backup = 1,   
  
 @container_url = 'https://backupdemojd02.blob.core.windows.net/backupcontainer',   
 @retention_days = 1  
GO  
