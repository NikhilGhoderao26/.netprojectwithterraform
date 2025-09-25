output "resource_group_name" {
  description = "The resource group name"
  value       = azurerm_resource_group.test_rg.name
}

output "app_service_plan_id" {
  description = "The app service plan ID"
  value       = azurerm_app_service_plan.test_sp.id
}

output "app_service_name" {
  description = "The app service name"
  value       = azurerm_app_service.HelloWorldApp.name
}

output "app_service_default_hostname" {
  description = "The default hostname of the app service"
  value       = azurerm_app_service.HelloWorldApp.default_site_hostname
}
