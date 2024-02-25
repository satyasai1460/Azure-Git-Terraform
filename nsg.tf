resource "azurerm_network_security_group" "webserver-nsg" {
  name                = "devopsb35-Webnsg"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
}


resource "azurerm_network_security_group" "Appserver-nsg" {
  name                = "devopsb35-Appnsg"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
}


resource "azurerm_network_security_group" "DBserverrrrs-nsg" {
  name                = "devopsb35-DBnsg"
  location            = azurerm_resource_group.devops-rg.location
  resource_group_name = azurerm_resource_group.devops-rg.name
}