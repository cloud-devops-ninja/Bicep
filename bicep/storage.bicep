param storageaccountName string = 'sabicepdemo220930'
param storageaccountLocation string = resourceGroup().location
param storageaccountSku string = 'Standard_LRS'
param storageaccountKind string = 'StorageV2'

resource stg 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageaccountName
  location: storageaccountLocation
  sku: {
    name: storageaccountSku
  }
  kind: storageaccountKind
}
