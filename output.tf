# Output for Resource Group Name
output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

# Output for Kubernetes Cluster Name
output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}

# Output for Kubernetes Cluster Kubeconfig Host
output "host" {
  value     = azurerm_kubernetes_cluster.default.kube_config.0.host
  sensitive = true
}

# Output for Kubernetes Cluster Client Key
output "client_key" {
  value     = azurerm_kubernetes_cluster.default.kube_config.0.client_key
  sensitive = true
}

# Output for Kubernetes Cluster Client Certificate
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.default.kube_config.0.client_certificate
  sensitive = true
}

# Output for Raw Kubernetes Cluster Kubeconfig
output "kube_config" {
  value     = azurerm_kubernetes_cluster.default.kube_config_raw
  sensitive = true
}

# Output for Kubernetes Cluster Username
output "cluster_username" {
  value     = azurerm_kubernetes_cluster.default.kube_config.0.username
  sensitive = true
}

# Output for Kubernetes Cluster Password
output "cluster_password" {
  value     = azurerm_kubernetes_cluster.default.kube_config.0.password
  sensitive = true
}
