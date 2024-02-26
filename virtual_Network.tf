resource "azurerm_virtual_network" "VNet" {
  name                = var.VNet
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
  address_space       = [var.VNet_cidr]
  dns_servers         = var.VNet_dns
}