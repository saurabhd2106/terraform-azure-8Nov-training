module "vm1" {

  source = "../Azure/azurerm_virtual_machine"

  resource_group_name = "saurabh-vm-m"

  location = "West Europe"

  tags = {
    "env" : " test"
  }

  vnet_name         = "myvnet-saurabh"
  cidr_block        = ["10.0.0.0/16"]
  subnet_cidr_block = ["10.0.2.0/24"]
  subnet_name       = "mysubnet-saurabh"
  public_ip_address = "mypublicip-saurabh"
  diskSize          = "Standard_DS1_v2"
  nic_name          = "mynic_saurabh"
  nsg_name          = "mynsg-saurabh"

  virtualMachineName = "myvm-saurabh"


  subnets = {
    public_subnet = {

      cidr_block = ["10.0.2.0/24"]

    }

    private_subnet = {


      cidr_block = ["10.0.1.0/24"]
    }


  }

  inbound_rule = {

    allow_ssh = {


      priority                   = 1001
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "22"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"

    }

    allow_80 = {


      priority                   = 1002
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "80"
      destination_port_range     = "80"
      source_address_prefix      = "*"
      destination_address_prefix = "*"

    }

  }

  vm = {
    public_vm = {

      size = "Standard_DS1_v2"

    }

    private_vm = {

       size = "Standard_DS1_v2"
      
    }
  }

  nic = {
    name = "mynic-saurabh"

    subnet = "public_subnet"
  }
}
