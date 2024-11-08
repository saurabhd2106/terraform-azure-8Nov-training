module "rg1" {

  source = "../../Azure/azurerm_resource_group"

  //Pass all mandatory argument

  name = "myrg-saurabh-m"

  location = "West Europe"

  tags = { "env" : "test" }

}

output "resource_group_id" {

  value = module.rg1.resource_group_id
  
}
