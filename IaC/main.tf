

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