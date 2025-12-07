resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.aks_name}-dns"

  kubernetes_version = var.kubernetes_version
  role_based_access_control_enabled = var.enable_rbac

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  network_profile {
    network_plugin = var.network_plugin
  }

  identity {
    type = "SystemAssigned"
  }
}
