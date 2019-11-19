# Azure Kubernetes Module
A Terraform module to create Azure managed Kubernetes cluster into existing subnet.

* single pool linux cluster with autoscaler
* advanced networking for deployment into existing subnet

#### The simplest example how to use this module
```
module "kyochon" {
  source               = "yusmadi/aks/azurerm"
  resource_group_name  = "kyochon-rg"
  virtual_network_name = "kyochon-vnet"
  subnet_name          = "subnet1"
  dns_prefix           = "kyochonaks"
}
```

#### Full example how to use this module
```
module "aks" {
  source               = "yusmadi/aks/azurerm"
  resource_group_name  = "kyochon-rg"
  virtual_network_name = "kyochon-vnet"
  subnet_name          = "subnet1"
  name                 = "kyochon-aks"
  dns_prefix           = "kyochonaks"
  kubernetes_version   = "1.14.8"
  vm_size              = "Standard_DS1_v2"
  os_disk_size_gb      = 30
  min_count            = 1
  max_count            = 3
  max_pods             = 110
  admin_username       = "kyochonadmin"
  client_id            = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  client_secret        = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  tag_environment      = "production"
}
```

#### Reference

* [What is module?](https://www.terraform.io/docs/configuration/modules.html)
* [How can I improve this module?](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/proposing-changes-to-your-work-with-pull-requests)
* [What are the available size of virtual machines?](https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-size-specs/)
* [Supported Kubernetes versions in Azure Kubernetes Service (AKS)](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions)
* [Quotas, virtual machine size restrictions, and region availability in Azure Kubernetes Service (AKS)](https://docs.microsoft.com/en-us/azure/aks/quotas-skus-regions)