provider "azurerm" {
  features {}
}


resource "azurerm_service_plan" "example" {
  name                = var.app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "example" {
  name                = "ollibolljunior"
  resource_group_name = var.resource_group_name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id


  site_config {}
}