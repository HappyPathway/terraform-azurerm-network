variable "env" {
  type        = "string"
  description = "Name of Azure Environment"
  default     = "production"
}

variable "location" {
  type        = "string"
  description = "Azure Region"
  default     = "West US"
}

variable "address_space" {
  default     = "10.0.0.0/16"
  type        = "string"
  description = "Azure Network Address Space"
}

variable "dns_server" {
  default     = "205.251.197.200" # example AWS DNS NS Server
  description = "External DNS Servers"
  type        = "string"
}

variable "resource_tags" {
  type        = "map"
  description = "Resource Tags"
  default     = {}
}
