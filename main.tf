terraform {
  required_providers {
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

resource "azurerm_resource_group" "dev_rg" {
  name     = "dev_rg"
  location = "eastus"
}

resource "azurerm_resource_group" "stage_rg" {
  name     = "stage_rg"
  location = "eastus"
}

resource "azurerm_resource_group" "prod_rg" {
  name     = "prod_rg"
  location = "eastus"
}


resource "azurerm_resource_group" "pre_prod_rg" {
  name     = "pre_rg"
  location = "eastus"
}

resource "azurerm_resource_group" "stage" {
  name     = "stage"
  location = "eastus"
}

resource "azurerm_resource_group" "qa" {
  name     = "qa_rg"
  location = "eastus"
}

resource "azurerm_resource_group" "Dev_rg2" {
  name     = "Dev_rg2"
  location = "eastus"
}

resource "azurerm_resource_group" "Dev_rrr" {
  name     = "rrr_rg"
  location = "eastus"
}
resource "azurerm_resource_group" "Dev_rrr1" {
  name     = "rrr_rg1"
  location = "eastus"
}

resource "azurerm_resource_group" "Dev_rg5" {
  name     = "Dev_rg5"
  location = "eastus"
}