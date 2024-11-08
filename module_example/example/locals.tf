locals {
  suffix = "saurabh-test"

  subnets = {

    public_subnet = {

      address_prefixes = ["10.0.1.0/24"]

    }

    private_subnet = {

      address_prefixes = ["10.0.2.0/24"]

    }

  }
}