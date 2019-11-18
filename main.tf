provider "azurerm" {
  version = "=1.36.0"
}

data "azurerm_resource_group" "main" {
  name     = var.prefix
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "tls_private_key" "pair" {
  algorithm   = "RSA"
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "${var.prefix}-aks"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  dns_prefix          = "${var.prefix}aks"

  agent_pool_profile {
    name            = "linuxpool"
    count           = 1
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  agent_pool_profile {
    name            = "windowspool"
    count           = 1
    vm_size         = "Standard_D1_v2"
    os_type         = "Windows"
    os_disk_size_gb = 30
  }
  
  linux_profile {
    admin_username = "${var.prefix}user"
    ssh_key {
      key_data = tls_private_key.pair.public_key_openssh
    }
  }
  
  windows_profile {
    admin_username = "${var.prefix}user"
    admin_password = random_password.password.result
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = {
    label = var.prefix
  }
}
