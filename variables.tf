variable "location" {
  description = "The location where the resources should be created."
  default     = "westus"
}

variable "prefix" {
  description = "Prefix to be used by resources and attributes."
  default     = "myaks"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)."
  default     = "1.15.5"
}

variable "address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = ["10.0.0.0/16"]
}

variable "address_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.2.0/24"
}

variable "my_public_ip_address" {
  description = "Public IP address to allow remote access"
  default     = "1.2.3.4"
}

variable "client_id" {
  description = "The Client ID for the Service Principal."
}

variable "client_secret" {
  description = "The Client Secret for the Service Principal."
}
