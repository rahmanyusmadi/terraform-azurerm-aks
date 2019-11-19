output "host" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.host
  description = "The Kubernetes cluster server host."
}

output "username" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.username
  description = "A username used to authenticate to the Kubernetes cluster."
  sensitive   = true
}

output "password" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.password
  description = "A password or token used to authenticate to the Kubernetes cluster."
  sensitive   = true
}

output "client_certificate" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.client_certificate
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
  sensitive   = true
}

output "client_key" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.client_key
  description = "Base64 encoded private key used by clients to authenticate to the Kubernetes cluster."
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.cluster_ca_certificate
  description = "Base64 encoded public CA certificate used as the root of trust for the Kubernetes cluster."
  sensitive   = true
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools"
  sensitive   = true
}

output "linux_private_key" {
  value       = tls_private_key.pair.private_key_pem
  description = "The private key data in PEM format."
  sensitive   = true
}

output "windows_password" {
  value       = random_password.password.result
  description = "Password to access the Windows virtual machine"
  sensitive   = true
}
