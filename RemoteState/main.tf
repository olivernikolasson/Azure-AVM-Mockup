#only deploy once!

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
}


provider "azurerm" {
  resource_provider_registrations = "none"
  features {
  }
}

locals {
  region = "West Europe"

}



resource "azurerm_resource_group" "StateRG" {
  name     = "tf-state-rg"
  location = local.region

}

resource "azurerm_storage_account" "StateStorage" {
  name                     = "stateolnik"
  location                 = local.region
  resource_group_name      = azurerm_resource_group.StateRG.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
  

  tags = {
    env = "RemoteState"
  }
}

resource "azurerm_storage_container" "StateContainer" {
    storage_account_id = azurerm_storage_account.StateStorage.id
    name = "tfstate"
  
}


