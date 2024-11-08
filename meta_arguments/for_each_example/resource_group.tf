resource "azurerm_resource_group" "rg" {

  name = each.value

  location = "West Europe"

  for_each = var.resource_group_name

}