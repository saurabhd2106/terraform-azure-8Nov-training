resource "azurerm_resource_group" "myrg" {

    name = var.resource_group_name[count.index]

    location = "West Europe"

    count = length(var.resource_group_name)
  
}