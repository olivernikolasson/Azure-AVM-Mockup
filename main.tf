
resource "azurerm_resource_group" "rg-web-prod-01" {
    name = local.rg-web-prod
    location = local.default-region

    tags = local.defaultTags
}


module "app_service" {
  source                = "./modules/app-service"
  app_name =              "my-app"
  app_service_plan_name = "my-app-plan"
  location              = local.default-region    
  resource_group_name   = local.rg-web-prod    
  os_type               = "Linux"
  always_on             = true
  tags                  = local.defaultTags        
}


# "P1v2"