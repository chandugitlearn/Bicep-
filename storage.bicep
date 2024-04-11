param location string = resourceGroup().location


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'VCAStorage'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
