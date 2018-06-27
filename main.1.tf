provider "azurerm" {}

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

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "AzureEnv" {
  name                = "${var.env}-network"
  address_space       = ["${var.network_cidr}"]
  location            = "${azurerm_resource_group.AzureEnv.location}"
  resource_group_name = "${azurerm_resource_group.AzureEnv.name}"
  dns_servers         = ["${var.dns_server}", "8.8.8.8"]
  tags                = "${var.resource_tags}"
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.env}-subnet"
  resource_group_name  = "${azurerm_resource_group.AzureEnv.name}"
  virtual_network_name = "${azurerm_virtual_network.AzureEnv.name}"
  address_prefix       = "${var.subnet_cidr}"
}
