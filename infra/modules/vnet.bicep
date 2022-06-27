
param location string

var vnet_name = 'vnet-website'
var vnet_address = '10.128.0.0/16'
var default_subnet_name = 'default'
var default_subnet_address = '10.128.0.0/24'

resource vnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: vnet_name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet_address
      ]
    }
    subnets: [
      {
        name: default_subnet_name
        properties: {
          addressPrefix: default_subnet_address
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
    ]
  }
}

output id string = vnet.id
