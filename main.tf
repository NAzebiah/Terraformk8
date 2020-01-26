provider "azurerm" {
  version = "=1.5.0"
  subscription_id = "8f2249c6-4b25-49a0-81f3-0609add26601"
    client_id       = "866aa0eb-da5c-42d4-84d0-fafaa2356698"
    client_secret   = "3d563c74-09ae-43fc-bc64-b42119535ec0"
    tenant_id       = "65b500d3-0c85-4060-88bb-c780ee64a1b1"
}

provider "kubernetes" {
  host                   = "${azurerm_kubernetes_cluster.k8s.kube_config.0.host}"
  username               = "${azurerm_kubernetes_cluster.k8s.kube_config.0.username}"
  password               = "${azurerm_kubernetes_cluster.k8s.kube_config.0.password}"
  client_certificate     = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)}"
  client_key             = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)}"
  cluster_ca_certificate = "${base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)}"
}
