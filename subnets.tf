resource "azurerm_subnet" "Webservers-Subnet" {
  name                 = "Webservers-Subnet"
  resource_group_name  = azurerm_resource_group.devops-rg.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = ["10.35.1.0/24"]
}


resource "azurerm_subnet" "Appservers-Subnet" {
  name                 = "APPservers-Subnet"
  resource_group_name  = azurerm_resource_group.devops-rg.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = ["10.35.2.0/24"]
}


resource "azurerm_subnet" "DBservers-Subnet" {
  name                 = "DBservers-Subnet"
  resource_group_name  = azurerm_resource_group.devops-rg.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = ["10.35.3.0/24"]
}