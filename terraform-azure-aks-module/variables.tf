variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "aks_name" {
  type        = string
  description = "AKS Cluster name"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in default nodepool"
  default     = 2
}

variable "node_vm_size" {
  type        = string
  description = "VM size for default nodepool"
  default     = "Standard_DS2_v2"
}

variable "kubernetes_version" {
  type        = string
  description = "AKS version"
  default     = "1.29.0"
}

variable "enable_rbac" {
  type        = bool
  description = "Enable RBAC on the AKS cluster"
  default     = true
}

variable "network_plugin" {
  type        = string
  description = "Azure CNI or kubenet"
  default     = "azure"
}
