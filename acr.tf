resource "azurerm_container_registry" "acr" {
  name                     = "containerRegistry1"
  location            = "${azurerm_resource_group.k8s.location}"
  resource_group_name = "${azurerm_resource_group.k8s.name}"
  sku                      = "Premium"
  admin_enabled            = false
 
}