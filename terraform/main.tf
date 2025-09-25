provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test_rg" {
  name     = "test-dotnet-rg"
  location = "East US"
}

resource "azurerm_app_service_plan" "test_sp" {
  name                = "test-dotnet-plan"
  location            = azurerm_resource_group.test_rg.location
  resource_group_name = azurerm_resource_group.test_rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "HelloWorldApp" {
  name                = "HelloWorldApp"
  location            = azurerm_resource_group.test_rg.location
  resource_group_name = azurerm_resource_group.test_rg.name
  app_service_plan_id = azurerm_app_service_plan.test_sp.id
  site_config {
    dotnet_framework_version = "v6.0"
  }
}
