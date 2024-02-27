terraform {
  required_version = "1.6.2"
  backend "azurerm" {
    resource_group_name  = "COMMON-RG"
    storage_account_name = "devopb35storageaccount"
    container_name       = "devopb35tfstatenew"
    key                  = "azuregitterraform.tfstate"
  }
}

