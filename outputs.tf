output "client_certificate" {
  value       = azurerm_kubernetes_cluster.main.kube_config.0.client_certificate
  description = "Base64 encoded public certificate used by clients to authenticate to the Kubernetes cluster."
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools"
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
