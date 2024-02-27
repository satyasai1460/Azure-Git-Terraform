resource "azurerm_resource_group" "devops-rg" {
  name     = var.rg_name
  location = var.location

  tags = {
    environment = var.env
  }
}