module "vnet" {


  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  resource_group_name = azurerm_resource_group.rg.name

  vnet_location = "West Europe"

  use_for_each = false

}

resource "azurerm_resource_group" "rg" {

  name = "rg-sa"

  location = "West Europe"

}
