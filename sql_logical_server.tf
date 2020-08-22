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

# Firewall rule to enable "allow access to azure services"
resource "azurerm_sql_firewall_rule" "firewall-rule-1" {
  name                = "allow-access-to-azure-services"
  resource_group_name = azurerm_resource_group.resource-group.name
  server_name         = azurerm_sql_server.sql_logical_server.name
  start_ip_address    = "0.0.0.0"       
  end_ip_address      = "0.0.0.0"
}

# Firewall rule to access database from local IP
resource "azurerm_sql_firewall_rule" "firewall-rule-2" {
  name                = "firewall-rule-access-local"
  resource_group_name = azurerm_resource_group.resource-group.name
  server_name         = azurerm_sql_server.sql_logical_server.name
  start_ip_address    = "192.0.0.0"       # Put your local IP
  end_ip_address      = "192.0.0.255"     # Put your local IP
}