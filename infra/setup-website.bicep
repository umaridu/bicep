targetScope = 'subscription'

param location string = deployment().location
var website_rg_name = 'rg-website'

module resource_group 'modules/resource-group.bicep' = {
  name: '${deployment().name}-rg'
  params: {
    location: location
    rg_name: website_rg_name
  }
}

module network 'modules/vnet.bicep' = {
  name: '${deployment().name}-vnet'
  scope: resourceGroup(website_rg_name)
  dependsOn: [
    resource_group
  ]
  params: {
    location: location
  }
}

module dns 'modules/dns-zone.bicep' = {
  name: '${deployment().name}-dns'
  scope: resourceGroup(website_rg_name)
  params: {
    vnet_id: network.outputs.id
  }
}

module storage_account 'modules/storage-account.bicep' = {
  name: '${deployment().name}-sa'
  scope: resourceGroup(website_rg_name)
  params: {
    location: location
  }
}
