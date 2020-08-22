resource "azurerm_sql_server" "sql_logical_server" {
  name                         = "sqlserver-server-example"
  resource_group_name          = azurerm_resource_group.resource-group.name
  location                     = "Brazil South"
  version                      = "12.0"
  administrator_login          = "admin_login"
  administrator_login_password = "Pa$$word2020"

  tags = {
    "Owner"   = "Troleis",
    "Project" = "Azure-simple-stack"
  }
}

resource "azurerm_sql_firewall_rule" "firewall-rule" {
  name                = "firewall-rule-example"
  resource_group_name = azurerm_resource_group.resource-group.name
  server_name         = azurerm_sql_server.sql_logical_server.name
  start_ip_address    = "0.0.0.0"       # allow access to azure services
  end_ip_address      = "0.0.0.0"       # allow access to azure services
}