
param vnet_id string

var location = 'Global'
var dns_zone_name = 'privatelink.web.core.windows.net'

resource dns_zone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: dns_zone_name
  location: location
}

resource dns_zone_link 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: '${dns_zone_name}-link'
  location: location
  parent: dns_zone
  properties: {
    registrationEnabled: false
    virtualNetwork: {
      id: vnet_id
    }
  }
}
