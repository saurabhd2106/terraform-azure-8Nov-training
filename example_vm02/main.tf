module "vm2" {

    source = "./azurerm-terraform-module-8nov/azurerm_resource_group"

    name = "submodule-example"

    location = "West Europe"

    tags = {
        env = "UAT"
    }
  
}