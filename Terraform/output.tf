# RESOURCE GROUP#
output "resource_group_name" {
    description = "The name of the resource group"
    value = "${var.project_name}-rg"
}

output "resource_group_location" {
    description = "The location of the resource group"
    value = var.location
}
# ACR#
output "acr_name" {
    description = "The name of the Azure Container Registry"
    value = azurerm_container_registry.acr.name
}   
output "acr_login_server" {
    description = "The login server of the Azure Container Registry"
    value = azurerm_container_registry.acr.login_server
}
# AKS#
output "aks_name" {
    description = "The name of the Azure Kubernetes Service cluster"
    value = azurerm_kubernetes_cluster.aks.name
}   
output "aks_kubelet_identity" {
    description = "The kube config of the Azure Kubernetes Service cluster"
    value = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
# Key Vault#
output "kv_vault_name" {
    description = "The name of the Azure Key Vault"
    value = azurerm_key_vault.kv.name
}
# Storage#
output "storage_account_name" {
    description = "The name of the Azure Storage Account"
    value = "${var.project_name}-storage"
}
output "storage_container_name" {
    description = "The name of the container for Terraform state"
    value = azurerm_storage_container.example.name
}