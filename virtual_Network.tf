resource "azurerm_virtual_network" "VNet" {
  name                = "Devops-Vnetwork"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
  address_space       = ["10.35.0.0/16", "10.36.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
}