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

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'kaburaru-toy-launch-plan'
  location: 'westus3'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'kaburaru-toy-launch-1'
  location: 'westus3'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
