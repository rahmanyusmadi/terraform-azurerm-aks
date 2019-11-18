# Azure Kubernetes Module
A Terraform module to create Azure managed Kubernetes cluster.

* single pool linux cluster with autoscaler

#### The simplest example how to use this module
```
module "aks" {
  source = "yusmadi/aks/azurerm"
}
```

#### Full example how to use this module
```
module "aks" {
  source             = "yusmadi/aks/azurerm"
  prefix             = "myaks"
  location           = "westus"
  kubernetes_version = "1.15.5"
  vm_size            = "Standard_DS1_v2"
  os_disk_size_gb    = 30
  min_count          = 1
  max_count          = 3
  max_pods           = 110
  client_id          = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  client_secret      = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}
```

#### Reference

* [What is module?](https://www.terraform.io/docs/configuration/modules.html)
* [How can I improve this module?](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/proposing-changes-to-your-work-with-pull-requests)
* [How is this module versioned?](https://semver.org/)
* [What are the available size of virtual machines?](https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-size-specs/)

