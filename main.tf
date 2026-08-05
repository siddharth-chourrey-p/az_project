terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg_tfstate"
    storage_account_name = "dev0tfstate"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
  default     = "dev1_rg"
}

variable "location" {
  type        = string
  description = "The Azure region where the resource group should exist."
  default     = "East US"
}