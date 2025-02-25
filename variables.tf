/* variable "app_service_sku_list" {
  type        = string
  description = <<EOF
    Please pick from following skus
    Production: P1v2
    Test: P1v1
    DEV: TBD
  EOF
  validation {
    condition     = contains(["P1v1", "P1v2", "TBD"], var.app_service_sku_list)
    error_message = "Please pick (item1, item2, item3)."
  } 
}
*/