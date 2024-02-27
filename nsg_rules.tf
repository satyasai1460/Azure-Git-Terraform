resource "azurerm_network_security_rule" "nsgrule80" {
  name                        = "nsgrule80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.35.1.0/24"
  resource_group_name         = azurerm_resource_group.devops-rg.name
  network_security_group_name = azurerm_network_security_group.webserver-nsg.name
}

resource "azurerm_network_security_rule" "nsgrule443" {
  name                        = "nsgrule443"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.35.1.0/24"
  resource_group_name         = azurerm_resource_group.devops-rg.name
  network_security_group_name = azurerm_network_security_group.webserver-nsg.name
}