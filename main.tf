# Create a resource group
resource "azurerm_resource_group" "AzureEnv" {
  name     = "${var.env}"
  location = "${var.location}"
  tags     = "${var.resource_tags}"
}

resource "azurerm_network_security_group" "AzureEnv" {
  name                = "${var.env}"
  location            = "${azurerm_resource_group.AzureEnv.location}"
  resource_group_name = "${azurerm_resource_group.AzureEnv.name}"
}

resource "azurerm_network_security_group" "AzureEnv" {
  name                = "${var.env}-test"
  location            = "${azurerm_resource_group.AzureEnv.location}"
  resource_group_name = "${azurerm_resource_group.AzureEnv.name}"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "AzureEnv" {
  name                = "${var.env}-network"
  address_space       = ["${var.address_space}"]
  location            = "${azurerm_resource_group.AzureEnv.location}"
  resource_group_name = "${azurerm_resource_group.AzureEnv.name}"
  dns_servers         = ["${var.dns_server}", "8.8.8.8"]
  tags                = "${var.resource_tags}"

  subnet {
    name           = "${var.env}-subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "${var.env}-subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "${var.env}-subnet3"
    address_prefix = "10.0.3.0/24"
  }
}
