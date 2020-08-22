resource "azurerm_app_service_plan" "app-service-plan" {
  name                = "app-service-plan-example"
  location            = azurerm_resource_group.resource-group.location
  resource_group_name = azurerm_resource_group.resource-group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}