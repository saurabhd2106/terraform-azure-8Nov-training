module "rg1" {

  source = "../resource_group"

  //Pass all mandatory argument

  name = "myrg-saurabh-m2"

  location = "West Europe"

  tags = { "env" : "test" }

}

