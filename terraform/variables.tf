variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "test-dotnet-rg"
}

variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "test-dotnet-plan"
}

variable "app_service_name" {
  description = "Name of the Azure App Service"
  type        = string
  default     = "test-dotnet-webapp"
}

variable "sku_tier" {
  description = "SKU tier for App Service Plan"
  type        = string
  default     = "Standard"
}

variable "sku_size" {
  description = "SKU size for App Service Plan"
  type        = string
  default     = "S1"
}

variable "dotnet_version" {
  description = "Dotnet Framework version for App Service"
  type        = string
  default     = "v8.0"
}
