param location string = resourceGroup().location

resource sqlServer 'Microsoft.Sql/servers@2014-04-01' ={
  name: 'vcasqldb'
  location: location
}

resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2014-04-01' = {
  parent: sqlServer
  name: 'vcasqldb'
  location: location
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    edition: 'Basic'
    maxSizeBytes: '34359738368'
    requestedServiceObjectiveName: 'Basic'
  }
}

