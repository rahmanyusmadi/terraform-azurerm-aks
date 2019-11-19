variable "location" {
  description = "The location where the resources should be created."
  default     = "westus"
}

variable "prefix" {
  description = "Prefix to be used by resources and attributes."
  default     = "myaks"
}

variable "name" {
  description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
  default     = "myaks"
}

variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created."
  default     = "globalunique"
}

variable "admin_username" {
  description = "The Admin Username for the Cluster. Changing this forces a new resource to be created."
  default     = "aksadmin"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)."
  default     = "1.15.5"
}

variable "vm_size" {
  description = "The size of each VM in the Agent Pool (e.g. Standard_F1). Changing this forces a new resource to be created."
  default     = "Standard_DS1_v2"
}

variable "os_disk_size_gb" {
  description = "The Agent Operating System disk size in GB. Changing this forces a new resource to be created."
  default     = 30
}

variable "min_count" {
  description = "Minimum number of nodes for auto-scaling"
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes for auto-scaling"
  default     = 3
}

variable "max_pods" {
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
  default     = 110
}

variable "vnet_name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
}

variable "address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "192.168.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
}

variable "address_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "192.168.2.0/24"
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
