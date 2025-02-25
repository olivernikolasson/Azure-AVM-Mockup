variable "app_name" {
  description = "Namnet på App Service"
  type        = string
}

variable "app_service_plan_name" {
  description = "Namnet på App Service Plan"
  type        = string
}

variable "location" {
  description = "Azure-region där resursen ska skapas"
  type        = string
}

variable "resource_group_name" {
  description = "Namnet på Resource Group"
  type        = string
}

variable "os_type" {
  description = "OS för App Service Plan (Windows eller Linux)"
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU för App Service Plan (t.ex. B1, P1v2)"
  type        = string
  default     = "B1"
}

variable "always_on" {
  description = "Om App Service ska vara Always On"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Taggar för resurserna"
  type        = map(string)
  default     = {}
}
