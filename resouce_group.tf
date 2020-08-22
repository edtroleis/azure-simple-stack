resource "azurerm_resource_group" "resource-group" {
  name     = "resource-group-example"
  location = "Brazil South"

  tags = {
    "Owner"   = "Troleis",
    "Project" = "Azure-simple-stack"
  }
}
