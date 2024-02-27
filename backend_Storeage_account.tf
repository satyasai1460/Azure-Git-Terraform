data "azurerm_resource_group" "COMMON-RG" {
  name = "COMMON-RG"
}


resource "azurerm_storage_account" "backend_storage" {
  name                     = "devopb35storageaccount"
  resource_group_name      = data.azurerm_resource_group.COMMON-RG.name
  location                 = data.azurerm_resource_group.COMMON-RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Development"
  }
}

resource "azurerm_storage_container" "devopb35tfstate-container" {
  name                  = "devopb35tfstatenew"
  storage_account_name  = azurerm_storage_account.backend_storage.name
  container_access_type = "private"
}