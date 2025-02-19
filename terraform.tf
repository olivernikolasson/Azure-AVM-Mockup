terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "stateolnik"
    container_name       = "tfstate"
    key                  = "azure-avm-webapp.tfstate"
  }
}
