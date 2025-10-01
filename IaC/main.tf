

terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.0"
    }
  }
}



provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg1" {
  name = "resource_nr1"
  location = "westeurope"
  tags = { 
    name = "nr1"
   }
  
}

resource "azurerm_resource_group" "rg2" {
  name = "resourcenr2"
  location = "westeurope"
  tags = { 
    name = "nr2"
   }
}

resource "azurerm_storage_account" "storage1" {
  name                     = "storage1"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev1"
  }
}

resource "azurerm_storage_account" "storage2" {
  name                     = "storage2"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev2"
  }
}