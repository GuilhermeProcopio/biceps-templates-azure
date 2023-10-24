resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'kaburarutoystorage'
  location: 'westus3'
  sku: {
    'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}


