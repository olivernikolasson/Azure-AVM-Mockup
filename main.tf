
resource "azurerm_resource_group" "rg-web-prod-01" {
    name = local.rg-web-prod
    location = local.default-region

    tags = {
      test = "testtag"
    }
  
}