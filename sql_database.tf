resource "azurerm_sql_database" "sql-database" {
  name                = "sqlserver-database-example"
  resource_group_name = azurerm_resource_group.resource-group.name
  location            = "Brazil South"
  server_name         = azurerm_sql_server.sql_logical_server.name
  edition             = "Basic"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  max_size_bytes      = "1073741824"

  tags = {
    "Owner"   = "Troleis",
    "Project" = "Azure-simple-stack"
  }
}
