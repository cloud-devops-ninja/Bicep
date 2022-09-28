targetScope = 'subscription'

param location string = 'westeurope'
param resourceGroupName string
param resourceGroupTags object = {}

//create resource group with optional tags
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: (empty(resourceGroupTags) ? json('null') : resourceGroupTags)
}
