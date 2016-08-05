
New-AzureStorageAccount -StorageAccountName "backupdemojd02" -Location "EAST US"  

$context = New-AzureStorageContext -StorageAccountName backupdemojd02 -StorageAccountKey (Get-AzureStorageKey -StorageAccountName backupdemojd02).Primary  
New-AzureStorageContainer -Name backupcontainer -Context $context

$context = New-AzureStorageContext -StorageAccountName backupdemojd02 -StorageAccountKey (Get-AzureStorageKey -StorageAccountName backupdemojd02).Primary   
New-AzureStorageContainerSASToken -Name backupcontainer -Permission rwdl -FullUri -Context $context
