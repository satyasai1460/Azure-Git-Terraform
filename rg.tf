resource "azurerm_resource_group" "devops-rg" {
  name     = "rg"
  location = "eastus"

  tags = {
    environment = "Development"
  }
}