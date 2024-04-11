
param location string = resourceGroup().location


resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'vcasp'
  location: location
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: 'vcawebapp'
  location: location  
  properties: {
    serverFarmId: resourceId('microsoft.web/ServerFarms', 'vcasp')
  }
}

resource appInsightsComponents 'Microsoft.Insights/components@2020-02-02' = {
  name: 'vcaappis'
  location: location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}
