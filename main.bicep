// Parameters
@description('Location of resource group.')
param resourceGroupLocation string

@secure()
param adminPassword string

// Modules
module windowsVM 'modules/winvm.bicep' = {
  name: 'winVM-01'
  params: {
    vmName: 'winVM-01'
    location: resourceGroupLocation
    adminUsername: 'adminuser'
    adminPassword: adminPassword
  }
}
