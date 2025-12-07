# Azure AKS Terraform Module

This module deploys a production-ready Azure Kubernetes Service (AKS) cluster.

## Features
- System-assigned identity  
- RBAC enabled  
- Customizable VM size and node count  
- Azure CNI or kubenet  
- Outputs admin kubeconfig  

## Usage

```hcl
module "aks" {
  source = "../"

  resource_group_name = "rg-demo"
  location            = "eastus"
  aks_name            = "demo-aks"
  node_count          = 2
  node_vm_size        = "Standard_DS2_v2"
}
