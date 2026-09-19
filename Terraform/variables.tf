
variable "project_name" {
  description = "Base name for all resources"
  type        = string
  default     = "nimbus"
}
variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "uksouth"
  
}
variable "tags" {
  description = "common tags to apply to resources"
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "nimbus"
  }
  
}
#ACR#   
variable "acr_sku" {
  description = "SKU for Azure Container Registry (Premium, Standard, Basic)"
  type        = string
  default     = "Basic"
  
}
#AKS#
variable "aks_node_count" {
  description = "Number of nodes in the default AKS pool"
  type        = number
  default     = 1
  
}


  
variable "aks_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default = "Standard_D2lds_v6"
 
}
#Key Vault#
variable "kv_sku" {
  description = "SKU for Azure Key Vault (Standard, Premium)"       
  type        = string
  default     = "standard"
  
}
#storage#
variable "storage_replication_type" {
  description = "replication type for the storage account (LRS, GRS, RAGRS, ZRS)"
  type        = string
  default     = "LRS"
}