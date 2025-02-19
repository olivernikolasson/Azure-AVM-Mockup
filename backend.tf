terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "stateolnik"
    container_name       = "tfstate"
    key                  = "azure-avm-webapp.tfstate"
  }
}
