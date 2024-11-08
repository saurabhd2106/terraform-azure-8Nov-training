module "rg" {

  source = "../azure_modules_14jul/azurerm_resource_group"

  name = "myrg-${local.suffix}"

  location = "West Europe"
}

module "vnet" {

  source = "./azure_modules_14jul/azurerm_virtual_networks"

  resource_group_name = module.rg.resource_group.name

  location = module.rg.resource_group.location

  name = "vnet-${local.suffix}"

  address_space = ["10.0.0.0/16"]

}

module "subnets" {

  source = "./azure_modules_14jul/azurerm_subnets"

  for_each = local.subnets

  resource_group_name = module.rg.resource_group.name

  name = each.key

  vnet_name = module.vnet.virtual_network.name

  address_prefixes = each.value.address_prefixes

}