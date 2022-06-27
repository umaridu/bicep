
param location string

var subscriptionPrefix = take(replace(subscription().subscriptionId, '-', ''), 12)
var storage_account_name = 'stweb${subscriptionPrefix}'

resource st 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storage_account_name
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
    encryption: {
      keySource: 'Microsoft.Storage'
      services: {
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      requireInfrastructureEncryption: true
    }
    minimumTlsVersion: 'TLS1_2'
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Deny'
    }
    publicNetworkAccess: 'Enabled'
    supportsHttpsTrafficOnly: true
  }
}
