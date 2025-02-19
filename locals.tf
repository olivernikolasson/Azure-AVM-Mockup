#Locals 
locals {
  rg-web-prod = "rg-web-prod-01"
  default-region = "West Europe"
}

#Tags
locals {
  defaultTags = {
    Enviroment = "Production"
    Owner = "Oliver"
    Backup = "30 days"
    Country = "Sweden"
  } 
}