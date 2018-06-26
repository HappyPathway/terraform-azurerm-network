output "resource_group" {
  value = "${azurerm_resource_group.AzureEnv.id}"
}

output "virtual_network_id" {
  value = "${azurerm_virtual_network.AzureEnv.id}"
}

output "security_group" {
  value = "${azurerm_network_security_group.AzureEnv.id}"
}

output "rg_name" {
  value = "${var.env}"
}
