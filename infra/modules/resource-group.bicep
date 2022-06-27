targetScope = 'subscription'

param rg_name string
param location string

resource newRG 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: rg_name
  location: location
}
