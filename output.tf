output "resource-group-id" {
  value = azurerm_resource_group.resource-group.id
}

output "sql-logical-server" {
  value = azurerm_sql_server.sql_logical_server.fully_qualified_domain_name
}

output "sql-database" {
  value = azurerm_sql_database.sql-database.server_name
}

output "app-service-plan-id" {
  value = azurerm_app_service_plan.app-service-plan.id
}

output "web-app" {
  value = azurerm_app_service.app-service.default_site_hostname
}
