variable "app_name" {
  description = "web-app-01"
  type        = string
}

variable "app_service_plan_name" {
  description = "Namnet på App Service Plan"
  type        = string
}

variable "location" {
  description = "West Europe"
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
  description = "name lmao"
  type        = string
  default     = "name"
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
