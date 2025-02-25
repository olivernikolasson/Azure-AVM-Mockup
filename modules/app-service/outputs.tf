output "app_service_id" {
  description = "ID for app serivce"
  value       = azurerm_app_service.this.id
}

output "app_service_plan_id" {
  description = "ID for App Service Plan"
  value       = azurerm_service_plan.this.id
}
