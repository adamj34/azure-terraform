variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region where the resources will be deployed"
}


# AKS
variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
  default     = "aks-demo"
}

variable "aks_node_number" {
  type        = number
  description = "The number of nodes"
  default     = 1
}

# Vault 
variable "vault_name" {
  type        = string
  description = "The name of the key vault to be created. The value will be randomly generated if blank."
}

variable "vault_sub_id_key" {
  type        = string
  description = "Azure subscription ID in Key Vault"
  sensitive   = true
}

variable "vault_backend_access_key" {
  type        = string
  description = "Access key to blob storage for remote backend"
  sensitive   = true
}
