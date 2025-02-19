provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "webapp" {
  name     = "rg-prod-01"
  location = "West Europe"
}

resource "azurerm_service_plan" "webapp" {
  name                = "webapp"
  resource_group_name = azurerm_resource_group.webapp.name
  location            = azurerm_resource_group.webapp.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "web01"
  resource_group_name = azurerm_resource_group.webapp.name
  location            = azurerm_service_plan.webapp.location
  service_plan_id     = azurerm_service_plan.webapp.id

  site_config {

  }
}