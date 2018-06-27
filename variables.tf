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

variable "network_cidr" {
  default     = "10.0.0.0/16"
  type        = "string"
  description = "Azure Network Address Space"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "dns_server" {
  default     = "205.251.197.200"      # example AWS DNS NS Server
  description = "External DNS Servers"
  type        = "string"
}

variable "resource_tags" {
  type        = "map"
  description = "Resource Tags"
  default     = {}
}
