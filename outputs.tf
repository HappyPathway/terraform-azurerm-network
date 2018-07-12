output "resource_group" {
  value       = "${azurerm_resource_group.AzureEnv.id}"
  description = "ID of Created Resource Group"
}

output "virtual_network_id" {
  value       = "${azurerm_virtual_network.AzureEnv.id}"
  description = "ID of Created Network"
}

output "virtual_network_name" {
  value       = "${azurerm_virtual_network.AzureEnv.name}"
  description = "ID of Created Network"
}

output "security_group" {
  value       = "${azurerm_network_security_group.AzureEnv.id}"
  description = "ID of Created Security Group"
}

output "rg_name" {
  value       = "${var.env}"
  description = "Name of Created Resource Group"
}

output "location" {
  value       = "${var.location}"
  description = "Location of Azure Resources"
}
