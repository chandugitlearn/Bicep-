

module AppServicePlan 'Modules/webapp.bicep' = {
  name: 'AppServicePlan'
}

module SqlDatabase 'Modules/Database.bicep' = {
  name: 'SQLDatabase'
}
