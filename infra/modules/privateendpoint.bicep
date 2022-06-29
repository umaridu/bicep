var subnetName = 'subnet01'
var subnetRef = '${vn.id}/subnets/${subnetName}'

resource privateEndpoint 'Microsoft.Network/privateEndpoints@2020-06-01' = {
  name: 'PrivateEndpoint1'
  location: location
  properties: {
    subnet: {
      id: subnetRef
      }
      privateLinkServiceConnections: [
      {
        properties: {
           privateLinkServiceId: stg.id
           groupIds: [
             'blob'
             ]
             }
             name: 'PrivateEndpoint1'
             }
             ]
             }
             }
  
