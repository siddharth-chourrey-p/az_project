terraform {
  providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = ""
}

resource "azurerm_storage_account" "dev" {
  name     = "devstorageaccount"
  location = "eastus"
    resource_group_name = azurerm_resource_group.dev_rg.name
    account_tier       = "Standard"
    account_replication_type = "LRS"
}